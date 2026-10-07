---@class SmartFarm
---@field crops table<data.ResourceEntityName, SmartFarmCropData>
SmartFarm = {}

require "smart-farm-prototypes"

local function get_fence_positions(entity)
    local position = entity.position
    position.y = position.y - 15
    local fence_positions = {}
    for x = -12, 12 do
        fence_positions[#fence_positions+1] = {position.x + x, position.y + 13}
        fence_positions[#fence_positions+1] = {position.x + x, position.y - 13}
    end
    for y = -13, 13 do
        fence_positions[#fence_positions+1] = {position.x + 13, position.y + y}
        fence_positions[#fence_positions+1] = {position.x - 13, position.y + y}
    end
    return fence_positions
end

py.on_event(py.events.on_built(), function(event)
    local entity = event.entity
    if entity.name ~= "mega-farm" then return end

    -- finally, added in 2.0.73
	  entity.send_to_orbit_automatically = true

    local surface = entity.surface

    for _, position in pairs(get_fence_positions(entity)) do
        if not surface.entity_prototype_collides("wood-fence", position, false) then
            surface.create_entity {
                name = "wood-fence",
                position = position,
                force = entity.force
            }
        end
    end
end)

py.on_event(py.events.on_destroyed(), function(event)
    local entity = event.entity
    if entity.name ~= "mega-farm" then return end

    local surface = entity.surface

    for _, position in pairs(get_fence_positions(entity)) do
        local fence = surface.find_entity("wood-fence", position)
        if fence and fence.force_index == entity.force_index then
            fence.destroy()
        end
    end
end)

---@param event EventData.on_rocket_launched
py.on_event(defines.events.on_rocket_launched, function(event)
    local silo = event.rocket_silo
    if not silo or not silo.valid then return end -- silo died after launch started
    if silo.name ~= "mega-farm" then return end
    local satellite = event.rocket.cargo_pod--[[@cast -?]].get_inventory(defines.inventory.cargo_unit)--[[@cast -?]].get_contents()[1]
    if not satellite then return end
    local crop_data = SmartFarm.crops[satellite.name]
    if not crop_data then return end
    local recipe = silo.get_recipe().name
    if not recipe then return end
    local yield = crop_data.recipes[recipe]
    if not yield then return end
    local extra_count_fraction = yield - math.floor(yield)
    yield = math.floor(yield)
    local surface = silo.surface
    local position = silo.position
    position.y = position.y - 15

    local is_alien_biomes = script.active_mods["alien-biomes"] or script.active_mods["combat-mechanics-overhaul"]
    for x = -11, 11 do
        for y = -11, 11 do
            local ore_location = {position.x + x, position.y + y}
            ---@diagnostic disable-next-line: missing-parameter
            if is_alien_biomes or not surface.get_tile(ore_location).collides_with("resource") then
                local ore = surface.find_entity(crop_data.resource, ore_location)

                local addition = yield + (math.random() <= extra_count_fraction and 1 or 0)
                if ore and addition > 0 then
                    ore.amount = ore.amount + addition --[[@as uint]]
                elseif addition > 0 then
                    surface.create_entity {
                        name = crop_data.resource,
                        position = ore_location,
                        amount = yield + addition,
                        force = "neutral"
                    }
                end
            end
        end
    end

    for _, harvester in pairs(surface.find_entities_filtered {
        area = {{position.x - 12, position.y - 12}, {position.x + 12, position.y + 12}},
        name = {"harvester", "flora-collector-mk01", "flora-collector-mk02", "flora-collector-mk03", "flora-collector-mk04"}
    }) do
        harvester.update_connections()
    end
end)