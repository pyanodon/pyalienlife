
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
	farm8 = require('scripts/crops/farm-yotoi-fruit'),
	farm9 = require('scripts/crops/farm-bioreserve')
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
local hascarguiopen = false

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
local current_elem_button
local active_chest

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
        global.landbots = landbots
        global.caravanroutes = caravanroutes
		global.caravan_unit_numbers = {}
		remote.call("silo_script","set_no_victory", true)
    end)

script.on_load(function(event)

landbots = global.landbots
caravanroutes = global.caravanroutes

end)

script.on_event({defines.events.on_built_entity, defines.events.on_robot_built_entity}, function(event)
		landbots = global.landbots
        local E = event.created_entity
        --log(E.name)
		--log(serpent.block(landbots))

        if E.name == 'mega-farm' then
			--script for placing down the farm
            local posx = -13
            local posy = -13
            local rpos = E.position
            repeat
                --log(posx)
                --log(posy)
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
			--log(E.name)
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
					landbots.towers[tower.unit_number].requestorchests[entity.unit_number] = {chest = entity, requestsinroute = {}}
					landbots.requesterchests[entity.unit_number].tower = tower
				elseif entity.name == 'lb-provider-chest' then
					landbots.towers[tower.unit_number].providerchests[entity.unit_number] = {chest = entity}
				end
			end
        elseif E.name == 'land-bot' then
				log(E.force)
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
                    end
                end
            end
        elseif E.name == 'lb-requester-chest' then
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
							tower = {},
							request_slots = slots
						}
				--log(serpent.block(landbots.requesterchests[E.unit_number]))
            for t,tower in pairs(landbots.towers) do
                --log(serpent.block(t))
                --log(serpent.block(tower))
                if ((E.position.x - tower.position.x) * (E.position.x - tower.position.x)) + ((E.position.y - tower.position.y) * (E.position.y - tower.position.y)) <= 30 * 30 then
                    --tower.requestorchests[E.unit_number] = {chest = E, controls = chestcontrols, requestsinroute = {}}
					tower.requestorchests[E.unit_number] = {chest = E, requestsinroute = {}}
					--local tow = t
					landbots.requesterchests[E.unit_number].tower = t
					--landbots.requesterchests[E.unit_number].tower = tow
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
		--log(serpent.block(landbots))
		global.landbots = landbots
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
	global.landbots = landbots
end)

script.on_event(defines.events.on_put_item, function(event)

	end)

local function ai(event)

for t, tower in pairs(landbots.towers) do
	if tower.currentlyactivebotcount < tower.totalbotcount then
		--log('hit')
		for r,req in pairs(tower.requestorchests) do
			--log('hit')
			--log(serpent.block(req))
			local req_chest = landbots.requesterchests[r]
			--log(serpent.block(req_chest))
			if req_chest.request_slots ~= nil then
				--log('hit')
					for re, requests in pairs(req_chest.request_slots) do
						--log(serpent.block(sig))
						local inventory = req.chest.get_inventory(defines.inventory.chest).get_contents()
						local set = {}
						for i, inv in pairs(inventory) do
							--log(serpent.block(inv))
							set[i] = true
						end
						local requestamount = 0
						if req.requestsinroute[requests.item] ~= nil then
							requestamount = requests.amount - req.requestsinroute[requests.item]
						else
							requestamount = requests.amount
						end
						if (set[requests.item] ~= nil and inventory[requests.item] < requestamount) or (set[requests.item] == nil) then
							--log('box isnt full of the stuff we set. send more please')
							--need to check the providers to see if any of them have what we need
							for p, prov in pairs(tower.providerchests) do
								--log(serpent.block(p))
								--log(serpent.block(prov))
								local pinventory = prov.chest.get_inventory(defines.inventory.chest).get_contents()
								local pset = {}
								for i, inv in pairs(pinventory) do
									--log(serpent.block(i))
									--log(requests.item)
									--log(serpent.block(inv))
									pset[i] = true
								end
								if pset[requests.item] ~= nil then
									--log('hit')
								--send landbot to get stuff from this provider box
									for i, inact in pairs(tower.inactivebots) do
										--log('hit')
										local bots = landbots.bots
										--log(serpent.block(bots))
										--log(serpent.block(inact))
										--log(serpent.block(bots[inact].unit.position))
										--log(serpent.block(prov.chest.position))
										bots[inact].unit.set_command{type = defines.command.go_to_location, destination_entity = prov.chest, radius = 2}
										bots[inact].destinationchest = p
										bots[inact].requestorchest = r
										bots[inact].isgettingitem = true
										bots[inact].itemname = requests.item
										table.insert(tower.activebots, inact)
										table.remove(tower.inactivebots, i)
										tower.currentlyactivebotcount = tower.currentlyactivebotcount + 1
										if req.requestsinroute[requests.item] == nil then
											req.requestsinroute[requests.item] = bots[inact].carryamount
										else
											req.requestsinroute[requests.item] = req.requestsinroute[requests.item] + bots[inact].carryamount
										end
										--log(serpent.block(landbots))
										return
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

