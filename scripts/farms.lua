--fix harvester doesnt restart after clearing field
local farms =
	{
		farm1 =
			{
				seed = 'ralesia-seeds', --the seed being planted
				crop = 'ralesia-flowers', --the 'ore' that is spawned
				recipes = --all the recipes that use these seeds to grow the crop
					{
						{
						recipe_name = 'ralesias17', -- recipe name
						crop_output = 1 -- crop yield
						},
						{
						recipe_name = 'ralesias18', -- recipe name
						crop_output = 2 -- crop yield
						},
						{
						recipe_name = 'ralesias19', -- recipe name
						crop_output = 3 -- crop yield
						},
						{
						recipe_name = 'ralesias20', -- recipe name
						crop_output = 4 -- crop yield
						},
						{
						recipe_name = 'ralesias21', -- recipe name
						crop_output = 5 -- crop yield
						},
						{
						recipe_name = 'ralesias22', -- recipe name
						crop_output = 6 -- crop yield
						},
						{
						recipe_name = 'ralesias23', -- recipe name
						crop_output = 7 -- crop yield
						},
						{
						recipe_name = 'ralesias24', -- recipe name
						crop_output = 8 -- crop yield
						},
						{
						recipe_name = 'ralesias25', -- recipe name
						crop_output = 9 -- crop yield
						},
						{
						recipe_name = 'ralesias26', -- recipe name
						crop_output = 10 -- crop yield
						},
						{
						recipe_name = 'ralesias27', -- recipe name
						crop_output = 11 -- crop yield
						},
						{
						recipe_name = 'ralesias28', -- recipe name
						crop_output = 12 -- crop yield
						},
						{
						recipe_name = 'ralesias29', -- recipe name
						crop_output = 13 -- crop yield
						},
						{
						recipe_name = 'ralesias30', -- recipe name
						crop_output = 14 -- crop yield
						}
					}
			}
	}

script.on_init( function(event)



end)

script.on_nth_tick(30, function(event)



end)

script.on_event(
    defines.events.on_rocket_launched,
    function(event)
        if event.rocket_silo.name == 'ralesia-plantation-test' then
            --log(serpent.block(event))
            log(serpent.block(event.rocket.get_inventory(defines.inventory.rocket).get_contents()))

            local item = event.rocket.get_inventory(defines.inventory.rocket).get_contents()
            local items = {}

            for k, v in pairs(item) do
                items['item1'] = k
            end
            log(items['item1'])
            --log(serpent.block(item))

            local rs = event.rocket_silo
			
			for f, farm in pairs(farms) do
				log(serpent.block(farm))
			if items['item1'] == farm.seed then
				log('hits')
				local recipes = {}
				local output = {}
				for r, recipe in pairs(farm.recipes) do
					log(serpent.block(recipe))
					recipes[recipe.recipe_name] = true
					output[recipe.recipe_name] = recipe.crop_output
				end
				log(serpent.block(rs.get_recipe().name))
                if recipes[rs.get_recipe().name] == true then
                    log('it did a thing')
                    local posx = -10
                    local posy = -10

                    for i = 1, 400 do
                        game.surfaces['nauvis'].create_entity {name = farm.crop, position = {event.rocket_silo.position.x + posx, event.rocket_silo.position.y + posy}, amount = output[rs.get_recipe().name]}

                        posx = posx + 1
                        if posx == 10 then
                            posx = -10
                            posy = posy + 1
                        end
                    end
                end
            end
        end
		local rpos = event.rocket_silo.position
		local harvesters = game.surfaces['nauvis'].find_entities_filtered{area={{rpos.x-10,rpos.y-10},{rpos.x+10,rpos.y+10}},name='harvester'}
		for h, har in pairs(harvesters) do
			har.update_connections()
		end
    end
	end
)
