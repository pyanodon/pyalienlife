local CaravanImpl = require "__pyalienlife__/scripts/caravan/impl"
local CaravanGui = require "__pyalienlife__/scripts/caravan/gui"
local CaravanGuiComponents = require "__pyalienlife__/scripts/caravan/gui/components"
local Utils = require "__pyalienlife__/scripts/caravan/utils"

gui_events[defines.events.on_gui_click]["py_caravan_destination_add_button"] = function(event)
    local player = game.get_player(event.player_index)
    local element = event.element
    local cursor_stack = player.cursor_stack
    if not cursor_stack then return end

    if cursor_stack.valid_for_read then
        if player.insert(cursor_stack) == 0 then
            player.surface.spill_item_stack {position = player.position, stack = cursor_stack, enable_looted = true, force = player.force}
        end
        cursor_stack.clear()
    end
    cursor_stack.set_stack {name = "caravan-control"}
    storage.last_opened_action[player.index] = nil
    if element.tags.action_id then
        storage.last_opened_action[player.index] = {schedule_id = element.tags.schedule_id, action_id = element.tags.action_id}
    end
    storage.last_opened_interrupt[player.index] = element.tags.interrupt_name
    local unit_number = element.tags.unit_number
    assert(unit_number)
    storage.last_opened_caravan[player.index] = unit_number
    player.opened = nil
end

gui_events[defines.events.on_gui_click]["py_caravan_destination_move_up_button"] = function(event)
    local unit_number = event.element.tags.unit_number
    local caravan_data = storage.caravans[unit_number]
    local i = event.element.tags.schedule_id

    if i == 1 then return end

    caravan_data.schedule[i - 1], caravan_data.schedule[i] = caravan_data.schedule[i], caravan_data.schedule[i - 1]

    CaravanImpl.stop_actions(caravan_data)

    local player = game.get_player(event.player_index)
    CaravanGuiComponents.update_schedule_pane(player)
end

gui_events[defines.events.on_gui_click]["py_caravan_destination_move_down_button"] = function(event)
    local unit_number = event.element.tags.unit_number
    local caravan_data = storage.caravans[unit_number]
    local i = event.element.tags.schedule_id

    if i == #caravan_data.schedule then return end

    caravan_data.schedule[i + 1], caravan_data.schedule[i] = caravan_data.schedule[i], caravan_data.schedule[i + 1]

    local player = game.get_player(event.player_index)
    CaravanGuiComponents.update_schedule_pane(player)
end

gui_events[defines.events.on_gui_click]["py_caravan_destination_delete_button"] = function(event)
    local unit_number = event.element.tags.unit_number
    local caravan_data = storage.caravans[unit_number]
    table.remove(caravan_data.schedule, event.element.tags.schedule_id)

    CaravanImpl.stop_actions(caravan_data)
    local player = game.get_player(event.player_index)
    CaravanGuiComponents.update_schedule_pane(player)
end

-- TODO handle interrupts
gui_events[defines.events.on_gui_click]["py_caravan_destination_play_stop_button"] = function(event)
    local player = game.get_player(event.player_index)
    local element = event.element
    local tags = element.tags
    local caravan_data = storage.caravans[tags.unit_number]
    local schedule = caravan_data.schedule[tags.schedule_id]

    if caravan_data.schedule_id == tags.schedule_id then
        if caravan_data.action_id == tags.action_id then
            CaravanImpl.stop_actions(caravan_data)
        else
            local position; if schedule.entity then position = schedule.entity.position else position = schedule.position end
            if py.distance_squared(position, caravan_data.entity.position) < 1000 then
                CaravanImpl.begin_action(caravan_data, tags.action_id)
            end
        end
    else
        CaravanImpl.begin_schedule(caravan_data, tags.schedule_id)
    end

    CaravanGui.update_gui(player)
end

gui_events[defines.events.on_gui_selection_state_changed]["py_caravan_destination_action_drop_down"] = function(event)
    local player = game.get_player(event.player_index)
    local action_id = event.element.selected_index
    local schedule_id = event.element.tags.schedule_id
    local element = event.element

    local unit_number = event.element.tags.unit_number
    local caravan_data = storage.caravans[unit_number]

    -- TODO handle interrupts later, maybe in separate event handlers? 
    local schedule = caravan_data.schedule[schedule_id]
    local actions = schedule.actions

    local valid_actions = table.invert(Utils.get_valid_actions_for_entity(caravan_data.entity.name, caravan_data.schedule[schedule_id].entity))

    -- off-by-one index is used to show "+ Add action" text
    if element.selected_index == 0 or element.selected_index > #valid_actions then return end

    local type = element.get_item(element.selected_index)[2]
    local localised_name = element.get_item(element.selected_index)
    if type == "at-outpost" then
        localised_name = {"caravan-actions.at-outpost2", {"caravan-gui.not-specified"}}
    elseif type == "not-at-outpost" then
        localised_name = {"caravan-actions.not-at-outpost2", {"caravan-gui.not-specified"}}
    end
    table.insert(caravan_data.schedule[schedule_id].actions, {type = type, localised_name = localised_name})

    CaravanGuiComponents.update_schedule_pane(player)
end
