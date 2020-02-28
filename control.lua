
if script.active_mods["debugadapter"] then require('__debugadapter__/debugadapter.lua') end

local TRlist_og = require('scripts/techswap')
local TRlist = {}

--Mega Farms

-- local farm_table = {}
-- function farm_table.add(farm)
--     --log(serpent.block(farms))
--     table.insert(farms, farm)
--     --log(serpent.block(farms))
-- end

local farms =
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
-- local start = {}
-- local endding = {}
-- local routenumber = 1

--local outpost_table = {}

--gui
local caravangui
local hascarguiopen = false

--gui - outpost
local outpostgui
--local current_outpost

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

--slaughterhouse gui
local slaughterhouse_gui


local function create_outpost_gui(event)
	local player = game.players[event.player_index]
	outpostgui = player.gui.left.add({type = 'frame', name = 'outpost_frame', direction = 'horizontal'})
	outpostgui.add({type = 'textfield', name = 'outpost_name', text = 'Outpost Name', lose_focus_on_confirm = true})
	if global.outpost_names[event.entity.unit_number] ~= nil then
		outpostgui.outpost_name.text = global.outpost_names[event.entity.unit_number]
	end
	--log(serpent.block(global.outpost_names))
end

local function create_slaughterhouse_animal_table(gui, player)
	local animals =
		{
		'auog',
		'ulric',
		'mukmoux',
		'arthurian',
		'dhilmos',
		'scrondrix',
		'phadai',
		'fish',
		'phagnot',
		'kmauts',
		'dingrits',
		'xeno',
		'cridren',
		'antelope',
		'trits',
		'vonix',
		'vrauks',
		'xyhiphoe',
		'zipir',
		'korlex',
		}
	--log(player)
	--log(serpent.block(animals))
	local sg_table = gui
	sg_table.add({type = 'table', name = 's_table', column_count = 6})
	for _, recipe in pairs(game.players[player].force.recipes) do
		if string.match(recipe.category, 'slaughterhouse') then
		--log('hit')
			for _, animal in pairs(animals) do
				--log('hit')
				--log(animal)
				if string.match(recipe.category, animal) and recipe.enabled == true then
					--log('hit')
					if next(sg_table.s_table.children) ~= nil then
						local child_list = {}
						for _, child in pairs(sg_table.s_table.children) do
							--log(child.name)
							child_list[child.name] = true
						end
						if child_list[animal] == nil then
							--log('hit')
							if animal == 'zipir' then
								sg_table.s_table.add({type = 'sprite-button', name = animal, sprite = 'item/'..animal..'1', style = 'image_tab_slot'})
							else
								sg_table.s_table.add({type = 'sprite-button', name = animal, sprite = 'item/'..animal, style = 'image_tab_slot'})
							end
						end
					elseif next(sg_table.s_table.children) == nil then
						--log('hit')
						sg_table.s_table.add({type = 'sprite-button', name = animal, sprite = 'item/'..animal, style = 'image_tab_slot'})
					end
				end
			end
		end
	end
end

local function create_slaughterhouse_gui(event)

	local player = game.players[event.player_index]
	slaughterhouse_gui = player.gui.screen.add({type = 'frame', name = 'recipe_menu', direction = 'vertical', caption = 'Choose Your Next Victim', style = 'inner_frame_in_outer_frame'})
	slaughterhouse_gui.add({type = 'sprite-button', name = 'slaughterhouse_close', sprite = 'utility/close_fat'})
	slaughterhouse_gui.force_auto_center()
	create_slaughterhouse_animal_table(slaughterhouse_gui, event.player_index)
	global.slaughterhouse_gui_open = true
end


local farm_buildings =
	{
		'arthurian',
		'auog',
		'bhoddos',
		'cadavericarum',
		'cridren',
		'dhilmos',
		'dingrits',
		'ranch',
		'fawogae',
		'fish',
		'grod',
		'kicalk',
		'kmauts',
		'mukmoux',
		'navens',
		'phadai',
		'phagnot',
		'ralesia',
		'rennea',
		'scrondrix',
		'trits',
		'tuuphra',
		'ulric',
		'vonix',
		'vrauks',
		'xenopen',
		'xyhiphoe',
		'yaedols',
		'yotoi',
		'zipir',
		'moondrop'
	}

