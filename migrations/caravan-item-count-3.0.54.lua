    for _, interrupt_data in pairs(storage.interrupts or {}) do
        for _, condition in pairs(interrupt_data.conditions or {}) do
            -- migrate broken conditions
            if condition.type:find("%-count$") and type(condition.circuit_condition_right) == "number" then
                condition.item_count = condition.circuit_condition_right
                condition.circuit_condition_right = nil
            end
        end
    end