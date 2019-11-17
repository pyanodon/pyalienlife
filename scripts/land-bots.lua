
script.on_init(function(event)
    


end)

script.on_event({defines.events.on_player_built, defines.events.on_robot_built}, function(event)

local E = event.created_entity

--swap the roboport for the control tower entity
	if E.name == 'hidden-roboport-for-logistics-radius' then
	
		game.surfaces["nauvis"].create_entity{name="lb-control-tower",position={E.position.x+cbox,E.position.y},--[[direction=defines.direction.west,]] force=E.force}
		E.destory()
	
	end

end)

script.on_event(defines.events.on_player_selected_area, function(event)
        


end)

script.on_event(defines.events.on_ai_command_completed, function(event)
        


end)