local function disable_machine(entity)
	--log('hit')
	local E = entity
	--table.insert(global.farms, E)
	global.farms[E.unit_number] = entity
	global.farm_count_last = global.farm_count_last + 1
	--table.insert(global.farm_count, E.unit_number)
	global.farm_count[global.farm_count_last] = E.unit_number
	E.active = false
	local stopsign = rendering.draw_sprite{sprite = 'no_module_animal', render_layer = '188', target = E.position, surface = E.surface.name}
	--log(serpent.block(stopsign))
	global.rendered_icons[E.unit_number] = stopsign
	--local stoptext = rendering.draw_text{text = 'Requires ' .. E.name .. ' to function', surface = E.surface, target = E.position, target_offset = {0,-6}, color = {255,255,255}, scale = 2, alignment = 'center'}
end

script.on_init(
    function()
        global.caravanroutes = caravanroutes
		global.caravan_unit_numbers = {}
		global.outpost_names = {}
		global.current_outpost = {}
		global.outpost_numbers = {}
		global.outpost_table = {}
		global.TRlist = TRlist_og
		TRlist = global.TRlist
		global.current_entity = {}
		global.slaughterhouse_gui_open = false
		global.watch_slaughterhouse = false
		global.watched_slaughterhouse =
			{
			entity = {},
			player = ''
			}
		global.has_built_first_farm = false
		global.farms = {}
		global.farm_count = {}
		global.farm_count_last = 0
		global.checked_farm_counter = 1
		global.farm_help_message_open = false
		global.rendered_icons = {}
global.farm_migration = false
		if not remote.interfaces["silo_script"] then
			return
		end
		remote.call("silo_script","set_no_victory", true)
    end)

script.on_load(function()
caravanroutes = global.caravanroutes

TRlist = global.TRlist

--log(serpent.block(global.TRlist))
--log(serpent.block(TRlist))

end)

script.on_configuration_changed(function()
	global.current_entity = {}
	global.slaughterhouse_gui_open = false
	global.watch_slaughterhouse = false
	global.watched_slaughterhouse =
		{
		entity = {},
		player = ''
		}
	if global.outpost_table == nil then
		global.outpost_table = {}
	end
	if global.has_built_first_farm == nil then
		global.has_built_first_farm = false
	end
	if global.checked_farm_counter == nil then
		global.checked_farm_counter = 1
	end
	if global.farm_count == nil then
		global.farm_count = {}
	end
	if global.farm_count_last == nil then
		global.farm_count_last = 0
	end
	if global.farm_help_message_open == nil then
		global.farm_help_message_open = false
	end
	if global.rendered_icons == nil then
		global.rendered_icons = {}
	end
	if global.farm_migration == nil then
		global.farm_migration = false
	elseif global.farm_migration == true and global.farm_fix == nil then
		global.farm_migration = false
		global.farm_fix = true
	end
	if global.farms == nil then
		global.farms = {}
		if global.farm_migration == false then
			--log('hit')
			local entities = game.surfaces['nauvis'].find_entities_filtered{type='assembling-machine'}
			for _, entity in pairs(entities) do
				--log('hit')
				for _, farm in pairs(farm_buildings) do
					--log('hit')
					if string.match(entity.name, farm) then
						--log('hit')
						--global.farms[entity.unit_number] = entity
						--table.insert(global.farms, entity)
						if entity.valid == true and entity.get_module_inventory() ~= nil and entity.get_module_inventory().is_empty() == true then
							--log('hit')
							disable_machine(entity)
						else
							--log('hit')
							if entity.unit_number ~= nil then
								--log('hit')
								global.farms[entity.unit_number] = entity
								table.insert(global.farm_count, entity.unit_number)
								global.farm_count_last = global.farm_count_last + 1
								--log('hit')
							end
						end
					end
				end
			end
			global.farm_migration = true
		end
	end
end)

local farm_help_gui

local function create_farm_help_message(event)
	local player
	if event.player_index ~= nil then
		player = game.players[event.player_index]
		if global.farm_help_message_open == false then
		farm_help_gui = player.gui.center.add({type = 'frame', name = 'farm_help', direction = 'horizontal', caption = 'All plants and animal buildings require 1 or more copies of the wanted item to fuction. Craft the first version from codex and DNA samples.'})
		farm_help_gui.add({type = 'button', name = 'fh_accept_button', caption = 'OK'})
		global.farm_help_message_open = true
		end
	end
