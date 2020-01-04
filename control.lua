
require('scripts/techswap')

--Mega Farms
local farm_table = {}
local farms = {}

function farm_table.add(farm)
    --log(serpent.block(farms))
    table.insert(farms, farm)
    --log(serpent.block(farms))
end

farms =
	{
	farm1 = require('scripts/crops/farm-ralesia'),
	farm2 = require('scripts/crops/farm-rennea'),
	farm3 = require('scripts/crops/farm-tuuphra'),
	farm4 = require('scripts/crops/farm-grod'),
	farm5 = require('scripts/crops/farm-yotoi'),
	farm6 = require('scripts/crops/farm-kicalk'),
	farm7 = require('scripts/crops/farm-arum'),
	farm8 = require('scripts/crops/farm-yotoi-fruit')
	}
	
--log(serpent.block(farms))

--END--

--Caravan
local caravanroutes = {}
local lastclickedunit = {}
local start = {}
local endding = {}
local routenumber = 1

local outpost_table = {}

--gui
local caravangui

--[[
caravan routes table =
{
	route =
		{
		start,
		end,
		caravan
		}
}
]]

--END--

--Land Bots
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

--gui
local request_gui

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

--END--

script.on_init(
    function()
        global.landbots = {}
        global.caravanroutes = {}
		global.caravan_unit_numbers = {}
    end)

