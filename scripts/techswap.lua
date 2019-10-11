

local TRlist = 
	{
	{tech = 'food-mk01', oldrecipe = 'log1', newrecipe = 'log2'},
	{tech = 'food-mk02', oldrecipe = 'log2', newrecipe = 'log3'},
	{tech = 'food-mk03', oldrecipe = 'log3', newrecipe = 'log4'}
	}
	--tech: the tech that is required to be researched for the new recipe
	--oldrecipe: the recipe that is currently being used
	--newrecipe: the recipe that you want set on the machines using the old recipe

script.on_event(defines.events.on_research_finished, function(event)

	for t, tech in pairs(TRlist) do
	
		if event.research.name == tech.tech then
		
			local cat = event.research.force.recipes[tech.oldrecipe].category
			
			local entities = game.surfaces['nauvis'].find_entities_filtered{force = event.research.force}
			--log('hit')
			for e, ent in pairs(entities) do
				
				--log('hit')
				--log(serpent.block(ent.name))
				if ent.name == 'fwf-mk01' then
				
				--log(ent.prototype.name)
				--log(serpent.block(ent.prototype.name))
				--log(serpent.block(cat))
				--log(serpent.block(ent.prototype.crafting_categories))
				
				end
				
				if ent.prototype ~= nil and ent.prototype.crafting_categories ~= nil then
					--log('hit')
					--for c, category in pairs(ent.prototype.crafting_categories) do
						--log('hit')
						if ent.prototype.crafting_categories[cat] then
							--log('hit')
							local currentrecipe = ent.get_recipe()
							--log(serpent.block(currentrecipe.name))
							--log(tech.oldrecipe)
							if currentrecipe ~= nil and currentrecipe.name == tech.oldrecipe then
								--log(serpent.block(currentrecipe.name))
								--log(tech.oldrecipe)
								--log('hit')
								ent.set_recipe(tech.newrecipe)
								
							end
							
						end
						
					--end
				
				end
				
			end
			
		end
	
	end


end)