end

script.on_event({defines.events.on_built_entity, defines.events.on_robot_built_entity}, function(event)
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
        elseif E.name == 'outpost' then
			--local outpost = {entity = E, name = math.random(1,100)}
			global.outpost_table['outpost'..E.unit_number] = {entity = E, name = math.random(1,100)}
			global.outpost_names[E.unit_number] = 'outpost-'..E.unit_number
		elseif E.name == 'caravan' then
			global.caravan_unit_numbers[E.unit_number] = true
		elseif global.has_built_first_farm == false then
			for _, farm in pairs(farm_buildings) do
				if string.match(E.name, farm) then
					create_farm_help_message(event)
					disable_machine(E)
				end
			end
		elseif global.has_built_first_farm == true then
			for _, farm in pairs(farm_buildings) do
				if string.match(E.name, farm) then
					disable_machine(E)
				end
			end
		end
		--log(serpent.block(landbots))
    end
)

script.on_event(defines.events.on_put_item, function()



end)

-- local function ai(event)

-- end

script.on_event(defines.events.on_ai_command_completed, function(event)
	-- luacheck: ignore 512
	caravanroutes = global.caravanroutes
	--log('hit')
		--log(event.result)
		if global.caravan_unit_numbers[event.unit_number] ~= nil then
			--log(serpent.block(caravanroutes))
			local car = event.unit_number
			--log(event.unit_number)
			--log(serpent.block(caravanroutes[car]))
			--log(caravanroutes[car].unit.position)
			--log(caravanroutes[car].startpoint.pos)
			--log(caravanroutes[car].endpoint.pos)
			if math.sqrt((caravanroutes[car].unit.position.x - caravanroutes[car].startpoint.pos.x) ^ 2 + (caravanroutes[car].unit.position.y - caravanroutes[car].startpoint.pos.y) ^ 2) <= 10 then
				if game.surfaces[caravanroutes[car].unit.surface.name].find_entity('outpost', caravanroutes[car].startpoint.pos) ~= nil then
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
					--log(serpent.block(caravanroutes[car]))
					end
				--caravanroutes[car].inventory.item = outpostinventory
				caravanroutes[car].unit.set_command {
					type = defines.command.go_to_location,
					destination = caravanroutes[car].endpoint.pos,
					radius = 4
				}
				end
			elseif caravanroutes[car].endpoint ~= nil and caravanroutes[car].endpoint.pos.x ~= nil and math.sqrt((caravanroutes[car].endpoint.pos.x - caravanroutes[car].unit.position.x) ^ 2 + (caravanroutes[car].endpoint.pos.y - caravanroutes[car].unit.position.y) ^ 2) <= 10 then
				if game.surfaces[caravanroutes[car].unit.surface.name].find_entity('outpost', caravanroutes[car].endpoint.pos) ~= nil then
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
					--log(serpent.block(caravanroutes[car]))
					end
					caravanroutes[car].unit.set_command {
						type = defines.command.go_to_location,
						destination = caravanroutes[car].startpoint.pos,
						radius = 4
					}
				end
			end
		end

		if event.result == defines.behavior_result.success then
			--log('hit')
		end
		if event.result == defines.behavior_result.in_progress then
			--log('hit')
		end
		if event.result == defines.behavior_result.fail	then
			--log('hit')
		end
		if event.result == defines.behavior_result.deleted then
			--log('hit')
		end

		global.caravanroutes = caravanroutes

    end)
