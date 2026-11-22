local P = {}

local caravan_prototypes = require "__pyalienlife__/scripts/caravan/caravan-prototypes"
local MainFrameComponents = require "main_frame"

-- Things to implement / investigate
--
-- how to make empty filter sprites transparent?
-- Factoriopedia / RecipeBook support
-- support middle click? Can we even open the 'Set the filter' window?
--
-- Things implemented
--
-- Add fuel inventory handling
-- Fuel progress bar, nb of actions left. This can wait until the logic is plugged back though
--
-- Item stacks
-- Item order (already done by inventory)
-- LMB w/o cursor
-- RMB w/o cursor
-- RMB w/ cursor
-- LMB w/ cursor
-- Show hand on character inventory LMB (not for other inventories), btw the cursor slot cannot be overriden, if user RMB some items, it has to be in a different slot
-- Once item is clicked, Q puts it back in character inventory, if not full. Else show message? This should be handled by the base game
-- Sort and merge after each user click (ONLY FOR CHARACTER)
-- Listen to player_inventory_changed or smth, test with a single logi bot
-- Ctrl LMB
-- Ctrl RMB
-- Shift LMB (no drag)
-- Shift RMB (no drag)
-- Do not show number of items when item is not stackable (e.g. deconstruction planners, caravans)
--
-- Won't implement(?)
-- Pipette
-- Shift LMB + drag
-- Shift RMB + drag w/ and w/o item in cursor
-- Click sounds (https://lua-api.factorio.com/latest/prototypes/ItemPrototype.html#inventory_move_sound)
--
-- These are limited by the modding API :/
-- drag: waiting for an answer on https://forums.factorio.com/viewtopic.php?t=128019

-- default_empty_slot is used to show the fuel_inventory gas pump icon
local function build_inventory_slot(inventory, table, slot_index, tags, default_empty_slot)
    local item_stack = inventory[slot_index]
    local slot_name = table.name .. "_slot_" .. slot_index
    local player = inventory.player_owner

    local filter
    if inventory.is_filtered() then
        filter = inventory.get_filter(slot_index)
    end

    local button_style = filter and "filter_inventory_slot" or "inventory_slot" 
    local sprite = default_empty_slot and default_empty_slot.sprite
    local tooltip = default_empty_slot and default_empty_slot.tooltip
    local elem_tooltip
    local hovered_sprite
    local number
    local quality

    if player and player.hand_location and player.hand_location.inventory == defines.inventory.character_main and player.hand_location.slot == slot_index then
        sprite = "utility/hand"
        hovered_sprite = "utility/hand"
    elseif item_stack.valid_for_read then
        elem_tooltip = {type = "item-with-quality", name = item_stack.name, quality = item_stack.quality.name}
        quality = item_stack.quality
        local prototype = prototypes.item[item_stack.name]
        if prototype.stack_size > 1 then
            number = item_stack.count
        end
        sprite = "item/" .. item_stack.name 
    elseif filter then
        sprite = "item/" .. filter.name
    end

    tags.slot_index = slot_index
    local button = table.add {type = "sprite-button", name = slot_name, style = button_style, tags = tags, enabled = table.enabled}
    button.sprite = sprite
    button.number = number
    button.tooltip = tooltip
    button.elem_tooltip = elem_tooltip
    button.quality = quality
    return button
end

local function build_inventory_table(parent, inventory, name, tags, default_empty_slot)
    local enabled = parent.parent.parent.enabled -- pane<-flow<-flow (disabled)
    local inventory_table = parent.add {type = "table", name = name, column_count = 10, enabled = enabled}
    inventory_table.style.horizontal_spacing = 0
    inventory_table.style.vertical_spacing = 0

    for i = 1, #inventory do
        build_inventory_slot(inventory, inventory_table, i, tags, default_empty_slot)
    end

    return inventory_table
end

local function build_inventory_flow(parent, inventory, name, tags, default_empty_slot)
    local flow = parent.add {type = "flow", style = "packed_horizontal_flow", tags = tags}
    flow.style.vertical_align = "center"
    flow.style.horizontal_spacing = 10

    local pane = flow.add {type = "scroll-pane"}
    pane.style.natural_height = 150
    pane.horizontal_scroll_policy = "never"
    pane.vertical_scroll_policy = "auto"

    build_inventory_table(pane, inventory, name, tags, default_empty_slot)

    storage.gui_elements_by_name[name] = flow
    return flow
end

local function build_fuel_inventory_flow(parent, caravan_data, fuel_inventory, name, tags)
    local favorite_food_tooltip = py.generate_favorite_food_tooltip(caravan_prototypes[caravan_data.entity.name].favorite_foods, "caravan-gui")

    local flow = build_inventory_flow(parent, fuel_inventory, name, tags, {sprite = "slot_icon_food", tooltip = favorite_food_tooltip})
    local bar = flow.add {type = "progressbar", style = "burning_progressbar"}
    bar.value = caravan_data.fuel_bar / caravan_data.last_eaten_fuel_value
    bar.style.horizontally_stretchable = true
    bar.style.right_margin = 8
end

local function get_inventory(player)
    return player.get_main_inventory() or player.character and player.character.get_main_inventory()
end

function P.build_character_inventory(parent, player, caravan_data)
    local inventory = get_inventory(player)
    if not inventory then
        -- e.g. editor + remote view
        return
    end

    local name = "py_caravan_player_inventory"
    local inventory_frame = parent.add {type = "frame", style = "inventory_frame", enabled = parent.enabled}
    build_inventory_flow(inventory_frame, inventory, name, {unit_number = caravan_data.unit_number})
end

function P.build_caravan_inventory(parent, caravan_data)
    local name = "py_caravan_caravan_inventory"
    local inventory_frame = parent.add {type = "frame", style = "inventory_frame", enabled = parent.enabled}
    build_inventory_flow(inventory_frame, caravan_data.inventory, name, {unit_number = caravan_data.unit_number})
end

function P.build_fuel_inventory(parent, caravan_data)
    local name = "py_caravan_fuel_inventory"
    local inventory_frame = parent.add {type = "frame", style = "inventory_frame", enabled = parent.enabled}
    build_fuel_inventory_flow(inventory_frame, caravan_data, caravan_data.fuel_inventory, name, {unit_number = caravan_data.unit_number})
end

function P.update_character_inventory(player, caravan_data)
    local name = "py_caravan_player_inventory"
    local elem = storage.gui_elements_by_name[name]
    local parent = elem.parent
    elem.destroy()

    local inventory = get_inventory(player)
    inventory.sort_and_merge()

    build_inventory_flow(parent, inventory, name, {unit_number = caravan_data.unit_number})
end

function P.update_caravan_inventory(player, caravan_data)
    local name = "py_caravan_caravan_inventory"
    local elem = storage.gui_elements_by_name[name]
    local parent = elem.parent
    elem.destroy()

    build_inventory_flow(parent, caravan_data.inventory, name, {unit_number = caravan_data.unit_number})
end

function P.update_fuel_inventory(player, caravan_data)
    local name = "py_caravan_fuel_inventory"
    local elem = storage.gui_elements_by_name[name]
    local parent = elem.parent
    elem.destroy()

    build_fuel_inventory_flow(parent, caravan_data, caravan_data.fuel_inventory, name, {unit_number = caravan_data.unit_number})
end

local function is_character_inventory(inventory)
    return inventory.player_owner ~= nil
end

local function set_stack_to_cursor(player, inventory, index, stack_proj)
    if not inventory[index].valid_for_read then return end

    local input_stack = stack_proj(inventory[index])

    local success = player.cursor_stack.transfer_stack(input_stack)
    if success then
        if input_stack.count == inventory[index].count then
            inventory[index].clear()
            if is_character_inventory(inventory) then
                player.hand_location = {inventory = inventory.index, slot = index}
            end
        else
            inventory[index].count = inventory[index].count - input_stack.count
        end
    end
end

local function set_cursor_stack_to_slot(player, target_inventory, index, stack_proj)
    local input_stack = stack_proj(player.cursor_stack)
    local target_slot = target_inventory[index]

    if target_slot.valid_for_read and target_slot.name == player.cursor_stack.name then
        local prototype = prototypes.item[player.cursor_stack.name]

        local nb_transferred = math.min(prototype.stack_size - target_slot.count, input_stack.count)
        if nb_transferred == 0 then return end
        target_slot.transfer_stack({name = player.cursor_stack.name, count = nb_transferred, quality = player.cursor_stack.quality})
        player.cursor_stack.count = player.cursor_stack.count - nb_transferred
    else
        -- set_stack fails when target_slot is an incompatible filter slot, or where player.hand_location is
        local success = target_slot.set_stack(input_stack)
        if success then
            -- cursor_stack is special, it can have a 0 count unlike other LuaItemStacks
            player.cursor_stack.count = player.cursor_stack.count - input_stack.count
        end
    end
end

-- precondition: source_stack.valid_for_read == true
local function transfer_stack(source_stack, target_inventory, stack_proj)
    local input_stack = stack_proj(source_stack)

    if not target_inventory.can_insert(input_stack) then return 0 end

    -- special case for items with equipment grids
    -- LuaInventory.insert does not copy the grid, LuaItemStack.transfer_stack must be used
    if input_stack.grid then
        local target_stack = target_inventory.find_empty_stack(input_stack)
        if not target_stack then return 0 end
        target_stack.transfer_stack(input_stack)
        return 1
    end
    local nb_transferred = target_inventory.insert(input_stack)

    if nb_transferred == source_stack.count then
        source_stack.clear()
    else
        source_stack.set_stack({name = source_stack.name, count = source_stack.count - nb_transferred, quality = source_stack.quality})
    end

    return nb_transferred
end

local function transfer_inventory_items(inventory, target_inventory, clicked_item_stack, stack_proj, is_supported_pred)
    local nb_total_transferred = 0

    local item
    if clicked_item_stack.valid_for_read then
        item = {name = clicked_item_stack.name, quality = clicked_item_stack.quality}
    end
    for i = 1, #inventory do
        if not inventory[i].valid_for_read or not is_supported_pred(inventory[i]) then goto continue end
        if item and (inventory[i].name ~= item.name or inventory[i].quality ~= item.quality) then goto continue end

        local nb_transferred = transfer_stack(inventory[i], target_inventory, stack_proj)
        nb_total_transferred = nb_total_transferred + nb_transferred

        ::continue::
    end
    return nb_total_transferred
end

local function swap_stacks(a, b)
    local tmp = {name = a.name, count = a.count}
    a.set_stack(b)
    b.set_stack(tmp)
end

local function handle_slot_click(event, caravan_data, inventory, target_inventory, is_supported_pred)
    local player = game.get_player(event.player_index)
    -- spectators, begone
    if not player.cursor_stack then return end
    if not inventory or not target_inventory then return end -- fluidavan
    local has_items_in_cursor = player.cursor_stack.count > 0

    local is_ctrl = event.control
    local is_alt = event.alt
    local is_shift = event.shift

    local is_rmb = event.button == defines.mouse_button_type.right
    local is_lmb = event.button == defines.mouse_button_type.left

    local half_stack_proj = function(s) return {name = s.name, count = math.floor((s.count / 2) + 0.5), quality = s.quality} end
    local id_proj = function(s) return s end
    local one_item_proj = function(s) return {name = s.name, count = 1, quality = s.quality} end

    if is_ctrl and is_shift then return end

    local slot_index = event.element.tags.slot_index
    
    if is_lmb and not (is_ctrl or is_alt or is_shift) then
        if has_items_in_cursor and is_supported_pred(player.cursor_stack) then
            if inventory[slot_index].valid_for_read and inventory[slot_index].name ~= player.cursor_stack.name then
                -- swapping stacks resets hand_location for some reason
                local loc = player.hand_location
                swap_stacks(inventory[slot_index], player.cursor_stack)
                player.hand_location = loc
            else
                -- lmb'ing the cursor stack where hand_location is allowed, not rmb'ing it
                if player.hand_location and inventory.index and player.hand_location.inventory == inventory.index and player.hand_location.slot == slot_index then
                    player.hand_location = nil
                end
                set_cursor_stack_to_slot(player, inventory, slot_index, id_proj)
                -- Item was originally from character inventory, hand_location somehow gets reset in the call above
                if not player.hand_location then
                    P.update_character_inventory(player, caravan_data)
                end
            end
        else
            set_stack_to_cursor(player, inventory, slot_index, id_proj)
        end
    elseif is_rmb and not (is_ctrl or is_alt or is_shift) then
        if has_items_in_cursor and is_supported_pred(player.cursor_stack) then
            -- disallow right-click with different item
            if inventory[slot_index].valid_for_read and inventory[slot_index].name ~= player.cursor_stack.name then
                return
            end
            set_cursor_stack_to_slot(player, inventory, slot_index, one_item_proj)
        else
            set_stack_to_cursor(player, inventory, slot_index, half_stack_proj)
        end
    elseif not target_inventory.is_full() then
        local item_stack = inventory[slot_index]

        if is_lmb and is_ctrl and not (is_alt or is_shift) then
            transfer_inventory_items(inventory, target_inventory, item_stack, id_proj, is_supported_pred)
        elseif is_lmb and is_shift and not (is_alt or is_ctrl) then
            if inventory[slot_index].valid_for_read and is_supported_pred(inventory[slot_index]) then
                transfer_stack(inventory[slot_index], target_inventory, id_proj)
            end
        elseif is_rmb and is_ctrl and not (is_alt or is_shift) then
            transfer_inventory_items(inventory, target_inventory, item_stack, half_stack_proj, is_supported_pred)
        elseif is_rmb and is_shift and not (is_alt or is_ctrl) then
            if inventory[slot_index].valid_for_read and is_supported_pred(inventory[slot_index]) then
                transfer_stack(inventory[slot_index], target_inventory, half_stack_proj)
            end
        end
    end
end

gui_events[defines.events.on_gui_click]["py_caravan_player_inventory_slot_."] = function(event)
    local player = game.get_player(event.player_index)
    local inventory = get_inventory(player)
    local caravan_data = storage.caravans[event.element.tags.unit_number]
    -- make these two conditional on type
    local is_solid = not caravan_data.entity.name:find("^fluidavan")
    local pred = is_solid and function (s) return true end or function (s) return caravan_prototypes[caravan_data.entity.name].favorite_foods[s.name] ~= nil end
    local target_inv = is_solid and caravan_data.inventory or caravan_data.fuel_inventory

    handle_slot_click(event, caravan_data, inventory, target_inv, pred)

    if is_solid then
        P.update_caravan_inventory(player, caravan_data)
    else
        P.update_fuel_inventory(player, caravan_data)
    end
end

gui_events[defines.events.on_gui_click]["py_caravan_caravan_inventory_slot_."] = function(event)
    local player = game.get_player(event.player_index)
    local inventory = get_inventory(player)
    local caravan_data = storage.caravans[event.element.tags.unit_number]
    local pred = function (s) return true end

    handle_slot_click(event, caravan_data, caravan_data.inventory, inventory, pred)
    P.update_caravan_inventory(player, caravan_data)
end

gui_events[defines.events.on_gui_click]["py_caravan_fuel_inventory_slot_."] = function(event)
    local player = game.get_player(event.player_index)
    local main_inventory = get_inventory(player)
    local caravan_data = storage.caravans[event.element.tags.unit_number]

    local pred = function (s) return caravan_prototypes[caravan_data.entity.name].favorite_foods[s.name] ~= nil end

    handle_slot_click(event, caravan_data, caravan_data.fuel_inventory, main_inventory, pred)

    P.update_fuel_inventory(player, caravan_data)
    MainFrameComponents.update_status_flow(player)
end

py.on_event(defines.events.on_player_main_inventory_changed, function (event)
    local player = game.get_player(event.player_index)
    local gui = player.gui.screen.caravan_gui
    if not gui then return end

    local caravan_data = storage.caravans[gui.tags.unit_number]
    P.update_character_inventory(player, caravan_data)
end)

-- needed to handle edge-case: power armor is click-dragged to the player
-- bottom-left corner armor equipment. The hand location must then be reset.
py.on_event(defines.events.on_player_cursor_stack_changed, function (event)
    local player = game.get_player(event.player_index)
    local gui = player.gui.screen.caravan_gui
    if not gui then return end
    if player.controller_type ~= defines.controllers.character then return end

    if player.cursor_stack.count > 0 then return end
    player.hand_location = nil
    local caravan_data = storage.caravans[gui.tags.unit_number]
    P.update_character_inventory(player, caravan_data)
end)

return P
