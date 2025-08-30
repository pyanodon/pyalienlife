require("actions")

local ImplControl = require("control")
local ImplGui = require("gui")

local P = {}

local function get_condition_groups(interrupt)
    local groups = {}
    local current_group = {}

    local operators = interrupt.conditions_operators
    local conditions = interrupt.conditions

    local or_indices = table.filter(table.map(operators, function(o, idx) return o == 0 and idx or -1 end), function(i) return i ~= -1 end)

    if #or_indices == 0 then
        table.insert(groups, table.deepcopy(conditions))
    else
        local j = 1
        for i = 1, #conditions do
            table.insert(current_group, table.deepcopy(conditions[i]))
            if or_indices[j] == i then
                table.insert(groups, table.deepcopy(current_group))
                current_group = {}
                j = j + 1
            end
        end
        if #current_group > 0 then
            table.insert(groups, table.deepcopy(current_group))
        end
    end
    return groups
end

local function evaluate_condition(caravan_data, condition)
    if not Caravan.actions[condition.type] then return false end
    return Caravan.actions[condition.type](caravan_data, caravan_data.schedule[caravan_data.schedule_id], condition)
end

local function evaluate_condition_group(caravan_data, condition_group)
    return table.all(condition_group, function(c) return evaluate_condition(caravan_data, c) end)
end

function P.evaluate_conditions(caravan_data, interrupt)
    local condition_groups = get_condition_groups(interrupt)

    return table.any(condition_groups, function(cg) return evaluate_condition_group(caravan_data, cg) end)
end

function P.find_interrupt_to_trigger(caravan_data)
    local current_schedule = caravan_data.schedule[caravan_data.schedule_id]

    -- current schedule_id is the "soon-to-be-previous" schedule_id, do not count it
    local temporary_schedule = table.find(caravan_data.schedule, function(sch, idx) return idx ~= caravan_data.schedule_id and sch.temporary ~= nil end)

    for _, interrupt_name in pairs(caravan_data.interrupts) do
        local interrupt = storage.interrupts[interrupt_name]
        -- TODO shouldn't we assert? Is it a check for multiplayer shenanigans?
        if interrupt then
            if not current_schedule or temporary_schedule == nil or interrupt.inside_interrupt then
                if P.evaluate_conditions(caravan_data, interrupt) then
                    return interrupt
                end
            end
        end
    end
    return nil
end

-- If the schedule_id points to a temporary stop, the adjusted schedule_id will point to the previous permanent stop.
-- If schedule_id is -1 or if all stops were temporary, -1 is returned.
local function adjust_schedule_id(old_schedule, new_schedule, removed_index, old_schedule_id)
    if not removed_index or old_schedule_id == -1 then return old_schedule_id end
    if #new_schedule == 0 then return -1 end

    local nb_removed = #old_schedule - #new_schedule

    if old_schedule_id < removed_index then return old_schedule_id end

    -- schedule_id was a temporary stop
    if old_schedule_id <= removed_index + nb_removed - 1 then
        local adjusted_schedule_id = removed_index - 1
        if adjusted_schedule_id == 0 then
            adjusted_schedule_id = #new_schedule
        end
        return adjusted_schedule_id
    end
    return old_schedule_id - nb_removed
end

-- Returns a copy of the caravan schedule without temporary stops, and the adjusted schedule_id
function P.remove_temporary_stops(caravan_data)
    local removed_index
    local fn = function(s, idx)
        if s.temporary and removed_index == nil then removed_index = idx end
        return s.temporary == nil
    end
    local new_schedule = table.filter(caravan_data.schedule, fn)

    return new_schedule, adjust_schedule_id(caravan_data.schedule, new_schedule, removed_index, caravan_data.schedule_id)
end

function P.insert_temporary_stops_into_schedule(schedule, interrupt, insert_index)
    local ret = table.deepcopy(schedule)

    for i = 1, #interrupt.schedule do
        local sch = table.deepcopy(interrupt.schedule[i])
        sch.temporary = { interrupt_name = interrupt.name, schedule_id = i }
        table.insert(ret, insert_index + i - 1, sch)
    end
    return ret
end