--[[
script.on_nth_tick(5, function(event)
--log('hit')
	caravanroutes = global.caravanroutes

	global.caravanroutes = caravanroutes
end)
]]--
script.on_event(defines.events.on_tick, function()
	--log('tick start')
	if global.watch_slaughterhouse == true then
		if global.watched_slaughterhouse.entity.valid and global.watched_slaughterhouse.entity.get_recipe() == nil then
			--log('hit')
			if global.slaughterhouse_gui_open == false then
				--log('hit')
				table.insert(global.current_entity ,global.watched_slaughterhouse.player)
				global.current_entity[global.watched_slaughterhouse.player] = global.watched_slaughterhouse.entity
				--log(serpent.block(global.current_entity))
				game.players[global.watched_slaughterhouse.player].opened = nil
				local event =
					{
					player_index = global.watched_slaughterhouse.player,
					entity = global.watched_slaughterhouse.entity
					}
				create_slaughterhouse_gui(event)
				--log(serpent.block(global.watched_slaughterhouse))
			end
		end
	end
	if next(global.farm_count) ~= nil and global.farm_count_last > 0 then
		--log(serpent.block(global.farms))
		--log(serpent.block(global.farm_count))
		--log(serpent.block(global.farm_count_last))
		--log(serpent.block(global.checked_farm_counter))
		--[[
		for k,v in pairs(global.farm_count) do
			--log(k)
			--log(v)
		end
		]]--
		local start_num = global.checked_farm_counter
		for i = global.checked_farm_counter, global.farm_count_last do
			--log('hit')
			--log(i)
			--log(serpent.block(global.farms))
			--log(serpent.block(global.farms[global.farm_count[i]]))
			--if global.farms[global.farm_count[i]] == nil then
				--log('hit')
				--break
			--else
			if global.farms[global.farm_count[i]] ~= nil and global.farms[global.farm_count[i]].valid == true and global.farms[global.farm_count[i]].get_module_inventory().is_empty() == false then
				global.farms[global.farm_count[i]].active = true
				if global.rendered_icons[global.farm_count[i]] ~= nil then
				rendering.destroy(global.rendered_icons[global.farm_count[i]])
				global.rendered_icons[global.farm_count[i]] = nil
				end
			elseif global.farms[global.farm_count[i]] ~= nil and global.farms[global.farm_count[i]].valid == true and global.farms[global.farm_count[i]].get_module_inventory().is_empty() == true then
				global.farms[global.farm_count[i]].active = false
				--log(serpent.block(global.farm_count[i]))
				--log(serpent.block(global.rendered_icons[global.farm_count[i]]))
				if global.rendered_icons[global.farm_count[i]] == nil then --and  rendering.is_valid(global.rendered_icons[global.farm_count[i]]) == false then
					local E = global.farms[global.farm_count[i]]
					local stopsign = rendering.draw_sprite{sprite = 'no_module_animal', render_layer = '188', target = E.position, surface = E.surface.name}
					global.rendered_icons[E.unit_number] = stopsign
				end
			end
			if i == start_num + 9 then
				break
			end
		end
		global.checked_farm_counter = start_num + 9
		--log(global.checked_farm_counter)
		--log(global.farm_count_last)
		if global.checked_farm_counter > global.farm_count_last + 10 then
			global.checked_farm_counter = 1
		end
	end
end)

script.on_event({defines.events.on_player_mined_entity, defines.events.on_robot_mined_entity},function(event)
	local E = event.entity
	for _, farm in pairs(farm_buildings) do
		if string.match(E.name, farm) then
			table.remove(global.farms, E.unit_number)
			local table_key = 0
			for k, v in pairs(global.farm_count) do
				if v == E.unit_number then
					 table_key = k
				end
			end
			table.remove(global.farm_count, table_key)
			if global.rendered_icons[E.unit_number] ~= nil then
				rendering.destroy(global.rendered_icons[E.unit_number])
			end
		end
	end
	caravanroutes = global.caravanroutes
	--log(serpent.block(landbots))
		if event.entity.name == 'outpost' then
			global.outpost_names[event.entity.unit_number] = nil
		end
	global.caravanroutes = caravanroutes
end)

