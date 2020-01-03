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
			},
		requestorchests =
			{
				chestid =
					{
						tower = unit_number
					}
			},
		providerchests =
			{
				chestid =
					{
						tower = unit_number
					}
			}
	}
]] --

local botdata =
	{
	tower = '',
	unit = {},
	carryamount = 5,
	hasitem = false,
	isgettingitem = false,
	destinationchest = '',
	requestorchest = '',
	inventorycount = 0,
	itemname = ''
	}

local landbots =
	{
		towers = {},
		bots = {},
		requesterchests = {},
		providerchests = {}
	}
--local towercounter = 0
--local requesterchests = {}

script.on_init(
    function()
        global.landbots = {}
        --global.towercounter = 0
    end)

script.on_event({defines.events.on_built_entity, defines.events.on_robot_built_entity}, function(event)
        local E = event.created_entity
        log(E.name)
		--log(serpent.block(landbots))

        --swap the roboport for the control tower entity
        if E.name == 'hidden-roboport-for-logistics-radius' then
			log(E.name)
            local tower = game.surfaces['nauvis'].create_entity {name = 'lb-control-tower', position = {E.position.x, E.position.y}, force = E.force}
            E.destroy()

            --towercounter = towercounter+1
            landbots.towers[tower.unit_number] = {position = tower.position, totalbotcount = 0, currentlyactivebotcount = 0, maxcontrolablebotcount = 50,botids = {},activebots = {}, inactivebots = {}, requestorchests = {}, providerchests = {}}

			--scan for pre constructed chests and add them if they are not marked as part of another network.
			-- find a way to display existing network areas when placing bots, chests, and towers
			local existingitems = game.surfaces["nauvis"].find_entities({{tower.position.x-25, tower.position.y-25}, {tower.position.x+25, tower.position.y+25}})
			for e, entity in pairs(existingitems) do
				if entity.name == 'land-bot' then

				elseif entity.name == 'lb-requester-chest' then
					local chestcontrols = game.surfaces['nauvis'].find_entity('lb-requester-controls', entity.position)
					landbots.towers[tower.unit_number].requestorchests[entity.unit_number] = {chest = entity, controls = chestcontrols, requestsinroute = {}}
				elseif entity.name == 'lb-provider-chest' then
					landbots.towers[tower.unit_number].providerchests[entity.unit_number] = {chest = entity}
				end
			end
        elseif E.name == 'land-bot' then
            for t,tower in pairs(landbots.towers) do
                --log(serpent.block(t))
                --log(serpent.block(tower))
                if E.position.x * tower.position.x + E.position.y * tower.position.y <= 30 * 30 then
                    if tower.totalbotcount < tower.maxcontrolablebotcount then
                        tower.totalbotcount = tower.totalbotcount + 1
                        table.insert(tower.botids, E.unit_number)
						table.insert(tower.inactivebots, E.unit_number)
						landbots.bots[E.unit_number] =
						{
							tower = '',
							unit = {},
							carryamount = 5,
							hasitem = false,
							isgettingitem = false,
							destinationchest = '',
							requestorchest = '',
							inventorycount = 0,
							itemname = ''
						}
						landbots.bots[E.unit_number].unit = E
						landbots.bots[E.unit_number].tower = t
						--{unit = E, carryamount = 5, hasitem = false, isgettingitem = false, destinationchest = {}}
                    end
                end
            end
        elseif E.name == 'lb-requester-chest' then
            local chestcontrols = game.surfaces['nauvis'].create_entity {name = 'lb-requester-controls', position = {E.position.x, E.position.y}, force = E.force}
            for t,tower in pairs(landbots.towers) do
                --log(serpent.block(t))
                --log(serpent.block(tower))
                if ((E.position.x - tower.position.x) * (E.position.x - tower.position.x)) + ((E.position.y - tower.position.y) * (E.position.y - tower.position.y)) <= 30 * 30 then
                    tower.requestorchests[E.unit_number] = {chest = E, controls = chestcontrols, requestsinroute = {}}
					local slots =
								{
									{item = 'a', amount = 0},
									{item = 'a', amount = 0},
									{item = 'a', amount = 0},
									{item = 'a', amount = 0},
									{item = 'a', amount = 0}
								}
					landbots.requesterchests[E.unit_number] =
						{
							tower = t, 
							request_slots = slots
						}
					log(serpent.block(landbots.requesterchests[E.unit_number]))
                end
            end
        elseif E.name == 'lb-provider-chest' then
            for t,tower in pairs(landbots.towers) do
                --log(serpent.block(t))
                --log(serpent.block(tower))
                if ((E.position.x - tower.position.x) * (E.position.x - tower.position.x)) + ((E.position.y - tower.position.y) * (E.position.y - tower.position.y)) <= 30 * 30 then
                    tower.providerchests[E.unit_number] = {chest = E}
					landbots.providerchests[E.unit_number] = {tower = t}
                end
            end
        end
        log(serpent.block(landbots))
    end
)