function P.trigger_interrupt_in_regular_schedule(caravan_data, interrupt)
    local new_schedule, adjusted_schedule_id = P.remove_temporary_stops(caravan_data)
    local insert_index
    -- all stops were temporary, or completed temporary destination was at the top of the schedule
    if adjusted_schedule_id == -1 or adjusted_schedule_id > caravan_data.schedule_id then
        insert_index = 1
        -- When a temporary train stop keeps triggering, it moves from the bottom to the top.
        -- Don't know if that's intended or a bug, but let's do the same thing.
    elseif caravan_data.schedule[caravan_data.schedule_id].temporary and caravan_data.schedule_id == #caravan_data.schedule then
        insert_index = 1
    else
        insert_index = adjusted_schedule_id + 1
    end
    caravan_data.schedule = P.insert_temporary_stops_into_schedule(new_schedule, interrupt, insert_index)
    caravan_data.schedule_id = insert_index
end

function P.advance_caravan_schedule_by_1(caravan_data)
    assert(#caravan_data.schedule > 0)
    assert(caravan_data.schedule_id ~= -1)

    local interrupt = P.find_interrupt_to_trigger(caravan_data)

    if interrupt and #interrupt.schedule > 0 then
        P.trigger_interrupt_in_regular_schedule(caravan_data, interrupt)
    else
        if caravan_data.schedule[caravan_data.schedule_id].temporary then
            table.remove(caravan_data.schedule, caravan_data.schedule_id)
        else
            caravan_data.schedule_id = caravan_data.schedule_id + 1
        end
        caravan_data.schedule_id = math.max(1, caravan_data.schedule_id % (#caravan_data.schedule + 1))
    end
end

---Starts a caravan pathfinding to its next scheduled entity. Sets the action ID to -1 becuase it cannot do actions while in transit.
---This is called whenever it finishes all its actions on the previous schedule or it is started manually via the GUI.
---@param caravan_data Caravan
---@param schedule_id int
---@param skip_eating boolean?
function P.begin_schedule(caravan_data, schedule_id, skip_eating)
    local schedule = caravan_data.schedule[schedule_id]

    if not schedule or (schedule.entity and not schedule.entity.valid) then
        ImplControl.stop_actions(caravan_data); return
    end
    if caravan_data.last_scheduled_tick and caravan_data.last_scheduled_tick + 30 > game.tick then
        if caravan_data.schedule_id ~= schedule_id then
            if not skip_eating and not ImplControl.eat(caravan_data) then
                ImplControl.stop_actions(caravan_data); return
            end
        end
        caravan_data.schedule_id = schedule_id
        caravan_data.retry_pathfinder = 1
        return
    end

    local entity = caravan_data.entity
    if not entity or not entity.valid then
        ImplControl.stop_actions(caravan_data); return
    end

    local schedule = caravan_data.schedule[schedule_id]
    if caravan_data.fuel_inventory then
        if not skip_eating and not ImplControl.eat(caravan_data) then
            ImplControl.stop_actions(caravan_data); return
        end
    end

    caravan_data.schedule_id = schedule_id
    caravan_data.action_id = -1
    if schedule.entity then
        local schedule_entity = schedule.entity
        if schedule_entity.valid and schedule_entity.surface == entity.surface then
            ImplControl.goto_entity(caravan_data, schedule.entity)
        else
            ImplGui.add_alert(entity, Caravan.alerts.destination_destroyed)
            py.draw_error_sprite(entity, "virtual-signal.py-destination-destroyed", 30)
            ImplControl.wander(caravan_data)
            caravan_data.retry_pathfinder = 1
            return
        end
    else
        ImplControl.goto_position(caravan_data, schedule.position)
    end

    caravan_data.last_scheduled_tick = game.tick
end

---Begins the action with the specified ID inside the caravan's current schedule.
---@param caravan_data Caravan
---@param action_id int
function P.begin_action(caravan_data, action_id)
    local entity = caravan_data.entity
    local schedule = caravan_data.schedule[caravan_data.schedule_id]
    if not schedule then
        ImplControl.stop_actions(caravan_data); return
    end
    local action = schedule.actions[action_id]
    if not action then
        ImplControl.stop_actions(caravan_data); return
    end

    caravan_data.action_id = action_id

    if action.type == "time-passed" then
        action.timer = action.wait_time or 5
    end
end

return P
