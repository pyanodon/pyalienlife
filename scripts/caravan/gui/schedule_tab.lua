local ActionGui = require "actions"
local Utils = require "__pyalienlife__/scripts/caravan/utils"
local AddInterruptGui = require "add_interrupt"
local EditInterruptGui = require "edit_interrupt"
local caravan_prototypes = require "__pyalienlife__/scripts/caravan/caravan-prototypes"

local P = {}

local function play_stop_button_info(caravan_data, schedule_id)
    local schedule = caravan_data.schedule[schedule_id]

    if schedule and schedule.entity and (not schedule.entity.valid or schedule.entity.surface ~= caravan_data.entity.surface) then
        return "utility/close_fat", "train_schedule_action_button"
    elseif caravan_data.schedule_id == schedule_id then
        return "utility/stop", "py_clicked_train_schedule_action_button"
    else
        return "utility/play", "train_schedule_action_button"
    end
end

local function label_info(caravan_data, schedule_id)
    local schedule = caravan_data.schedule[schedule_id]

    local tooltip = nil
    if not schedule then return nil, nil end

    if schedule.entity and (not schedule.entity.valid or schedule.entity.surface ~= caravan_data.entity.surface) then
        return "train_schedule_unavailable_stop_label", {"caravan-gui.destination-unavailable"}
    else
        local style = schedule.temporary and "black_squashable_label" or "clickable_squashable_label"
        return style, nil
    end
end

function P.build_schedule_destination_frame(parent, schedule_id, caravan_data)
    local tags = {schedule_id = schedule_id, unit_number = caravan_data.unit_number, action_list_type = Caravan.action_list_types.standard_schedule}

    local temporary = caravan_data.schedule[schedule_id].temporary 
    local frame_style = temporary and "train_schedule_temporary_station_frame" or "train_schedule_station_frame"
    local frame = parent.add {type = "frame", style = frame_style}
    frame.style.horizontally_stretchable = true

    local flow = frame.add {type = "flow", direction = "horizontal"}
    flow.style.vertical_align = "center"

    local button_sprite, button_style = play_stop_button_info(caravan_data, schedule_id)
    flow.add {type = "sprite-button", name = "py_caravan_destination_play_stop_button", style = button_style, sprite = button_sprite, tags = tags}

    local label_style, label_tooltip = label_info(caravan_data, schedule_id)
    local destination_label = flow.add {type = "label", style = label_style, name = "py_outpost_name", caption = caravan_data.schedule[schedule_id].localised_name, tooltip = label_tooltip, tags = tags}
    destination_label.style.left_padding = 5
    destination_label.style.horizontally_squashable = true

    flow.add {type = "empty-widget"}.style.horizontally_stretchable = true

    if temporary then
        flow.add {type = "sprite-button", name = "py_caravan_destination_move_up_button", style = "py_schedule_temporary_move_button", sprite = "up-black", tags = tags}
        flow.add {type = "sprite-button", name = "py_caravan_destination_move_down_button", style = "py_schedule_temporary_move_button", sprite = "down-black", tags = tags}
        flow.add {type = "sprite-button", name = "py_caravan_destination_delete_button", style = "py_schedule_temporary_move_button", sprite = "utility/close_black", tags = tags}
    else
        flow.add {type = "sprite-button", name = "py_caravan_destination_move_up_button", style = "py_schedule_move_button", sprite = "up-white", tags = tags}
        flow.add {type = "sprite-button", name = "py_caravan_destination_move_down_button", style = "py_schedule_move_button", sprite = "down-white", tags = tags}
        flow.add {type = "sprite-button", name = "py_caravan_destination_delete_button", style = "py_schedule_move_button", sprite = "utility/close", tags = tags}
    end
    return frame
end