script.on_event(defines.events.on_gui_opened,function(event)
    if event.entity ~= nil then
        --log(event.entity.name)
		--log(event.gui_type)
        if event.entity.name == 'outpost' then
			create_outpost_gui(event)
			global.current_outpost = event.entity.unit_number
		elseif event.entity ~= nil and string.match(event.entity.name, 'slaughterhouse') and event.entity.get_recipe() == nil and global.slaughterhouse_gui_open == false then
			--log('hit')
			table.insert(global.current_entity ,event.player_index)
			global.current_entity[event.player_index] = event.entity
			game.players[event.player_index].opened = nil
			create_slaughterhouse_gui(event)
		elseif event.entity ~= nil and string.match(event.entity.name, 'slaughterhouse') and event.entity.get_recipe() == nil and global.slaughterhouse_gui_open == true then
			game.players[event.player_index].opened = nil
		elseif event.entity ~= nil and string.match(event.entity.name, 'slaughterhouse') and event.entity.get_recipe() ~= nil then
			--log('hit')
			global.watch_slaughterhouse = true
			global.watched_slaughterhouse.entity = event.entity
			global.watched_slaughterhouse.player = event.player_index
			--global.current_entity[event.player_index] = event.entity
		end
    end

end)

script.on_event(defines.events.on_gui_selection_state_changed, function(event)
	--log(event.element.name)
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

			local otnum = global.outpost_numbers[value]

			caravanroutes[id_num].startpoint.id = global.outpost_table['outpost'..otnum].entity.unit_number
			caravanroutes[id_num].startpoint.pos = global.outpost_table['outpost'..otnum].entity.position

			caravanroutes[id_num].unit.set_command {type = defines.command.go_to_location, destination = caravanroutes[id_num].startpoint.pos, radius = 4}
		elseif event.element.name == 'outpost-list-2' then
			local value = event.element.get_item(event.element.selected_index)
			--log(value)
			--log(serpent.block(outpost_table))
			--log(serpent.block(outpost_table[value]))

			local otnum = global.outpost_numbers[value]

			--log(serpent.block(caravanroutes[id_num]))
			--log(serpent.block(outpost_table))
			--log(serpent.block(outpost_table['outpost'..otnum]))

			caravanroutes[id_num].endpoint.id = global.outpost_table['outpost'..otnum].entity.unit_number
			caravanroutes[id_num].endpoint.pos = global.outpost_table['outpost'..otnum].entity.position
		end
	end
	--log(serpent.block(caravanroutes))
	global.caravanroutes = caravanroutes

end)

script.on_event(defines.events.on_gui_value_changed, function()
	--log(event.element.name)

end)

script.on_event(defines.events.on_gui_confirmed, function(event)
	--log(event.element.name)
	if event.element.name == 'outpost_name' then
		global.outpost_names[global.current_outpost] = outpostgui.outpost_name.text
	end
end)

script.on_event(defines.events.on_gui_elem_changed, function()
	--log(event.element.name)
end)

local function create_slaughterhouse_recipe_gui(event)
	local slaughterhouse_recipe_gui = event.element.parent
	local button_name = event.element.name
	slaughterhouse_recipe_gui.clear()
	slaughterhouse_recipe_gui.add({type = 'frame', name = 'recipe_selection_frame', caption = 'Select Recipe'})
	slaughterhouse_recipe_gui.recipe_selection_frame.add({type = 'sprite-button', name = 'slaughterhouse_back', sprite = 'utility/left_arrow'})
	slaughterhouse_recipe_gui.recipe_selection_frame.add({type = 'table', name = 'recipe_table', column_count = 5})
	for _, recipe in pairs(game.players[event.player_index].force.recipes) do
		if string.match(recipe.category, 'slaughterhouse') and string.match(recipe.category, button_name) and recipe.enabled == true then
			slaughterhouse_recipe_gui.recipe_selection_frame.recipe_table.add({type = 'sprite-button', name = 'recipe-menu_'..recipe.name, sprite = 'recipe/'..recipe.name, style = 'recipe_slot_button'})
		end
	end
end

