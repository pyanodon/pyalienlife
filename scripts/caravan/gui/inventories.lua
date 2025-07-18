local P = {}

local caravan_prototypes = require "__pyalienlife__/scripts/caravan/caravan-prototypes"
local MainFrameComponents = require "main_frame"

-- TODO things to implement
--
-- Fuel progress bar, nb of actions left. This can wait until the logic is plugged back though
--
-- Things implemented
--
-- Add fuel inventory handling
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

    if player and player.hand_location and player.hand_location.inventory == defines.inventory.character_main and player.hand_location.slot == slot_index then
        sprite = "utility/hand"
        hovered_sprite = "utility/hand_black"
    elseif item_stack.valid_for_read then
        elem_tooltip = {type = "item", name = item_stack.name}
        local prototype = prototypes.item[item_stack.name]
        if prototype.stack_size > 1 then
            number = item_stack.count
        end
        sprite = "item/" .. item_stack.name 
    elseif filter then
        -- TODO how to make empty filter sprites transparent?
        sprite = "item/" .. filter.name
    end

    tags.slot_index = slot_index
    local button = table.add {type = "sprite-button", name = slot_name, style = button_style, tags = tags}
    button.sprite = sprite
    button.number = number
    button.tooltip = tooltip
    button.elem_tooltip = elem_tooltip
    return button
end

local function build_inventory_table(parent, inventory, name, tags, default_empty_slot)
    local inventory_table = parent.add {type = "table", name = name, column_count = 10}
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

    local flow = build_inventory_flow(parent, fuel_inventory, name, tags, {sprite = "slot_icon_fuel", tooltip = favorite_food_tooltip})
    local bar = flow.add {type = "progressbar", style = "burning_progressbar"}
    -- FIXME with 2 auog's food, I have 11 actions total, instead of 8
    -- for some reason the fuel bar is full when the caravan is idle
    -- beginning the schedule burns the full bar, but doesn't start burning a food
    -- it's broken on master too, let's fix it later
    bar.value = caravan_data.fuel_bar / caravan_data.last_eaten_fuel_value
    bar.style.horizontally_stretchable = true
    bar.style.right_margin = 8
end

function P.build_character_inventory(parent, player, caravan_data)
    local inventory = player.character.get_inventory(defines.inventory.character_main)

    local name = "py_caravan_player_inventory"
    local inventory_frame = parent.add {type = "frame", style = "inventory_frame"}
    build_inventory_flow(inventory_frame, inventory, name, {unit_number = caravan_data.unit_number})
end

function P.build_caravan_inventory(parent, caravan_data)
    local name = "py_caravan_caravan_inventory"
    local inventory_frame = parent.add {type = "frame", style = "inventory_frame"}
    build_inventory_flow(inventory_frame, caravan_data.inventory, name, {unit_number = caravan_data.unit_number})
end

function P.build_fuel_inventory(parent, caravan_data)
    local name = "py_caravan_fuel_inventory"
    local inventory_frame = parent.add {type = "frame", style = "inventory_frame"}
    build_fuel_inventory_flow(inventory_frame, caravan_data, caravan_data.fuel_inventory, name, {unit_number = caravan_data.unit_number})
end

-- TODO rename those functions? like stated in caravan-new-gui.lua?
function P.update_character_inventory(player, caravan_data)
    local name = "py_caravan_player_inventory"
    local elem = storage.gui_elements_by_name[name]
    local parent = elem.parent
    elem.destroy()

    local inventory = player.get_inventory(defines.inventory.character_main)
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

-- TODO everything below should probably be in a inventory_control.lua file or smth
local function is_character_inventory(inventory)
    return inventory.index and inventory.index == defines.inventory.character_main
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
        target_slot.transfer_stack({name = player.cursor_stack.name, count = nb_transferred})
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

    local nb_transferred = target_inventory.insert(input_stack)

    if nb_transferred == source_stack.count then
        source_stack.clear()
    else
        source_stack.set_stack({name = source_stack.name, count = source_stack.count - nb_transferred})
    end

    return nb_transferred
end

local function transfer_inventory_items(inventory, target_inventory, item_name, stack_proj, is_supported_pred)
    local nb_total_transferred = 0

    for i = 1, #inventory do
        if not inventory[i].valid_for_read or not is_supported_pred(inventory[i]) then goto continue end
        if item_name and inventory[i].name ~= item_name then goto continue end

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