end

script.on_event(defines.events.on_ai_command_completed, function(event)
	caravanroutes = global.caravanroutes
	landbots = global.landbots
	--log('hit')
		--log(event.result)
		--log(serpent.block(landbots))
		if landbots.bots[event.unit_number] ~= nil then
			--need to check if is on the way to get an item or drop off items.
			--need to check if there are requests to fill that are not already in route by another bot
			--log('hit')
			local lb
			lb = landbots.bots[event.unit_number]
			--log(serpent.block(lb))
			if event.result == defines.behavior_result.success then
			log('hit')
				if lb ~= nil then
					if lb.isgettingitem == true then
						--log('it worked')
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
										landbots.towers[lb.tower].providerchests[lb.destinationchest].chest.get_inventory(defines.inventory.chest).remove({name=lb.itemname,count=inv})
									end
								end
							end
							--swap over to the carrying graphic version of the land bug
								lb.destinationchest = lb.requestorchest
								lb.unit.set_command{type = defines.command.go_to_location, destination_entity = landbots.towers[lb.tower].requestorchests[lb.destinationchest].chest, radius = 2}
								lb.hasitem = true
								lb.isgettingitem = false
						end
					elseif lb.hasitem == true then
					--log('hit')
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
				--log('hit')
				if lb[event.unit_number] ~= nil then

				end
			end
			if event.result == defines.behavior_result.fail	then
				--log('hit')
				log(serpent.block(lb))
			end
			if event.result == defines.behavior_result.deleted then
				--log('hit')
				if lb[event.unit_number] ~= nil then
				end
			end
		elseif global.caravan_unit_numbers[event.unit_number] ~= nil then
			log(serpent.block(caravanroutes))
			local car = event.unit_number
			log(event.unit_number)
			log(caravanroutes[car].unit.position)
			log(caravanroutes[car].startpoint.pos)
			if math.sqrt((caravanroutes[car].unit.position.x - caravanroutes[car].startpoint.pos.x) ^ 2 + (caravanroutes[car].unit.position.y - caravanroutes[car].startpoint.pos.y) ^ 2) <= 10 then
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
				log(serpent.block(caravanroutes[car]))
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
				log(serpent.block(caravanroutes[car]))
				end
				caravanroutes[car].unit.set_command {
					type = defines.command.go_to_location,
					destination = caravanroutes[car].startpoint.pos,
					radius = 4
				}
			end
		end
		global.caravanroutes = caravanroutes
		global.landbots = landbots
    end)

script.on_nth_tick(5, function(event)
--log('hit')
	caravanroutes = global.caravanroutes
	landbots = global.landbots

	ai(event)

	global.caravanroutes = caravanroutes
	global.landbots = landbots
end)

script.on_event({defines.events.on_player_mined_entity, defines.events.on_robot_mined_entity},function(event)

	landbots = global.landbots
	caravanroutes = global.caravanroutes

	if event.entity.name == 'lb-control-tower' then
		for t, tower in pairs(landbots.towers) do
			if t == event.entity.unit_number then
				landbots.towers[t] = nil
			end
		end
	elseif event.entity.name == 'land-bot' then
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
			if landbots.bots[bot.unit_number].inventorycount ~= nil and landbots.bots[bot.unit_number].inventorycount > 0 then
				game.players[event.player_index].insert({name=landbots.bots[bot.unit_number].itemname,count=landbots.bots[bot.unit_number].inventorycount})
			end
		end

		--remove bot from bots table
		landbots.bots[bot.unit_number] = nil
	elseif event.entity.name == 'lb-provider-chest' then
		--remove all refernces to this chest
		landbots.towers[landbots.providerchests[event.entity.unit_number].tower].providerchests[event.entity.unit_number] = nil
		landbots.providerchests[event.entity.unit_number] = nil
	elseif event.entity.name == 'lb-requester-chest' then
		--remove all refernces to this chest
		landbots.towers[landbots.requesterchests[event.entity.unit_number].tower].requestorchests[event.entity.unit_number] = nil
		landbots.requesterchests[event.entity.unit_number] = nil
	end

	global.landbots = landbots
	global.caravanroutes = caravanroutes
end)

