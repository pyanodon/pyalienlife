local P = {}

local Utils = require "__pyalienlife__/scripts/caravan/utils"

local number_selection = require "action_widgets/number_selection"
local comparator = require "action_widgets/comparator"
local caravan_prototypes = require "__pyalienlife__/scripts/caravan/caravan-prototypes"

local possibly_blocking_actions = {"fill-inventory", "empty-inventory", "store-food", "store-specific-food", "load-caravan", "unload-caravan", "load-target", "unload-target", "fill-tank", "empty-tank"}

local function play_stop_button_info(caravan_data, schedule_id, action_id)
    local schedule = caravan_data.schedule[schedule_id]

    if schedule and schedule.entity and (not schedule.entity.valid or schedule.entity.surface ~= caravan_data.entity.surface) then
        return "utility/close_fat", "train_schedule_action_button"
    elseif caravan_data.schedule_id == schedule_id and caravan_data.action_id == action_id then
        return "utility/stop", "py_clicked_train_schedule_action_button"
    else
        return "utility/play", "train_schedule_action_button"
    end
end

function P.build_action_flow(parent, caravan_data, action, tags)
    local flow = parent.add {type = "flow", direction = "horizontal"}
    flow.style.vertical_align = "center"

    if tags.action_list_type == Caravan.action_list_types.standard_schedule then
        local sprite, style = play_stop_button_info(caravan_data, tags.schedule_id, tags.action_id)
        flow.add {type = "sprite-button", name = "py_caravan_action_play_stop_button", style = style, sprite = sprite, tags = tags}
    end

    local label = flow.add {type = "label", style = "squashable_label_with_left_padding", caption = action.localised_name}
    if action.type == "time-passed" then
        number_selection.build_time_selection_button(flow, action, tags)
    elseif action.type == "circuit-condition" then
        comparator.build_circuit_comparator_widgets(flow, action, tags)
    elseif action.type == "circuit-condition-static" then
        -- whoops, migration fail. https://github.com/pyanodon/pybugreports/issues/880
        if type(action.circuit_condition_left) == "number" then
            action.circuit_condition_left, action.circuit_condition_right = action.circuit_condition_right, action.circuit_condition_left
        end

        comparator.build_circuit_static_comparator_widgets(flow, action, tags)
    elseif Utils.contains({"load-caravan", "unload-caravan", "load-target", "unload-target"}, action.type) then
        -- don't know why we restrict comparison here, shouldn't it be a regular dropdown?
        comparator.build_item_static_comparator_widgets(flow, action, tags, nil, "=")
        -- these are interrupt-only
    elseif Utils.contains({"food-count", "caravan-item-count", "target-item-count"}, action.type) then
        local filters
        if action.type == "food-count" then
            filters = {{filter = "name", name = Caravan.foods.all}}
        end
        comparator.build_item_static_comparator_widgets(flow, action, tags, filters)
    elseif Utils.contains({"outpost-item-count"}, action.type) then
        flow.add {type = "sprite-button", name = "py_caravan_action_add_outpost", tags = tags, index = 1, style = "train_schedule_action_button", sprite = "utility/rename_icon"}

        local locale_key = "caravan-actions." .. action.type .. "2"
        local entity = action.entity

        if entity and entity.valid then
            label.caption = {locale_key, {"caravan-gui.entity-position", entity.localised_name, entity.position.x, entity.position.y}}
        else
            label.caption = {locale_key, {"caravan-gui.not-specified"}}
        end
        comparator.build_item_static_comparator_widgets(flow, action, tags)
    elseif action.type == "store-specific-food" then
        local filters = {{filter = "name", name = Caravan.foods.all}}

        comparator.build_item_static_comparator_widgets(flow, action, tags, filters, "≥")
    elseif Utils.contains({"at-outpost", "not-at-outpost"}, action.type) then
        flow.add {type = "sprite-button", name = "py_caravan_action_add_outpost", tags = tags, index = 1, style = "train_schedule_action_button", sprite = "utility/rename_icon"}

        local locale_key = "caravan-actions." .. action.type .. "2"
        local entity = action.entity
        if entity and entity.valid then
            label.caption = {locale_key, {"caravan-gui.entity-position", entity.localised_name, entity.position.x, entity.position.y}}
        else
            label.caption = {locale_key, {"caravan-gui.not-specified"}}
        end
    end

    flow.add {type = "empty-widget"}.style.horizontally_stretchable = true
    if Utils.contains(possibly_blocking_actions, action.type) then
        flow.add {type = "checkbox", name = "py_caravan_action_blocking_checkbox", state = not action.async, tooltip = {"caravan-gui.wait"}, tags = tags}
    end
    flow.add {type = "sprite-button", name = "py_caravan_action_move_up_button", style = "train_schedule_delete_button", sprite = "up-white", tags = tags}
    flow.add {type = "sprite-button", name = "py_caravan_action_move_down_button", style = "train_schedule_delete_button", sprite = "down-white", tags = tags}
    flow.add {type = "sprite-button", name = "py_caravan_action_delete_button", style = "train_schedule_delete_button", sprite = "utility/close", tags = tags}
end

function P.build_action(parent, caravan_data, action, tags)
    local frame = parent.add {type = "frame", style = "train_schedule_station_frame"}

    frame.style.horizontally_stretchable = true
    frame.style.left_margin = 32
    P.build_action_flow(frame, caravan_data, action, tags)
end

return P
