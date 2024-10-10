return function(master_tech_name, sub_tech_name)
    local reset_time_in_hours = 10
    local reset_time_in_ticks = reset_time_in_hours * 3600 * 60

    storage.turd_migrations = storage.turd_migrations or {}
    storage.turd_bonuses = storage.turd_bonuses or {}

    for _, force in pairs(game.forces) do
        storage.turd_migrations[force.index] = storage.turd_migrations[force.index] or {}
        local turd_bonuses = storage.turd_bonuses[force.index]
        if turd_bonuses and turd_bonuses[master_tech_name] == sub_tech_name then
            storage.turd_migrations[force.index][sub_tech_name] = game.tick + reset_time_in_ticks
            force.print {"turd.font", {"turd.migrated-alert", {"technology-name." .. master_tech_name}, {"technology-name." .. sub_tech_name}, reset_time_in_hours}}
        end
    end
end
