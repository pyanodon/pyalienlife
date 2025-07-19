local CaravanImpl = require "__pyalienlife__/scripts/caravan/impl"
local CaravanUtils = require "__pyalienlife__/scripts/caravan/utils"
local CaravanScheduleGui = require "__pyalienlife__/scripts/caravan/gui/schedule_tab"
local EditInterruptGui = require "__pyalienlife__/scripts/caravan/gui/edit_interrupt"

-- TODO rename to py_caravan_*
gui_events[defines.events.on_gui_click]["py_add_interrupt_close_button"] = function(event)
    local player = game.get_player(event.player_index)
    local gui = player.gui.screen.add_interrupt_gui 
    if gui then gui.destroy() end
end

local function on_add_interrupt_confirmed(event)
    local textfield = event.element.parent.py_add_interrupt_input_textfield
    local name = textfield.text
    local unit_number = event.element.tags.unit_number
    local caravan_data = storage.caravans[unit_number]

    -- TODO show notice like in vanilla? Only doable if an invisible frame can prevent user interaction everywhere else (might work in remote view)
    if string.len(name) == 0 then return end
    if table.invert(caravan_data.interrupts)[name] ~= nil then return end

    if not storage.interrupts[name] then
        storage.interrupts[name] = {
            name = name,
            conditions = {},
            schedule = {},
            inside_interrupt = false
        }
    end
    table.insert(caravan_data.interrupts, name)

    local player = game.get_player(event.player_index)
    if player.gui.screen.add_interrupt_gui then
        player.gui.screen.add_interrupt_gui.destroy()
    end
    CaravanScheduleGui.update_schedule_pane(player)
    -- TODO open edit interrupt GUI
end

local function on_edit_interrupt_confirmed(event)
    local label = event.element.parent.name_label
    local textfield = event.element.parent.py_edit_interrupt_textfield

    textfield.visible = not textfield.visible
    label.visible = not label.visible

    if textfield.visible then
        textfield.text = label.caption
        textfield.focus()
    else
        local new_name = textfield.text
        local interrupt = storage.interrupts[label.caption]
        CaravanImpl.rename_interrupt(interrupt, new_name)
        label.caption = new_name
        storage.edited_interrupt.name = new_name

        local player = game.get_player(event.player_index)
        CaravanGuiComponents.update_schedule_pane(player)
    end
end

gui_events[defines.events.on_gui_confirmed]["py_add_interrupt_input_textfield"] = on_add_interrupt_confirmed
gui_events[defines.events.on_gui_click]["py_add_interrupt_confirm_button"] = on_add_interrupt_confirmed

gui_events[defines.events.on_gui_click]["py_caravan_interrupt_move_up_button"] = function(event)
    local player = game.get_player(event.player_index)
    local unit_number = event.element.tags.unit_number
    local caravan_data = storage.caravans[unit_number]
    local i = event.element.tags.caravan_interrupt_index

    if i == 1 then return end

    caravan_data.interrupts[i - 1], caravan_data.interrupts[i] = caravan_data.interrupts[i], caravan_data.interrupts[i - 1]

    CaravanGuiComponents.update_schedule_pane(player)
end

gui_events[defines.events.on_gui_click]["py_caravan_interrupt_move_down_button"] = function(event)
    local player = game.get_player(event.player_index)
    local unit_number = event.element.tags.unit_number
    local caravan_data = storage.caravans[unit_number]
    local i = event.element.tags.caravan_interrupt_index

    if i == #caravan_data.interrupts then return end

    caravan_data.interrupts[i + 1], caravan_data.interrupts[i] = caravan_data.interrupts[i], caravan_data.interrupts[i + 1]

    CaravanGuiComponents.update_schedule_pane(player)
end

gui_events[defines.events.on_gui_click]["py_caravan_interrupt_delete_button"] = function(event)
    local player = game.get_player(event.player_index)
    local unit_number = event.element.tags.unit_number
    local caravan_data = storage.caravans[unit_number]
    local i = event.element.tags.caravan_interrupt_index

    table.remove(caravan_data.interrupts, i)

    CaravanGuiComponents.update_schedule_pane(player)
end

gui_events[defines.events.on_gui_click]["py_caravan_interrupt_play_button"] = function(event)
    local player = game.get_player(event.player_index)
    local unit_number = event.element.tags.unit_number
    local caravan_data = storage.caravans[unit_number]
    local i = event.element.tags.caravan_interrupt_index

    local interrupt_data = storage.interrupts[caravan_data.interrupts[i]]

    CaravanImpl.remove_tmp_stops(caravan_data)
    local index = CaravanImpl.add_interrupt(caravan_data, interrupt_data)
    if index > 0 then
        CaravanImpl.begin_schedule(caravan_data, index)
    end

    CaravanGuiComponents.update_schedule_pane(player)
end

gui_events[defines.events.on_gui_click]["py_edit_interrupt_rename_button"] = on_edit_interrupt_confirmed
gui_events[defines.events.on_gui_confirmed]["py_edit_interrupt_textfield"] = on_edit_interrupt_confirmed

-- all functions below operate on a copy of an interrupt, until the "Save interrupt" button is pressed