script.on_event(defines.events.on_gui_click, function(event)
	--log(event.element.name)
	--log(string.match(event.element.name, 'recipe%-menu'))
	if event.element.name == 'caravan_close' then
		caravangui.destroy()
		hascarguiopen = false
		lastclickedunit = {}
	elseif event.element.name == 'slaughterhouse_close' then
		slaughterhouse_gui.destroy()
		global.slaughterhouse_gui_open = false
	elseif event.element.parent ~= nil and event.element.parent.name == 's_table' then
		create_slaughterhouse_recipe_gui(event)
	elseif event.element.name == 'slaughterhouse_back' then
		--log(event.element.parent.name)
		--log(event.element.parent.parent.name)
		--log(event.element.parent.parent.parent.name)
		local elem_p2 = event.element.parent.parent.parent
		event.element.parent.parent.destroy()
		create_slaughterhouse_animal_table(elem_p2, event.player_index)
	elseif string.match(event.element.name, 'recipe%-menu') ~= nil then
		--log('hit')
		local entity = global.current_entity[event.player_index]
			--log(serpent.block(global.current_entity))
			--log(serpent.block(global.current_entity[event.player_index]))
			--log(entity.name)
			--log(serpent.block(entity))
			--log(serpent.block(global.current_entity))
			entity.set_recipe(string.match(event.element.name, "%_(.*)"))
			event.element.parent.parent.parent.parent.destroy()
			global.current_entity[event.player_index] = nil
			global.slaughterhouse_gui_open = false
			--log(serpent.block(global.current_entity))
	elseif event.element.name == 'fh_accept_button' and global.has_built_first_farm == false then
		farm_help_gui.destroy()
		global.has_built_first_farm = true
		global.farm_help_message_open = false
	end
end)

script.on_event(defines.events.on_gui_closed, function(event)
	if event.entity ~= nil then
		--log(event.entity.name)
        if event.entity.name == 'outpost' then
			outpostgui.destroy()
		end
    end
	if event.entity ~= nil and string.match(event.entity.name, 'slaughterhouse') and global.watch_slaughterhouse == true then
		--log('hit')
		global.watch_slaughterhouse = false
		--global.current_entity[event.player_index] = nil
	end

end)

script.on_event(defines.events.on_rocket_launched, function(event)
        if event.rocket_silo.name == 'mega-farm' then
            --log(serpent.block(event))
           --log(serpent.block(event.rocket.get_inventory(defines.inventory.rocket).get_contents()))

            local item = event.rocket.get_inventory(defines.inventory.rocket).get_contents()
            local items = {}

            for k in pairs(item) do
                items['item1'] = k
            end
            --log(items['item1'])
            --log(serpent.block(item))

            local rs = event.rocket_silo

            for _, farm in pairs(farms) do
                --log(serpent.block(farm))
                if items['item1'] == farm.seed then
                    --log('hits')
                    local recipes = {}
                    local output = {}
                    for _, recipe in pairs(farm.recipes) do
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
							if game.surfaces['nauvis'].find_entity(farm.crop,{rpos.x + posx, (rpos.y - 15) + posy}) == nil then
								game.surfaces['nauvis'].create_entity {name = farm.crop, position = {rpos.x + posx, (rpos.y - 15) + posy}, amount = output[rs.get_recipe().name]}
							else
								local ore = game.surfaces['nauvis'].find_entity(farm.crop,{rpos.x + posx, (rpos.y - 15) + posy})
								ore.amount = ore.amount + output[rs.get_recipe().name]
							end
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
            local harvesters = game.surfaces['nauvis'].find_entities_filtered {area = {{rpos.x - 11, (rpos.y - 15) - 11}, {rpos.x + 11, (rpos.y - 15) + 11}}, name = {'harvester','collector'}}
            for _, har in pairs(harvesters) do
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
	local caption
	if caravanroutes[entity.unit_number] ~= nil and caravanroutes[entity.unit_number].startpoint.id ~= nil and global.outpost_names[caravanroutes[entity.unit_number].startpoint.id] ~= nil then
		caption = 'Route Start: '.. global.outpost_names[caravanroutes[entity.unit_number].startpoint.id]
	else
		caption = 'Route Start: '
	end
	caravangui.ctable.add({type = 'frame', name = 'route_frame', direction = 'vertical',  caption = caption})
		local names = {}
		--[[
		for n, name in pairs(global.outpost_table) do
			table.insert(names, n)
		end
		]]--
		for n, name in pairs(global.outpost_names) do
			table.insert(names, name)
			global.outpost_numbers[name] = n
		end
	caravangui.ctable.route_frame.add({type = 'drop-down', name = 'outpost-list', items = names })
	if caravanroutes[entity.unit_number] ~= nil and caravanroutes[entity.unit_number].endpoint.id ~= nil and global.outpost_names[caravanroutes[entity.unit_number].endpoint.id] ~= nil then
		caption = 'Route End: '.. global.outpost_names[caravanroutes[entity.unit_number].endpoint.id]
	else
		caption = 'Route End: '
	end
	caravangui.ctable.add({type = 'frame', name = 'route_frame_2', direction = 'vertical',  caption = caption})
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
		for _, ent in pairs(event.entities) do
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
				--log(serpent.block(lastclickedunit))
			end
		end

	end

	global.caravanroutes = caravanroutes

end)

