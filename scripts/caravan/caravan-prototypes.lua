require "util"


-- small migration script to ensure we are not transfering deleted items
-- I have no access to the JSON migrations so invalid items are just deleted
-- TODO: Use JSON migrations after they are added to base factorio under prototypes
local function error_caravan(caravan_data, invalid_prototype_name, invalid_prototype_type)
    local position
    if type(caravan_data) == "table" then
        if caravan_data.entity.valid then
            position = caravan_data.entity.position
            position = "[gps=" .. position.x .. ", " .. position.y .. "]"
        else
            return
        end
        game.print(string.format("CARAVAN MIGRATION: \"%s\" is not a valid %s prototype. You will need to manually fix a caravan @ %s", invalid_prototype_name, invalid_prototype_type, position))
    else
        game.print(string.format("CARAVAN MIGRATION: \"%s\" is not a valid %s prototype. You will need to manually fix the \"%s\" interrupt", invalid_prototype_name, invalid_prototype_type, caravan_data))
    end
end
local function migrate_proto(name, type_name, migrations)
    if not name then return nil end
    type_name = type_name or "item"
    if type_name == "virtual" then type_name = "virtual-signal" end -- for circuit conditions
    local new_name = migrations[type_name] and migrations[type_name][name] or name -- may also be "" if prototype was deleted
    -- global prototype table is indexed with underscores :/
    type_name = type_name:gsub("%-", "_")
    if prototypes[type_name][new_name] then
        return new_name
    end
    return nil
end
local function get_elem_type(condition_or_action_type)
    if condition_or_action_type:find("fluid") or condition_or_action_type:find("tank") then
        return "fluid"
    end
    return "item"
end
local function migrate_action(action, caravan_data, migrations)
    local prev_value = action.elem_value
    if prev_value == nil then
        return
    end
    local elem_type = get_elem_type(action.type)
    action.elem_value = migrate_proto(prev_value, elem_type, migrations)
    if not action.elem_value then
        error_caravan(caravan_data, prev_value, elem_type)
    end
end
local function migrate_circuit_condition(condition, caravan_data, migrations)
    local prev_name = condition.name
    local condition_type = condition.type or "item"
    condition.name = migrate_proto(prev_name, condition_type, migrations)
    if not condition.name then
        -- rip
        error_caravan(caravan_data, prev_name, condition_type)
        condition.name = "signal-question-mark"
        condition.type = "virtual"
    end
end
py.on_event(py.events.on_init(), function(changes)
    -- runtime changes, don't care
    if not changes then
        return
    end
    local migrations = changes.migrations
    for _, caravan_data in pairs(storage.caravans or {}) do
        if caravan_data.fluid then
            local fluid_name = caravan_data.fluid.name
            caravan_data.fluid.name = migrate_proto(fluid_name, "fluid", migrations)
            if not caravan_data.fluid.name then
                error_caravan(caravan_data, fluid_name, "fluid")
                caravan_data.fluid = nil
            end
        end
        for _, schedule in pairs(caravan_data.schedule or {}) do
            for _, action in pairs(schedule.actions or {}) do
                migrate_action(action, caravan_data, migrations)
                for _, condition in pairs({action.circuit_condition_left, action.circuit_condition_right}) do
                    if type(condition) == "table" and condition.name then
                        migrate_circuit_condition(condition, caravan_data, migrations)
                    end
                end
            end
        end
    end
    for interrupt_name, interrupt_data in pairs(storage.interrupts or {}) do
        for _, condition in pairs(interrupt_data.conditions or {}) do
            local elem_value = condition.elem_value
            if elem_value ~= nil then
                local elem_type = get_elem_type(condition.type)
                condition.elem_value = migrate_proto(elem_value, elem_type, migrations)
                if condition.elem_value == nil then
                    error_caravan(interrupt_name, elem_value, elem_type)
                end
            end
            for _, circuit_condition in pairs({condition.circuit_condition_left, condition.circuit_condition_right}) do
                if type(circuit_condition) == "table" and circuit_condition.name then
                    migrate_circuit_condition(circuit_condition, interrupt_name, migrations)
                end
            end
        end
    end
end)