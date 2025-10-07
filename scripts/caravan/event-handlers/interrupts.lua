local CaravanImpl = require "__pyalienlife__/scripts/caravan/impl"
local CaravanUtils = require "__pyalienlife__/scripts/caravan/utils"
local CaravanScheduleGui = require "__pyalienlife__/scripts/caravan/gui/schedule_tab"
local EditInterruptGui = require "__pyalienlife__/scripts/caravan/gui/edit_interrupt"

gui_events[defines.events.on_gui_click]["py_caravan_add_interrupt_close_button"] = function(event)
    local player = game.get_player(event.player_index)
    local gui = player.gui.screen.add_interrupt_gui 
    if gui then gui.destroy() end
end

local function on_add_interrupt_confirmed(event)
    local textfield = event.element.parent.py_caravan_add_interrupt_input_textfield
    local name = textfield.text
    local unit_number = event.element.tags.unit_number
    local caravan_data = storage.caravans[unit_number]

    if string.len(name) == 0 then return end
    if table.invert(caravan_data.interrupts)[name] ~= nil then return end

    local is_new = false
    if not storage.interrupts[name] then
        is_new = true
        storage.interrupts[name] = {
            name = name,
            conditions = {},
            conditions_operators = {},
            schedule = {},
            inside_interrupt = false
        }
    end
    table.insert(caravan_data.interrupts, name)
    local window_location = {0, 0}

    local player = game.get_player(event.player_index)
    if player.gui.screen.add_interrupt_gui then
        window_location = player.gui.screen.add_interrupt_gui.location
        player.gui.screen.add_interrupt_gui.destroy()
    end
    CaravanScheduleGui.update_schedule_pane(player)
    -- used to open the edit screen unconditionally here but it annoyed players
    if is_new then
        local edit_interrupt_gui = EditInterruptGui.build(player.gui.screen, storage.interrupts[name])
        CaravanUtils.restore_gui_location(edit_interrupt_gui, window_location)
    end
end

local function on_edit_interrupt_confirmed(event)
    local label = event.element.parent.name_label
    local textfield = event.element.parent.py_edit_interrupt_textfield
    local edited_interrupt = storage.edited_interrupts[event.player_index]

    if textfield.text == "" then return end
    if textfield.text ~= edited_interrupt.name and storage.interrupts[textfield.text] ~= nil then return end -- can't overwrite another interrupt

    textfield.visible = not textfield.visible
    label.visible = not label.visible

    if textfield.visible then
        textfield.text = label.caption
        textfield.focus()
    else
        local new_name = textfield.text
        local interrupt = storage.interrupts[label.caption]
        CaravanUtils.rename_interrupt(interrupt, new_name)
        label.caption = new_name
        edited_interrupt.name = new_name

        local player = game.get_player(event.player_index)
        CaravanGuiComponents.update_schedule_pane(player)
    end
end

local function remove_interrupt_if_no_references(name)
    -- would be better to have a refcount in the interrupt
    for _, caravan_data in pairs(storage.caravans) do
        for i = 1, #caravan_data.interrupts do
            if caravan_data.interrupts[i] == name then
                return
            end
        end
    end

    storage.interrupts[name] = nil
end

gui_events[defines.events.on_gui_confirmed]["py_caravan_add_interrupt_input_textfield"] = on_add_interrupt_confirmed
gui_events[defines.events.on_gui_click]["py_caravan_add_interrupt_confirm_button"] = on_add_interrupt_confirmed

gui_events[defines.events.on_gui_click]["py_caravan_interrupt_move_up_button"] = function(event)
    local player = game.get_player(event.player_index)
    local unit_number = event.element.tags.unit_number
    local caravan_data = storage.caravans[unit_number]

    local old_index = event.element.tags.caravan_interrupt_index
    local new_index = event.control and 1 or old_index - 1

    if old_index == 1 then return end

    caravan_data.interrupts[new_index], caravan_data.interrupts[old_index] = caravan_data.interrupts[old_index], caravan_data.interrupts[new_index]

    CaravanGuiComponents.update_schedule_pane(player)
end

gui_events[defines.events.on_gui_click]["py_caravan_interrupt_move_down_button"] = function(event)
    local player = game.get_player(event.player_index)
    local unit_number = event.element.tags.unit_number
    local caravan_data = storage.caravans[unit_number]

    local old_index = event.element.tags.caravan_interrupt_index
    local new_index = event.control and #caravan_data.interrupts or old_index + 1

    if old_index == #caravan_data.interrupts then return end

    caravan_data.interrupts[new_index], caravan_data.interrupts[old_index] = caravan_data.interrupts[old_index], caravan_data.interrupts[new_index]

    CaravanGuiComponents.update_schedule_pane(player)
