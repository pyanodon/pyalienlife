
script.on_event(defines.events.on_tick, function(event)



end)

script.on_event(defines.events.on_rocket_launched, function(event)

	if event.rocket_silo.name == 'ralesia-plantation-test' then
		
		--log(serpent.block(event))
		log(serpent.block(event.rocket.get_inventory(defines.inventory.rocket).get_contents()))

		local item = event.rocket.get_inventory(defines.inventory.rocket).get_contents()
		local items = {}
		
		
		for k, v in pairs(item) do
			items['item1'] = k
		end
		--log(items['item1'])
		--log(serpent.block(item))
		
		if items['item1'] == 'ralesias' then
		
			log('it did a thing')
			local posx = -15
			local posy = -15
			
			for i = 1, 900 do
				
				game.surfaces['nauvis'].create_entity {name = "ralesia-flowers", position = {event.rocket_silo.position.x+posx, event.rocket_silo.position.y+posy}, amount = 10}
            
				posx = posx + 1
                if posx == 15 then
					posx = -15
					posy = posy + 1
                end
			
			end
		end
		
	end
end)