function P.build_action_list(parent, schedule_id, caravan_data)
    local caravan_actions = caravan_data.schedule[schedule_id].actions

    for i = 1, #caravan_actions do
        local tags = {schedule_id = schedule_id, action_id = i, unit_number = caravan_data.entity.unit_number, action_list_type = Caravan.action_list_types.standard_schedule}
        ActionGui.build_action(parent, caravan_data, caravan_actions[i], tags)
    end

    local valid_actions = Utils.get_valid_actions_for_entity(caravan_data.entity.name, caravan_data.schedule[schedule_id].entity)
    local actions = table.map(table.invert(valid_actions), function(v) return {"caravan-actions." .. v, v} end)

    table.insert(actions, "+ Add action")

    local drop_down = parent.add {type = "drop-down", name = "py_caravan_destination_action_drop_down", items = actions, style = "dropdown", selected_index = #actions, tags = {schedule_id = schedule_id, unit_number = caravan_data.entity.unit_number}}
    -- copied from train_schedule_add_wait_condition_button style
    drop_down.style.height = 36
    drop_down.style.horizontally_stretchable = true
    drop_down.style.left_margin = 32
end

function P.build_schedule_list(parent, caravan_data)
    for i = 1, #caravan_data.schedule do
        local flow = parent.add {type = "flow", direction = "vertical"}
        flow.style.horizontal_align = "right"

        P.build_schedule_destination_frame(flow, i, caravan_data)
        P.build_action_list(flow, i, caravan_data)
    end

    parent.add {type = "button", name = "py_caravan_destination_add_button", style = "train_schedule_add_station_button", caption = {"caravan-gui.add-outpost"}, tags = {unit_number = caravan_data.unit_number}}
end

function P.build_interrupt_frame(parent, caravan_interrupt_index, caravan_data)
    local tags = {caravan_interrupt_index = caravan_interrupt_index, unit_number = caravan_data.unit_number}

    local frame = parent.add {type = "frame", style = "train_schedule_station_frame"}
    local flow = frame.add {type = "flow", direction = "horizontal"}
    flow.style.vertical_align = "center"
    flow.add {type = "sprite-button", name = "py_caravan_interrupt_play_button", style = "train_schedule_action_button", sprite = "utility/play", tags = tags}

    local destination_label = flow.add {type = "label", style = "semibold_label", caption = caravan_data.interrupts[caravan_interrupt_index]}
    destination_label.style.left_padding = 5
    destination_label.style.horizontally_squashable = true

    flow.add {type = "empty-widget"}.style.horizontally_stretchable = true

    flow.add {type = "sprite-button", name = "py_caravan_interrupt_edit_button", style = "train_schedule_action_button", sprite = "utility/rename_icon", tags = tags}
    flow.add {type = "sprite-button", name = "py_caravan_interrupt_move_up_button", style = "train_schedule_delete_button", sprite = "up-white", tags = tags}
    flow.add {type = "sprite-button", name = "py_caravan_interrupt_move_down_button", style = "train_schedule_delete_button", sprite = "down-white", tags = tags}
    flow.add {type = "sprite-button", name = "py_caravan_interrupt_delete_button", style = "train_schedule_delete_button", sprite = "utility/close", tags = tags}
end

function P.build_interrupt_list(parent, caravan_data)
    local frame = parent.add {type = "frame", direction = "horizontal", style = "train_schedule_station_frame"}
    frame.style.horizontally_stretchable = true

    frame.add {type = "label", style = "subheader_semibold_label", caption = {"caravan-gui.interrupt-header-label"}, tooltip = {"caravan-gui.interrupt-header-tooltip"}}
    for i = 1, #caravan_data.interrupts do
        local flow = parent.add {type = "flow", direction = "vertical"}

        P.build_interrupt_frame(flow, i, caravan_data)
    end
    parent.add {type = "button", name = "py_caravan_interrupt_add_button", style = "train_schedule_add_station_button", caption = {"caravan-gui.add-interrupt"}, tags = {unit_number = caravan_data.unit_number}}
end

function P.build_schedule_flow(parent, caravan_data)
    local flow = parent.add {type = "flow", name = "schedule_flow", direction = "vertical"}
    flow.style.vertically_stretchable = true
    P.build_schedule_list(flow, caravan_data) 
    P.build_interrupt_list(flow, caravan_data)

    -- without this invisible frame, clicks on the empty space at the bottom won't raise on_gui_click
    local invisible_frame = flow.add {type = "frame", style = "invisible_frame"}
    invisible_frame.style.vertically_stretchable = true
    invisible_frame.style.horizontally_stretchable = true
    return flow
end

function P.build_schedule_pane(parent, caravan_data)
    local pane = parent.add {type = "scroll-pane", name = "schedule_pane", style = "train_schedule_scroll_pane"}
    pane.vertical_scroll_policy = "auto"

    P.build_schedule_flow(pane, caravan_data)
    return pane
end

function P.build_schedule_tab(parent, caravan_data)
    local schedule_tab = parent.add {type = "tab", name = "schedule_tab", caption = "Schedule"}
    local schedule_pane = P.build_schedule_pane(parent, caravan_data)
    schedule_pane.style.right_margin = 12
    schedule_pane.style.left_margin = 12
    schedule_pane.style.bottom_margin = 8
    parent.add_tab(schedule_tab, schedule_pane)
    return schedule_tab
end

function P.update_schedule_pane(player)
    local gui = player.gui.screen.caravan_gui
    if not gui then return end

    local caravan_data = storage.caravans[gui.tags.unit_number]
    local schedule_pane = gui.entity_frame.tabbed_pane_frame.tabbed_pane.schedule_pane 

    schedule_pane.schedule_flow.destroy()
    P.build_schedule_flow(schedule_pane, caravan_data)
end

gui_events[defines.events.on_gui_click]["py_caravan_interrupt_add_button"] = function(event)
    local player = game.get_player(event.player_index)

    local caravan_data = storage.caravans[event.element.tags.unit_number]
    
    if player.gui.screen.add_interrupt_gui then
        player.gui.screen.add_interrupt_gui.destroy()
    end
    local add_interrupt_frame = AddInterruptGui.build(player.gui.screen, caravan_data, event.cursor_display_location)
end

gui_events[defines.events.on_gui_click]["py_caravan_interrupt_edit_button"] = function(event)
    local player = game.get_player(event.player_index)

    local caravan_data = storage.caravans[event.element.tags.unit_number]
    
    if player.gui.screen.edit_interrupt_gui then
        player.gui.screen.edit_interrupt_gui.destroy()
    end
    local edit_interrupt_frame = EditInterruptGui.build(player.gui.screen, storage.interrupts[caravan_data.interrupts[event.element.tags.caravan_interrupt_index]], event.cursor_display_location)
end





return P