end

gui_events[defines.events.on_gui_click]["py_caravan_interrupt_delete_button"] = function(event)
    local player = game.get_player(event.player_index)
    local unit_number = event.element.tags.unit_number
    local caravan_data = storage.caravans[unit_number]
    local i = event.element.tags.caravan_interrupt_index

    local name = caravan_data.interrupts[i]
    table.remove(caravan_data.interrupts, i)

    remove_interrupt_if_no_references(name)
    CaravanGuiComponents.update_schedule_pane(player)
end

gui_events[defines.events.on_gui_click]["py_caravan_interrupt_play_button"] = function(event)
    local player = game.get_player(event.player_index)
    local unit_number = event.element.tags.unit_number
    local caravan_data = storage.caravans[unit_number]
    local i = event.element.tags.caravan_interrupt_index

    local interrupt = storage.interrupts[caravan_data.interrupts[i]]
    if not interrupt or #interrupt.schedule == 0 then return end

    local new_schedule, adjusted_schedule_id = CaravanImpl.remove_temporary_stops(caravan_data)
    local insert_index

    if adjusted_schedule_id == -1 then
        -- that's how trains behave
        insert_index = #new_schedule == 0 and 1 or 2
    else
        -- completed temporary destination was at the top of the schedule
        if adjusted_schedule_id > caravan_data.schedule_id then
            insert_index = 1
        else
            insert_index = adjusted_schedule_id + 1
        end
    end
    caravan_data.schedule = CaravanImpl.insert_temporary_stops_into_schedule(new_schedule, interrupt, insert_index)
    caravan_data.schedule_id = insert_index
    CaravanImpl.begin_schedule(caravan_data, caravan_data.schedule_id)

    CaravanGuiComponents.update_schedule_pane(player)
end

gui_events[defines.events.on_gui_click]["py_edit_interrupt_rename_button"] = on_edit_interrupt_confirmed
gui_events[defines.events.on_gui_confirmed]["py_edit_interrupt_textfield"] = on_edit_interrupt_confirmed

-- all functions below operate on a copy of an interrupt, until the "Save interrupt" button is pressed

gui_events[defines.events.on_gui_click]["py_edit_interrupt_checkbox"] = function(event)
    storage.edited_interrupts[event.player_index].inside_interrupt = event.element.state
end

gui_events[defines.events.on_gui_selection_state_changed]["py_edit_interrupt_add_condition_drop_down"] = function(event)
    local player = game.get_player(event.player_index)
    local action_id = event.element.selected_index
    local edited_interrupt = storage.edited_interrupts[event.player_index]
    local element = event.element

    local valid_conditions = Caravan.valid_actions["interrupt-condition"]

    -- off-by-one index is used to show "+ Add interrupt condition" text
    if action_id == 0 or action_id > #valid_conditions then return end

    local type = element.get_item(action_id)[2]
    local localised_name = element.get_item(action_id)
    if type == "at-outpost" then
        localised_name = {"caravan-actions.at-outpost2", {"caravan-gui.not-specified"}}
    elseif type == "not-at-outpost" then
        localised_name = {"caravan-actions.not-at-outpost2", {"caravan-gui.not-specified"}}
    elseif type == "outpost-item-count" then
        localised_name = {"caravan-actions.outpost-item-count2", {"caravan-gui.not-specified"}}
    elseif type == "outpost-fluid-count" then
        localised_name = {"caravan-actions.outpost-fluid-count2", {"caravan-gui.not-specified"}}
    end
    table.insert(edited_interrupt.conditions, CaravanUtils.ensure_item_count{type = type, localised_name = localised_name})
    if #edited_interrupt.conditions > 1 then
        table.insert(edited_interrupt.conditions_operators, 1)
    end

    EditInterruptGui.update_conditions_pane(player)
end