script.on_event({defines.events.on_player_mined_entity, defines.events.on_robot_mined_entity}, function(event)
	if event.entity.name == 'lb-control-tower' then
		for t, tower in pairs(landbots.towers) do
			if t == event.entity.unit_number then
				landbots.towers[t] = nil
			end
		end
	end
end)

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
		local lb
		log(event.result)
		if landbots.bots[event.unit_number] ~= nil then
			lb = landbots.bots[event.unit_number]
		end
		if event.result == defines.behavior_result.success then
			if lb ~= nil then
				if lb.isgettingitem == true then
					log('it worked')
					--get stuff from box and set destination to the requester chest that asked for it
					local pinventory = landbots.towers[lb.tower].providerchests[lb.destinationchest].chest.get_inventory(defines.inventory.chest).get_contents()
					local pset = {}
					for i, inv in pairs(pinventory) do
						log(serpent.block(i))
						log(serpent.block(inv))
						pset[i] = true
					end
					if pset[lb.itemname] ~= nil then
						for i, inv in pairs(pinventory) do
							if i == lb.itemname then
								if inv >= lb.carryamount then
									lb.inventorycount = 5
									landbots.towers[lb.tower].providerchests[lb.destinationchest].chest.get_inventory(defines.inventory.chest).remove({name=lb.itemname,count=lb.carryamount})
								elseif inv < lb.carryamount then
									lb.inventorycount = inv
									landbots.towers[lb.tower].providerchests[lb.destinationchest].chest.get_inventory(defines.inventory.chest).remove({lb.itemname,count=inv})
								end
								--swap over to the carrying graphic version of the land bug
								lb.unit.set_command{type = defines.command.go_to_location, destination = landbots.towers[lb.tower].requestorchests[lb.requestorchest].chest.position, radius = 2}
								lb.hasitem = true
								lb.isgettingitem = false
							end
						end
					end
				elseif lb.hasitem == true then
					landbots.towers[lb.tower].requestorchests[lb.requestorchest].chest.get_inventory(defines.inventory.chest).insert({name=lb.itemname,count=lb.inventorycount})
					landbots.towers[lb.tower].requestorchests[lb.requestorchest].requestsinroute[lb.itemname] = landbots.towers[lb.tower].requestorchests[lb.requestorchest].requestsinroute[lb.itemname] - lb.inventorycount
					lb.inventory = ''
					lb.itemname = ''
					lb.hasitem = false
					--swap back to the none load carring land bug
					table.remove(landbots.towers[lb.tower].activebots, event.unit_number)
					table.insert(landbots.towers[lb.tower].inactivebots, event.unit_number)
					landbots.towers[lb.tower].currentlyactivebotcount = landbots.towers[lb.tower].currentlyactivebotcount - 1
				end
			end
		end
		if event.result == defines.behavior_result.in_progress then
			if lb[event.unit_number] ~= nil then

			end
		end
		if event.result == defines.behavior_result.fail	then
			if lb[event.unit_number] ~= nil then

			end
		end
		if event.result == defines.behavior_result.deleted then
			if lb[event.unit_number] ~= nil then

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
							--log(serpent.block(inv))
							set[i] = true
						end
						local requestamount = 0
						if req.requestsinroute[sig.signal.name] ~= nil then
							requestamount = sig.count - req.requestsinroute[sig.signal.name]
						else
							requestamount = sig.count
						end
						if (set[sig.signal.name] ~= nil and inventory[sig.signal.name] < requestamount) or (set[sig.signal.name] == nil) then
							log('box isnt full of the stuff we set. send more please')
							--need to check the providers to see if any of them have what we need
							for p, prov in pairs(tower.providerchests) do
								log(serpent.block(p))
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
										bots[inact].unit.set_command{type = defines.command.go_to_location, destination = prov.chest.position, radius = 2}
										bots[inact].destinationchest = p
										bots[inact].requestorchest = r
										bots[inact].isgettingitem = true
										bots[inact].itemname = sig.signal.name
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

