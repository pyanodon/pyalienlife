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
    local actions = CaravanUtils.get_actions_from_tags(event.element.tags, event.player_index)
    local caravan_data = storage.caravans[event.element.tags.unit_number]

    local old_index = event.element.tags.action_id
    local new_index = event.control and 1 or old_index - 1

    if old_index == 1 then return end

    actions[new_index], actions[old_index] = actions[old_index], actions[new_index]

    if caravan_data then
        if caravan_data.schedule_id == event.element.tags.schedule_id and caravan_data.action_id ~= -1 then
            CaravanImpl.stop_actions(caravan_data)
        elseif caravan_data.action_id == old_index then
            caravan_data.action_id = new_index
        elseif caravan_data.action_id == new_index then
            caravan_data.action_id = old_index
        end
    end

    update_action_gui(player, event.element.tags)
end

gui_events[defines.events.on_gui_click]["py_caravan_action_move_down_button"] = function(event)
    local player = game.get_player(event.player_index)
    local actions = CaravanUtils.get_actions_from_tags(event.element.tags, event.player_index)
    local caravan_data = storage.caravans[event.element.tags.unit_number]

    local old_index = event.element.tags.action_id
    local new_index = event.control and #actions or old_index + 1

    if old_index == #actions then return end

    actions[new_index], actions[old_index] = actions[old_index], actions[new_index]

    if caravan_data then
        if caravan_data.schedule_id == event.element.tags.schedule_id and caravan_data.action_id ~= -1 then
            CaravanImpl.stop_actions(caravan_data)
        elseif caravan_data.action_id == old_index then
            caravan_data.action_id = new_index
        elseif caravan_data.action_id == new_index then
            caravan_data.action_id = old_index
        end
    end

    update_action_gui(player, event.element.tags)
end

gui_events[defines.events.on_gui_click]["py_caravan_action_delete_button"] = function(event)
    local player = game.get_player(event.player_index)
    local caravan_data = storage.caravans[event.element.tags.unit_number]
    local actions = CaravanUtils.get_actions_from_tags(event.element.tags, event.player_index)

    table.remove(actions, event.element.tags.action_id)

    if caravan_data then
        CaravanImpl.stop_actions(caravan_data)
    end
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
            local position
            if schedule.entity and schedule.entity.valid then position = schedule.entity.position else position = schedule.position end
            if py.distance_squared(position, caravan_data.entity.position) < 1000 then
                CaravanImpl.begin_action(caravan_data, tags.action_id)
            end
        end
    else
        CaravanImpl.begin_schedule(caravan_data, tags.schedule_id)
        -- TODO shouldn't we begin_action(caravan_data, tags.action_id) here??
        -- we should, keep that for another commit
        -- need to ensure the caravan has arrived to its destination first, so use -1 * action_id to encode which stop to begin schedule with
    end

    CaravanGui.update_gui(player)
end

local prefix = "py_caravan_action_number_selection"

local expression_variables = {k=1000, K=1000, m=1000000, M=1000000, g=1000000000, G=1000000000}


--- Parses a mathematical expression using MathExp library with predefined variables.
--- @param expr string
--- @param vars { [string]: number }?
--- @return number?
local function parse_math_expr(expr, vars)
    if not expr or expr == "" then return nil end

    local ok, result = pcall(function()
        return helpers.evaluate_expression(expr, vars or expression_variables)
    end)

    if ok and type(result) == "number" then
        -- Floor the result to avoid fractions in item counts or time
        result = math.floor(result)

        return result
    else
        return nil
    end
end

local function on_confirmed(event)
    local player = game.get_player(event.player_index)

    local tags = event.element.tags
    local textfield = event.element.parent[prefix .. "_text_field"]
    local value = tonumber(textfield.text) or 0
    local parsed_value = parse_math_expr(textfield.text)

    if value ~= parsed_value and parsed_value then
        textfield.text = tostring(parsed_value)

        local slider = textfield.parent[prefix .. "_slider"]
        if slider and slider.valid then
            -- clamp to slider bounds if present

            -- TODO: Try to get the bounds from tags saved at creation
            local min_v = 0
            local max_v = 50000 
            
            if min_v and max_v then
                parsed_value = math.max(min_v, math.min(max_v, parsed_value))
                -- lets also update the textfield to reflect clamping
                textfield.text = tostring(parsed_value)
            end
            slider.slider_value = parsed_value
        end

        return
    end

    local action = CaravanUtils.get_action_from_button(event.element)

    if tags.elem_type == "time" then
        action.wait_time = value
    else
        value = math.min(2147483647, value)
        action.item_count = value
    end

    -- keep slider in sync after setting the action value 
    do
        local frame = player.gui.screen[prefix .. "_frame"]
        if frame and frame.valid then
            local slider = frame[prefix .. "_slider"]
            if slider and slider.valid then
                slider.slider_value = value
            end
        end
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
    elseif tags.elem_type == "item" or tags.elem_type == "fluid" then
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