gui_events[defines.events.on_gui_click]["py_edit_interrupt_checkbox"] = function(event)
    storage.edited_interrupt.inside_interrupt = event.element.state
end

gui_events[defines.events.on_gui_selection_state_changed]["py_edit_interrupt_add_condition_drop_down"] = function(event)
    local player = game.get_player(event.player_index)
    local action_id = event.element.selected_index
    local element = event.element

    local valid_conditions = Caravan.valid_actions["interrupt-condition"]

    -- off-by-one index is used to show "+ Add interrupt condition" text
    if element.selected_index == 0 or element.selected_index > #valid_conditions then return end

    local type = element.get_item(element.selected_index)[2]
    local localised_name = element.get_item(element.selected_index)
    if type == "at-outpost" then
        localised_name = {"caravan-actions.at-outpost2", {"caravan-gui.not-specified"}}
    elseif type == "not-at-outpost" then
        localised_name = {"caravan-actions.not-at-outpost2", {"caravan-gui.not-specified"}}
    end
    table.insert(storage.edited_interrupt.conditions, {type = type, localised_name = localised_name})

    EditInterruptGui.update_conditions_pane(player)
end

gui_events[defines.events.on_gui_selection_state_changed]["py_edit_interrupt_target_add_action_drop_down"] = function(event)
    local player = game.get_player(event.player_index)
    local action_id = event.element.selected_index
    local element = event.element

    local schedule = storage.edited_interrupt.schedule[element.tags.schedule_id]
    local valid_conditions = table.invert(CaravanUtils.get_valid_actions_for_entity("caravan", schedule.entity))

    -- off-by-one index is used to show "+ Add action" text
    if element.selected_index == 0 or element.selected_index > #valid_conditions then return end

    local type = element.get_item(element.selected_index)[2]

    local localised_name = element.get_item(element.selected_index)
    if type == "at-outpost" then
        localised_name = {"caravan-actions.at-outpost2", {"caravan-gui.not-specified"}}
    elseif type == "not-at-outpost" then
        localised_name = {"caravan-actions.not-at-outpost2", {"caravan-gui.not-specified"}}
    end
    table.insert(schedule.actions, {type = type, localised_name = localised_name})

    EditInterruptGui.update_targets_pane(player)
end

gui_events[defines.events.on_gui_click]["py_edit_interrupt_add_target_button"] = function(event)
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
    storage.last_opened_interrupt[player.index] = storage.edited_interrupt.name
    local unit_number = CaravanGui.get_gui(player).tags.unit_number
    assert(unit_number)
    storage.last_opened_caravan[player.index] = unit_number
    -- destroy the GUI before triggering on_gui_closed, to keep the storage.edited_interrupt alive
    if player.gui.screen.edit_interrupt_gui then
        storage.edit_interrupt_gui_last_location = player.gui.screen.edit_interrupt_gui.location
        player.gui.screen.edit_interrupt_gui.destroy()
    end
    if player.gui.screen.caravan_new_gui then 
        storage.caravan_gui_last_location = player.gui.screen.caravan_new_gui.location
    end
    player.opened = nil
end

gui_events[defines.events.on_gui_click]["py_edit_interrupt_target_move_up_button"] = function(event)
    local i = event.element.tags.schedule_id

    if i == 1 then return end
    storage.edited_interrupt.schedule[i - 1], storage.edited_interrupt.schedule[i] = storage.edited_interrupt.schedule[i], storage.edited_interrupt.schedule[i - 1]

    local player = game.get_player(event.player_index)
    EditInterruptGui.update_targets_pane(player)
end

gui_events[defines.events.on_gui_click]["py_edit_interrupt_target_move_down_button"] = function(event)
    local i = event.element.tags.schedule_id

    if i == #storage.edited_interrupt.schedule then return end
    storage.edited_interrupt.schedule[i + 1], storage.edited_interrupt.schedule[i] = storage.edited_interrupt.schedule[i], storage.edited_interrupt.schedule[i + 1]

    local player = game.get_player(event.player_index)
    EditInterruptGui.update_targets_pane(player)
end

gui_events[defines.events.on_gui_click]["py_edit_interrupt_target_delete_button"] = function(event)
    local i = event.element.tags.schedule_id

    table.remove(storage.edited_interrupt.schedule, i)
    local player = game.get_player(event.player_index)
    EditInterruptGui.update_targets_pane(player)
end

gui_events[defines.events.on_gui_click]["py_edit_interrupt_close_button"] = function(event)
    storage.edited_interrupt = nil
    local player = game.get_player(event.player_index)
    if player.gui.screen.edit_interrupt_gui then
        player.gui.screen.edit_interrupt_gui.destroy()
    end
end

gui_events[defines.events.on_gui_click]["py_edit_interrupt_confirm_button"] = function(event)
    storage.interrupts[storage.edited_interrupt.name] = storage.edited_interrupt

    local player = game.get_player(event.player_index)
    if player.gui.screen.edit_interrupt_gui then
        player.gui.screen.edit_interrupt_gui.destroy()
    end
    storage.edited_interrupt = nil
end
