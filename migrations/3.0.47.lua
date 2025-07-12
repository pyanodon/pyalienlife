-- Update actions to support short format

for _, caravan_data in pairs(storage.caravans) do
    for _, schedule in pairs(caravan_data.schedule) do
        for _, action in pairs(schedule.actions) do
            local type = action.type
            if type ~= "at-outpost" and type ~= "not at outpost" then
                action.localised_name = {"?", {"caravan-actions-short."..type}, {"caravan-actions."..type}}
            end
        end
    end
end

for _, interrupt_data in pairs(storage.interrupts) do
    for _, schedule in pairs(interrupt_data.schedule) do
        for _, action in pairs(schedule.actions) do
            local type = action.type
            if type ~= "at-outpost" and type ~= "not at outpost" then
                action.localised_name = {"?", {"caravan-actions-short."..type}, {"caravan-actions."..type}}
            end
        end
    end
end