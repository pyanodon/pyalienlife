local CaravanImpl = require "__pyalienlife__/scripts/caravan/impl"
local CaravanUtils = require "__pyalienlife__/scripts/caravan/utils"
local CaravanGui = require "__pyalienlife__/scripts/caravan/gui"
local CaravanGuiComponents = require "__pyalienlife__/scripts/caravan/gui/components"
local EditInterruptGui = require "__pyalienlife__/scripts/caravan/gui/edit_interrupt"

local function update_action_gui(player, tags)
    local action_list_type = tags.action_list_type

    local action
    if action_list_type == Caravan.action_list_types.standard_schedule then
        CaravanGuiComponents.update_schedule_pane(player)
    elseif action_list_type == Caravan.action_list_types.interrupt_schedule then
        error()
    elseif action_list_type == Caravan.action_list_types.interrupt_condition then
        EditInterruptGui.update_conditions_pane(player)
    elseif action_list_type == Caravan.action_list_types.interrupt_targets then
        EditInterruptGui.update_targets_pane(player)
    end
end

gui_events[defines.events.on_gui_click]["py_caravan_action_move_up_button"] = function(event)
    local player = game.get_player(event.player_index)
    local actions = CaravanUtils.get_actions_from_tags(event.element.tags)

    local i = event.element.tags.action_id

    if i == 1 then return end

    actions[i - 1], actions[i] = actions[i], actions[i - 1]

    update_action_gui(player, event.element.tags)
end

gui_events[defines.events.on_gui_click]["py_caravan_action_move_down_button"] = function(event)
    local player = game.get_player(event.player_index)
    local actions = CaravanUtils.get_actions_from_tags(event.element.tags)

    local i = event.element.tags.action_id

    if i == #actions then return end

    actions[i + 1], actions[i] = actions[i], actions[i + 1]

    update_action_gui(player, event.element.tags)
end

gui_events[defines.events.on_gui_click]["py_caravan_action_delete_button"] = function(event)
    local player = game.get_player(event.player_index)
    local actions = CaravanUtils.get_actions_from_tags(event.element.tags)

    table.remove(actions, event.element.tags.action_id)

    update_action_gui(player, event.element.tags)
end

gui_events[defines.events.on_gui_click]["py_caravan_action_blocking_checkbox"] = function(event)
    local player = game.get_player(event.player_index)
    local tags = event.element.tags

    local action = CaravanUtils.get_action_from_button(event.element)
    action.async = not event.element.state

    if tags.unit_number then
        local caravan_data = storage.caravans[tags.unit_number]
        CaravanImpl.stop_actions(caravan_data)
        CaravanGuiComponents.update_schedule_pane(player)
    else
        EditInterruptGui.update_targets_pane(player)
    end
end

gui_events[defines.events.on_gui_click]["py_caravan_action_play_stop_button"] = function(event)
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
        -- TODO shouldn't we begin_action(caravan_data, tags.action_id) here??
        -- we should, keep that for another commit
        -- need to ensure the caravan has arrived to its destination first, so use -1 * action_id to encode which stop to begin schedule with
        --
    end

    CaravanGui.update_gui(player)
end

local prefix = "py_caravan_action_number_selection"

local function on_confirmed(event)
    local player = game.get_player(event.player_index)

    local tags = event.element.tags
    local textfield = event.element.parent[prefix .. "_text_field"]
    local value = tonumber(textfield.text) or 0

    local action = CaravanUtils.get_action_from_button(event.element)

    if tags.elem_type == "time" then
        action.wait_time = value
    else
        value = math.min(2147483647, value)
        action.item_count = value
    end

    if player.gui.screen[prefix .. "_frame"] then 
        player.gui.screen[prefix .. "_frame"].destroy()
    end

    update_action_gui(player, tags)
end

gui_events[defines.events.on_gui_confirmed][prefix .. "_text_field"] = on_confirmed
gui_events[defines.events.on_gui_click][prefix .. "_confirm_button"] = on_confirmed

-- Comparator events

gui_events[defines.events.on_gui_elem_changed]["py_caravan_action_comparator_left_button"] = function(event)
    local tags = event.element.tags

    local action = CaravanUtils.get_action_from_button(event.element)

    if tags.elem_type == "signal" then
        action.circuit_condition_left = event.element.elem_value
    elseif tags.elem_type == "item" then
        action.elem_value = event.element.elem_value
    end
end

gui_events[defines.events.on_gui_selection_state_changed]["py_caravan_action_comparator_drop_down"] = function(event)
    local tags = event.element.tags

    local action = CaravanUtils.get_action_from_button(event.element)

    action.operator = event.element.selected_index
end

gui_events[defines.events.on_gui_elem_changed]["py_caravan_action_comparator_right_button"] = function(event)
    local tags = event.element.tags

    local action = CaravanUtils.get_action_from_button(event.element)

    assert(tags.elem_type == "signal")

    action.circuit_condition_right = event.element.elem_value
end

gui_events[defines.events.on_gui_click]["py_caravan_action_add_outpost"] = function(event)
    local player = game.get_player(event.player_index)
    local element = event.element
    local stack = player.cursor_stack
    if not stack then return end
    if stack.valid_for_read then
        if player.insert(stack) == 0 then
            player.surface.spill_item_stack {position = player.position, stack = stack, enable_looted = true, force = player.force}
        end
        stack.clear()
    end
    stack.set_stack {name = "caravan-control"}
    storage.last_opened_action[player.index] = nil
    if element.tags.action_id then
        storage.last_opened_action[player.index] = {schedule_id = element.tags.schedule_id, action_id = element.tags.action_id}
    end
    storage.last_opened_interrupt[player.index] = storage.edited_interrupt.name
    local unit_number = CaravanGui.get_gui(player).tags.unit_number
    assert(unit_number)
    storage.last_opened_caravan[player.index] = unit_number
    -- destroy the GUI before triggering on_gui_closed, to keep the storage.edited_interrupt alive
    if player.gui.screen.edit_interrupt_gui then
        player.gui.screen.edit_interrupt_gui.destroy()
    end
    player.opened = nil
end