script.on_event({defines.events.on_player_mined_entity, defines.events.on_robot_mined_entity},function(event)

	if event.entity.name == 'land-bot' then
		local bot = event.entity
		local t_b_ref = landbots.towers[landbots.bots[bot.unit_number].tower]
		--remove bot from towers active bots table
		for ab, active_bot in pairs(t_b_ref.activebots) do
			if active_bot == bot.unit_number then
				table.remove(t_b_ref.activebots, ab)
			end
		end
		--remove bot from towers bot id table
		for id, botid in pairs(t_b_ref.botids) do
			if botid == bot.unit_number then
				table.remove(t_b_ref.botids, id)
			end
		end
		--remove bot from towers inactive bots table
		for iab, inact in pairs(t_b_ref.inactivebots) do
			if inact == bot.unit_number then
				table.remove(t_b_ref.inactivebots, iab)
			end
		end
		if event.player_index ~= nil then
			game.players[event.player_index].insert({name=landbots.bots[bot.unit_number].itemname,count=landbots.bots[bot.unit_number].inventorycount})
		end
		
		--remove bot from bots table 
		landbots.bots[bot.unit_number] = nil
	elseif event.entity.name == 'lb-provider-chest' then
		--remove all refernces to this chest
		
	elseif event.entity.name == 'lb-requester-chest' then
		--remove all refernces to this chest
		
	elseif event.entity.name == 'lb-control-tower' then
	
	end
	

end)

local request_gui

script.on_event(defines.events.on_gui_opened,function(event)

    if event.entity ~= nil then
        --log(event.entity.name)
		--log(event.gui_type)
        if event.entity.name == 'lb-requester-chest' then
			local player = game.players[event.player_index]
			request_gui = player.gui.left.add({type = 'frame', name = 'test', direction = 'vertical'})
			
			request_gui.add({type = 'table', name = 'table', column_count = 1})
			--request_gui.table.add({type = 'list-box', name = 'list-box', items = {'iron-plate','copper-plate'}})
			request_gui.table.add({type = 'choose-elem-button', name = 'elem', elem_type = 'item'})
			request_gui.table.add({type = 'table', name = 'tablejr', column_count = 2})
			request_gui.table.tablejr.add({type = 'slider', name = 'request-slider', value = 0, maximum_value = 10000})
			request_gui.table.tablejr.add({type = 'textfield', name = 'numfield', text = '0', numeric = true, lose_focus_on_confirm = true})
        end
    end

end)

script.on_event(defines.events.on_gui_value_changed, function(event)

	log(event.element.name)
	
	if event.element.name == 'request-slider' then
		log(serpent.block(event.element.parent.children))
		event.element.parent['numfield'].text = event.element.slider_value
	end

end)

script.on_event(defines.events.on_gui_elem_changed, function(event)

	log(event.element.name)

end)

script.on_event(defines.events.on_gui_closed, function(event)

	if event.entity ~= nil then
        if event.entity.name == 'lb-requester-chest' then
			request_gui.destroy()
			
        end
    end

end)