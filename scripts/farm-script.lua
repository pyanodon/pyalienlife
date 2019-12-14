local farm_table = {}

local farms = {}

function farm_table.add(farm)

	log(serpent.block(farms))
	table.insert(farms, farm)
	log(serpent.block(farms))

end

script.on_init( function(event)



end)

script.on_nth_tick(30, function(event)



end)

script.on_event(
    defines.events.on_rocket_launched,
    function(event)
        if event.rocket_silo.name == 'mega-farm' then
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
                    local posx = -11
                    local posy = -11
					local rpos = event.rocket_silo.position
                    for i = 1, 484 do
                        game.surfaces['nauvis'].create_entity {name = farm.crop, position = {rpos.x + posx, (rpos.y - 15) + posy}, amount = output[rs.get_recipe().name]}

                        posx = posx + 1
                        if posx == 11 then
                            posx = -11
                            posy = posy + 1
                        end
						--[[
						local crops = game.surfaces['nauvis'].find_entities_filtered{area={{rpos.x-6,rpos.y-6},{rpos.x+6,rpos.y+6}},name=farm.crop}
						for c, crop in pairs(crops) do
							crop.destroy()
						end
						]]--
                    end
                end
            end
        end
		local rpos = event.rocket_silo.position
		local harvesters = game.surfaces['nauvis'].find_entities_filtered{area={{rpos.x-11,(rpos.y-15)-11},{rpos.x+11,(rpos.y-15)+11}},name='harvester'}
		for h, har in pairs(harvesters) do
			har.update_connections()
		end
    end
	end
)

return farm_table