--added 3d trees to bio reserve and remove depleted resource trees
script.on_event(defines.events.on_resource_depleted, function(event)
	local resourcetrees = game.surfaces['nauvis'].find_entities_filtered{position = event.entity.position, name = event.entity.name..'-fake'} --, type='tree'}
	--log(serpent.block(resourcetrees))
	--log(serpent.block(resourcetrees.name))
	for _, tree in pairs(resourcetrees) do
		--log(serpent.block(resourcetrees))
		--log(serpent.block(resourcetrees.name))
		tree.destroy()
	end
end)

script.on_event(defines.events.on_player_cursor_stack_changed, function(event)

--log('hit')
	if game.players[event.player_index].cursor_stack ~= nil and game.players[event.player_index].cursor_stack.valid_for_read == true then
	--log(game.players[event.player_index].cursor_stack)
	--log(game.players[event.player_index].cursor_stack.valid)
	--log(game.players[event.player_index].cursor_stack.valid_for_read)
		local cursor_item = game.players[event.player_index].cursor_stack.name
		--log(cursor_item)
		if cursor_item == 'lb-requester-chest' or cursor_item == 'lb-provider-chest' then
			global.logistics_square = rendering.draw_rectangle{color={r = 255, g = 165, b = 0, a = 0.75},filled=true,left_top={-30,-30},right_bottom={30,30},surface='nauvis',draw_on_ground = true}
			global.has_drawn_square = true
		end
	elseif game.players[event.player_index].cursor_stack.valid_for_read == false and global.has_drawn_square == true then
		rendering.destroy(global.logistics_square)
	end
end)

script.on_event(defines.events.on_player_used_capsule, function(event)

if event.item.name == 'energy-drink' then

	game.players[event.player_index].character_running_speed_modifier = 5

end

end)


script.on_event(
    defines.events.on_research_finished,
    function(event)

	if global.TRlist == nil then
		global.TRlist = TRlist_og
		TRlist = TRlist_og
	end
	--log('hit')
	--log(serpent.block(TRlist.techs_with_upgrades['bigger-colon']))
	local tech = event.research
	-- if tech.name == 'hardened-bone' then
	-- --log(serpent.block(tech.name))
	-- end
	if TRlist.techs_with_upgrades[tech.name] == true then
		if tech.effects ~= nil then
			for _, effect in pairs(tech.effects) do
				if effect.type == 'unlock-recipe' then
					for _, upgrade in pairs(TRlist.upgrades) do
						--log(serpent.block(upgrade.base_recipe))
						if effect.recipe == upgrade.base_recipe then
							if upgrade.current_lvl > 1 then
								event.research.force.recipes[upgrade.base_recipe].enabled = false
							end
						elseif effect.recipe == upgrade.upgrade_1.recipe then
							if upgrade.current_lvl > 2 then
								event.research.force.recipes[upgrade.upgrade_1.recipe].enabled = false
							end
							upgrade.current_lvl = 2
							event.research.force.recipes[upgrade.base_recipe].enabled = false
							upgrade.upgrade_1.unlocked = true
						elseif upgrade.upgrade_2 ~= nil and effect.recipe == upgrade.upgrade_2.recipe then
							--log('hit')
							--log(serpent.block(upgrade.upgrade_1.recipe))
							--log(serpent.block(upgrade.upgrade_2.recipe))
							--log(serpent.block(event.research.force.recipes[upgrade.upgrade_1.recipe].enabled))
							upgrade.current_lvl = 3
							event.research.force.recipes[upgrade.base_recipe].enabled = false
							event.research.force.recipes[upgrade.upgrade_1.recipe].enabled = false
							upgrade.upgrade_2.unlocked = true
							--log(serpent.block(event.research.force.recipes[upgrade.upgrade_1.recipe].enabled))
						end
					end
				end
			end
		end
	end
	global.TRlist = TRlist
end)
