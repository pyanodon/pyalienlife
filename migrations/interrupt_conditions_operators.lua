for _, interrupt in pairs(storage.interrupts or {}) do
    if not interrupt.conditions_operators then
        interrupt.conditions_operators = {}
        for i = 1, #interrupt.conditions - 1 do
            table.insert(interrupt.conditions_operators, 1)
        end
    end
end