script.on_event(defines.events.on_gui_opened,function(event)

    if event.entity ~= nil then
        --log(event.entity.name)
		--log(event.gui_type)
        if event.entity.name == 'lb-requester-chest' then
			local player = game.players[event.player_index]
			request_gui = player.gui.left.add({type = 'frame', name = 'test', direction = 'vertical'})

			request_gui.add({type = 'table', name = 'table', column_count = 5})
			--request_gui.table.add({type = 'list-box', name = 'list-box', items = {'iron-plate','copper-plate'}})
			request_gui.table.add({type = 'choose-elem-button', name = 'request_elem_1', elem_type = 'item'})
			request_gui.table.add({type = 'choose-elem-button', name = 'request_elem_2', elem_type = 'item'})
			request_gui.table.add({type = 'choose-elem-button', name = 'request_elem_3', elem_type = 'item'})
			request_gui.table.add({type = 'choose-elem-button', name = 'request_elem_4', elem_type = 'item'})
			request_gui.table.add({type = 'choose-elem-button', name = 'request_elem_5', elem_type = 'item'})
			request_gui.add({type = 'table', name = 'tablejr', column_count = 2})
			request_gui.tablejr.add({type = 'slider', name = 'request-slider', value = 0, maximum_value = 10000})
			request_gui.tablejr.add({type = 'textfield', name = 'numfield', text = '0', numeric = true, lose_focus_on_confirm = true})
			active_chest = event.entity.unit_number
        end
    end

end)

script.on_event(defines.events.on_gui_selection_state_changed, function(event)

	caravanroutes = global.caravanroutes
	--log(serpent.block(caravanroutes))
	--log(event.element.selected_index)
	--log(serpent.block(next(lastclickedunit)))
	--log(serpent.block(lastclickedunit[next(lastclickedunit)].unit_number))
	if next(lastclickedunit) ~= nil then
		local id_num = next(lastclickedunit)
		if event.element.name == 'outpost-list' then

			local value = event.element.get_item(event.element.selected_index)
			--log(value)
			--log(serpent.block(outpost_table))
			--log(serpent.block(outpost_table[value]))

			caravanroutes[id_num].startpoint.id = outpost_table[value].entity.unit_number
			caravanroutes[id_num].startpoint.pos = outpost_table[value].entity.position

			caravanroutes[id_num].unit.set_command {type = defines.command.go_to_location, destination = caravanroutes[id_num].startpoint.pos, radius = 4}
		elseif event.element.name == 'outpost-list-2' then
			local value = event.element.get_item(event.element.selected_index)
			--log(value)
			--log(serpent.block(outpost_table))
			--log(serpent.block(outpost_table[value]))
			caravanroutes[id_num].endpoint.id = outpost_table[value].entity.unit_number
			caravanroutes[id_num].endpoint.pos = outpost_table[value].entity.position
		end
	end
	--log(serpent.block(caravanroutes))
	global.caravanroutes = caravanroutes

end)

script.on_event(defines.events.on_gui_value_changed, function(event)

	landbots = global.landbots

	--log(event.element.name)
	local s_amount = event.element.slider_value

	if event.element.name == 'request-slider' then
		--log(serpent.block(event.element.parent.children))
		event.element.parent['numfield'].text = s_amount
		if current_elem_button == 'request_elem_1' then
			landbots.requesterchests[active_chest].request_slots[1].amount = s_amount
		elseif current_elem_button == 'request_elem_2' then
			landbots.requesterchests[active_chest].request_slots[2].amount = s_amount
		elseif current_elem_button == 'request_elem_3' then
			landbots.requesterchests[active_chest].request_slots[3].amount = s_amount
		elseif current_elem_button == 'request_elem_4' then
			landbots.requesterchests[active_chest].request_slots[4].amount = s_amount
		elseif current_elem_button == 'request_elem_5' then
			landbots.requesterchests[active_chest].request_slots[5].amount = s_amount
		end
	end

	global.landbots = landbots
end)

