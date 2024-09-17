local lib = require('scripts/turd/bhoddos-lib')

Turd.events[123] = function()
    local forces_with_bhoddos_path_1 = lib.forces_with_bhoddos_path_1()
    local exploded_cultures = {}
    for _, force_index in pairs(forces_with_bhoddos_path_1) do
        if storage.turd_bhoddos[force_index] then
            for _, culture in pairs(storage.turd_bhoddos[force_index]) do
                if culture.valid and culture.active and culture.crafting_progress ~= 0 and culture.crafting_progress ~= 1 then
                    local probability = math.floor(432000 / 123 + 0.5)
                    if math.random(probability) == 69 then
                        table.insert(exploded_cultures, culture)
                        culture.destructible = false
                        culture.surface.create_entity{
                            name = 'atomic-rocket',
                            position = culture.position,
                            target = culture,
                            speed = 1,
                            max_range = 0.1
                        }
                    end
                end
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
    storage.bhoddos_circles[entity.unit_number] = rendering.draw_circle{
        draw_on_ground = true, color = {r = 100, g = 53.3, b = 0, a = 0.5}, radius = radius,
        target = entity, filled = true, surface = entity.surface
    }
end

Turd.events.on_selected_entity_changed = function(event)
    local circles = storage.bhoddos_circles
    if not circles then
        circles = {}
        storage.bhoddos_circles = circles
    end
    local player = game.get_player(event.player_index) --[[@as LuaPlayer]]
    local selected = player.selected
    local previous_selected = event.last_entity
    local previous_selected_unit_number = previous_selected and previous_selected.unit_number

    if previous_selected_unit_number and circles[previous_selected_unit_number] then
        rendering.destroy(circles[previous_selected_unit_number])
        circles[previous_selected_unit_number] = nil
    end
    if selected and lib.cultures[selected.name] then
        if lib.forces_with_bhoddos_path_1()[player.force_index] then draw_circle(selected) end
    end
end

return lib