gui_events[defines.events.on_gui_selection_state_changed]["py_edit_interrupt_target_add_action_drop_down"] = function(event)
    local player = game.get_player(event.player_index)
    local action_id = event.element.selected_index
    local edited_interrupt = storage.edited_interrupts[event.player_index]
    local element = event.element

    local schedule = edited_interrupt.schedule[element.tags.schedule_id]
    local valid_actions = table.invert(CaravanUtils.get_all_actions_for_entity(schedule.entity))

    -- off-by-one index is used to show "+ Add action" text
    if action_id == 0 or action_id > #valid_actions then return end

    local type = element.get_item(action_id)[2]

    local localised_name = element.get_item(action_id)
    if type == "at-outpost" then
        localised_name = {"caravan-actions.at-outpost2", {"caravan-gui.not-specified"}}
    elseif type == "not-at-outpost" then
        localised_name = {"caravan-actions.not-at-outpost2", {"caravan-gui.not-specified"}}
    elseif type == "outpost-item-count" then
        localised_name = {"caravan-actions.outpost-item-count2", {"caravan-gui.not-specified"}}
    elseif type == "outpost-fluid-count" then
        localised_name = {"caravan-actions.outpost-fluid-count2", {"caravan-gui.not-specified"}}
    end
    table.insert(schedule.actions, CaravanUtils.ensure_item_count{type = type, localised_name = localised_name})

    EditInterruptGui.update_targets_pane(player)
end

gui_events[defines.events.on_gui_click]["py_edit_interrupt_add_target_button"] = function(event)
    local player = game.get_player(event.player_index)
    local element = event.element
    local last_opened = {}

    local unit_number = CaravanGui.get_gui(player).tags.unit_number
    assert(unit_number)
    last_opened.caravan = unit_number
    if element.tags.action_id then
        last_opened.schedule_id = element.tags.schedule_id
        last_opened.action_id = element.tags.action_id
    end
    CaravanImpl.select_destination(player, last_opened)
end

gui_events[defines.events.on_gui_click]["py_edit_interrupt_condition_select_outpost_button"] = function(event)
    local player = game.get_player(event.player_index)
    local gui = CaravanGui.get_gui(player)
    local element = event.element
    local tags = element.tags
    local condition = storage.edited_interrupts[event.player_index].conditions[tags.condition_id]

    local is_lmb = event.button ~= defines.mouse_button_type.right
    local is_valid = false

    -- handle refocus and return
    if is_lmb then
        if condition.entity then
            if condition.entity.valid then
                is_valid = true
                CaravanGui.refocus(gui, condition.entity)
                return
            end
        else
            CaravanGui.refocus(gui, condition.position)
            return
        end
    end

    assert(gui.tags.unit_number)
    -- else reassign
    local last_opened = {
        caravan = gui.tags.unit_number,
        action_id = element.tags.condition_id
    }
    CaravanImpl.select_destination(player, last_opened, is_valid and condition.entity or condition.position)
end

gui_events[defines.events.on_gui_click]["py_edit_interrupt_target_move_up_button"] = function(event)
    local edited_interrupt = storage.edited_interrupts[event.player_index]
    local i = event.element.tags.schedule_id

    if i == 1 then return end
    edited_interrupt.schedule[i - 1], edited_interrupt.schedule[i] = edited_interrupt.schedule[i], edited_interrupt.schedule[i - 1]

    local player = game.get_player(event.player_index)
    EditInterruptGui.update_targets_pane(player)
end

gui_events[defines.events.on_gui_click]["py_edit_interrupt_target_move_down_button"] = function(event)
    local edited_interrupt = storage.edited_interrupts[event.player_index]
    local i = event.element.tags.schedule_id

    if i == #edited_interrupt.schedule then return end
    edited_interrupt.schedule[i + 1], edited_interrupt.schedule[i] = edited_interrupt.schedule[i], edited_interrupt.schedule[i + 1]

    local player = game.get_player(event.player_index)
    EditInterruptGui.update_targets_pane(player)
end

gui_events[defines.events.on_gui_click]["py_edit_interrupt_target_delete_button"] = function(event)
    local edited_interrupt = storage.edited_interrupts[event.player_index]
    local i = event.element.tags.schedule_id

    table.remove(edited_interrupt.schedule, i)
    local player = game.get_player(event.player_index)
    EditInterruptGui.update_targets_pane(player)
end

gui_events[defines.events.on_gui_click]["py_edit_interrupt_close_button"] = function(event)
    storage.edited_interrupts[event.player_index] = nil
    local player = game.get_player(event.player_index)
    if player.gui.screen.edit_interrupt_gui then
        player.gui.screen.edit_interrupt_gui.destroy()
    end
end

