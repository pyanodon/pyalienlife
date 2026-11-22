local lib = require("scripts/turd/bhoddos-lib")

local UPDATE_RATE = 423
py.register_on_nth_tick(UPDATE_RATE, "bhoddos-turd-update", "pyal", function()
    local forces_with_bhoddos_path_1 = lib.forces_with_bhoddos_path_1()
    local exploded_cultures = {}
    for _, force_index in pairs(forces_with_bhoddos_path_1) do
        if storage.turd_bhoddos[force_index] then
            for _, culture in pairs(storage.turd_bhoddos[force_index]) do
                if culture.valid and culture.active and culture.crafting_progress ~= 0 and culture.crafting_progress ~= 1 then
                    local probability = math.floor(432000 / UPDATE_RATE + 0.5)
                    if math.random(probability) == 69 then
                        table.insert(exploded_cultures, culture)
                        culture.destructible = false
                        culture.surface.create_entity {
                            name = "atomic-rocket",
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
end)

local radius = 76 / 2

local function draw_circle(entity, player)
    storage.bhoddos_circles[player] = rendering.draw_circle {
        draw_on_ground = true, color = {r = 100, g = 53.3, b = 0, a = 0.5}, radius = radius,
        target = entity, filled = true, surface = entity.surface
    }.id
end

py.on_event(defines.events.on_selected_entity_changed, function(event)
    local circles = storage.bhoddos_circles
    if not circles then
        circles = {}
        storage.bhoddos_circles = circles
    end
    local player = game.get_player(event.player_index) --[[@as LuaPlayer]]
    local selected = player.selected

    if circles[event.player_index] then
        local rendering_object = rendering.get_object_by_id(circles[event.player_index])
        if rendering_object then rendering_object.destroy() end
        circles[event.player_index] = nil
    end
    if selected and lib.cultures[selected.name] then
        if lib.forces_with_bhoddos_path_1()[player.force_index] then draw_circle(selected, event.player_index) end
    end
end)

return lib
