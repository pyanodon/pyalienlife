local cultures = {
    'bhoddos-culture-mk01',
    'bhoddos-culture-mk02',
    'bhoddos-culture-mk03',
    'bhoddos-culture-mk04',
}

local is_bhoddos_culture = {}
for _, name in pairs(cultures) do
    is_bhoddos_culture[name] = true
end

local function has_picked_bhoodos_path_1(force_index)
    local bonuses = global.turd_bonuses[force_index]
    return bonuses and bonuses['bhoddos-upgrade'] == 'extra-drones'
end

Turd.events[101] = function()
    local forces_with_bhoddos_path_1 = {}
    for _, force in pairs(game.forces) do
        local force_index = force.index
        if has_picked_bhoodos_path_1(force_index) then
            table.insert(forces_with_bhoddos_path_1, force_index)
        end
    end

    if #forces_with_bhoddos_path_1 == 0 then return end

    local active_cultues_per_surface_per_force = {}
    for _, surface in pairs(game.surfaces) do
        active_cultues_per_surface_per_force[surface.index] = {}
        local per_surface = active_cultues_per_surface_per_force[surface.index]
        for _, entity in pairs(surface.find_entities_filtered{
            type = 'assembling-machine',
            name = cultures,
            force = forces_with_bhoddos_path_1
        }) do
            if entity.active and entity.crafting_progress ~= 0 and entity.crafting_progress ~= 1 then
                local per_force = per_surface[entity.force_index]
                global.turd_bhoddos[entity.force_index] = (global.turd_bhoddos[entity.force_index] or 0) + 101
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
            if (global.turd_bhoddos[per_force[1].force_index] or 0) >= 432000 then
                global.turd_bhoddos[per_force[1].force_index] = 0
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

local radius = 76 / 2

local function draw_circle(entity)
    global.bhoddos_circles[entity.unit_number] = rendering.draw_circle{
        draw_on_ground = true, color = {r = 100, g = 53.3, b = 0, a = 0.5}, radius = radius,
        target = entity, filled = true, surface = entity.surface
    }
end

Turd.events.on_selected_entity_changed = function(event)
    local circles = global.bhoddos_circles
    if not circles then
        circles = {}
        global.bhoddos_circles = circles
    end
    local player = game.get_player(event.player_index)
    local selected = player.selected
    local previous_selected = event.last_entity
    local previous_selected_unit_number = previous_selected and previous_selected.unit_number

    if previous_selected_unit_number and circles[previous_selected_unit_number] then
        rendering.destroy(circles[previous_selected_unit_number])
        circles[previous_selected_unit_number] = nil
    end
    if selected and is_bhoddos_culture[selected.name] then
        if has_picked_bhoodos_path_1(player.force_index) then draw_circle(selected) end
    end
end