for _, interrupt_data in pairs(storage.interrupts or {}) do
    for _, condition in pairs(interrupt_data.conditions or {}) do
        -- migrate broken conditions
        if (condition.type == "circuit-condition-static" or condition.type:find("%-count$")) and type(condition.circuit_condition_right) == "number" then
            condition.item_count = condition.circuit_condition_right
            condition.circuit_condition_right = nil
        end
    end
end
for _, caravan_data in pairs(storage.caravans or {}) do
    for _, schedule in pairs(caravan_data.schedule or {}) do
        for _, action in pairs(schedule.actions or {}) do
            if action.type == "circuit-condition-static" then
                -- previous migration fail. https://github.com/pyanodon/pybugreports/issues/880
                if type(action.circuit_condition_left) == "number" then
                    action.circuit_condition_left, action.circuit_condition_right = action.circuit_condition_right, action.circuit_condition_left
                end
                if type(action.circuit_condition_right) == "number" then
                    action.item_count = action.circuit_condition_right
                    action.circuit_condition_right = nil
                end
            end
        end
    end
end