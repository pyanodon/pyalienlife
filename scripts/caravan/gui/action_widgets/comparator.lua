local number_selection = require "number_selection"

local P = {}

-- TODO this should not be global, but passed around. It implies a significant refactoring,
-- the goal would be to differentiate actions and interrupt conditions in event handlers
local prefix = "py_caravan_action_comparator"

function P.build_circuit_comparator_widgets(parent, action, tags, elem_filters)
    tags.elem_type = "signal"

    local selected_index = action.operator or 3

    parent.add {type = "empty-widget"}.style.horizontally_stretchable = true
    local left_button = parent.add {type = "choose-elem-button", name = prefix .. "_left_button", style = "train_schedule_item_select_button", tags = tags, elem_type = tags.elem_type, elem_filters = elem_filters}
    parent.add {type = "drop-down", name = prefix .. "_drop_down", items = {">", "<", "=", "≥", "≤", "≠"}, selected_index = selected_index, style = "train_schedule_circuit_condition_comparator_dropdown", tags = tags}
    local right_button = parent.add {type = "choose-elem-button", name = prefix .. "_right_button", style = "train_schedule_item_select_button", tags = tags, elem_type = tags.elem_type, elem_filters = elem_filters}

    left_button.elem_value = action.circuit_condition_left
    right_button.elem_value = action.circuit_condition_right
end

function P.build_static_comparator_widgets(parent, action, tags, elem_type, elem_filters, forced_comparison)
    tags.elem_type = elem_type

    parent.add {type = "empty-widget"}.style.horizontally_stretchable = true
    local left_button = parent.add {type = "choose-elem-button", name = prefix .. "_left_button", style = "train_schedule_item_select_button", tags = tags, elem_type = tags.elem_type, elem_filters = elem_filters}

    if forced_comparison then
        parent.add {type = "label", caption = forced_comparison}
    else
        local selected_index = action.operator or 3
        parent.add {type = "drop-down", name = prefix .. "_drop_down", items = {">", "<", "=", "≥", "≤", "≠"}, selected_index = selected_index, style = "train_schedule_circuit_condition_comparator_dropdown", tags = tags}
    end

    number_selection.build_count_selection_button(parent, action, tags)

    if elem_type == "signal" then
        left_button.elem_value = action.circuit_condition_left
    else
        left_button.elem_value = action.elem_value
    end
end

return P
