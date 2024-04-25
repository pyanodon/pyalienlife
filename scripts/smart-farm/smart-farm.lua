Smart_Farm = {}
Smart_Farm.events = {}

local farm_filenames = {
	'farm-ralesia',
	'farm-rennea',
	'farm-tuuphra',
	'farm-grod',
	'farm-yotoi',
	'farm-kicalk',
	'farm-arum',
	'farm-yotoi-fruit',
	'farm-bioreserve',
	script.active_mods['pyalternativeenergy'] and '__pyalternativeenergy__/scripts/crops/farm-mova'
}

local farms = {}
for _, filename in pairs(farm_filenames) do
	local farm = require(filename)
	farms[farm.seed] = farm
end

Smart_Farm.events.on_built = function(event)
	local entity = event.created_entity or event.entity
    if entity.name ~= 'mega-farm' then return end
	local surface = entity.surface

	local position = entity.position
	position.y = position.y - 15
	local positions = {}
	for x = -13, 13 do
		table.insert(positions, {position.x + x, position.y + 13})
		table.insert(positions, {position.x + x, position.y - 13})
	end
	for y = -13, 13 do
		table.insert(positions, {position.x + 13, position.y + y})
		table.insert(positions, {position.x - 13, position.y + y})
	end

	for _, position in pairs(positions) do
		if not surface.entity_prototype_collides('wood-fence', position, false) then
			surface.create_entity{
				name = 'wood-fence',
				position = position,
				force = entity.force
			}
		end
	end

	local landfill_tiles = {}
	for x = -12, 12 do
		for y = -12, 12 do
			local position = {position.x + x, position.y + y}
			if not surface.get_tile(position).collides_with('water-tile') then
				table.insert(landfill_tiles, {name = 'landfill', position = position})
			end
		end
	end
	surface.set_tiles(landfill_tiles)
end

Smart_Farm.events.on_destroyed = function(event)
	local entity = event.entity
	if entity.name ~= 'mega-farm' then return end
	local surface = entity.surface

	local position = entity.position
	position.y = position.y - 15
	local positions = {}
	for x = -13, 13 do
		table.insert(positions, {position.x + x, position.y + 13})
		table.insert(positions, {position.x + x, position.y - 13})
	end
	for y = -13, 13 do
		table.insert(positions, {position.x + 13, position.y + y})
		table.insert(positions, {position.x - 13, position.y + y})
	end

	for _, position in pairs(positions) do
		local fence = surface.find_entity('wood-fence', position)
		if fence and fence.force_index == entity.force_index then
			fence.destroy()
		end
	end
end

Smart_Farm.events.on_rocket_launched = function(event)
	local silo = event.rocket_silo
	if silo.name ~= 'mega-farm' then return end
	local surface = silo.surface
	local position = silo.position
	position.y = position.y - 15

	local replicator = next(event.rocket.get_inventory(defines.inventory.rocket).get_contents())
	if not replicator then return end
	local farm = farms[replicator]
	if not farm then return end
	
	local output
	local recipe_name = silo.get_recipe().name
	for _, recipe in pairs(farm.recipes) do
		if recipe.recipe_name == recipe_name then
			output = recipe.crop_output
			break
		end
	end
	if not output then return end

	local is_alien_biomes = script.active_mods['alien-biomes']
	for x = -11, 11 do
		for y = -11, 11 do
			local ore_location = {position.x + x, position.y + y}
			if is_alien_biomes or not surface.get_tile(ore_location).collides_with('resource-layer') then
				local ore = surface.find_entity(farm.crop, ore_location)

				if ore then
					ore.amount = ore.amount + output
				else
					surface.create_entity{
						name = farm.crop,
						position = ore_location,
						amount = output,
						force = 'neutral'
					}
				end
			end
		end
	end

	for _, harvester in pairs(surface.find_entities_filtered{
		area = {{position.x - 12, position.y - 12}, {position.x + 12, position.y + 12}},
		name = {'harvester', 'collector', 'collector-mk02', 'collector-mk03', 'collector-mk04'}
	}) do
		harvester.update_connections()
		if harvester.get_control_behavior() or next(harvester.circuit_connected_entities.red) or next(harvester.circuit_connected_entities.green) then
			harvester.get_control_behavior().circuit_read_resources = false
			harvester.get_control_behavior().circuit_read_resources = true
		end
	end
end