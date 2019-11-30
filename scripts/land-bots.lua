--[[
global.landbots =
	{
		towers =
			{
				towerid =
					{
						requestors =
							{
								#id =
									{
									chest = entity,
									controls = entity,
									requestsinroute =
										{
										itemname = amount
										}
									}
							},
						providers =
							{

							},
						botstorage,
						totalbotcount = #,
						currentlyactivebotcount = #,
						maxcontrolablebotcount = #,
						botids =
							{
							
							},
						activebots =
							{
							
							},
						inactivebots =
							{
							
							},
						position,
					}
			},
		bots =
			{
				botid =
					{
					unit = unit,
					carryamount = #,
					hasitem = bool,
					isgettingitem = bool,
					destinationchest =
						{
						
						},
					
					}
			}
	}
]] --

local landbots = {towers = {}, bots = {}}
local towercounter = 0
--local requesterchests = {}

script.on_init(
    function()
        global.landbots = {}
        global.towercounter = 0
    end
)

script.on_event(
    {defines.events.on_built_entity, defines.events.on_robot_built_entity},
    function(event)
        local E = event.created_entity
        log(E.name)
		--log(serpent.block(landbots))

        --swap the roboport for the control tower entity
        if E.name == 'hidden-roboport-for-logistics-radius' then
            local tower = game.surfaces['nauvis'].create_entity {name = 'lb-control-tower', position = {E.position.x, E.position.y}, force = E.force}
            E.destroy()

            towercounter = towercounter+1
            landbots.towers[towercounter] = {position = tower.position, totalbotcount = 0, currentlyactivebotcount = 0, maxcontrolablebotcount = 50,botids = {},activebots = {}, inactivebots = {}, requestorchests = {}, providerchests = {}}
        elseif E.name == 'land-bot' then
            for t,tower in pairs(landbots.towers) do
                --log(serpent.block(t))
                --log(serpent.block(tower))
                if E.position.x * tower.position.x + E.position.y * tower.position.y <= 30 * 30 then
                    if tower.totalbotcount < tower.maxcontrolablebotcount then
                        tower.totalbotcount = tower.totalbotcount + 1
                        table.insert(tower.botids, E.unit_number)
						table.insert(tower.inactivebots, E.unit_number)
						landbots.bots[E.unit_number] = {unit = E, carryamount = 5, hasitem = false, isgettingitem = false, destinationchest = {}}
                    end
                end
            end
        elseif E.name == 'lb-requester-chest' then
            local chestcontrols = game.surfaces['nauvis'].create_entity {name = 'lb-requester-controls', position = {E.position.x, E.position.y}, force = E.force}
            for t,tower in pairs(landbots.towers) do
                --log(serpent.block(t))
                --log(serpent.block(tower))
                if E.position.x * tower.position.x + E.position.y * tower.position.y <= 30 * 30 then
                    tower.requestorchests[E.unit_number] = {chest = E, controls = chestcontrols, requestsinroute = {}}
                    --requesterchests['chest'..E.unit_number] = chestcontrols
                end
            end
        elseif E.name == 'lb-provider-chest' then
            for t,tower in pairs(landbots.towers) do
                --log(serpent.block(t))
                --log(serpent.block(tower))
                if E.position.x * tower.position.x + E.position.y * tower.position.y <= 30 * 30 then
                    tower.providerchests[E.unit_number] = {chest = E}
                end
            end
        end
        log(serpent.block(landbots))
    end
)

script.on_event(
    defines.events.on_put_item,
    function(event)
    end
)

script.on_event(
    defines.events.on_player_selected_area,
    function(event)
    end
)

script.on_event(
    defines.events.on_ai_command_completed,
    function(event)
	--need to check if is on the way to get an item or drop off items.
	--need to check if there are requests to fill that are not already in route by another bot
		log(event.result)
		if event.result == defines.behavior_result.success then
			if landbots.bots[event.unit_number].isgettingitem == true then
				log('it worked')
				--get stuff from box and set destination to the requester chest that asked for it
			end
		end
		if event.result == defines.behavior_result.in_progress then
			if landbots.bots[event.unit_number].isgettingitem == true then
				log('it worked')
			end
		end
		if event.result == defines.behavior_result.fail	then
			if landbots.bots[event.unit_number].isgettingitem == true then
				log('it worked')
			end
		end
		if event.result == defines.behavior_result.deleted then
			if landbots.bots[event.unit_number].isgettingitem == true then
				log('it worked')
			end
		end
    end
)

script.on_nth_tick(5, function(event)
--log('hit')
for t, tower in pairs(landbots.towers) do
	if tower.currentlyactivebotcount < tower.totalbotcount then
		--log('hit')
		for r,req in pairs(tower.requestorchests) do
			--log('hit')
			--log(serpent.block(req))
			if req.controls ~= nil then
				--log('hit')
				local signals = req.controls.get_merged_signals(defines.circuit_connector_id.constant_combinator)
				--log(serpent.block(signals))
				if signals ~= nil then
					for s, sig in pairs(signals) do
						--log(serpent.block(sig))
						local inventory = req.chest.get_inventory(defines.inventory.chest).get_contents()
						local set = {}
						for i, inv in pairs(inventory) do
							log(serpent.block(inv))
							set[i] = true
						end
						if (set[sig.signal.name] ~= nil and inventory[sig.signal.name] < sig.count) or (set[sig.signal.name] == nil) then
							log('box isnt full of the stuff we set. send more please')
							--need to check the providers to see if any of them have what we need
							for p, prov in pairs(tower.providerchests) do
								log(serpent.block(prov))
								local pinventory = prov.chest.get_inventory(defines.inventory.chest).get_contents()
								local pset = {}
								for i, inv in pairs(pinventory) do
									log(serpent.block(i))
									log(serpent.block(inv))
									pset[i] = true
								end
								if pset[sig.signal.name] ~= nil then
								--send landbot to get stuff from this provider box
									for i, inact in pairs(tower.inactivebots) do
										local bots = landbots.bots
										bots[inact].unit.set_command{type = defines.command.go_to_location, destination = prov.chest.position, radius = 4}
										bots[inact].destinationchest = prov.chest
										bots[inact].isgettingitem = true
										table.insert(tower.activebots, inact)
										table.remove(tower.inactivebots, i)
										tower.currentlyactivebotcount = tower.currentlyactivebotcount + 1
										if req.requestsinroute[sig.signal.name] == nil then
											req.requestsinroute[sig.signal.name] = bots[inact].carryamount
										else
											req.requestsinroute[sig.signal.name] = req.requestsinroute[sig.signal.name] + bots[inact].carryamount
										end
										log(serpent.block(landbots))
										break
									end
								end
							end
						end
					end
				end
			end
		end
	--elseif then
	
	end
end

end)
--[[
script.on_event(defines.events.on_gui_opened,function(event)

    if event.entity ~= nil then
        log(event.entity.name)
        if event.entity.name == 'lb-requester-chest' then
            event.entity.opened(requesterchests['chest'..event.entity.unit_number])
        end
    end



end)
]]--
