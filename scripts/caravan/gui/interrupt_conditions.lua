local P = {}

local Utils = require("__pyalienlife__/scripts/caravan/utils")

local comparator = require("action_widgets/comparator")

function P.build_condition_flow(parent, condition, tags)
    local flow = parent.add({ type = "flow", direction = "horizontal" })
    flow.style.vertical_align = "center"
    flow.style.horizontal_spacing = 8

    if Utils.contains({ "at-outpost", "not-at-outpost" }, condition.type) then
        local locale_key = "caravan-actions." .. condition.type .. "2"
        local entity = condition.entity
        local caption
        if entity and entity.valid then
            caption = { locale_key, { "caravan-gui.entity-position", entity.localised_name, entity.position.x, entity.position.y } }
        else
            caption = { locale_key, { "caravan-gui.not-specified" } }
        end
        flow.add({ type = "label", name = "py_edit_interrupt_condition_select_outpost_button", tags = tags, index = 1, style = "clickable_squashable_label", caption = caption, tooltip = { "caravan-gui.reassign-hint", caption } }).style.left_padding = 4
        flow.add({ type = "empty-widget" }).style.horizontally_stretchable = true
    elseif condition.type == "outpost-item-count" then
        local locale_key = "caravan-actions." .. condition.type .. "2"
        local entity = condition.entity
        local caption

        if entity and entity.valid then
            caption = { "caravan-actions-short.outpost-item-count", entity.position.x, entity.position.y }
        else
            caption = { locale_key, { "caravan-gui.not-specified" } }
        end
        flow.add({ type = "label", name = "py_edit_interrupt_condition_select_outpost_button", tags = tags, index = 1, style = "clickable_squashable_label", caption = caption, tooltip = { "caravan-gui.reassign-hint", caption } }).style.left_padding = 4
        comparator.build_static_comparator_widgets(flow, condition, tags, "item")
    else
        flow.add({ type = "label", style = "squashable_label_with_left_padding", caption = condition.localised_name })
        if condition.type == "circuit-condition" then
            comparator.build_circuit_comparator_widgets(flow, condition, tags)
        elseif condition.type == "circuit-condition-static" then
            comparator.build_static_comparator_widgets(flow, condition, tags, "signal")
        elseif Utils.contains({ "food-count", "caravan-item-count", "target-item-count", "caravan-fluid-count", "target-fluid-count" }, condition.type) then
            local filters
            local elem_type = "item"
            if condition.type == "food-count" then
                filters = { { filter = "name", name = Caravan.foods.all } }
            elseif condition.type == "caravan-fluid-count" or condition.type == "target-fluid-count" then
                elem_type = "fluid"
            end
            comparator.build_static_comparator_widgets(flow, condition, tags, elem_type, filters)
        else
            -- Add padding because no comparator doing so
            flow.add({ type = "empty-widget" }).style.horizontally_stretchable = true
        end
    end

    flow.add({ type = "sprite-button", name = "py_edit_interrupt_condition_move_up_button", style = "train_schedule_delete_button", sprite = "up-white", tags = tags })
    flow.add({ type = "sprite-button", name = "py_edit_interrupt_condition_move_down_button", style = "train_schedule_delete_button", sprite = "down-white", tags = tags })
    flow.add({ type = "sprite-button", name = "py_edit_interrupt_condition_delete_button", style = "train_schedule_delete_button", sprite = "utility/close", tags = tags })
end

function P.build_condition(parent, condition, tags)
    local frame = parent.add({ type = "frame", style = "train_schedule_station_frame" })

    frame.style.horizontally_stretchable = true
    P.build_condition_flow(frame, condition, tags)
end

function P.build_condition_operator(parent, operator, indent, tags)
    local style = "train_schedule_comparison_type_frame"

    if indent then
        if operator == 0 then
            style = "train_schedule_comparison_type_frame_extra_indented"
        else
            style = "train_schedule_comparison_type_frame_indented"
        end
    end

    local frame = parent.add({ type = "frame", style = style })
    local button = frame.add({ type = "button", name = "py_edit_interrupt_condition_operator_button_" .. tostring(tags.condition_operator_id), style = "train_schedule_comparison_type_button", tags = tags })

    button.caption = operator == 1 and "AND" or "OR"
end

return P
