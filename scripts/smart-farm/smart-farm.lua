Smart_Farm = {}
Smart_Farm.events = {}

local farms = {
	farm1 = require('farm-ralesia'),
	farm2 = require('farm-rennea'),
	farm3 = require('farm-tuuphra'),
	farm4 = require('farm-grod'),
	farm5 = require('farm-yotoi'),
	farm6 = require('farm-kicalk'),
	farm7 = require('farm-arum'),
	farm8 = require('farm-yotoi-fruit'),
	farm9 = require('farm-bioreserve'),
    farm10 = script.active_mods['pyalternativeenergy'] and require('__pyalternativeenergy__/scripts/crops/farm-mova')
}

Smart_Farm.events.on_built = function(event)
	local entity = event.created_entity or event.entity
    if entity.name ~= 'mega-farm' then return end

	local posx = -13
	local posy = -13
	local position = entity.position
	repeat
		if posx == -13 or posy == -13 or posx == 13 or posy == 13 then
			entity.surface.create_entity{
				name = 'wood-fence',
				position = {position.x + posx, (position.y - 15) + posy},
				force = entity.force
			}
		end
		--create landfill
		entity.surface.set_tiles{{name = 'landfill', position = {position.x + posx, (position.y - 15) + posy}}}

		posx = posx + 1
		if posx == 14 then
			posx = -13
			posy = posy + 1
		end
	until posy == 14
end

Smart_Farm.events.on_rocket_launched = function(event)
	local silo = event.rocket_silo
	if silo.name ~= 'mega-farm' then return end
	local surface = silo.surface
	local position = silo.position

	local items = {}
	for k, _ in pairs(event.rocket.get_inventory(defines.inventory.rocket).get_contents()) do
		items['item1'] = k
	end

	for _, farm in pairs(farms) do
		if items['item1'] == farm.seed then
			local recipes = {}
			local output = {}
			for _, recipe in pairs(farm.recipes) do
				recipes[recipe.recipe_name] = true
				output[recipe.recipe_name] = recipe.crop_output
			end
			if recipes[silo.get_recipe().name] == true then
				local posx = -11
				local posy = -11
				repeat
					if not surface.find_entity(farm.crop, {position.x + posx, (position.y - 15) + posy}) then
						surface.create_entity{
							name = farm.crop,
							position = {position.x + posx, (position.y - 15) + posy},
							amount = output[silo.get_recipe().name]
						}
					else
						local ore = surface.find_entity(farm.crop, {position.x + posx, (position.y - 15) + posy})
						ore.amount = ore.amount + output[silo.get_recipe().name]
					end
					posx = posx + 1
					if posx == 12 then
						posx = -11
						posy = posy + 1
					end
				until posy == 12
			end
			break
		end
	end

	for _, harvester in pairs(surface.find_entities_filtered{
		area = {{position.x - 11, (position.y - 15) - 11}, {position.x + 11, (position.y - 15) + 11}},
		name = {'harvester', 'collector'}
	}) do
		harvester.update_connections()
	end
end