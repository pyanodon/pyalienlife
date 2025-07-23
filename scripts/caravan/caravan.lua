Caravan = {}

require "italian-names"
require "caravan-gui"
require "caravan-global-gui"
require "caravan-connected-gui"
require "util"
local caravan_prototypes = require "caravan-prototypes"

-- function stubs
local remove_tmp_stops = function(_) error("function stub") end

---@class Caravan
---@field arrival_tick number? The gametick that this caravan arrived at its destination. Used to queue most recent caravans first.
---@field entity LuaEntity? The associated LuaEntity of the caravan.
---@field fuel_bar int The amount of fuel the caravan has in the red bar GUI element. Does not account for stored brains.
---@field fuel_inventory LuaInventory The inventory of the caravan that stores fuel.
---@field inventory LuaInventory The script-created inventory of the caravan.
---@field itemised boolean? Whether this caravan has been itemised. If true, it exist in 'backpack' mode. When placed down again, it retains the schedule.
---@field last_eaten_fuel_value int The last value of fuel that was eaten by the caravan. This exists becuase we must divide by the fuel_bar in order to get the 'fullness' of the red bar in the GUI.
---@field retry_pathfinder number? The number of seconds until the pathfinder request is resubmitted. If nil, the pathfinder is not being retried.
---@field schedule CaravanSchedule[] The schedule of the caravan. Each element is a table with a localised_name, position, entity, and actions.
---@field schedule_id int The index of the schedule that the caravan is currently following. This is used to highlight the grey 'play' button in the GUI. If this == -1, the caravan is idle.
---@field action_id int The action index of the schedule that the caravan is currently following. This is used to highlight the grey 'play' button in the GUI. If this == -1, the caravan is idle.
---@field unit_number number The unit number of the caravan entity.
---@field interrupts string[]
---@field stored_energy number?
---@field last_scheduled_tick int?

---@class CaravanSchedule
---@field actions CaravanAction[] The actions that the caravan will perform (in order of this array) when it reaches this schedule. Each element is a table with a type and localised_name.
---@field entity LuaEntity? The entity that the caravan will travel to. If this is nil, the caravan will travel to the position.
---@field localised_name LocalisedString The name of the schedule. This is displayed in the GUI.
---@field position MapPosition The position that the caravan will travel to. Used as a fallback in case of no entity or invalid entity.
---@field temporary table? Whether this stop is temporary
---@field player_index int? The player index of the character this schedule points to, if any.

---@class CaravanAction
---@field async? boolean Whether this action should be 'ticked' once and then move on to the next action. If false or nil, the caravan will wait until the action is complete before moving on. Note that some action types ignore this field such as 'time passed'.
---@field circuit_condition_left? string If this action is a circuit condition, this is the left side of the equation. Generated from a choose-elem-button.
---@field circuit_condition_right? string If this action is a circuit condition, this is the right side of the equation. Generated from a choose-elem-button.
---@field operator int? The operator used in a condition (<, =, >)
---@field wait_time int? The amount of time that the caravan will wait if this is a 'time passed' action.
---@field elem_value string? The item that the caravan will interact with if this is an 'item count' action.
---@field item_count int? The amount of items that the caravan will interact with if this is an 'item count' action.
---@field entity LuaEntity? The target entity if this is an 'at station' action
---@field localised_name LocalisedString The name of the action. This is displayed in the GUI.
---@field type string The type of the action. This is used to determine what the caravan will do when it reaches this action.
---@field timer number?

---@class CaravanInterrupt
---@field name string The name of the interrupt
---@field conditions CaravanAction[]
---@field schedule CaravanSchedule[]
---@field inside_interrupt boolean Allow interrupting other interrupts

---Pathfinds a caravan to follow another entity
---@param caravan_data Caravan
---@param entity LuaEntity
local function goto_entity(caravan_data, entity)
    local caravan = caravan_data.entity --[[@as LuaEntity]]
    caravan.commandable.set_command {
        type = defines.command.go_to_location,
        destination_entity = entity,
        distraction = defines.distraction.none,
        pathfind_flags = caravan_prototypes[caravan.name].pathfinder_flags
    }
    caravan_data.arrival_tick = nil
end

---Pathfinds a caravan to a position
---@param caravan_data Caravan
---@param position MapPosition
local function goto_position(caravan_data, position)
    local caravan = caravan_data.entity --[[@as LuaEntity]]
    caravan.commandable.set_command {
        type = defines.command.go_to_location,
        destination = position,
        distraction = defines.distraction.none,
        pathfind_flags = caravan_prototypes[caravan.name].pathfinder_flags
    }
    caravan_data.arrival_tick = nil
end

---Sets the caravan to walk aimlessly in a radius.
---@param caravan_data Caravan
local function wander(caravan_data)
    caravan_data.entity.commandable.set_command {
        type = defines.command.wander,
        distraction = defines.distraction.none,
        radius = 10
    }
end

---Function to render a red 'fuel alert' similar to the locomotive out of fuel alert.
---This renders on the player GUI in the same slot as the locomotive alert or 'entities damaged' alert.
---@param entity LuaEntity
---@param alert CaravanAlert
local function add_alert(entity, alert)
    local target_force = entity.force_index
    for _, player in pairs(game.connected_players) do
        if player.valid and player.force_index == target_force then
            -- You could use train alerts which have the wrong notification string but *do* stack
            -- player.add_alert(entity, defines.alert_type.train_out_of_fuel)
            player.add_custom_alert(
                entity,
                alert.signal,
                alert.message,
                true
            )
        end
    end
end

---Function to remove the alert from the player GUI.
---@param entity LuaEntity
local function remove_alert(entity)
    if not entity.valid then
        -- it'll disappear after a few seconds anyway
        return
    end

    local target_force = entity.force_index
    for _, player in pairs(game.connected_players) do
        if player.valid and player.force_index == target_force then
            -- You could use train alerts which have the wrong notification string but *do* stack
            -- player.remove_alert({prototype = prototype, type = defines.alert_type.train_out_of_fuel})
            -- If we specify more than one criteria here, it'll only pay attention to one for some reason
            player.remove_alert {
                entity = entity
            }
        end
    end
end

py.on_event(py.events.on_init(), function()
    ---@type table<integer, Caravan>
    storage.caravans = storage.caravans or {}
    storage.interrupts = storage.interrupts or {}
    -- Table of gui elements indexed by their name. Not necessary, but better than hardcoding the realtive paths
    storage.gui_elements_by_name = storage.gui_elements_by_name or {}
    storage.last_opened = storage.last_opened or {}
    storage.make_operable_next_tick = storage.make_operable_next_tick or {}
end)

---@param v table
---@return boolean
local function exists_and_valid(v) return v and v.valid end

---Checks if the caravan entity is valid, the caravan inventory is valid, and the fuel inventory is valid.
---If not, all lua objects are destroyed and the caravan is removed from the global table.
---If this caravan is itemized, then we return false however lua objects are not destroyed.
---@param caravan_data Caravan
---@return boolean
function Caravan.validity_check(caravan_data)
    if not caravan_data or caravan_data.itemised then return false end
    local inventory, fuel_inventory = caravan_data.inventory, caravan_data.fuel_inventory
    if
        not caravan_data.entity.valid or
        (inventory and not inventory.valid) or
        (fuel_inventory and not fuel_inventory.valid)
    then
        if caravan_data.entity.valid then caravan_data.entity.destroy() end
        if exists_and_valid(inventory) then inventory.destroy() end
        if exists_and_valid(fuel_inventory) then fuel_inventory.destroy() end
        storage.caravans[caravan_data.unit_number] = nil
        return false
    end
    return true
