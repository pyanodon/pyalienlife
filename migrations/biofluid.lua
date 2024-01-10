require 'scripts.biofluid.biofluid'
require 'scripts.biofluid.biofluid-prototypes'
require 'scripts.biofluid.network-builder'
require 'scripts.biofluid.biofluid-gui'

local broken_graphics = {}
local invalid_coords = {}

for _, surface in pairs(game.surfaces) do
    local network_positions = global.network_positions[surface.index]
    if network_positions then
        for x, yy in pairs(network_positions) do
            for y, data in pairs(yy) do
                if not data.entity.valid then
                    data.entity = surface.find_entity('vessel', {x + 0.5, y + 0.5})
                    if not data.entity then
                        invalid_coords[#invalid_coords + 1] = {surface.index, x, y}
                    else
                        broken_graphics[#broken_graphics + 1] = data.entity
                    end
                end
            end
        end
    end
end

for _, data in pairs(invalid_coords) do
    game.print('failed to migrate vessel at ' .. data[2] .. ', ' .. data[3])
    global.network_positions[data[1]][data[2]][data[3]] = nil
end

for _, underground_data in pairs(global.biofluid_undergrounds) do
    local entity = underground_data.entity
    if entity and entity.valid then
        local heat_connection = underground_data.heat_connection
        if not heat_connection or not heat_connection.valid then
            underground_data.heat_connection = entity.surface.find_entity('vessel-to-ground-heat-connection', entity.position)
            broken_graphics[#broken_graphics + 1] = entity
        end
    end
end

for _, entity in pairs(broken_graphics) do
    Biofluid.update_graphics(entity)
end