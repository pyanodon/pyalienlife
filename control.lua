
require('scripts/caravan')

script.on_init(function()

end)

script.on_event({defines.events.on_built_entity, defines.events.on_robot_built_entity}, function(event)
	--change to get direction and enity collision box for entity size
	local E = event.created_entity
	local player = game.players[event.player_index]
	local direction = E.direction
	local cbox
	
		if event.created_entity.name == "steel-chest" then
			log("chest built")
				
				local CV = game.surfaces["nauvis"].create_entity{name="py-filter-chest",position={E.position.x+10,E.position.y}, force = player.force}
			
		end
end)
--[[
script.on_event(defines.events.on_player_rotated_entity, function(event)
	if event.entity.name == "oil-derrick-mk01" then
		local direction = event.entity.direction
		--log(serpent.block(direction))
		local player = game.players[event.player_index]
		local selected = player.selected
		if selected and selected.name == "oil-derrick-mk01" then
			local spos = selected.position
			local valve = game.surfaces["nauvis"].find_entities_filtered{area={{spos.x-2.5,spos.y-2.5},{spos.x+2.5,spos.y+2.5}},name="py-converter-valve"}
			--log("trying to rotate entity")
			for  _, v in pairs(valve) do
				if direction == 2 then
					local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={x=spos.x+2,y=spos.y},direction=defines.direction.west}
					CV.set_recipe(v.get_recipe())
				elseif direction == 4 then
					local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={x=spos.x,y=spos.y+2},direction=defines.direction.north}
					CV.set_recipe(v.get_recipe())
				elseif direction == 6 then
					local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={x=spos.x-2,y=spos.y},direction=defines.direction.east}
					CV.set_recipe(v.get_recipe())
				elseif direction == 0 then
					local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={x=spos.x,y=spos.y-2},direction=defines.direction.south}
					CV.set_recipe(v.get_recipe())
				end
				v.destroy()
			end
		end
	elseif event.entity.name == "oil-derrick-mk02" then
		local direction = event.entity.direction
		--log(serpent.block(direction))
		local player = game.players[event.player_index]
		local selected = player.selected
		if selected and selected.name == "oil-derrick-mk02" then
			local spos = selected.position
			local valve = game.surfaces["nauvis"].find_entities_filtered{area={{spos.x-3.5,spos.y-3.5},{spos.x+3.5,spos.y+3.5}},name="py-converter-valve"}
			--log("trying to rotate entity")
			for  _, v in pairs(valve) do
				if direction == 2 then
					local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={x=spos.x+3,y=spos.y},direction=defines.direction.west}
					CV.set_recipe(v.get_recipe())
				elseif direction == 4 then
					local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={x=spos.x,y=spos.y+3},direction=defines.direction.north}
					CV.set_recipe(v.get_recipe())
				elseif direction == 6 then
					local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={x=spos.x-3,y=spos.y},direction=defines.direction.east}
					CV.set_recipe(v.get_recipe())
				elseif direction == 0 then
					local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={x=spos.x,y=spos.y-3},direction=defines.direction.south}
					CV.set_recipe(v.get_recipe())
				end
				v.destroy()
			end
		end
	elseif event.entity.name == "oil-derrick-mk03" then
		local direction = event.entity.direction
		--log(serpent.block(direction))
		local player = game.players[event.player_index]
		local selected = player.selected
		if selected and selected.name == "oil-derrick-mk03" then
			local spos = selected.position
			local valve = game.surfaces["nauvis"].find_entities_filtered{area={{spos.x-4.5,spos.y-4.5},{spos.x+4.5,spos.y+4.5}},name="py-converter-valve"}
			--log("trying to rotate entity")
			for  _, v in pairs(valve) do
				if direction == 2 then
					local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={x=spos.x+4,y=spos.y-1},direction=defines.direction.west}
					CV.set_recipe(v.get_recipe())
				elseif direction == 4 then
					local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={x=spos.x+1,y=spos.y+4},direction=defines.direction.north}
					CV.set_recipe(v.get_recipe())
				elseif direction == 6 then
					local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={x=spos.x-4,y=spos.y+1},direction=defines.direction.east}
					CV.set_recipe(v.get_recipe())
				elseif direction == 0 then
					local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={x=spos.x-1,y=spos.y-4},direction=defines.direction.south}
					CV.set_recipe(v.get_recipe())
				end
				v.destroy()
			end
		end
	elseif event.entity.name == "oil-derrick-mk04" then
		local direction = event.entity.direction
		--log(serpent.block(direction))
		local player = game.players[event.player_index]
		local selected = player.selected
		if selected and selected.name == "oil-derrick-mk04" then
			local spos = selected.position
			local valve = game.surfaces["nauvis"].find_entities_filtered{area={{spos.x-5.5,spos.y-5.5},{spos.x+5.5,spos.y+5.5}},name="py-converter-valve"}
			--log("trying to rotate entity")
			for  _, v in pairs(valve) do
				if direction == 2 then
					local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={x=spos.x+5,y=spos.y},direction=defines.direction.west}
					CV.set_recipe(v.get_recipe())
				elseif direction == 4 then
					local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={x=spos.x,y=spos.y+5},direction=defines.direction.north}
					CV.set_recipe(v.get_recipe())
				elseif direction == 6 then
					local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={x=spos.x-5,y=spos.y},direction=defines.direction.east}
					CV.set_recipe(v.get_recipe())
				elseif direction == 0 then
					local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={x=spos.x,y=spos.y-5},direction=defines.direction.south}
					CV.set_recipe(v.get_recipe())
				end
				v.destroy()
			end
		end
	end
end)
]]--
--[[
script.on_event({defines.events.on_player_mined_entity, defines.events.on_robot_mined_entity}, function(event)
	if event.entity.name == "oil-derrick-mk01" then
		local spos = event.entity.position
		local valve = game.surfaces["nauvis"].find_entities_filtered{area={{spos.x-2.5,spos.y-2.5},{spos.x+2.5,spos.y+2.5}},name="py-converter-valve"}
		for _, v in pairs(valve) do
			v.destroy()
		end
	elseif event.entity.name == "oil-derrick-mk02" then
		local spos = event.entity.position
		local valve = game.surfaces["nauvis"].find_entities_filtered{area={{spos.x-3.5,spos.y-3.5},{spos.x+3.5,spos.y+3.5}},name="py-converter-valve"}
		for _, v in pairs(valve) do
			v.destroy()
		end
	elseif event.entity.name == "oil-derrick-mk03" then
		local spos = event.entity.position
		local valve = game.surfaces["nauvis"].find_entities_filtered{area={{spos.x-4.5,spos.y-4.5},{spos.x+4.5,spos.y+4.5}},name="py-converter-valve"}
		for _, v in pairs(valve) do
			v.destroy()
		end
	elseif event.entity.name == "oil-derrick-mk04" then
		local spos = event.entity.position
		local valve = game.surfaces["nauvis"].find_entities_filtered{area={{spos.x-5.5,spos.y-5.5},{spos.x+5.5,spos.y+5.5}},name="py-converter-valve"}
		for _, v in pairs(valve) do
			v.destroy()
		end
	end
end)
]]--