local InterruptConditionsGui = require "__pyalienlife__/scripts/caravan/gui/interrupt_conditions"
local Utils = require "__pyalienlife__/scripts/caravan/utils"
local ActionGui = require "__pyalienlife__/scripts/caravan/gui/actions"
local caravan_prototypes = require "__pyalienlife__/scripts/caravan/caravan-prototypes"

local P = {}

local function label_info(interrupt, schedule_id)
    local schedule = interrupt.schedule[schedule_id]
    if schedule and schedule.entity and not schedule.entity.valid then
        return "train_schedule_unavailable_stop_label", {"caravan-gui.destination-unavailable"}
    end
    return nil, nil
end

function P.build_main_frame(parent, fallback_location)
    local frame =  parent.add {type = "frame", name = "edit_interrupt_gui", direction = "vertical"}
    -- values copied from vanilla edit_interrupt frame
    frame.style.maximal_height = 1290
    Utils.restore_gui_location(frame, fallback_location)

    return frame
end

function P.build_title_bar_flow(parent)
    local flow = parent.add {type = "flow", name = "title_bar_flow", direction = "horizontal", style = "frame_header_flow"}

    flow.add {type = "label", caption = "Edit interrupt", style = "frame_title"}

    local drag_handler = flow.add {type = "empty-widget", style = "draggable_space_header"}
    drag_handler.style.horizontally_stretchable = true
    drag_handler.style.height = 24
    drag_handler.style.right_margin = 4
    drag_handler.drag_target = parent

    flow.add {type = "sprite-button", name = "py_edit_interrupt_close_button", style = "close_button", sprite = "utility/close"}

    return flow
end

function P.build_subheader_frame(parent)
    local frame = parent.add {type = "frame", name = "subheader_frame", style = "subheader_frame", direction = "horizontal"}

    frame.style.top_margin = -12
    frame.style.left_margin = -12
    frame.style.right_margin = -12

    local flow = frame.add {type = "flow", name = "contents_flow", direction = "horizontal"}
    flow.style.vertical_align = "center"
    flow.add {type = "label", name = "name_label", caption = storage.edited_interrupt.name, style = "subheader_caption_label"}
    flow.add {type = "textfield", name = "py_edit_interrupt_textfield", style = "stretchable_textfield", icon_selector = true, visible = false, text = storage.edited_interrupt.name}
    flow.add {type = "sprite-button", name = "py_edit_interrupt_rename_button", style = "mini_button_aligned_to_text_vertically_when_centered", sprite = "utility/rename_icon"}
    flow.add {type = "empty-widget"}.style.horizontally_stretchable = true
end

function P.build_checkbox(parent)
    return parent.add {type = "checkbox", name = "py_edit_interrupt_checkbox", state = storage.edited_interrupt.inside_interrupt, caption = "Allow interrupting other interrupts", tooltip = "By default, an interrupt cannot trigger while another interrupt is being executed. This option disables this behavior, allowing the interrupt to trigger while another interrupt is in progress."}
end

function P.build_conditions_operators_list(parent)
    local flow = parent.add {type = "flow", direction = "vertical"}
    flow.style.vertically_stretchable = true
    flow.style.width = 100
    flow.style.horizontal_align = "right"
    flow.style.vertical_spacing = 4
    flow.style.top_margin = 40 

    local operators = storage.edited_interrupt.conditions_operators

    local has_both_operators = #operators > 0 and table.any(operators, function (o) return o ~= operators[1] end)

    for i = 1, #operators do
        local tags = {condition_operator_id = i}
        InterruptConditionsGui.build_condition_operator(flow, operators[i], has_both_operators, tags)
    end
end

