local P = {}

local Utils = require "__pyalienlife__/scripts/caravan/utils"

local comparator = require "action_widgets/comparator"

function P.build_condition_flow(parent, condition, action_id, tags)
    local flow = parent.add {type = "flow", direction = "horizontal"}
    flow.style.vertical_align = "center"

    local label = flow.add {type = "label", style = "squashable_label_with_left_padding", caption = condition.localised_name}
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
    elseif Utils.contains({"at-outpost", "not-at-outpost"}, condition.type) then
            flow.add {type = "sprite-button", name = "py_add_outpost", tags = tags, index = 1, style = "train_schedule_wait_condition_button", sprite = "utility/rename_icon"}
            
            local locale_key = "caravan-actions." .. condition.type .. "2"
            local entity = condition.entity
            if entity and entity.valid then
                label.caption = {locale_key, {"caravan-gui.entity-position", entity.localised_name, entity.position.x, entity.position.y}}
            else
                label.caption = {locale_key, {"caravan-gui.not-specified"}}
            end
    end

    flow.add {type = "empty-widget"}.style.horizontally_stretchable = true
    flow.add {type = "sprite-button", name = "py_edit_interrupt_condition_move_up_button", style = "train_schedule_delete_button", sprite = "up-white", tags = tags}
    flow.add {type = "sprite-button", name = "py_edit_interrupt_condition_move_down_button", style = "train_schedule_delete_button", sprite = "down-white", tags = tags}
    flow.add {type = "sprite-button", name = "py_edit_interrupt_condition_delete_button", style = "train_schedule_delete_button", sprite = "utility/close", tags = tags}
end

function P.build_condition(parent, condition, action_id, tags)
    local frame = parent.add {type = "frame", style = "train_schedule_station_frame"}

    frame.style.horizontally_stretchable = true
    frame.style.left_margin = 32
    P.build_condition_flow(frame, condition, action_id, tags)
end

return P