script.on_event({defines.events.on_built_entity, defines.events.on_robot_built_entity}, function(event)
        local E = event.created_entity
        log(E.name)
		--log(serpent.block(landbots))

        if E.name == 'mega-farm' then
			--script for placing down the farm
            local posx = -13
            local posy = -13
            local rpos = E.position
            repeat
                log(posx)
                log(posy)
                if posx == -13 or posy == -13 or posx == 13 or posy == 13 then
                    game.surfaces['nauvis'].create_entity {name = 'wood-fence', position = {rpos.x + posx, (rpos.y - 15) + posy}, force = E.force}
                end
                --create landfill
                game.surfaces['nauvis'].set_tiles {{name = 'landfill', position = {rpos.x + posx, (rpos.y - 15) + posy}}}

                posx = posx + 1
                if posx == 14 then
                    posx = -13
                    posy = posy + 1
                end
            until posy == 14
        elseif E.name == 'hidden-roboport-for-logistics-radius' then
			--swap the roboport for the control tower entity
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
            --local chestcontrols = game.surfaces['nauvis'].create_entity {name = 'lb-requester-controls', position = {E.position.x, E.position.y}, force = E.force}
            for t,tower in pairs(landbots.towers) do
                --log(serpent.block(t))
                --log(serpent.block(tower))
                if ((E.position.x - tower.position.x) * (E.position.x - tower.position.x)) + ((E.position.y - tower.position.y) * (E.position.y - tower.position.y)) <= 30 * 30 then
                    --tower.requestorchests[E.unit_number] = {chest = E, controls = chestcontrols, requestsinroute = {}}
					tower.requestorchests[E.unit_number] = {chest = E, requestsinroute = {}}
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
        elseif E.name == 'outpost' then
			--local outpost = {entity = E, name = math.random(1,100)}
			outpost_table['outpost'..E.unit_number] = {entity = E, name = math.random(1,100)}
		elseif E.name == 'caravan' then
			global.caravan_unit_numbers[E.unit_number] = true
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

script.on_event(defines.events.on_put_item, function(event)
    
	end)

script.on_event(defines.events.on_player_selected_area, function(event)
    
	end)

script.on_event(defines.events.on_ai_command_completed, function(event)
	
		--log(event.result)
		if landbots.bots[event.unit_number] ~= nil then
			--need to check if is on the way to get an item or drop off items.
			--need to check if there are requests to fill that are not already in route by another bot
			local lb
			lb = landbots.bots[event.unit_number]
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
		elseif global.caravan_unit_numbers[event.unit_number] ~= nil then
			local car = event.unit_number
			--log(event.unit_number)
			if math.sqrt(((math.abs(caravanroutes[car].unit.position.x) - math.abs(caravanroutes[car].startpoint.pos.x)) ^ 2) + ((math.abs(caravanroutes[car].unit.position.y) - math.abs(caravanroutes[car].startpoint.pos.y)) ^ 2)) <= 10 then
				local outpostinventory = game.surfaces[caravanroutes[car].unit.surface.name].find_entity('outpost', caravanroutes[car].startpoint.pos).get_inventory(defines.inventory.chest)
				if outpostinventory ~= nil then
					if caravanroutes[car].inventory.hasitem then
						outpostinventory.insert({name=caravanroutes[car].inventory.item, count=caravanroutes[car].inventory.stackamount})
						caravanroutes[car].inventory.hasitem = false
						caravanroutes[car].inventory.item = ''
						caravanroutes[car].inventory.stackamount = 0
					else
						local contents = outpostinventory.get_contents()
						--log(serpent.block(outpostinventory))
						--log(serpent.block(outpostinventory.get_contents()))
						for i, item in pairs(contents) do
							--log(serpent.block(i))
							--log(serpent.block(item))
							local stacksize = game.item_prototypes[i].stack_size
							caravanroutes[car].inventory.item = i
							if item < stacksize then
								caravanroutes[car].inventory.stackamount = item
								caravanroutes[car].inventory.hasitem = true
								outpostinventory.remove({name = i, count = item})
							else
								caravanroutes[car].inventory.stackamount = stacksize
								caravanroutes[car].inventory.hasitem = true
								outpostinventory.remove({name = i, count = stacksize})
							end
							break
						end
					end
				--log(serpent.block(caravanroutes[car].inventory))
				end
				--caravanroutes[car].inventory.item = outpostinventory
				caravanroutes[car].unit.set_command {
					type = defines.command.go_to_location,
					destination = caravanroutes[car].endpoint.pos,
					radius = 4
				}
			elseif math.sqrt((caravanroutes[car].endpoint.pos.x - caravanroutes[car].unit.position.x) ^ 2 + (caravanroutes[car].endpoint.pos.y - caravanroutes[car].unit.position.y) ^ 2) <= 10 then
				local outpostinventory = game.surfaces[caravanroutes[car].unit.surface.name].find_entity('outpost', caravanroutes[car].endpoint.pos).get_inventory(defines.inventory.chest)
				if outpostinventory ~= nil then
					if caravanroutes[car].inventory.hasitem then
						outpostinventory.insert({name=caravanroutes[car].inventory.item, count=caravanroutes[car].inventory.stackamount})
						caravanroutes[car].inventory.hasitem = false
						caravanroutes[car].inventory.item = ''
						caravanroutes[car].inventory.stackamount = 0
					else
						local contents = outpostinventory.get_contents()
						--log(serpent.block(outpostinventory))
						--log(serpent.block(outpostinventory.get_contents()))
						for i, item in pairs(contents) do
							--log(serpent.block(i))
							--log(serpent.block(item))
							local stacksize = game.item_prototypes[i].stack_size
							caravanroutes[car].inventory.item = i
							if item < stacksize then
								caravanroutes[car].inventory.stackamount = item
								caravanroutes[car].inventory.hasitem = true
								outpostinventory.remove({name = i, count = item})
							else
								caravanroutes[car].inventory.stackamount = stacksize
								caravanroutes[car].inventory.hasitem = true
								outpostinventory.remove({name = i, count = stacksize})
							end
							break
						end
					end
				--log(serpent.block(caravanroutes[car].inventory))
				end
				caravanroutes[car].unit.set_command {
					type = defines.command.go_to_location,
					destination = caravanroutes[car].startpoint.pos,
					radius = 4
				}
			end
		end

    end)

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

script.on_event(defines.events.on_gui_selection_state_changed, function(event)

	log(serpent.block(caravanroutes))
	--log(event.element.selected_index)
	--log(serpent.block(next(lastclickedunit)))
	--log(serpent.block(lastclickedunit[next(lastclickedunit)].unit_number))
	
	local id_num = next(lastclickedunit)

	if event.element.name == 'outpost-list' then
		
		local value = event.element.get_item(event.element.selected_index)
		log(value)
		log(serpent.block(outpost_table))
		log(serpent.block(outpost_table[value]))
		
		caravanroutes[id_num].startpoint.id = outpost_table[value].entity.unit_number
		caravanroutes[id_num].startpoint.pos = outpost_table[value].entity.position
		
		caravanroutes[id_num].unit.set_command {type = defines.command.go_to_location, destination = caravanroutes[id_num].startpoint.pos, radius = 4}
		
	elseif event.element.name == 'outpost-list-2' then
		
		local value = event.element.get_item(event.element.selected_index)
		log(value)
		log(serpent.block(outpost_table))
		log(serpent.block(outpost_table[value]))
		
		caravanroutes[id_num].endpoint.id = outpost_table[value].entity.unit_number
		caravanroutes[id_num].endpoint.pos = outpost_table[value].entity.position
		
	end

	log(serpent.block(caravanroutes))

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
                        repeat
                            game.surfaces['nauvis'].create_entity {name = farm.crop, position = {rpos.x + posx, (rpos.y - 15) + posy}, amount = output[rs.get_recipe().name]}
                            game.surfaces['nauvis'].create_entity {name = farm.crop .. '-fake', position = {rpos.x + posx, (rpos.y - 15) + posy}}
                            posx = posx + 1
                            if posx == 12 then
                                posx = -11
                                posy = posy + 1
                            end
                        until posy == 12
                    end
                end
            end
            local rpos = event.rocket_silo.position
            local harvesters = game.surfaces['nauvis'].find_entities_filtered {area = {{rpos.x - 11, (rpos.y - 15) - 11}, {rpos.x + 11, (rpos.y - 15) + 11}}, name = 'harvester'}
            for h, har in pairs(harvesters) do
                har.update_connections()
            end
        end
    end)
	
function create_caravan_gui(event, entity)
	log('did a thing')
	log(serpent.block(outpost_table))
	local player = game.players[event.player_index]
	caravangui = player.gui.center.add({type = 'frame', name = 'caravan_frame_left', direction = 'horizontal'})
	caravangui.add({type = 'table', name = 'ctable', column_count = 1})
	caravangui.ctable.add({type = 'frame', name = 'route_frame', direction = 'vertical',  caption = 'Route Start'})
		local names = {}
		for n, name in pairs(outpost_table) do
			table.insert(names, n)
		end
	caravangui.ctable.route_frame.add({type = 'drop-down', name = 'outpost-list', items = names })
	caravangui.ctable.add({type = 'frame', name = 'route_frame_2', direction = 'vertical',  caption = 'Route End'})
	caravangui.ctable.route_frame_2.add({type = 'drop-down', name = 'outpost-list-2', items = names })
	
	caravangui.add({type = 'frame', name = 'caravan_frame_center', direction = 'vertical', caption = 'current inventory'})
	caravangui.caravan_frame_center.add({type = 'sprite-button', name = 'inventory', sprite = 'item/iron-plate', number = 5})
	
	caravangui.add({type = 'frame', name = 'caravan_frame_right', direction = 'vertical', caption = 'Location'})
	caravangui.caravan_frame_right.add({type = 'minimap', name = 'minimap', position = entity.position})
	
end
	
	
script.on_event(defines.events.on_player_selected_area, function(event)

	if event.item == 'unit-controller' or event.item == 'carrot-on-stick' then
	
		for e, ent in pairs(event.entities) do
			--log(serpent.block(ent.name))
			log('did a thing here')
			if ent.name == 'caravan' then
				create_caravan_gui(event, ent)
				lastclickedunit[ent.unit_number] = ent
				local newroute = {
                    startpoint = {
                        id = 0,
                        pos = {}
                    },
                    endpoint = {
                        id = 0,
                        pos = {}
                    },
                    unit = lastclickedunit[next(lastclickedunit)],
                    inventory = {
                        item = '',
                        stackamount = 0,
                        hasitem = false
                    }
                }
                caravanroutes[next(lastclickedunit)] = newroute
                --lastclickedunit = {}
				log(serpent.block(lastclickedunit))
			end
		end
	
	end

end)