gui_events[defines.events.on_gui_click]["py_edit_interrupt_confirm_button"] = function(event)
    local player = game.get_player(event.player_index)
    local edited_interrupt = storage.edited_interrupts[event.player_index]

    -- edge case: need to check the rename textfield when 'Save interrupt' is pressed instead of enter
    local textfield = event.element.parent.parent.inside_frame.subheader_frame.contents_flow.py_edit_interrupt_textfield
    if string.len(textfield.text) ~= 0 and textfield.text ~= edited_interrupt.name then
        if storage.interrupts[textfield.text] ~= nil then return end

        local interrupt = storage.interrupts[edited_interrupt.name]
        CaravanUtils.rename_interrupt(interrupt, textfield.text)
        edited_interrupt.name = textfield.text
        CaravanGuiComponents.update_schedule_pane(player)
    end

    storage.interrupts[edited_interrupt.name] = edited_interrupt

    if player.gui.screen.edit_interrupt_gui then
        player.gui.screen.edit_interrupt_gui.destroy()
    end
    storage.edited_interrupts[event.player_index] = nil
end

gui_events[defines.events.on_gui_click]["py_delete_interrupt_button"] = function(event)
    local element = event.element
    local removed_interrupt = element.tags.interrupt_name

    if element.parent.py_delete_interrupt_cancel.visible then
        for _, caravan in pairs(storage.caravans or {}) do
            for i, interrupt in pairs(caravan.interrupts or {}) do
                if interrupt == removed_interrupt then
                    table.remove(caravan.interrupts, i)
                    break
                end
            end
        end
        storage.interrupts[element.tags.interrupt_name] = nil
        for player_index, edited_interrupt in pairs(storage.edited_interrupts) do
            if edited_interrupt.name == removed_interrupt then
                storage.edited_interrupts[player_index] = nil
                local player = game.get_player(event.player_index)
                if player and player.gui.screen.edit_interrupt_gui then
                    player.gui.screen.edit_interrupt_gui.destroy()
                    CaravanGui.update_gui(player)
                end
            end
        end
    else
        element.parent.py_delete_interrupt_cancel.visible = true
        element.parent.py_delete_interrupt_confirm.visible = true
        element.parent.py_interrupt_count_label.visible = false
    end
end

gui_events[defines.events.on_gui_click]["py_delete_interrupt_cancel"] = function(event)
    local element = event.element

    element.parent.py_interrupt_count_label.visible = true
    element.parent.py_delete_interrupt_cancel.visible = false
    element.parent.py_delete_interrupt_confirm.visible = false
end

gui_events[defines.events.on_gui_click]["py_edit_interrupt_condition_move_up_button"] = function(event)
    local edited_interrupt = storage.edited_interrupts[event.player_index]
    local conditions = edited_interrupt.conditions
    local conditions_operators = edited_interrupt.conditions_operators

    local i = event.element.tags.condition_id

    if i == 1 then return end

    conditions[i - 1], conditions[i] = conditions[i], conditions[i - 1]
    if #conditions_operators > 1 then
        conditions_operators[i - 2], conditions_operators[i - 1] = conditions_operators[i - 1], conditions_operators[i - 2]
    end

    local player = game.get_player(event.player_index)
    EditInterruptGui.update_conditions_pane(player)
end

gui_events[defines.events.on_gui_click]["py_edit_interrupt_condition_move_down_button"] = function(event)
    local edited_interrupt = storage.edited_interrupts[event.player_index]
    local conditions = edited_interrupt.conditions
    local conditions_operators = edited_interrupt.conditions_operators

    local i = event.element.tags.condition_id

    if i == #conditions then return end

    conditions[i + 1], conditions[i] = conditions[i], conditions[i + 1]
    if #conditions_operators > 1 then
        conditions_operators[i], conditions_operators[i - 1] = conditions_operators[i - 1], conditions_operators[i]
    end

    local player = game.get_player(event.player_index)
    EditInterruptGui.update_conditions_pane(player)
end

gui_events[defines.events.on_gui_click]["py_edit_interrupt_condition_delete_button"] = function(event)
    local edited_interrupt = storage.edited_interrupts[event.player_index]
    local conditions = edited_interrupt.conditions
    local operators = edited_interrupt.conditions_operators
    local condition_id = event.element.tags.condition_id

    if #conditions > 1 then
        table.remove(operators, math.max(1, condition_id - 1))
    end
    table.remove(conditions, condition_id)

    local player = game.get_player(event.player_index)
    EditInterruptGui.update_conditions_pane(player)
end

gui_events[defines.events.on_gui_click]["py_edit_interrupt_condition_operator_button_."] = function(event)
    local edited_interrupt = storage.edited_interrupts[event.player_index]
    local operators = edited_interrupt.conditions_operators
    local operator_id = event.element.tags.condition_operator_id

    operators[operator_id] = operators[operator_id] == 1 and 0 or 1

    local player = game.get_player(event.player_index)
    EditInterruptGui.update_conditions_pane(player)
end
