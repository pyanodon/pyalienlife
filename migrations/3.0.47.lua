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

for _, interrupt_data in pairs(storage.interrupts or {}) do
    for _, schedule in pairs(interrupt_data.schedule) do
        for _, action in pairs(schedule.actions) do
            local type = action.type
            if type ~= "at-outpost" and type ~= "not at outpost" then
                action.localised_name = {"?", {"caravan-actions-short."..type}, {"caravan-actions."..type}}
            end
        end
    end
end
-- this will flag that the save wasn't updated to 25x25 vatbrains and we don't need to do special checks in 3.0.57.lua
storage.skip_vatbrain_check = true