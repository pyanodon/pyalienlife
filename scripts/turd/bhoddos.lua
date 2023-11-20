local cultures = {
    'bhoddos-culture-mk01',
    'bhoddos-culture-mk02',
    'bhoddos-culture-mk03',
    'bhoddos-culture-mk04',
}

Turd.events[432000] = function()
    local forces_with_bhoddos_path_1 = {}
    for _, force in pairs(game.forces) do
        local bonuses = global.turd_bonuses[force.index]
        if bonuses and bonuses['bhoddos-upgrade'] == 'extra-drones' then
            table.insert(forces_with_bhoddos_path_1, force.index)
        end
    end

    if #forces_with_bhoddos_path_1 == 0 then return end

    local active_cultues_per_surface_per_force = {}
    for _, surface in pairs(game.surfaces) do
        local per_surface = {}
        active_cultues_per_surface_per_force[surface.index] = per_surface
        for _, entity in pairs(surface.find_entities_filtered{
            type = 'assembling-machine',
            name = cultures,
            force = forces_with_bhoddos_path_1
        }) do
            if entity.active and entity.crafting_progress ~= 0 then
                local per_force = per_surface[entity.force_index]
                if not per_force then
                    per_force = {}
                    per_surface[entity.force_index] = per_force
                end
                per_force[#per_force + 1] = entity
            end
        end
    end

    local exploded_cultures = {}
    for _, per_surface in pairs(active_cultues_per_surface_per_force) do
        for _, per_force in pairs(per_surface) do
            local entity = per_force[math.random(#per_force)]
            entity.destructible = false
            entity.surface.create_entity{
                name = 'atomic-rocket',
                position = entity.position,
                target = entity,
                speed = 1,
                max_range = 0.1
            }
            exploded_cultures[#exploded_cultures + 1] = entity
        end
    end

    if #exploded_cultures == 0 then return end

    local future = game.tick + 120
    script.on_nth_tick(future, function()
        for _, entity in pairs(exploded_cultures) do
            if entity.valid then
                entity.destructible = true
            end
        end
        script.on_nth_tick(future, nil)
    end)
end