end

-- Reopen the last closed caravan gui when player no longer holds carrot-on-stick item
-- regardless of whether or not it was used
py.on_event(defines.events.on_player_cursor_stack_changed, function(event)
    local last_opened = storage.last_opened[event.player_index]
    if not last_opened then return end
    local player = game.get_player(event.player_index) ---@as LuaPlayer
    -- If the item is in hand, don't open the gui
    local stack = player.cursor_stack
    if stack and stack.valid_for_read and stack.name == "caravan-control" then return end
    local ghost = player.cursor_ghost
    if ghost and ghost.name.name == "caravan-control" then return end

    if last_opened.caravan then
        local caravan_data = storage.caravans[last_opened.caravan]
        Caravan.build_gui(player, caravan_data.entity)
        if last_opened.interrupt then
            Caravan.build_interrupt_gui(player, caravan_data, last_opened.interrupt)
        end
    end

    storage.last_opened[event.player_index] = nil
end)

--- Called whenever the player uses the carrot-on-stick capsule item.
py.on_event(py.events.on_entity_clicked(), function(event)
    local player = game.get_player(event.player_index) --[[@as LuaPlayer]]
    local cursor_stack = player.cursor_stack --[[@as LuaItemStack]]
    local cursor_ghost = player.cursor_ghost

    if not (cursor_ghost and cursor_ghost.name.name == "caravan-control") then
        if not cursor_stack or not cursor_stack.valid_for_read or cursor_stack.name ~= "caravan-control" then
            return
        end
    end
    cursor_stack.clear()
    cursor_ghost = nil

    local schedule, prototype, only_outpost
    local last_opened = storage.last_opened[player.index]
    local caravan_data = storage.caravans[last_opened.caravan]
    local interrupt_data = storage.interrupts[last_opened.interrupt]
    if caravan_data then
        if not Caravan.validity_check(caravan_data) then return end
        schedule = caravan_data.schedule
        prototype = caravan_prototypes[caravan_data.entity.name]
        only_outpost = prototype.only_allow_outpost_as_destination
    end
    if interrupt_data then
        schedule = interrupt_data.schedule
    end

    local entity = player.selected or player.surface.find_entities_filtered {
        position = event.cursor_position,
        limit = 1,
        collision_mask = {object = true, player = true, train = true, resource = true, floor = true, transport_belt = true, ghost = true}
    }[1]

    if last_opened.action_id then
        -- Last opened is an interrupt condition
        if interrupt_data and entity then
            if entity.operable then storage.make_operable_next_tick[#storage.make_operable_next_tick + 1] = entity end
            entity.operable = false -- Prevents the player from opening the gui of the clicked entity
            if entity.name == "outpost" or entity.name == "outpost-aerial" then
                local action_id = last_opened.action_id
                interrupt_data.conditions[action_id].entity = entity
                interrupt_data.conditions[action_id].localised_name = ""
            end
        end
    elseif last_opened.schedule_id then
        -- Last opened is a schedule to reassign
        if entity.operable then storage.make_operable_next_tick[#storage.make_operable_next_tick + 1] = entity end
        entity.operable = false -- Prevents the player from opening the gui of the clicked entity
        if only_outpost and entity.name ~= prototype.outpost then return end
        if caravan_data and (entity == caravan_data.entity or entity.surface ~= caravan_data.entity.surface) then return end
        local sch = schedule[last_opened.schedule_id]
        sch.localised_name = {"caravan-gui.entity-position", entity.prototype.localised_name, math.floor(entity.position.x), math.floor(entity.position.y)}
        sch.entity = entity
        sch.position = entity.position
    elseif entity then
        if entity.operable then storage.make_operable_next_tick[#storage.make_operable_next_tick + 1] = entity end
        entity.operable = false -- Prevents the player from opening the gui of the clicked entity
        if only_outpost and entity.name ~= prototype.outpost then return end
        if caravan_data and (entity == caravan_data.entity or entity.surface ~= caravan_data.entity.surface) then return end
        local player_index = nil
        local localised_name = {"caravan-gui.entity-position", entity.prototype.localised_name, math.floor(entity.position.x), math.floor(entity.position.y)}
        if entity.type == "character" then
            player_index = entity.player.index
            localised_name = {"caravan-gui.player-name", entity.player.name}
        end
        schedule[#schedule + 1] = {
            localised_name = localised_name,
            entity = entity,
            position = entity.position,
            player_index = player_index,
            actions = {}
        }
    elseif not only_outpost then
        local position = event.cursor_position
        if player.surface ~= caravan_data.entity.surface then return end
        schedule[#schedule + 1] = {
            localised_name = {"caravan-gui.map-position", math.floor(position.x), math.floor(position.y)},
            position = position,
            player_index = nil,
            actions = {}
        }
    else
        return
    end
end)

---Is this caravan currently doing anything?
---@param caravan_data Caravan
---@return boolean
Caravan.is_automated = function(caravan_data)
    return caravan_data.schedule_id and caravan_data.schedule_id >= 0
end

---Reduces the fuel bar of the caravan by 1. If the fuel bar is empty, it will instead attempt to eat fuel from the fuel inventory.
---If this function returns false, the caravan is starved and all actions stop.
---@param caravan_data Caravan
---@return boolean
function Caravan.eat(caravan_data)
    local entity = caravan_data.entity --[[@as LuaEntity]]
    if caravan_data.fuel_bar == 0 then
        local fuel = caravan_data.fuel_inventory
        for _, item in pairs(fuel.get_contents()) do
            item = item.name
            fuel.remove {name = item, count = 1}
            caravan_data.fuel_bar = caravan_prototypes[entity.name].favorite_foods[item]
            caravan_data.last_eaten_fuel_value = caravan_data.fuel_bar
            entity.force.get_item_production_statistics(entity.surface_index).on_flow(item, -1)
            return true
        end
        return false
    end
    caravan_data.fuel_bar = caravan_data.fuel_bar - 1
    return true
end

---Stops all actions of the caravan and cancels the current pathfinder request.
---This is used for example when it runs out of food or the GUI is interacted with.
---@param caravan_data Caravan
local function stop_actions(caravan_data)
    caravan_data.schedule_id = -1
    caravan_data.action_id = -1
    caravan_data.stored_energy = nil
    caravan_data.arrival_tick = nil
    wander(caravan_data)
    Caravan.update_interrupt_gui_button_status(caravan_data)
end

---Returns a table repersenting a caravan's action.
---@param player LuaPlayer
---@param element LuaGuiElement
local function get_action_from_button(player, element)
    local tags = element.tags
    local action_list_type = tags.action_list_type

    local action
    if action_list_type == Caravan.action_list_types.standard_schedule then
        action = storage.caravans[tags.unit_number].schedule[tags.schedule_id].actions[tags.action_id]
    elseif action_list_type == Caravan.action_list_types.interrupt_schedule then
        error()
    elseif action_list_type == Caravan.action_list_types.interrupt_condition then
        local interrupt = storage.interrupts[Caravan.get_interrupt_gui(player).tags.interrupt_name]
        action = interrupt.conditions[tags.action_id]
    elseif action_list_type == Caravan.action_list_types.interrupt_targets then
        local interrupt = storage.interrupts[Caravan.get_interrupt_gui(player).tags.interrupt_name]
        action = interrupt.schedule[tags.schedule_id].actions[tags.action_id]
    else
        error("Invalid action_list_type " .. tostring(action_list_type) .. ". GUI tags: " .. serpent.line(tags) .. " elem name: " .. element.name)
    end

    if not action then
        error("Could not find action with action_list_type " .. action_list_type .. ". GUI tags: " .. serpent.line(tags))
    end
    return action
end

---Returns a table repersenting a caravan's schedule.
---@param element LuaGuiElement
local function get_schedule(element)
    local tags = element.tags
    local action_list_type = tags.action_list_type

    if action_list_type == Caravan.action_list_types.standard_schedule then
        local caravan_data = storage.caravans[tags.unit_number]
        local schedule = caravan_data.schedule
        if tags.action_id then schedule = schedule[tags.schedule_id].actions end
        return schedule
    elseif action_list_type == Caravan.action_list_types.interrupt_schedule then
        local caravan_data = storage.caravans[tags.unit_number]
        return caravan_data.interrupts
    elseif action_list_type == Caravan.action_list_types.interrupt_condition then
        return storage.interrupts[tags.interrupt_name].conditions
    elseif action_list_type == Caravan.action_list_types.interrupt_targets then
        local schedule = storage.interrupts[tags.interrupt_name].schedule
        if tags.action_id then schedule = schedule[tags.schedule_id].actions end
        return schedule
    else
        error("Invalid action_list_type " .. tostring(action_list_type) .. ". GUI tags: " .. serpent.line(tags) .. " elem name: " .. element.name)
    end
end

-- Closes the gui, gives player the carrot-on-stick item and sets storage.last_opened to the provided value
---@param player LuaPlayer
---@param last_opened table
---@param camera_position MapPosition?
local function select_destination(player, last_opened, camera_position)
    local stack = player.cursor_stack
    if not stack then return end
    if stack.valid_for_read then
        if player.insert(stack) == 0 then
            player.surface.spill_item_stack {position = player.position, stack = stack, enable_looted = true, force = player.force}
        end
        stack.clear()
    end
    stack.set_stack {name = "caravan-control"}
    player.opened = nil
    if camera_position then
        local zoom = player.zoom
        player.set_controller{
            type = defines.controllers.remote,
            position = camera_position,
        }
        player.zoom = zoom
    end
    storage.last_opened[player.index] = last_opened
end

gui_events[defines.events.on_gui_click]["py_add_outpost"] = function(event)
    local player = game.get_player(event.player_index) --[[@as LuaPlayer]]
    local element = event.element
    local last_opened = {}
    
    local unit_number = Caravan.get_caravan_gui(player).tags.unit_number
    assert(unit_number)
    last_opened.caravan = unit_number
    last_opened.interrupt = element.tags.interrupt_name
    if element.tags.action_id then
        last_opened.schedule_id = element.tags.schedule_id
        last_opened.action_id = element.tags.action_id
    end
    select_destination(player, last_opened)
end

-- Opens the GUI for adding a new interrupt to a caravan
gui_events[defines.events.on_gui_click]["py_add_interrupt_button"] = function(event)
    local player = game.get_player(event.player_index)
    local gui = Caravan.get_caravan_gui(player)
    local caravan_data = storage.caravans[gui.tags.unit_number]
    local element = event.element

    stop_actions(caravan_data)
    Caravan.update_gui(gui)
    Caravan.build_add_interrupt_gui(player, gui.content_frame.content_flow.schedule_frame.schedule_pane)
end

function Caravan.add_interrupt(caravan_data, name, player)
    while storage.interrupts[name] do
        name = name .. "_"
    end
    storage.interrupts[name] = {
        name = name,
        conditions = {},
        schedule = {},
        inside_interrupt = false
    }
    storage.gui_elements_by_name["py_add_interrupt_frame"].destroy()
    if not name or name == "" then return end
    table.insert(caravan_data.interrupts, name)
    Caravan.build_interrupt_gui(player, caravan_data, name)
    Caravan.update_gui(Caravan.get_caravan_gui(player))
end

gui_events[defines.events.on_gui_confirmed]["py_add_interrupt_textfield"] = function(event)
    local player = game.get_player(event.player_index)
    local gui = Caravan.get_caravan_gui(player)
    local caravan_data = storage.caravans[gui.tags.unit_number]
    local element = event.element

    local name = element.text
    Caravan.add_interrupt(caravan_data, name, player)
end
gui_events[defines.events.on_gui_click]["py_add_interrupt_confirm_button"] = function(event)
    local player = game.get_player(event.player_index)
    local gui = Caravan.get_caravan_gui(player)
    local caravan_data = storage.caravans[gui.tags.unit_number]

    local name = event.element.parent.py_add_interrupt_textfield.text
    Caravan.add_interrupt(caravan_data, name, player)
end

gui_events[defines.events.on_gui_click]["py_add_interrupt_close_button"] = function(event)
    local player = game.get_player(event.player_index)
    local gui = Caravan.get_caravan_gui(player)
    local caravan_data = storage.caravans[gui.tags.unit_number]

    storage.gui_elements_by_name["py_add_interrupt_frame"].destroy()
end

-- Copies selected interrupt's name into the textfield
gui_events[defines.events.on_gui_selection_state_changed]["py_add_interrupt_list_box"] = function(event)
    local player = game.get_player(event.player_index)
    local element = event.element

    storage.gui_elements_by_name["py_add_interrupt_textfield"].text = element.get_item(element.selected_index)
end

gui_events[defines.events.on_gui_click]["py_edit_interrupt_button"] = function(event)
    local player = game.get_player(event.player_index)
    local gui = event.element
    local caravan_data = storage.caravans[gui.tags.unit_number]
    assert(gui.tags.interrupt_name, gui.name)
    Caravan.build_interrupt_gui(player, caravan_data, gui.tags.interrupt_name)
end

gui_events[defines.events.on_gui_click]["py_rename_interrupt_button"] = function(event)
    local player = game.get_player(event.player_index)
    local gui = Caravan.get_caravan_gui(player)
    local caravan_data = storage.caravans[gui.tags.unit_number]
    local element = event.element

    local label = element.parent.py_rename_interrupt_label
    label.visible = not label.visible
    local textfield = element.parent.py_rename_interrupt_textfield
    textfield.visible = not textfield.visible
    if textfield.visible then
        textfield.focus()
        textfield.text = label.caption
    else
        local old_name = label.caption
        local new_name = textfield.text
        if not new_name or new_name == "" or new_name == old_name then return end

        local interrupt = table.deepcopy(storage.interrupts[old_name])
        storage.interrupts[old_name] = nil
        while storage.interrupts[new_name] do
            new_name = new_name .. "_"
        end
        interrupt.name = new_name
        storage.interrupts[new_name] = interrupt

        -- Update all caravans containing this interrupt
        for _, caravan in pairs(storage.caravans or {}) do
            for i, interrupt in pairs(caravan.interrupts or {}) do
                if interrupt == old_name then
                    caravan.interrupts[i] = new_name
                    interrupt = nil
                    break
                end
            end
        end
        label.caption = new_name

        for _, player in pairs(game.players) do
            local interrupt_gui = Caravan.get_interrupt_gui(player)
            if interrupt_gui and interrupt_gui.tags.interrupt_name == old_name then
                local tags = interrupt_gui.tags
                tags.interrupt_name = new_name
                interrupt_gui.tags = tags
                Caravan.update_interrupt_gui(player)
            end
            local caravan_gui = Caravan.get_caravan_gui(player)
            if caravan_gui then Caravan.update_gui(caravan_gui) end
        end
    end
end
gui_events[defines.events.on_gui_confirmed]["py_rename_interrupt_textfield"] = gui_events[defines.events.on_gui_click]["py_rename_interrupt_button"]

gui_events[defines.events.on_gui_checked_state_changed]["py_inside_interrupt"] = function(event)
    local player = game.get_player(event.player_index)
    local element = event.element
    local interrupt_data = storage.interrupts[element.tags.interrupt_name]

    interrupt_data.inside_interrupt = element.state
end

gui_events[defines.events.on_gui_click]["py_delete_interrupt_button"] = function(event)
    local player = game.get_player(event.player_index)
    local element = event.element
    local interrupt_data = storage.interrupts[element.tags.interrupt_name]

    if element.parent.py_delete_interrupt_cancel.visible then
        for _, caravan in pairs(storage.caravans or {}) do
            for i, interrupt in pairs(caravan.interrupts or {}) do
                if interrupt == interrupt_data.name then
                    table.remove(caravan.interrupts, i)
                end
            end
        end
        storage.interrupts[element.tags.interrupt_name] = nil
        for _, player in pairs(game.players) do
            local gui = Caravan.get_interrupt_gui(player)
            if gui then
                if gui.tags.interrupt_name == element.tags.interrupt_name then
                    gui.destroy()
                    Caravan.update_gui(Caravan.get_caravan_gui(player))
                end
            end
        end
    else
        element.parent.py_delete_interrupt_cancel.visible = true
        element.parent.py_delete_interrupt_confirm.visible = true
    end
end

gui_events[defines.events.on_gui_click]["py_delete_interrupt_cancel"] = function(event)
    local player = game.get_player(event.player_index)
    local element = event.element

    element.parent.py_delete_interrupt_cancel.visible = false
    element.parent.py_delete_interrupt_confirm.visible = false
end

gui_events[defines.events.on_gui_click]["py_close_interrupt_button"] = function(event)
    local player = game.get_player(event.player_index)
    local gui = Caravan.get_interrupt_gui(player)
    gui.destroy()
end

gui_events[defines.events.on_gui_selection_state_changed]["py_add_action"] = function(event)
    local player = game.get_player(event.player_index) --[[@as LuaPlayer]]
    local element = event.element
    local tags = element.tags
    local caravan_data = storage.caravans[tags.unit_number]

    local action_list_type = tags.action_list_type
    local schedule
    local actions
    if action_list_type == Caravan.action_list_types.standard_schedule then
        schedule = caravan_data.schedule[tags.schedule_id]
        actions = schedule.actions
    elseif action_list_type == Caravan.action_list_types.interrupt_schedule then
        error("This should never happen. The list of added interrupts does not have actions. " .. element.name .. serpent.line(element.tags))
    elseif action_list_type == Caravan.action_list_types.interrupt_condition then
        local interrupt_data = storage.interrupts[Caravan.get_interrupt_gui(player).tags.interrupt_name]
        actions = interrupt_data.conditions
    elseif action_list_type == Caravan.action_list_types.interrupt_targets then
        assert(tags.schedule_id, element.name)
        local interrupt_data = storage.interrupts[Caravan.get_interrupt_gui(player).tags.interrupt_name]
        schedule = interrupt_data.schedule[tags.schedule_id]
        actions = schedule.actions
    else
        error("Invalid action_list_type " .. tostring(action_list_type) .. ". GUI tags: " .. serpent.line(tags) .. " elem name: " .. element.name)
    end

    if element.selected_index == 0 then return end

    local type = element.get_item(element.selected_index)[2]
    local localised_name = {"?", {"caravan-actions-short."..type}, {"caravan-actions."..type}}
    if type == "at-outpost" then
        localised_name = {"caravan-actions.at-outpost2", {"caravan-gui.not-specified"}}
    elseif type == "not-at-outpost" then
        localised_name = {"caravan-actions.not-at-outpost2", {"caravan-gui.not-specified"}}
    end
    actions[#actions + 1] = {
        type = type,
        localised_name = localised_name
    }
    Caravan.update_gui(Caravan.get_caravan_gui(player))
    Caravan.update_interrupt_gui(player)
end

gui_events[defines.events.on_gui_click]["py_blocking_caravan"] = function(event)
    local player = game.get_player(event.player_index) --[[@as LuaPlayer]]
    local element = event.element
    local action = get_action_from_button(player, element)
    action.async = not element.state
    local tags = element.tags
    local caravan_data = storage.caravans[tags.unit_number]
    if caravan_data then
        if tags.action_list_type == Caravan.action_list_types.standard_schedule then
            if tags.schedule_id == caravan_data.schedule_id then
                stop_actions(caravan_data)
            end
        end
    end
    Caravan.update_gui(Caravan.get_caravan_gui(player))
end

gui_events[defines.events.on_gui_selection_state_changed]["py_caravan_condition_operator"] = function(event)
    local player = game.get_player(event.player_index)
    local element = event.element
    local tags = element.tags
    local caravan_data = storage.caravans[tags.unit_number]
    local action_list_type = tags.action_list_type

    local action
    if action_list_type == Caravan.action_list_types.standard_schedule then
        action = caravan_data.schedule[tags.schedule_id].actions[tags.action_id]
    elseif action_list_type == Caravan.action_list_types.interrupt_condition then
        action = storage.interrupts[tags.interrupt_name].conditions[tags.action_id]
    elseif action_list_type == Caravan.action_list_types.interrupt_targets then
		action = storage.interrupts[tags.interrupt_name].schedule[tags.schedule_id].actions[tags.action_id]
	else
        error("Invalid action_list_type " .. tostring(action_list_type) .. ". GUI tags: " .. serpent.line(tags) .. " elem name: " .. element.name)
    end

    action.operator = element.selected_index
    if caravan_data then
        stop_actions(caravan_data)
    end
    Caravan.update_gui(Caravan.get_caravan_gui(player))
end

gui_events[defines.events.on_gui_click]["py_shuffle_schedule_."] = function(event)
    local player = game.get_player(event.player_index) --[[@as LuaPlayer]]
    local element = event.element
    local tags = element.tags
    local id = tags.action_id or tags.schedule_id
    local caravan_data = storage.caravans[tags.unit_number]

    local schedule = get_schedule(element)

    local offset = tags.up and -1 or 1
    local a, b = schedule[id], schedule[id + offset]
    if not a or not b then return end
    schedule[id] = b
    schedule[id + offset] = a
    if caravan_data then
        if tags.action_id then
            if caravan_data.schedule_id == tags.schedule_id and caravan_data.action_id ~= -1 then
                stop_actions(caravan_data)
            elseif caravan_data.schedule_id == tags.schedule_id and caravan_data.action_id ~= -1 then
                local move
                if caravan_data.action_id == id then
                    move = offset
                else
                    move = -offset
                end
                caravan_data.action_id = caravan_data.action_id + move
            end
        else
            if caravan_data.schedule_id ~= -1 then
                local move
                if caravan_data.schedule_id == id then
                    move = offset
                else
                    move = -offset
                end
                caravan_data.schedule_id = caravan_data.schedule_id + move
            else
                stop_actions(caravan_data)
            end
        end
    end

    Caravan.update_gui(Caravan.get_caravan_gui(player))
    Caravan.update_interrupt_gui(player)
end

gui_events[defines.events.on_gui_click]["py_delete_schedule"] = function(event)
    local player = game.get_player(event.player_index) --[[@as LuaPlayer]]
    local element = event.element
    local tags = element.tags
    local caravan_data = storage.caravans[tags.unit_number]
    local id = tags.action_id or tags.schedule_id

    local schedule = get_schedule(element)

    table.remove(schedule, id)

    if caravan_data then
        stop_actions(caravan_data)
    end
    Caravan.update_gui(Caravan.get_caravan_gui(player))
    Caravan.update_interrupt_gui(player)
end

gui_events[defines.events.on_gui_click]["py_outpost_name"] = function(event)
    local player = game.get_player(event.player_index)
    local gui = Caravan.get_caravan_gui(player)
    local caravan_data = storage.caravans[gui.tags.unit_number]
    local element = event.element
    local tags = element.tags
    local schedule = get_schedule(element)[tags.schedule_id]
    local camera = gui.content_frame.content_flow.camera_frame.camera
    local refocus = gui.content_frame.content_flow.caption_frame.caption_flow.py_refocus

    if schedule.entity then
        if schedule.entity.valid then
            camera.entity = schedule.entity
        else
            local last_opened = {}
            last_opened.caravan = caravan_data.unit_number
            last_opened.interrupt = element.tags.interrupt_name
            last_opened.schedule_id = element.tags.schedule_id
            select_destination(player, last_opened, schedule.position)
            return
        end
    else
        camera.entity = nil
        camera.position = schedule.position
        camera.surface_index = caravan_data.entity.surface_index
    end
    refocus.visible = true
    camera.zoom = 0.5
end

gui_events[defines.events.on_gui_click]["py_refocus"] = function(event)
    local player = game.get_player(event.player_index)
    local element = event.element
    local tags = element.tags
    local caravan_data = storage.caravans[tags.unit_number]
    local camera = Caravan.get_caravan_gui(player).content_frame.content_flow.camera_frame.camera
    local refocus = Caravan.get_caravan_gui(player).content_frame.content_flow.caption_frame.caption_flow.py_refocus

    camera.entity = caravan_data.entity
    refocus.visible = false
    camera.zoom = caravan_prototypes[caravan_data.entity.name].camera_zoom or 1
end

---Starts a caravan pathfinding to its next scheduled entity. Sets the action ID to -1 becuase it cannot do actions while in transit.
---This is called whenever it finishes all its actions on the previous schedule or it is started manually via the GUI.
---@param caravan_data Caravan
---@param schedule_id int
---@param skip_eating boolean?
local function begin_schedule(caravan_data, schedule_id, skip_eating)
    local schedule = caravan_data.schedule[schedule_id]
    if not schedule or (schedule.entity and not schedule.entity.valid) then
        stop_actions(caravan_data); return
    end

    if caravan_data.last_scheduled_tick and caravan_data.last_scheduled_tick + 30 > game.tick then
        if caravan_data.schedule_id ~= schedule_id then
            if not skip_eating and not Caravan.eat(caravan_data) then
                stop_actions(caravan_data); return
            end
        end
        caravan_data.schedule_id = schedule_id
        caravan_data.retry_pathfinder = 1
        return
    end

    local entity = caravan_data.entity
    if not entity or not entity.valid then
        stop_actions(caravan_data); return
    end

    if caravan_data.fuel_inventory then
        if not skip_eating and not Caravan.eat(caravan_data) then
            stop_actions(caravan_data); return
        end
    end

    caravan_data.schedule_id = schedule_id
    caravan_data.action_id = -1
    if schedule.entity then
        local schedule_entity = schedule.entity --[[@as LuaEntity]]
        if schedule_entity.valid and schedule_entity.surface == entity.surface then
            goto_entity(caravan_data, schedule.entity)
        else
            add_alert(entity, Caravan.alerts.destination_destroyed)
            py.draw_error_sprite(entity, "virtual-signal.py-destination-destroyed", 30)
            wander(caravan_data)
            caravan_data.retry_pathfinder = 1
            return
        end
    else
        goto_position(caravan_data, schedule.position)
    end

    caravan_data.last_scheduled_tick = game.tick
    Caravan.update_interrupt_gui_button_status(caravan_data)
end

---Begins the action with the specified ID inside the caravan's current schedule.
---@param caravan_data Caravan
---@param action_id int
local function begin_action(caravan_data, action_id)
    local entity = caravan_data.entity
    local schedule = caravan_data.schedule[caravan_data.schedule_id]
    if not schedule then
        stop_actions(caravan_data); return
    end
    local action = schedule.actions[action_id]
    if not action then
        stop_actions(caravan_data); return
    end

    caravan_data.action_id = action_id

    if action.type == "time-passed" then
        action.timer = action.wait_time or 5
    end

    Caravan.update_interrupt_gui_button_status(caravan_data)
end

gui_events[defines.events.on_gui_click]["py_schedule_play"] = function(event)
    local player = game.get_player(event.player_index)
    local element = event.element
    local tags = element.tags
    local caravan_data = storage.caravans[tags.unit_number]
    local action_list_type = tags.action_list_type

    if action_list_type == Caravan.action_list_types.standard_schedule then
        if caravan_data.schedule_id == tags.schedule_id then
            stop_actions(caravan_data)
        else
            begin_schedule(caravan_data, tags.schedule_id)
        end
    elseif action_list_type == Caravan.action_list_types.interrupt_targets then
        if element.sprite == "utility/stop" then
            remove_tmp_stops(caravan_data)
            stop_actions(caravan_data)
        else
            remove_tmp_stops(caravan_data)
            local interrupt_data = storage.interrupts[tags.interrupt_name]
            local index = add_interrupt(caravan_data, interrupt_data)
            if index > 0 then
                begin_schedule(caravan_data, index)
            end
        end
    else
        error("Invalid action_list_type " .. tostring(action_list_type) .. ". GUI tags: " .. serpent.line(tags) .. " elem name: " .. element.name)
    end

    Caravan.update_gui(Caravan.get_caravan_gui(player))
end

gui_events[defines.events.on_gui_click]["py_action_play"] = function(event)
    local player = game.get_player(event.player_index)
    local element = event.element
    local tags = element.tags
    local caravan_data = storage.caravans[tags.unit_number]
    local schedule = caravan_data.schedule[tags.schedule_id]
    local action_list_type = tags.action_list_type

    if action_list_type == Caravan.action_list_types.standard_schedule then
        if caravan_data.schedule_id == tags.schedule_id then
            if caravan_data.action_id == tags.action_id then
                stop_actions(caravan_data)
            else
                local position
                if schedule.entity and schedule.entity.valid then position = schedule.entity.position else position = schedule.position end
                if py.distance_squared(position, caravan_data.entity.position) < 1000 then
                    begin_action(caravan_data, tags.action_id)
                end
            end
        else
            begin_schedule(caravan_data, tags.schedule_id)
        end
    elseif action_list_type == Caravan.action_list_types.interrupt_targets then
        if element.sprite == "utility/stop" then
            remove_tmp_stops(caravan_data)
            stop_actions(caravan_data)
        else
            remove_tmp_stops(caravan_data)
            local interrupt_data = storage.interrupts[tags.interrupt_name]
            local index = add_interrupt(caravan_data, interrupt_data)
            if index > 0 then
                begin_schedule(caravan_data, index)
            end
        end
    else
        error("Invalid action_list_type " .. tostring(action_list_type) .. ". GUI tags: " .. serpent.line(tags) .. " elem name: " .. element.name)
    end

    Caravan.update_gui(Caravan.get_caravan_gui(player))
end

gui_events[defines.events.on_gui_click]["py_fuel_slot_."] = function(event)
    local player = game.get_player(event.player_index) --[[@as LuaPlayer]]
    local element = event.element
    local tags = element.tags
    local caravan_data = storage.caravans[tags.unit_number]
    local cursor_stack = player.cursor_stack
    if not cursor_stack then return end
    local fuel_stack = caravan_data.fuel_inventory[tags.i]
    if cursor_stack.valid_for_read and not caravan_prototypes[caravan_data.entity.name].favorite_foods[cursor_stack.name] then return end
    local character = player.character
    if character and character.valid and not character.can_reach_entity(caravan_data.entity) then return end

    -- Attempts to replicate different stack transfer interactions
    -- TODO: modifiers (shift/control)
    if event.button == defines.mouse_button_type.left then
        if cursor_stack.valid_for_read then
            if fuel_stack.valid_for_read and cursor_stack.prototype == fuel_stack.prototype then
                fuel_stack.transfer_stack(cursor_stack)
            else
                cursor_stack.swap_stack(fuel_stack)
            end
        else
            cursor_stack.swap_stack(fuel_stack)
        end
    elseif event.button == defines.mouse_button_type.right then
        if not cursor_stack.valid_for_read and fuel_stack.valid_for_read then
            cursor_stack.set_stack(fuel_stack)
            cursor_stack.count = math.ceil(fuel_stack.count / 2)
            fuel_stack.count = math.floor(fuel_stack.count / 2)
        elseif cursor_stack.valid_for_read then
            -- Creates a temporary stack (needed to preserve metadata) by temporarily resizing inventory
            caravan_data.fuel_inventory.resize(#caravan_data.fuel_inventory + 1)
            local tmp_stack = caravan_data.fuel_inventory[#caravan_data.fuel_inventory]
            tmp_stack.set_stack(cursor_stack)
            tmp_stack.count = 1

            local result
            if fuel_stack.valid_for_read then
                result = fuel_stack.transfer_stack(tmp_stack)
            else
                result = fuel_stack.set_stack(tmp_stack)
            end
            if result then
                cursor_stack.count = cursor_stack.count - 1
            end
            caravan_data.fuel_inventory.resize(#caravan_data.fuel_inventory - 1)
        end
    end

    if Caravan.eat(caravan_data) then caravan_data.fuel_bar = caravan_data.fuel_bar + 1 end
    Caravan.update_gui(Caravan.get_caravan_gui(player))
end

gui_events[defines.events.on_gui_elem_changed]["py_item_value"] = function(event)
    local player = game.get_player(event.player_index) --[[@as LuaPlayer]]
    local element = event.element
    local action = get_action_from_button(player, element)
    action.elem_value = element.elem_value
end

gui_events[defines.events.on_gui_text_changed]["py_item_count"] = function(event)
    local player = game.get_player(event.player_index) --[[@as LuaPlayer]]
    local element = event.element
    local action = get_action_from_button(player, element)
    local item_count = tonumber(element.text)

    action.item_count = item_count or 0
end
gui_events[defines.events.on_gui_text_changed]["py_food_count"] = gui_events[defines.events.on_gui_text_changed]["py_item_count"]

gui_events[defines.events.on_gui_confirmed]["py_item_count"] = function(event)
    local player = game.get_player(event.player_index) --[[@as LuaPlayer]]
    local element = event.element
    local action = get_action_from_button(player, element)
    local item_count = tonumber(element.text)

    -- Limit item count to the maximum amount the caravan can fit
    if action.elem_value and item_count then
        local stack_size = prototypes.item[action.elem_value].stack_size
        local caravan_data = storage.caravans[element.tags.unit_number]
        if caravan_data then
            item_count = math.min(item_count, stack_size * #caravan_data.inventory)
        end
    end
    action.item_count = item_count or 0
    element.text = tostring(item_count or 0)
end

gui_events[defines.events.on_gui_confirmed]["py_food_count"] = function(event)
    local player = game.get_player(event.player_index) --[[@as LuaPlayer]]
    local element = event.element
    local action = get_action_from_button(player, element)
    local item_count = tonumber(element.text)

    -- Limit item count to the maximum amount the caravan can fit
    if action.elem_value and item_count then
        local stack_size = prototypes.item[action.elem_value].stack_size
        local caravan_data = storage.caravans[element.tags.unit_number]
        if caravan_data then
            item_count = math.min(item_count, stack_size * #caravan_data.fuel_inventory)
        end
    end
    action.item_count = item_count or 0
    element.text = tostring(item_count or 0)
end

gui_events[defines.events.on_gui_elem_changed]["py_circuit_condition_right"] = function(event)
    local player = game.get_player(event.player_index) --[[@as LuaPlayer]]
    local element = event.element
    local action = get_action_from_button(player, element)
    action.circuit_condition_right = element.elem_value
end

gui_events[defines.events.on_gui_elem_changed]["py_circuit_condition_left"] = function(event)
    local player = game.get_player(event.player_index) --[[@as LuaPlayer]]
    local element = event.element
    local action = get_action_from_button(player, element)
    action.circuit_condition_left = element.elem_value
end

gui_events[defines.events.on_gui_text_changed]["py_value_condition_right"] = function(event)
    local player = game.get_player(event.player_index) --[[@as LuaPlayer]]
    local element = event.element
    local action = get_action_from_button(player, element)
    action.circuit_condition_right = tonumber(element.text)
end


gui_events[defines.events.on_gui_text_changed]["py_time_passed_text"] = function(event)
    local player = game.get_player(event.player_index) --[[@as LuaPlayer]]
    local element = event.element
    local action = get_action_from_button(player, element)
    action.wait_time = tonumber(element.text or 5)
end

-- Removes all temporary stop from the caravan schedule
remove_tmp_stops = function(caravan_data)
    local new_schedule = {}

    for idx, sch in pairs(caravan_data.schedule) do
        if sch.temporary then
            if idx == caravan_data.schedule_id then
                caravan_data.action_id = -1
            end
            if idx <= caravan_data.schedule_id then
                caravan_data.schedule_id = caravan_data.schedule_id - 1
            end
        else
            new_schedule[#new_schedule + 1] = sch
        end
    end
    caravan_data.schedule = new_schedule

    if caravan_data.schedule_id < 1 then
        stop_actions(caravan_data)
    end
end

---@param caravan_data Caravan
local function advance_caravan_schedule_by_1(caravan_data)
    local schedule = caravan_data.schedule[caravan_data.schedule_id]
    assert(schedule)

    local existing_interrupt_name
    local is_interrupted = false
    for _, sch in pairs(caravan_data.schedule) do
        if sch.temporary then
            if sch ~= schedule then -- It is about to be deleted, so dont count it
                is_interrupted = true
                existing_interrupt_name = sch.temporary.interrupt_name
                break
            end
        end
    end

    local passed_index
    for idx, interrupt in pairs(caravan_data.interrupts) do
        interrupt = storage.interrupts[interrupt]
        if not interrupt then goto continue end

        local inside = interrupt.inside_interrupt
        if is_interrupted and not inside then goto continue end
        if is_interrupted and inside and existing_interrupt_name == interrupt.name then goto continue end

        local conditions_passed = true
        if table_size(interrupt.conditions) == 0 then conditions_passed = false end
        for _, condition in pairs(interrupt.conditions) do
            if not Caravan.actions[condition.type] then break end
            if not Caravan.actions[condition.type](caravan_data, caravan_data.schedule[caravan_data.schedule_id], condition) then
                conditions_passed = false
                break
            end
        end
        if conditions_passed then
            passed_index = idx
            is_interrupted = true -- Pretend the interrupt succeded but dont add it to the schedule yet
        end

        ::continue::
    end

    if passed_index then
        local interrupt = storage.interrupts[caravan_data.interrupts[passed_index]]
        remove_tmp_stops(caravan_data)
        add_interrupt(caravan_data, interrupt)
    else
        if schedule.temporary then
            table.remove(caravan_data.schedule, caravan_data.schedule_id)
            if #caravan_data.schedule == 0 then
                caravan_data.schedule_id = -1
            else
                caravan_data.schedule_id = caravan_data.schedule_id - 1
            end
        end
    end

    begin_schedule(caravan_data, caravan_data.schedule_id % #caravan_data.schedule + 1, #caravan_data.schedule == 1)
end

py.on_event(defines.events.on_ai_command_completed, function(event)
    local unit_number = event.unit_number
    local caravan_data = storage.caravans[unit_number]
    if not caravan_data or not Caravan.validity_check(caravan_data) then return end
    local schedule = caravan_data.schedule[caravan_data.schedule_id]
    local status = event.result
    if not schedule then
        stop_actions(caravan_data); goto update_gui
    end

    if status == defines.behavior_result.in_progress then return end
    if status == defines.behavior_result.fail or status == defines.behavior_result.deleted then
        caravan_data.retry_pathfinder = 10
        caravan_data.action_id = -1
        return
    end

    if #schedule.actions == 0 then
        local schedule_num = #caravan_data.schedule
        if schedule_num == 1 and not caravan_data.schedule[1].temporary then
            caravan_data.retry_pathfinder = 3
            return
        else
            advance_caravan_schedule_by_1(caravan_data)
        end
    else
        local entity = caravan_data.entity --[[@as LuaEntity]]
        begin_action(caravan_data, 1)
        entity.commandable.set_command {
            type = defines.command.stop,
            distraction = defines.distraction.none,
            pathfind_flags = {}
        }
        local prototype = caravan_prototypes[entity.name]
        if prototype.requeue_required then
            storage.caravan_queue = nil
            caravan_data.arrival_tick = game.tick
        end
    end

    ::update_gui::
    for _, player in pairs(game.connected_players) do
        local gui = Caravan.get_caravan_gui(player)
        if gui and gui.tags.unit_number == unit_number then
            Caravan.update_gui(gui); return
        end
    end
end)

---Sort function to sort caravans by arrival time. Used to give priority to whichever caravans have been waiting the longest.
---@param a Caravan
---@param b Caravan
local function caravan_sort_function(a, b)
    return (a.arrival_tick or 0) < (b.arrival_tick or 0)
end

-- Adds an interrupt's schedule to the caravan schedule. Returns index of the first schedule added
---@param caravan_data Caravan
---@param interrupt_data CaravanInterrupt
function add_interrupt(caravan_data, interrupt_data)
    if #interrupt_data.schedule <= 0 then return caravan_data.schedule_id end
    local first_inserted_location = nil
    for i = 1, #interrupt_data.schedule do
        local sch = table.deepcopy(interrupt_data.schedule[i])
        sch.temporary = {interrupt_name = interrupt_data.name, schedule_id = i}
        local index = math.max(0, caravan_data.schedule_id) + i
        first_inserted_location = first_inserted_location or index
        table.insert(caravan_data.schedule, index, sch)
    end

    -- Whenever an interrupt is added, the caravan should always immediately execute that action.
    -- Return the schedule_id of that interrupt.
    local new_schedule_id_to_execute = first_inserted_location or #caravan_data.schedule
    return new_schedule_id_to_execute == 0 and -1 or new_schedule_id_to_execute
end

gui_events[defines.events.on_gui_click]["py_interrupt_play"] = function(event)
    local player = game.get_player(event.player_index)
    local element = event.element
    local caravan_data = storage.caravans[element.tags.unit_number]
    local interrupt_data = storage.interrupts[caravan_data.interrupts[element.tags.schedule_id]]

    remove_tmp_stops(caravan_data)
    local index = add_interrupt(caravan_data, interrupt_data)
    if index > 0 then
        begin_schedule(caravan_data, index)
    end

    Caravan.update_gui(Caravan.get_caravan_gui(player))
end

---@param caravan_data Caravan
---@param entity LuaEntity
function Caravan.get_valid_actions_for_entity(caravan_data, entity)
    local prototype = caravan_prototypes[caravan_data.entity.name]
    local all_actions = prototype.actions
    local valid_actions
    if entity and entity.valid then
        if entity.name == "outpost" or entity.name == "outpost-aerial" then
            valid_actions = all_actions.outpost
        else
            valid_actions = all_actions[entity.type]
        end
    end
    return valid_actions or all_actions.default or error()
end

py.register_on_nth_tick(60, "update-caravans", "pyal", function()
    local guis_to_update = {}

    if not storage.caravan_queue then
        local queue = {}
        for _, caravan_data in pairs(storage.caravans) do
            if Caravan.validity_check(caravan_data) then
                queue[#queue + 1] = caravan_data
            end
        end
        table.sort(queue, caravan_sort_function)
        storage.caravan_queue = queue
    end

    for _, caravan_data in pairs(storage.caravan_queue) do
        if not Caravan.validity_check(caravan_data) then goto continue end
        local entity = caravan_data.entity
        local needs_fuel = caravan_data.fuel_inventory and caravan_data.fuel_bar == 0 and caravan_data.fuel_inventory.is_empty()

        if needs_fuel then
            add_alert(entity, Caravan.alerts.no_fuel)
            py.draw_error_sprite(entity, "virtual-signal.py-no-food", 30)
            goto continue
        end

        if caravan_data.retry_pathfinder then
            caravan_data.retry_pathfinder = caravan_data.retry_pathfinder - 1
            if caravan_data.retry_pathfinder == 0 then
                begin_schedule(caravan_data, caravan_data.schedule_id, true)
            end
            if caravan_data.retry_pathfinder == 0 then
                caravan_data.retry_pathfinder = nil
            end
            goto continue
        end

        if caravan_data.action_id == -1 then goto continue end
        local schedule = caravan_data.schedule[caravan_data.schedule_id]
        if not schedule then goto continue end
        local action = schedule.actions[caravan_data.action_id]
        if not action then goto continue end
        local target_entity = schedule.entity

        local result
        if Caravan.get_valid_actions_for_entity(caravan_data, target_entity)[action.type] then
            result = Caravan.actions[action.type](caravan_data, schedule, action)
        else
            result = true -- Skip invalid action
        end
        if result == "nuke" then
            goto continue
        elseif result == "error" then
            stop_actions(caravan_data)
            guis_to_update[caravan_data.unit_number] = true
            -- Advance the schedule
        elseif result then
            if #schedule.actions == caravan_data.action_id then
                advance_caravan_schedule_by_1(caravan_data)
            else
                begin_action(caravan_data, caravan_data.action_id + 1)
            end
            guis_to_update[caravan_data.unit_number] = true
        else
            if schedule.entity and schedule.entity.valid then
                if py.distance_squared(schedule.entity.position, entity.position) > 1000 then
                    goto_entity(caravan_data, schedule.entity)
                end
            else
                if py.distance_squared(schedule.position, entity.position) > 1000 then
                    goto_position(caravan_data, schedule.position)
                end
            end
        end

        ::continue::
    end

    if next(guis_to_update) then
        for _, player in pairs(game.connected_players) do
            local gui = Caravan.get_caravan_gui(player)
            if gui and guis_to_update[gui.tags.unit_number] then Caravan.update_gui(gui) end
        end
    end

    if next(storage.make_operable_next_tick) then
        for _, entity in pairs(storage.make_operable_next_tick) do
            if entity.valid then entity.operable = true end
        end
        storage.make_operable_next_tick = {}
    end
end)

function Caravan.instantiate_caravan(entity)
    local existing = storage.caravans[entity.unit_number]
    if existing then return existing end

    local prototype = caravan_prototypes[entity.name]
    local caravan_data = {
        unit_number = entity.unit_number,
        entity = entity,
        schedule = {},
        interrupts = {},
        schedule_id = -1,
        action_id = -1
    }

    if prototype.favorite_foods and prototype.fuel_size then
        caravan_data.fuel_inventory = game.create_inventory(prototype.fuel_size)
        caravan_data.fuel_bar = 0
        caravan_data.last_eaten_fuel_value = 1
    end

    if prototype.inventory_size then
        caravan_data.inventory = game.create_inventory(prototype.inventory_size, {"caravan-gui.caravan-inventory"})
    end

    storage.caravans[entity.unit_number] = caravan_data
    return caravan_data
end

py.on_event(py.events.on_built(), function(event)
    local entity = event.entity
    local prototype = caravan_prototypes[entity.name]
    if not prototype then return end
    if prototype.destructible == false then entity.destructible = false end

    local inventory = event.consumed_items
    local tags = event.tags or (inventory and not inventory.is_empty() and inventory[1].valid_for_read and inventory[1].is_item_with_tags and inventory[1].tags) or nil

    if tags and tags.unit_number and storage.caravans[tags.unit_number] then
        local caravan_data = storage.caravans[tags.unit_number]
        caravan_data.itemised = nil
        caravan_data.unit_number = entity.unit_number
        caravan_data.entity = entity
        stop_actions(caravan_data)
        storage.caravans[entity.unit_number] = caravan_data
        storage.caravans[tags.unit_number] = nil
    else
        Caravan.instantiate_caravan(entity)
    end
    script.register_on_object_destroyed(entity)
    storage.caravan_queue = nil
end)

py.on_event(py.events.on_destroyed(), function(event)
    local entity = event.entity
    local prototype = caravan_prototypes[entity.name]
    if not prototype then return end

    remove_alert(event.entity)

    local buffer = event.buffer
    if buffer then
        buffer[1].tags = {unit_number = entity.unit_number}
        local caravan_data = storage.caravans[entity.unit_number]
        if caravan_data then
            buffer[1].custom_description = {
                "",
                {"caravan-gui.hello-my-name-is", Caravan.get_name(caravan_data)},
                Caravan.get_inventory_tooltip(caravan_data),
                "\n",
                entity.prototype.localised_description
            }
        end
    end
    storage.caravan_queue = nil
end)

py.on_event(defines.events.on_object_destroyed, function(event)
    local unit_number = event.useful_id
    local caravan_data = storage.caravans[unit_number]

    if not caravan_data then return end

    storage.caravans[unit_number].itemised = true
    for _, player in pairs(game.connected_players) do
        local gui = Caravan.get_caravan_gui(player)
        if gui and gui.tags.unit_number == unit_number then
            gui.destroy(); player.opened = nil
        end
    end

    local map_tag = caravan_data.map_tag
    if map_tag and map_tag.valid then map_tag.destroy() end
end)

py.on_event(defines.events.on_entity_settings_pasted, function(event)
    local source, destination = event.source, event.destination
    local source_data, destination_data = storage.caravans[source.unit_number], storage.caravans[destination.unit_number]
    if not source_data or not destination_data then return end

    for _, prototype in pairs(source.prototype.additional_pastable_entities) do
        if prototype.name == destination.name then goto continue end
    end
    do return end
    ::continue::

    stop_actions(destination_data)
    destination_data.schedule = table.deepcopy(source_data.schedule)
    destination_data.interrupts = table.deepcopy(source_data.interrupts)
    for _, player in pairs(game.connected_players) do
        local gui = Caravan.get_caravan_gui(player)
        if gui and gui.tags.unit_number == destination.unit_number then Caravan.update_gui(gui) end
    end
end)

remote.add_interface("caravans", {
    get_caravan_count = function()
        local result = 0
        for _, caravan_data in pairs(storage.caravans) do
            if caravan_data.entity and caravan_data.entity.valid and not caravan_data.itemised then
                result = result + 1
            end
        end
        return result
    end
})

---This is called whenever an entity is swapped out for an identical entity. For example ulric man steroids transforming the player character into a different entity.
---TODO: potentially not needed anymore since caravan now binds to player, not just character
---@param old LuaEntity
---@param new LuaEntity
function Caravan.entity_changed_unit_number(old, new)
    if not old.valid then error("Don\'t call this with an invalid entity") end
    for _, caravan_data in pairs(storage.caravans) do
        for _, schedule in pairs(caravan_data.schedule) do
            if schedule.entity == old then
                schedule.localised_name = {"caravan-gui.entity-position", new.prototype.localised_name, math.floor(new.position.x), math.floor(new.position.y)}
                schedule.entity = new
                schedule.position = new.position
            end
        end
    end
end