-- TODO FP/RB compat?
-- TODO support middle click? Can we even open the 'Set the filter' window?
-- TODO split this function, allow reusing relevant parts for fuel inventory management
local function handle_slot_click(event, caravan_data, inventory, target_inventory, is_supported_pred)
    local player = game.get_player(event.player_index)
    -- spectators, begone
    if not player.cursor_stack then return end
    local has_items_in_cursor = player.cursor_stack.count > 0

    local is_ctrl = event.control
    local is_alt = event.alt
    local is_shift = event.shift

    local is_rmb = event.button == defines.mouse_button_type.right
    local is_lmb = event.button == defines.mouse_button_type.left

    local half_stack_proj = function(s) return {name = s.name, count = math.floor((s.count / 2) + 0.5)} end
    local id_proj = function(s) return s end
    local one_item_proj = function(s) return {name = s.name, count = 1} end

    if is_control and is_shift then return end

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
            set_cursor_stack_to_slot(player, inventory, slot_index, one_item_proj)
        else
            set_stack_to_cursor(player, inventory, slot_index, half_stack_proj)
        end
    elseif not target_inventory.is_full() then
        local item_name = inventory[slot_index].valid_for_read and inventory[slot_index].name

        if is_lmb and is_ctrl and not (is_alt or is_shift) then
            transfer_inventory_items(inventory, target_inventory, item_name, id_proj, is_supported_pred)
        elseif is_lmb and is_shift and not (is_alt or is_ctrl) then
            if inventory[slot_index].valid_for_read and is_supported_pred(inventory[slot_index]) then
                transfer_stack(inventory[slot_index], target_inventory, id_proj)
            end
        elseif is_rmb and is_ctrl and not (is_alt or is_shift) then
            transfer_inventory_items(inventory, target_inventory, item_name, half_stack_proj, is_supported_pred)
        elseif is_rmb and is_shift and not (is_alt or is_ctrl) then
            if inventory[slot_index].valid_for_read and is_supported_pred(inventory[slot_index]) then
                transfer_stack(inventory[slot_index], target_inventory, half_stack_proj)
            end
        end
    end
end

gui_events[defines.events.on_gui_click]["py_caravan_player_inventory_slot_."] = function(event)
    local player = game.get_player(event.player_index)
    local inventory = player.get_inventory(defines.inventory.character_main)
    local caravan_data = storage.caravans[event.element.tags.unit_number]
    local pred = function (s) return true end

    handle_slot_click(event, caravan_data, inventory, caravan_data.inventory, pred)

    P.update_caravan_inventory(player, caravan_data)
end

gui_events[defines.events.on_gui_click]["py_caravan_caravan_inventory_slot_."] = function(event)
    local player = game.get_player(event.player_index)
    local inventory = player.get_inventory(defines.inventory.character_main)
    local caravan_data = storage.caravans[event.element.tags.unit_number]
    local pred = function (s) return true end

    handle_slot_click(event, caravan_data, caravan_data.inventory, inventory, pred)
    P.update_caravan_inventory(player, caravan_data)
end

gui_events[defines.events.on_gui_click]["py_caravan_fuel_inventory_slot_."] = function(event)
    local player = game.get_player(event.player_index)
    local main_inventory = player.get_inventory(defines.inventory.character_main)
    local caravan_data = storage.caravans[event.element.tags.unit_number]

    -- TODO test with flyavan
    local pred = function (s) return caravan_prototypes[caravan_data.entity.name].favorite_foods[s.name] ~= nil end

    handle_slot_click(event, caravan_data, caravan_data.fuel_inventory, main_inventory, pred)

    P.update_fuel_inventory(player, caravan_data)
    -- need to update fuel status 
    MainFrameComponents.update_camera_frame(player)
end

py.on_event(defines.events.on_player_main_inventory_changed, function (event)
    local player = game.get_player(event.player_index)
    local gui = player.gui.screen.caravan_new_gui
    if not gui then return end

    local caravan_data = storage.caravans[gui.tags.unit_number]
    P.update_character_inventory(player, caravan_data)
end)

return P