script.on_event(defines.events.on_gui_elem_changed, function(event)

	landbots = global.landbots
	--log(event.element.name)

	if event.element.parent.parent.name == 'test' then
		--log('request gui')
		--log(active_chest)
		--log(serpent.block(landbots.requesterchests))
		current_elem_button = event.element.name
		if current_elem_button == 'request_elem_1' then
			--log(serpent.block(landbots.requesterchests[active_chest]))
			landbots.requesterchests[active_chest].request_slots[1].item = event.element.elem_value
			--log(serpent.block(landbots.requesterchests[active_chest]))
		elseif current_elem_button == 'request_elem_2' then
			landbots.requesterchests[active_chest].request_slots[2].item = event.element.elem_value
		elseif current_elem_button == 'request_elem_3' then
			landbots.requesterchests[active_chest].request_slots[3].item = event.element.elem_value
		elseif current_elem_button == 'request_elem_4' then
			landbots.requesterchests[active_chest].request_slots[4].item = event.element.elem_value
		elseif current_elem_button == 'request_elem_5' then
			landbots.requesterchests[active_chest].request_slots[5].item = event.element.elem_value
		end
		--log(serpent.block(landbots.requesterchests[active_chest]))
	end
	global.landbots = landbots
end)

script.on_event(defines.events.on_gui_click, function(event)

	if event.element.name == 'caravan_close' then
		caravangui.destroy()
		hascarguiopen = false
		lastclickedunit = {}
	end

end)

script.on_event(defines.events.on_gui_closed, function(event)

	if event.entity ~= nil then
        if event.entity.name == 'lb-requester-chest' then
			request_gui.destroy()

        end
    end

end)

script.on_event(defines.events.on_rocket_launched, function(event)
        if event.rocket_silo.name == 'mega-farm' then
            --log(serpent.block(event))
           --log(serpent.block(event.rocket.get_inventory(defines.inventory.rocket).get_contents()))

            local item = event.rocket.get_inventory(defines.inventory.rocket).get_contents()
            local items = {}

            for k, v in pairs(item) do
                items['item1'] = k
            end
            --log(items['item1'])
            --log(serpent.block(item))

            local rs = event.rocket_silo

            for f, farm in pairs(farms) do
                --log(serpent.block(farm))
                if items['item1'] == farm.seed then
                    --log('hits')
                    local recipes = {}
                    local output = {}
                    for r, recipe in pairs(farm.recipes) do
                        --log(serpent.block(recipe))
                        recipes[recipe.recipe_name] = true
                        output[recipe.recipe_name] = recipe.crop_output
                    end
                    --log(serpent.block(rs.get_recipe().name))
                    if recipes[rs.get_recipe().name] == true then
                        --log('it did a thing')
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

local function create_caravan_gui(event, entity)
	--log('did a thing')
	--log(serpent.block(outpost_table))
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
	if caravanroutes[entity.unit_number] ~= nil and caravanroutes[entity.unit_number].inventory.hasitem == true then
		caravangui.caravan_frame_center.add({type = 'sprite-button', name = 'inventory', sprite = 'item/'..caravanroutes[entity.unit_number].inventory.item, number = caravanroutes[entity.unit_number].inventory.stackamount})
	else
	caravangui.caravan_frame_center.add({type = 'sprite-button', name = 'inventory'})
	end
	caravangui.add({type = 'frame', name = 'caravan_frame_right', direction = 'vertical', caption = 'Location'})
	caravangui.caravan_frame_right.add({type = 'minimap', name = 'minimap', position = entity.position})
	caravangui.add({type = 'sprite-button', name = 'caravan_close', sprite = 'utility/close_fat'})
	hascarguiopen = true
end

script.on_event(defines.events.on_player_selected_area, function(event)

	caravanroutes = global.caravanroutes

	if event.item == 'unit-controller' then
		for e, ent in pairs(event.entities) do
			--log(serpent.block(ent.name))
			--log('did a thing here')
			if ent.name == 'caravan' and hascarguiopen == false then
				create_caravan_gui(event, ent)
				lastclickedunit[ent.unit_number] = ent
				local newroute = {
					hasroute = true,
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
				if caravanroutes[next(lastclickedunit)] == nil or caravanroutes[next(lastclickedunit)].hasroute ~= true then
					caravanroutes[next(lastclickedunit)] = newroute
				end
                --lastclickedunit = {}
				log(serpent.block(lastclickedunit))
			end
		end

	end

	global.caravanroutes = caravanroutes

end)

--added 3d trees to bio reserve and remove depleted resource trees
script.on_event(defines.events.on_resource_depleted, function(event)

	local resourcetrees = game.surfaces['nauvis'].find_entities_filtered{position = event.entity.position, name = event.entity.name}

end)
