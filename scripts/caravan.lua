
script.on_init(function(event)

global.caravanroutes = {}

end)

--[[
script.on_event({defines.events.on_built_entity, defines.events.on_robot_built_entity}, function(event)





end)
]]--

script.on_event(defines.events.on_player_selected_area, function(event)

	if event.item == 'carrot-on-stick' then

		log("it works")
		
		for e, ent in pairs(event.entities) do
		
		log(serpent.block(ent.name))
		
		end
		
	end

end)