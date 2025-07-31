local P = {}

local Utils = require "__pyalienlife__/scripts/caravan/utils"

local comparator = require "action_widgets/comparator"

function P.build_condition_flow(parent, condition, tags)
    local flow = parent.add {type = "flow", direction = "horizontal"}
    flow.style.vertical_align = "center"

    if Utils.contains({"at-outpost", "not-at-outpost"}, condition.type) then
        flow.add {type = "sprite-button", name = "py_edit_interrupt_condition_select_outpost_button", tags = tags, index = 1, style = "train_schedule_action_button", sprite = "utility/rename_icon"}

        local locale_key = "caravan-actions." .. condition.type .. "2"
        local entity = condition.entity
        local caption
        if entity and entity.valid then
            caption = {locale_key, {"caravan-gui.entity-position", entity.localised_name, entity.position.x, entity.position.y}}
        else
            caption = {locale_key, {"caravan-gui.not-specified"}}
        end
        flow.add {type = "label", caption = caption}
    elseif Utils.contains({"outpost-item-count"}, condition.type) then
        flow.add {type = "sprite-button", name = "py_edit_interrupt_condition_select_outpost_button", tags = tags, index = 1, style = "train_schedule_action_button", sprite = "utility/rename_icon"}
        local locale_key = "caravan-actions." .. condition.type .. "2"
        local entity = condition.entity
        local filters
        if entity and entity.valid then
            caption = {locale_key, {"caravan-gui.entity-position", entity.localised_name, entity.position.x, entity.position.y}}
        else
            caption = {locale_key, {"caravan-gui.not-specified"}}
        end
        flow.add {type = "label", caption = caption}
        comparator.build_item_static_comparator_widgets(flow, condition, tags, filters)
    else
        flow.add {type = "label", style = "squashable_label_with_left_padding", caption = condition.localised_name}
        if condition.type == "circuit-condition" then
            comparator.build_circuit_comparator_widgets(flow, condition, tags)
        elseif condition.type == "circuit-condition-static" then
            -- whoops, migration fail. https://github.com/pyanodon/pybugreports/issues/880
            if type(condition.circuit_condition_left) == "number" then
                condition.circuit_condition_left, condition.circuit_condition_right = condition.circuit_condition_right, condition.circuit_condition_left
            end

            comparator.build_circuit_static_comparator_widgets(flow, condition, tags)
        elseif Utils.contains({"food-count", "caravan-item-count", "target-item-count"}, condition.type) then
            local filters
            if condition.type == "food-count" then
                filters = {{filter = "name", name = Caravan.foods.all}}
            end
            comparator.build_item_static_comparator_widgets(flow, condition, tags, filters)
        end
    end

    flow.add {type = "empty-widget"}.style.horizontally_stretchable = true
    flow.add {type = "sprite-button", name = "py_edit_interrupt_condition_move_up_button", style = "train_schedule_delete_button", sprite = "up-white", tags = tags}
    flow.add {type = "sprite-button", name = "py_edit_interrupt_condition_move_down_button", style = "train_schedule_delete_button", sprite = "down-white", tags = tags}
    flow.add {type = "sprite-button", name = "py_edit_interrupt_condition_delete_button", style = "train_schedule_delete_button", sprite = "utility/close", tags = tags}
end

function P.build_condition(parent, condition, tags)
    local frame = parent.add {type = "frame", style = "train_schedule_station_frame"}

    frame.style.horizontally_stretchable = true
    P.build_condition_flow(frame, condition, tags)
end

return P