function P.build_add_interrupt_condition_dropdown(parent)
    local conditions = Caravan.valid_actions["interrupt-condition"]
    conditions = table.map(conditions, function(v) return {"caravan-actions." .. v, v} end)

    table.insert(conditions, "+ Add interrupt condition")

    local drop_down = parent.add {type = "drop-down", name = "py_edit_interrupt_add_condition_drop_down", items = conditions, style = "dropdown", selected_index = #conditions}
    -- copied from train_schedule_add_wait_condition_button style
    drop_down.style.height = 36
    drop_down.style.horizontally_stretchable = true
end

function P.build_conditions_list(parent)
    local conditions = storage.edited_interrupt.conditions
    if #conditions == 0 then return end

    local conditions_and_operators_flow = parent.add {type = "flow", direction = "horizontal"}
    P.build_conditions_operators_list(conditions_and_operators_flow)
    local conditions_flow = conditions_and_operators_flow.add {type = "flow", direction = "vertical"}
    for i = 1, #conditions do
        local tags = {condition_id = i, action_list_type = Caravan.action_list_types.interrupt_condition}
        InterruptConditionsGui.build_condition(conditions_flow, conditions[i], tags)
    end
end

function P.build_conditions_flow(parent)
    local flow = parent.add {type = "flow", name = "conditions_flow", direction = "vertical"}
    P.build_conditions_list(flow)
    P.build_add_interrupt_condition_dropdown(flow)
end

function P.build_conditions_pane(parent)
    local pane = parent.add {type = "scroll-pane", name = "conditions_pane", style = "train_interrupts_scroll_pane"}

    pane.style.vertically_stretchable = false
    P.build_conditions_flow(pane)

    return pane
end

function P.build_action_list(parent, schedule_id)
    local actions = storage.edited_interrupt.schedule[schedule_id].actions

    for i = 1, #actions do
        local tags = {schedule_id = schedule_id, action_id = i, action_list_type = Caravan.action_list_types.interrupt_targets}
        ActionGui.build_action(parent, nil, actions[i], tags)
    end

    local entity = storage.edited_interrupt.schedule[schedule_id].entity
    local valid_actions = Utils.get_all_actions_for_entity(entity)
    local actions = table.map(table.invert(valid_actions), function(v) return {"caravan-actions." .. v, v} end)

    table.insert(actions, "+ Add action")

    local drop_down = parent.add {type = "drop-down", name = "py_edit_interrupt_target_add_action_drop_down", items = actions, style = "dropdown", selected_index = #actions, tags = {schedule_id = schedule_id}}
    -- copied from train_schedule_add_wait_condition_button style
    drop_down.style.height = 36
    drop_down.style.horizontally_stretchable = true
    drop_down.style.left_margin = 32
end

function P.build_target_destination_frame(parent, schedule_id)
    local tags = {schedule_id = schedule_id, action_list_type = Caravan.action_list_types.interrupt_targets}

    local frame = parent.add {type = "frame", style = "train_schedule_station_frame"}
    frame.style.horizontally_stretchable = true

    local flow = frame.add {type = "flow", direction = "horizontal"}
    flow.style.vertical_align = "center"

    local label_style, label_tooltip = label_info(storage.edited_interrupt, schedule_id)
    local destination_label = flow.add {type = "label", name = "py_edit_interrupt_target_name", style = label_style, caption = storage.edited_interrupt.schedule[schedule_id].localised_name, tooltip = label_tooltip, tags = tags}
    destination_label.style.left_padding = 5
    destination_label.style.horizontally_squashable = true

    flow.add {type = "empty-widget"}.style.horizontally_stretchable = true

    flow.add {type = "sprite-button", name = "py_edit_interrupt_target_move_up_button", style = "train_schedule_delete_button", sprite = "up-white", tags = tags}
    flow.add {type = "sprite-button", name = "py_edit_interrupt_target_move_down_button", style = "train_schedule_delete_button", sprite = "down-white", tags = tags}
    flow.add {type = "sprite-button", name = "py_edit_interrupt_target_delete_button", style = "train_schedule_delete_button", sprite = "utility/close", tags = tags}
    return frame
end

function P.build_targets_list(parent)
    for i = 1, #storage.edited_interrupt.schedule do
        local flow = parent.add {type = "flow", direction = "vertical"}
        flow.style.horizontal_align = "right"

        P.build_target_destination_frame(flow, i)
        P.build_action_list(flow, i)
    end

    parent.add {type = "button", name = "py_edit_interrupt_add_target_button", caption = "+ Add interrupt station", style = "train_schedule_add_interrupt_station_button"}
end

function P.build_targets_flow(parent)
    local flow = parent.add {type = "flow", name = "targets_flow", direction = "vertical"}
    P.build_targets_list(flow)
end

function P.build_targets_pane(parent)
    local pane = parent.add {type = "scroll-pane", name = "targets_pane", style = "train_interrupts_scroll_pane"}

    pane.style.vertically_stretchable = false
    P.build_targets_flow(pane)
    return pane
end

function P.build_bottom_bar_flow(parent)
    local flow = parent.add {type = "flow", direction = "horizontal"}
    flow.style.top_padding = 8
    flow.style.horizontal_spacing = 8

    local drag_handler = flow.add {type = "empty-widget", style = "draggable_space_header"}
    drag_handler.style.horizontally_stretchable = true
    drag_handler.style.height = 32
    drag_handler.drag_target = parent

    flow.add {type = "button", name = "py_edit_interrupt_confirm_button", style = "confirm_button", caption = "Save interrupt"}
end

---@param parent LuaGuiElement
---@param interrupt_data table
---@param cursor_location GuiLocation?
---@return LuaGuiElement
function P.build(parent, interrupt_data, cursor_location)
    storage.edited_interrupt = table.deepcopy(interrupt_data)

    local main_frame = P.build_main_frame(parent, cursor_location)

    P.build_title_bar_flow(main_frame)

    local inside_frame = main_frame.add {type = "frame", name = "inside_frame", style = "inside_shallow_frame_with_padding_and_vertical_spacing", direction = "vertical"}

    P.build_subheader_frame(inside_frame)
    P.build_checkbox(inside_frame)

    inside_frame.add {type = "label", style = "semibold_label", caption = "Conditions", tooltip = "When the conditions are met, the interrupt will activate and append all the targets to the schedule as temporary stops."}

    P.build_conditions_pane(inside_frame)

    inside_frame.add {type = "label", style = "semibold_label", caption = "Targets", tooltip = "The target stops of this interrupt."}

    P.build_targets_pane(inside_frame)
    P.build_bottom_bar_flow(main_frame)

    return main_frame
end

function P.update_conditions_pane(player)
    local gui = player.gui.screen.edit_interrupt_gui
    if not gui then return end

    local conditions_pane = gui.inside_frame.conditions_pane

    conditions_pane.conditions_flow.destroy()
    P.build_conditions_flow(conditions_pane)
end


function P.update_targets_pane(player)
    local gui = player.gui.screen.edit_interrupt_gui
    if not gui then return end

    local targets_pane = gui.inside_frame.targets_pane

    targets_pane.targets_flow.destroy()
    P.build_targets_flow(targets_pane)
end

py.on_event(defines.events.on_gui_click, function (event)
    if not event.element.valid then return end
    -- do not destroy the frame right after creating it
    if event.element.name == "py_caravan_interrupt_edit_button" then return end

    local player = game.get_player(event.player_index)

    local gui = player.gui.screen.edit_interrupt_gui
    if not gui then return end

    if not Utils.is_child_of(event.element, gui, 9) then
        local slider_frame = player.gui.screen.py_caravan_action_number_selection_frame
        -- do not close the GUI when the user adds an action, that pops the number selection slider
        if not slider_frame or not Utils.is_child_of(event.element, slider_frame, 3) then
            storage.edited_interrupt = nil
            gui.destroy()
        end
    end
end)

-- store window location when moved
gui_events[defines.events.on_gui_location_changed]["edit_interrupt_gui"] = function(event) Utils.store_gui_location(event.element) end

return P
