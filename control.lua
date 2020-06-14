if script.active_mods["debugadapter"] then
	require("__debugadapter__/debugadapter.lua")
end

local TRlist_og = require("scripts/techswap")
local TRlist = {}

local bio_list = require('prototypes/items/biomass-convertion')

--Mega Farms

-- local farm_table = {}
-- function farm_table.add(farm)
--     --log(serpent.block(farms))
--     table.insert(farms, farm)
--     --log(serpent.block(farms))
-- end

local farms = {
	farm1 = require("scripts/crops/farm-ralesia"),
	farm2 = require("scripts/crops/farm-rennea"),
	farm3 = require("scripts/crops/farm-tuuphra"),
	farm4 = require("scripts/crops/farm-grod"),
	farm5 = require("scripts/crops/farm-yotoi"),
	farm6 = require("scripts/crops/farm-kicalk"),
	farm7 = require("scripts/crops/farm-arum"),
	farm8 = require("scripts/crops/farm-yotoi-fruit"),
	farm9 = require("scripts/crops/farm-bioreserve")
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
	outpostgui = player.gui.left.add({type = "frame", name = "outpost_frame", direction = "horizontal"})
	outpostgui.add({type = "textfield", name = "outpost_name", text = "Outpost Name", lose_focus_on_confirm = true})
	if global.outpost_names[event.entity.unit_number] ~= nil then
		outpostgui.outpost_name.text = global.outpost_names[event.entity.unit_number]
	end
	--log(serpent.block(global.outpost_names))
end

local function create_slaughterhouse_animal_table(gui, player)
	local animals = {
		"auog",
		"ulric",
		"mukmoux",
		"arthurian",
		"cottongut",
		"dhilmos",
		"scrondrix",
		"phadai",
		"fish",
		"phagnot",
		"kmauts",
		"dingrits",
		"xeno",
		"arqad",
		"cridren",
		"antelope",
		"trits",
		"vonix",
		"vrauks",
		"xyhiphoe",
		"zipir",
		"korlex"
	}
	--log(player)
	--log(serpent.block(animals))
	local sg_table = gui
	sg_table.add({type = "table", name = "s_table", column_count = 6})
	for _, recipe in pairs(game.players[player].force.recipes) do
		if string.match(recipe.category, "slaughterhouse") then
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
							if animal == "zipir" then
								sg_table.s_table.add(
									{
										type = "choose-elem-button",
										name = animal,
										elem_type = 'item',
										item = animal .. "1",
										style = "image_tab_slot",
										--tooltip = animal
									}
								)
							else
								sg_table.s_table.add(
									{
										type = "choose-elem-button",
										name = animal,
										elem_type = 'item',
										item = animal,
										style = "image_tab_slot",
										--tooltip = animal
									}
								)
							end
						end
					elseif next(sg_table.s_table.children) == nil then
						--log('hit')
						sg_table.s_table.add(
							{
								type = "choose-elem-button",
								name = animal,
								elem_type = 'item',
								item = animal,
								style = "image_tab_slot",
								--tooltip = animal
							}
						)
					end
				end
			end
		end
	end
end

local function create_slaughterhouse_gui(event)
	local player = game.players[event.player_index]
	slaughterhouse_gui =
		player.gui.screen.add(
		{
			type = "frame",
			name = "recipe_menu",
			direction = "vertical",
			caption = "Choose Your Next Victim",
			style = "inner_frame_in_outer_frame"
		}
	)
	slaughterhouse_gui.add({type = "sprite-button", name = "slaughterhouse_close", sprite = "utility/close_fat"})
	slaughterhouse_gui.force_auto_center()
	create_slaughterhouse_animal_table(slaughterhouse_gui, event.player_index)
	global.slaughterhouse_gui_open = true
end

local farm_buildings = {
	"arthurian",
	"auog",
	"bhoddos",
	"cadavericarum",
	"prandium",
	"cridren",
	"dhilmos",
	"dingrits",
	"ranch",
	"fawogae",
	"fish",
	"grod",
	"kicalk",
	"kmauts",
	"mukmoux",
	"navens",
	"phadai",
	"phagnot",
	"ralesia",
	"rennea",
	"scrondrix",
	"trits",
	"tuuphra",
	"ulric",
	"vonix",
	"vrauks",
	"xenopen",
	"arqad",
	"xyhiphoe",
	"yaedols",
	"yotoi",
	"zipir",
	"moondrop",
	'seaweed',
	'sap',
	'moss'
}

local animal_farm_buildings = {
	["arthurian"] = true,
	["auog"] = true,
	["cridren"] = true,
	["dhilmos"] = true,
	["dingrits"] = true,
	["ranch"] = true,
	["fish"] = true,
	["kmauts"] = true,
	["mukmoux"] = true,
	["phadai"] = true,
	["phagnot"] = true,
	['prandium'] = true,
	["scrondrix"] = true,
	["trits"] = true,
	["ulric"] = true,
	["vonix"] = true,
	["vrauks"] = true,
	["xenopen"] = true,
	["arqad"] = true,
	["xyhiphoe"] = true,
	["yaedols"] = true,
	["zipir"] = true
}

local plant_farm_buildings = {
	["cadavericarum"] = true,
	["grod"] = true,
	["kicalk"] = true,
	["ralesia"] = true,
	["rennea"] = true,
	["tuuphra"] = true,
	["yotoi"] = true,
	["moondrop"] = true,
	["moss"] = true,
	["seaweed"] = true,
	["sap"] = true,
}

local fungus_farm_buildings = {
	["bhoddos"] = true,
	["fawogae"] = true,
	["yaedols"] = true,
	["navens"] = true
}

local function disable_machine(entity)
	--log('hit')
	local E = entity
	--log(E.name)
	--table.insert(global.farms, E)
	global.farms[E.unit_number] = E
	global.farm_count_last = global.farm_count_last + 1
	--table.insert(global.farm_count, E.unit_number)
	global.farm_count[global.farm_count_last] = E.unit_number
	E.active = false
	local stopsign
	for _, farm in pairs(farm_buildings) do
		if animal_farm_buildings[string.match(E.name, farm)] then
			stopsign =
				rendering.draw_sprite {
				sprite = "no_module_animal",
				render_layer = "188",
				target = E.position,
				surface = E.surface.name
			}
		elseif plant_farm_buildings[string.match(E.name, farm)] then
			stopsign =
				rendering.draw_sprite {
				sprite = "no_module_plant",
				render_layer = "188",
				target = E.position,
				surface = E.surface.name
			}
		elseif fungus_farm_buildings[string.match(E.name, farm)] then
			stopsign =
				rendering.draw_sprite {
				sprite = "no_module_fungi",
				render_layer = "188",
				target = E.position,
				surface = E.surface.name
			}
		end
	end
	--log(serpent.block(stopsign))
	global.rendered_icons[E.unit_number] = stopsign
	--local stoptext = rendering.draw_text{text = 'Requires ' .. E.name .. ' to function', surface = E.surface, target = E.position, target_offset = {0,-6}, color = {255,255,255}, scale = 2, alignment = 'center'}
end

--Ocula--

--END--

--Pycloud--
local function create_pycloud_chest_gui(event)
	local player = game.players[event.player_index]
	local chest_gui =
		player.gui.screen.add(
			{
				type = "frame",
				name = "chest_menu",
				direction = "vertical",
				caption = "Logistic Station",
				style = "inner_frame_in_outer_frame"
			}
		)
		--chest_gui.add({type = "sprite-button", name = "cloud_chest_close", sprite = "utility/close_fat"})

		chest_gui.add(
			{
				type = 'frame',
				name = 'chest_state_frame',
				direction = 'horizontal',
				--caption = 'DICKS',
				style = "inner_frame_in_outer_frame"
			}
		)
		chest_gui.chest_state_frame.add(
			{
				type = 'label',
				name = 'Current_chest_state',
				caption = 'Current put state: '
			}
		)
		chest_gui.chest_state_frame.add(
			{
				type = 'switch',
				name = 'chest_state_switch',
				switch_state = global.pycloud.chests[event.entity.unit_number].input_output_state,
				left_label_caption = 'Input',
				right_label_caption = 'Output'
			}
		)

		chest_gui.add(
			{
				type = 'frame',
				name = 'chest_id_frame',
				direction = 'vertical',
				--caption = 'DICKS ID',
				style = "inner_frame_in_outer_frame"
			}
		)
		chest_gui.chest_id_frame.add(
			{
				type = 'label',
				name = 'Current_chest_network_id',
				caption = 'Current cloud network id: ' .. global.pycloud.chests[event.entity.unit_number].cloud_id_num
			}
		)
		chest_gui.chest_id_frame.add(
			{
				type = 'frame',
				name = 'new_chest_id_frame',
				direction = 'horizontal',
				--caption = 'DICKS ID',
				style = "invisible_frame"
			}
		)
		chest_gui.chest_id_frame.new_chest_id_frame.add(
			{
				type = 'label',
				name = 'Change_chest_network_id',
				caption = 'Change cloud id number'
			}
		)
		chest_gui.chest_id_frame.new_chest_id_frame.add(
			{
				type = 'textfield',
				name = 'chest_id_text',
				numeric = true,
				text = global.pycloud.chests[event.entity.unit_number].cloud_id_num,
				caption = 'test'
			}
		)
end
--[[
--Biomass tables--
local function order_biolist()

local bio = global.compostables.og_list
	--log(serpent.block(bio))
	local name_table = {}
	local input_table = {}
	local output_table = {}
	for i, item in pairs(bio) do
		--log(i)
		--log(serpent.block(item))
		table.insert(name_table, i)
		if input_table[item.item_amount] == nil then
			input_table[item.item_amount] = {i}
		else
			table.insert(input_table[item.item_amount], i)
		end
		if output_table[item.biomass_amount] == nil then
			output_table[item.biomass_amount] = {i}
		else
			table.insert(output_table[item.biomass_amount], i)
		end
	end
	--log(serpent.block(name_table))
	--log(serpent.block(input_table))
	--log(serpent.block(output_table))
	table.sort(name_table)
	for k,v in pairs(input_table) do
		--log(k)
		--log(serpent.block(v))
		table.sort(v)
	end
	for k,v in pairs(output_table) do
		--log(k)
		--log(serpent.block(v))
		table.sort(v)
	end
	--log(serpent.block(name_table))
	--log(serpent.block(input_table))
	--log(serpent.block(output_table))
	global.compostables.name_order = name_table
	global.compostables.input_order = input_table
	global.compostables.output_order = output_table
end
]]--
remote.add_interface('data_puller',
	{order_biolist = function()

		local bio = global.compostables.og_list
			--log(serpent.block(bio))
			local name_table = {}
			local input_table = {}
			local output_table = {}
			for i, item in pairs(bio) do
				--log(i)
				--log(serpent.block(item))
				table.insert(name_table, i)
				if input_table[item.item_amount] == nil then
					input_table[item.item_amount] = {i}
				else
					table.insert(input_table[item.item_amount], i)
				end
				if output_table[item.biomass_amount] == nil then
					output_table[item.biomass_amount] = {i}
				else
					table.insert(output_table[item.biomass_amount], i)
				end
			end
			--log(serpent.block(name_table))
			--log(serpent.block(input_table))
			--log(serpent.block(output_table))
			table.sort(name_table)
			for k,v in pairs(input_table) do
				--log(k)
				--log(serpent.block(v))
				table.sort(v)
			end
			for k,v in pairs(output_table) do
				--log(k)
				--log(serpent.block(v))
				table.sort(v)
			end
			--log(serpent.block(name_table))
			--log(serpent.block(input_table))
			--log(serpent.block(output_table))
			--global.compostables.name_order = name_table
			--global.compostables.input_order = input_table
			--global.compostables.output_order = output_table
			return bio, name_table, input_table, output_table
		end
})

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
		global.watched_slaughterhouse = {
			entity = {},
			player = ""
		}
		global.has_built_first_farm = false
		global.farms = {}
		global.farm_count = {}
		global.farm_count_last = 0
		global.checked_farm_counter = 1
		global.farm_help_message_open = false
		global.rendered_icons = {}
		global.farm_migration = false

		global.ocula_master_table = {
			ocula = {},
			ocula_boxes = {},
			active_ocula = {},
			item_in_route = {},
			requested_items = {},
			idling_at_player = {}
		}

		global.pycloud =
			{
				networks =
					{
						[0] = {},
					},
				chests = {},
				current_chest = '',
				current_network_search = 0
			}
		global.fish_disable = false
		global.compostables =
		{
			og_list = bio_list,
			name_order = {},
			input_order = {},
			output_order = {}
		}
		--order_biolist()
		if not remote.interfaces["silo_script"] then
			return
		end
		remote.call("silo_script", "set_no_victory", true)
	end
)

script.on_load(
	function()
		caravanroutes = global.caravanroutes

		TRlist = global.TRlist

		--log(serpent.block(global.TRlist))
		--log(serpent.block(TRlist))
	end
)

script.on_configuration_changed(
	function()
		global.current_entity = {}
		global.slaughterhouse_gui_open = false
		global.watch_slaughterhouse = false
		global.watched_slaughterhouse = {
			entity = {},
			player = ""
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
				local entities = game.surfaces["nauvis"].find_entities_filtered {type = "assembling-machine"}
				for _, entity in pairs(entities) do
					--log('hit')
					for _, farm in pairs(farm_buildings) do
						--log('hit')
						if string.match(entity.name, farm) then
							--log('hit')
							--global.farms[entity.unit_number] = entity
							--table.insert(global.farms, entity)
							if
								entity.valid == true and entity.get_module_inventory() ~= nil and
									entity.get_module_inventory().is_empty() == true
							 then
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
		if global.ocula_master_table == nil then
			global.ocula_master_table = {
				ocula = {},
				ocula_boxes = {},
				active_ocula = {},
				item_in_route = {},
				requested_items = {},
				idling_at_player = {}
			}
		end
		if global.ocula_master_table.requested_items == nil then
			global.ocula_master_table.requested_items = {}
		end
		if global.ocula_master_table.item_in_route == nil then
			global.ocula_master_table.item_in_route = {}
		end
		if global.ocula_master_table.idling_at_player == nil then
			global.idling_at_player = {}
		end
		if global.pycloud == nil or global.pycloud.current_network_search == nil then
			global.pycloud =
			{
				networks =
					{
						[0] = {},
					},
				chests = {},
				current_chest = '',
				current_network_search = 0
			}
		end
		if global.fish_disable == nil then
			global.fish_disable = false
		end
		if global.compostables == nil then
			global.compostables =
				{
					og_list = bio_list,
					name_order = {},
					input_order = {},
					output_order = {}
				}
				--order_biolist()
		end
	end
)

local farm_help_gui

local function create_farm_help_message(event)
	local player
	if event.player_index ~= nil then
		player = game.players[event.player_index]
		if global.farm_help_message_open == false then
			farm_help_gui =
				player.gui.center.add(
				{
					type = "frame",
					name = "farm_help",
					direction = "horizontal",
					caption = "All plants and animal buildings require 1 or more copies of the wanted item to function. Craft the first version from codex and DNA samples.Put them in the module slots"
				}
			)
			farm_help_gui.add({type = "button", name = "fh_accept_button", caption = "OK"})
			global.farm_help_message_open = true
		end
	end
end

local function built_ocula(event)
	local E = event
	local base
	local unit_num
	local box_search =
		game.surfaces["nauvis"].find_entities_filtered {position = E.position, radius = 100, type = "container"}
	for _, con in pairs(box_search) do
		if con.name == "ipod" then
			base = con
			break
		end
	end
	if base == nil then
		unit_num = ''
	else
		unit_num = base.unit_number
	end
	global.ocula_master_table.ocula[E.unit_number] = {
		entity = E,
		base = unit_num,
		current_inventory = {
			item_name = "",
			amount = ""
		},
		max_stack_size = 50,
		current_target = "",
		getting_items = false,
		delivering_items = false
	}
	if base ~= nil and base.valid then
		E.set_command {
			type = defines.command.go_to_location,
			destination_entity = base,
			radius = 0.5
		}
		global.ocula_master_table.ocula_boxes[base.unit_number].total_ocula_count =
			global.ocula_master_table.ocula_boxes[base.unit_number].total_ocula_count + 1
	end
	--log(serpent.block(global.ocula_master_table.ocula[E.unit_number]))
end

--[[
script.on_event(defines.events.script_raised_built, function(event)
log('hit')

end)
]]--

script.on_event(defines.events.script_raised_revive, function(event)
	--log('hit')
	--log(event.entity.name)
	local E = event.entity
	if global.has_built_first_farm == false then
		for _, farm in pairs(farm_buildings) do
			if string.match(E.name, farm) then -- or string.match(E.ghost_name, farm) then
				create_farm_help_message(event)
				disable_machine(E)
			end
		end
	elseif global.has_built_first_farm == true then
		for _, farm in pairs(farm_buildings) do
			if string.match(E.name, farm) then -- or string.match(E.ghost_name, farm) then
				disable_machine(E)
			end
		end
	end
end)

script.on_event(
	{defines.events.on_built_entity, defines.events.on_robot_built_entity},
	function(event)
		--log('klonan bot did a thing')
		local E = event.created_entity
		--log(E.name)
		--log(E.ghost_name)
		--log(serpent.block(landbots))

		if E.name == "mega-farm" then
			--script for placing down the farm
			local posx = -13
			local posy = -13
			local rpos = E.position
			repeat
				--log(posx)
				--log(posy)
				if posx == -13 or posy == -13 or posx == 13 or posy == 13 then
					game.surfaces["nauvis"].create_entity {
						name = "wood-fence",
						position = {rpos.x + posx, (rpos.y - 15) + posy},
						force = E.force
					}
				end
				--create landfill
				game.surfaces["nauvis"].set_tiles {{name = "landfill", position = {rpos.x + posx, (rpos.y - 15) + posy}}}

				posx = posx + 1
				if posx == 14 then
					posx = -13
					posy = posy + 1
				end
			until posy == 14
		elseif E.name == "outpost" then
			--local outpost = {entity = E, name = math.random(1,100)}
			global.outpost_table["outpost" .. E.unit_number] = {entity = E, name = math.random(1, 100)}
			global.outpost_names[E.unit_number] = "outpost-" .. E.unit_number
		elseif E.name == "caravan" then
			global.caravan_unit_numbers[E.unit_number] = true
		elseif E.name == "ipod" then
			global.ocula_master_table.ocula_boxes[E.unit_number] = {
				entity = E,
				assigned_active_occula = {},
				total_ocula_count = 0,
				inactive_ocula = 0
			}
			local icheck = game.surfaces['nauvis'].find_entities_filtered{position = E.position, radius = 100, type = 'unit'}
			for _, entity in pairs(icheck) do
				if entity.name == 'ocula' then
					if global.ocula_master_table.ocula[entity.unit_number].base == '' then
						global.ocula_master_table.ocula[entity.unit_number].base = E.unit_number
						global.ocula_master_table.ocula[entity.unit_number].entity.set_command {
							type = defines.command.go_to_location,
							destination_entity = E,
							radius = 0.5
						}
						global.ocula_master_table.ocula_boxes[E.unit_number].total_ocula_count = global.ocula_master_table.ocula_boxes[E.unit_number].total_ocula_count + 1
					end
				end
			end
			--log(serpent.block(global.ocula_master_table))
		elseif E.name == "ocula" then
			built_ocula(E)
		elseif E.name == "pydrive" then
			--log('hit')
			local skin = game.surfaces["nauvis"].create_entity {
				name = "pydrive_skin",
				position = E.position,
				--force = E.force
			}
			local chest =
				{
					entity = E,
					cloud_id_num = 0,
					input_output_state = 'left',
					skin = skin
				}
			global.pycloud.chests[E.unit_number] = chest
			--log(serpent.block(global.pycloud))
		elseif global.has_built_first_farm == false then
			for _, farm in pairs(farm_buildings) do
				if string.match(E.name, farm) then -- or string.match(E.ghost_name, farm) then
					create_farm_help_message(event)
					disable_machine(E)
				end
			end
		elseif global.has_built_first_farm == true then
			for _, farm in pairs(farm_buildings) do
				if string.match(E.name, farm) then -- or string.match(E.ghost_name, farm) then
					disable_machine(E)
				end
			end
		end
		if E.name == 'clone-1' then
			local group = game.surfaces['nauvis'].create_unit_group{position = E.position, force = E.force}
			group.add_member(E)
			--log(serpent.block(E.unit_group.group_number))
			local x = 0
			local y = 0
			for i=1,704 do
			rendering.draw_sprite{
				sprite = 'bio-tree-' .. i,
				render_layer = '188',
				target = {x,y},
				surface = E.surface.name
			}
			x = x + 2
				if x == 50 then
					x = 0
					y = y + 2
				end
			end
		end
		--log(serpent.block(landbots))
	end
)

local function ocula_removed(event)
	local E = event.entity
	local OT = global.ocula_master_table
	--log(serpent.block(OT))
	--reducing ocula box entity count
	OT.ocula_boxes[OT.ocula[E.unit_number].base].total_ocula_count = OT.ocula_boxes[OT.ocula[E.unit_number].base].total_ocula_count - 1

	--removing ocula box refernece to this entity
	OT.ocula_boxes[OT.ocula[E.unit_number].base].assigned_active_occula[E.unit_number] = nil

	--removing the enroute item carried by this ocula by the amount it was carrying to allow more to be dispatched
	local ocula = OT.ocula
	local oci = ocula[E.unit_number].current_inventory
	if OT.requested_items[oci.item_name] ~= nil then
		OT.requested_items[oci.item_name] = OT.requested_items[oci.item_name] - oci.amount
		if OT.requested_items[oci.item_name] == 0 then
			OT.requested_items[oci.item_name] = nil
		end
	end
	if OT.item_in_route[oci.item_name] ~= nil then
		OT.item_in_route[oci.item_name] = OT.item_in_route[oci.item_name] - oci.amount
		if OT.item_in_route[oci.item_name] == 0 then
			OT.item_in_route[oci.item_name] = nil
		end
	end

	--deleting ocula
	OT.ocula[E.unit_number] = nil
end

script.on_event(defines.events.on_entity_died, function(event)

	local E = event.entity

	if E.name == 'ipod' then
		global.ocula_master_table.ocula_boxes[E.unit_number] = nil
	elseif E.name == 'ocula' then
		ocula_removed(E)
	end

end)

script.on_event(
	defines.events.on_put_item,
	function()
	end
)

-- local function ai(event)

-- end

script.on_event(
	defines.events.on_ai_command_completed,
	function(event)
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
			if
				math.sqrt(
					(caravanroutes[car].unit.position.x - caravanroutes[car].startpoint.pos.x) ^ 2 +
						(caravanroutes[car].unit.position.y - caravanroutes[car].startpoint.pos.y) ^ 2
				) <= 10
			 then
				if
					game.surfaces[caravanroutes[car].unit.surface.name].find_entity("outpost", caravanroutes[car].startpoint.pos) ~=
						nil
				 then
					local outpostinventory =
						game.surfaces[caravanroutes[car].unit.surface.name].find_entity("outpost", caravanroutes[car].startpoint.pos).get_inventory(
						defines.inventory.chest
					)
					if outpostinventory ~= nil then
						if caravanroutes[car].inventory.hasitem then
							outpostinventory.insert(
								{name = caravanroutes[car].inventory.item, count = caravanroutes[car].inventory.stackamount}
							)
							caravanroutes[car].inventory.hasitem = false
							caravanroutes[car].inventory.item = ""
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
			elseif
				caravanroutes[car].endpoint ~= nil and caravanroutes[car].endpoint.pos.x ~= nil and
					math.sqrt(
						(caravanroutes[car].endpoint.pos.x - caravanroutes[car].unit.position.x) ^ 2 +
							(caravanroutes[car].endpoint.pos.y - caravanroutes[car].unit.position.y) ^ 2
					) <= 10
			 then
				if
					game.surfaces[caravanroutes[car].unit.surface.name].find_entity("outpost", caravanroutes[car].endpoint.pos) ~= nil
				 then
					local outpostinventory =
						game.surfaces[caravanroutes[car].unit.surface.name].find_entity("outpost", caravanroutes[car].endpoint.pos).get_inventory(
						defines.inventory.chest
					)
					if outpostinventory ~= nil then
						if caravanroutes[car].inventory.hasitem then
							outpostinventory.insert(
								{name = caravanroutes[car].inventory.item, count = caravanroutes[car].inventory.stackamount}
							)
							caravanroutes[car].inventory.hasitem = false
							caravanroutes[car].inventory.item = ""
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
			--log("hit")
			if global.ocula_master_table.ocula[event.unit_number] ~= nil then
				local ocula = global.ocula_master_table.ocula[event.unit_number]
				if ocula.getting_items == false and ocula.delivering_items == false and ocula.entity.valid then
					--log("hit")
					--log(serpent.block(global.ocula_master_table))
					if
						global.ocula_master_table.ocula_boxes[ocula.base].entity.get_inventory(defines.inventory.chest).can_insert(
							{name = "ocula", count = 1}
						)
					 then
						local inv = global.ocula_master_table.ocula_boxes[ocula.base].entity.get_inventory(defines.inventory.chest)
						inv.insert({name = "ocula", count = 1})
						global.ocula_master_table.ocula_boxes[ocula.base].inactive_ocula =
							global.ocula_master_table.ocula_boxes[ocula.base].inactive_ocula + 1
						ocula.entity.destroy()
						--ocula = nil
						global.ocula_master_table.ocula[event.unit_number] = nil
					end
				elseif ocula ~= nil and ocula.getting_items == true then
					if ocula.current_target.valid == true then
						local chest = ocula.current_target.get_inventory(defines.inventory.chest)
						local chest_stuff = chest.get_contents()
						if chest_stuff[ocula.target_item] ~= nil then
							--log(ocula.target_amount)
							local took_stuff = chest.remove({name = ocula.target_item, count = ocula.target_amount})
							--log(took_stuff)
							ocula.current_inventory.item_name = ocula.target_item
							ocula.current_inventory.amount = took_stuff
							ocula.target_item = ""
							ocula.target_amount = 0
							ocula.getting_items = false
							ocula.delivering_items = true
							ocula.entity.set_command {
								type = defines.command.go_to_location,
								destination_entity = game.get_player(ocula.target_player).character,
								radius = 0.5
							}
						end
					end
				elseif ocula.delivering_items == true then
					--log("found the player")
					local player = game.get_player(ocula.target_player)
					if global.ocula_master_table.idling_at_player[player.index] == nil then
						global.ocula_master_table.idling_at_player[player.index] = {}
					end
					--log(serpent.block(global.ocula_master_table))
					local inv = player.get_main_inventory()
					if inv.can_insert({name=ocula.current_inventory.item_name, count = ocula.current_inventory.amount}) == true then
						global.ocula_master_table.item_in_route[player.index][ocula.current_inventory.item_name] = global.ocula_master_table.item_in_route[player.index][ocula.current_inventory.item_name] - ocula.current_inventory.amount
						local inserted = player.get_main_inventory().insert({name=ocula.current_inventory.item_name, count = ocula.current_inventory.amount})
						if inserted == ocula.current_inventory.amount then
							--has inserted everything can return home
							ocula.current_inventory.item_name = ''
							ocula.current_inventory.amount = 0
							ocula.delivering_items = false
							ocula.entity.set_command {
								type = defines.command.go_to_location,
								destination_entity = global.ocula_master_table.ocula_boxes[ocula.base].entity,
								radius = 0.5
							}
							if global.ocula_master_table.idling_at_player[player.index][ocula.entity.unit_number] ~= nil then
								--remove ocula from player waiting list
								global.ocula_master_table.idling_at_player[player.index][ocula.entity.unit_number] = nil
							end
						elseif inserted < ocula.current_inventory.amount then
							--subtract inserted amount and enter waiting queue
							ocula.current_inventory.amount = ocula.current_inventory.amount - inserted
							table.insert(global.ocula_master_table.idling_at_player[player.index], ocula.entity.unit_number)
						end
					elseif inv.can_insert({name=ocula.current_inventory.item_name, count = ocula.current_inventory.amount}) == false then
						if global.ocula_master_table.idling_at_player[player.index][ocula.entity.unit_number] == nil then
							table.insert(global.ocula_master_table.idling_at_player[player.index], ocula.entity.unit_number)
						end
					end
				end
			end
			--log(serpent.block(global.ocula_master_table))
		end
		if event.result == defines.behavior_result.in_progress then
			--log("hit")
			if
				global.ocula_master_table.ocula[event.unit_number] ~= nil and
					global.ocula_master_table.ocula[event.unit_number].entity.valid
			 then
				--log("hit")
			end
		end
		if event.result == defines.behavior_result.fail then
			--log("hit")
			if
				global.ocula_master_table.ocula[event.unit_number] ~= nil and
					global.ocula_master_table.ocula[event.unit_number].entity.valid
			 then
				--log("hit")
			end
		end
		if event.result == defines.behavior_result.deleted then
			--log("hit")
			if
				global.ocula_master_table.ocula[event.unit_number] ~= nil and
					global.ocula_master_table.ocula[event.unit_number].entity.valid
			 then
				--log("hit")
			end
		end

		global.caravanroutes = caravanroutes
	end
)
--[[
script.on_nth_tick(5, function()
		--log('hit')
		for _, p in pairs(game.players) do
			--log(p.name)
			--check if player is missing stuff and add it to the list of things to attempt to be filled by the ocula
			--log('hit')
			--log(p.character.request_slot_count)
			--log(serpent.block(p.get_main_inventory().get_contents()))
			local inv = p.get_main_inventory().get_contents()
			local iir
			local total_item_count
			--log(serpent.block(inv))
			for s = 1, p.character.request_slot_count do --
				--log(s)
				--log(serpent.block(p.character.get_request_slot(s)))
				if p.character.get_request_slot(s) ~= nil then
					if global.ocula_master_table.requested_items[p.index] == nil then
						global.ocula_master_table.requested_items[p.index] = {}
					end
					if global.ocula_master_table.item_in_route[p.index] ~= nil and global.ocula_master_table.item_in_route[p.index][p.character.get_request_slot(s)] ~= nil then
						iir = global.ocula_master_table.item_in_route[p.index][p.character.get_request_slot(s)]
					else
						iir = 0
					end
					if inv[p.character.get_request_slot(s).name] ~= nil then
						total_item_count =  inv[p.character.get_request_slot(s).name] + iir
					else
						total_item_count = iir
					end

					global.ocula_master_table.requested_items[p.index][p.character.get_request_slot(s).name] =
					p.character.get_request_slot(s).count - total_item_count
					log(serpent.block(global.ocula_master_table))
				end
			end
			--end
		end
	end
)
]]--
script.on_nth_tick(30, function()
		--log("hit")
		for _, play in pairs(game.players) do
			--log(p.name)
			if play.force.find_logistic_network_by_position(play.position, play.surface) ~= nil then
				--log('hit')
				break
			elseif play.character ~= nil then
				--log(p.name)
				--check if player is missing stuff and add it to the list of things to attempt to be filled by the ocula
				--log('hit')
				--log(p.character.request_slot_count)
				--log(serpent.block(p.get_main_inventory().get_contents()))
				local inv = play.get_main_inventory().get_contents()
				local iir
				local total_item_count
				--log(serpent.block(inv))
				for s = 1, play.character.request_slot_count do --
					--log(s)
					--log(serpent.block(play.character.get_request_slot(s)))
					if play.character.get_request_slot(s) ~= nil then
						if global.ocula_master_table.requested_items[play.index] == nil then
							global.ocula_master_table.requested_items[play.index] = {}
						end
						--log(serpent.block(global.ocula_master_table.item_in_route[play.index]))
						--log(serpent.block(global.ocula_master_table.item_in_route[play.index][play.character.get_request_slot(s).name]))
						if global.ocula_master_table.item_in_route[play.index] ~= nil and global.ocula_master_table.item_in_route[play.index][play.character.get_request_slot(s).name] ~= nil then
							iir = global.ocula_master_table.item_in_route[play.index][play.character.get_request_slot(s).name]
						else
							iir = 0
						end
						if inv[play.character.get_request_slot(s).name] ~= nil then
							total_item_count =  inv[play.character.get_request_slot(s).name] + iir
						else
							total_item_count = iir
						end
						--log(inv[play.character.get_request_slot(s).name])
						--log(iir)
						--log(total_item_count)
						global.ocula_master_table.requested_items[play.index][play.character.get_request_slot(s).name] = play.character.get_request_slot(s).count - total_item_count
						--log(serpent.block(global.ocula_master_table))
						end
					end
				for _, player in pairs(global.ocula_master_table.requested_items) do
					--log('hit')
					--log(serpent.block(player))
					if next(player) ~= nil then
						--log('hit')
						for _, ocula_box in pairs(global.ocula_master_table.ocula_boxes) do
							--log('hit')
							local oc_box = ocula_box.entity
							if oc_box.force.find_logistic_network_by_position(oc_box.position, oc_box.surface) ~= nil then
								--log('hit')
								local log_net = oc_box.force.find_logistic_network_by_position(oc_box.position, oc_box.surface)
								--log(serpent.block(log_net.get_contents()))
								if next(log_net.get_contents()) ~= nil then
									local con = log_net.get_contents()
									for i, item in pairs(player) do
										--log(serpent.block(i))
										--log(serpent.block(con))
										--log(serpent.block(con[i]))
										if item > 0 and con[i] ~= nil and ocula_box.inactive_ocula > 0 then
											ocula_box.inactive_ocula = ocula_box.inactive_ocula - 1
											oc_box.get_inventory(defines.inventory.chest).remove({name='ocula',count=1})
											--log("hit")
											local ocula =
												game.surfaces["nauvis"].create_entity {name = "ocula", position = oc_box.position, force = oc_box.force}
											ocula_box.assigned_active_occula[ocula.unit_number] = ocula.unit_number
											local destination = log_net.select_pickup_point {name = i, position = oc_box.position}
											--log(serpent.block(destination))
											local amount
											if item > 50 then
												amount = 50
											else
												amount = item
											end
											--log(amount)
											global.ocula_master_table.ocula[ocula.unit_number] = {
												entity = ocula,
												base = oc_box.unit_number,
												current_inventory = {
													item_name = "",
													amount = ""
												},
												max_stack_size = 50,
												current_target = destination.owner,
												getting_items = true,
												delivering_items = false,
												target_player = play.index,
												target_item = i,
												target_amount = amount
											}
											if global.ocula_master_table.item_in_route[play.index] == nil then
												global.ocula_master_table.item_in_route[play.index] = {}
											end
											if global.ocula_master_table.item_in_route[play.index][i] ~= nil then
												global.ocula_master_table.item_in_route[play.index][i] = global.ocula_master_table.item_in_route[play.index][i] + amount
											else
												global.ocula_master_table.item_in_route[play.index][i] = amount
											end
											--log(global.ocula_master_table.item_in_route[play.index][i])
											ocula.set_command {
												type = defines.command.go_to_location,
												destination_entity = destination.owner,
												radius = 0.5
											}
										--log(serpent.block(global.ocula_master_table))
										return
										end
									end
								end
							end
						end
					end
				end
			end
		end
end)

script.on_nth_tick(20, function()
	--log('hit')
	local pycloud = global.pycloud
	local networks = pycloud.networks
	local cns = pycloud.current_network_search
	--log(cns)
	local items = {}
	if cns == 0 then
		cns = 1
	end
	--log(cns)
	local cnsnum = tostring(cns)
	--log('hit')
	--log(cns)
	--log(serpent.block(networks[tostring(cns)]))
	--log(serpent.block(networks['1']))
	if networks[cnsnum] ~= nil then
		--log('hit')
		if next(networks[cnsnum].stored_items) ~= nil then
			--log('hit')
			for i, _ in pairs(networks[cnsnum].stored_items) do
				--log('hit')
				items[i] = true
			end
			for _, in_chest in pairs(networks[cnsnum].input_chests) do
				--log('hit')
				if pycloud.chests[in_chest] ~= nil and pycloud.chests[in_chest].entity ~= nil then
					--log('hit')
					local inv = pycloud.chests[in_chest].entity.get_inventory(defines.inventory.chest)
					if inv ~= nil and pycloud.chests[in_chest].skin.energy > 1 then
						log(serpent.block(pycloud.chests[in_chest].skin.energy))
						--log('hit')
						for c, _ in pairs(inv.get_contents()) do
							--log('hit')
							if items[c] == true then
								--log('hit')
								--log(cnsnum)
								--log(c)
								if networks[cnsnum].stored_items[c] < game.item_prototypes[c].stack_size then
									--log('hit')
									local amount = inv.remove(c)
									networks[cnsnum].stored_items[c] = networks[cnsnum].stored_items[c] + amount
								end
							elseif items[c] ~= true then
								local amount = inv.remove(c)
								networks[cnsnum].stored_items[c] = amount
							end
						end
					end
				end
			end
			for _, out_chest in pairs(networks[cnsnum].output_chests) do
				--log('hit')
				if pycloud.chests[out_chest] ~= nil and pycloud.chests[out_chest].entity ~= nil then
					--log('hit')
					local inv = pycloud.chests[out_chest].entity.get_inventory(defines.inventory.chest)
					--log(serpent.block(inv))
					if inv ~= nil and pycloud.chests[out_chest].skin.energy > 1 then
						--log('hit')
						for c, _ in pairs(inv.get_contents()) do
							--log('hit')
							if items[c] == true then
								--log('hit')
								if networks[cnsnum].stored_items[c] > 0 and inv.get_item_count(c) < game.item_prototypes[c].stack_size then
									--log('hit')
									local num_mis = game.item_prototypes[c].stack_size - inv.get_item_count(c)
									if num_mis > networks[cnsnum].stored_items[c] then
										inv.insert({name = c, count = networks[cnsnum].stored_items[c]})
										networks[cnsnum].stored_items[c] = 0
									elseif networks[cnsnum].stored_items[c] > num_mis then
										inv.insert({name = c, count = num_mis})
										networks[cnsnum].stored_items[c] = networks[cnsnum].stored_items[c] - num_mis
									end
									--[[
										local required_amount = game.item_prototypes[c].stack_size - inv.get_item_count(c)
									local amount = inv.insert({name = c, count = required_amount})
									networks[cnsnum].stored_items[c] = amount
									]]--
								end
							end
						end
						for si, stored_item in pairs(networks[cnsnum].stored_items) do
							--log('hit')
							--log(serpent.block(inv.get_item_count(si)))
							if inv.get_item_count(si) < game.item_prototypes[si].stack_size and stored_item > 0 then
								--log('hit')
								--log(si)
								--log(stored_item)
								local amount = inv.insert({name = si, count = stored_item})
								networks[cnsnum].stored_items[si] = networks[cnsnum].stored_items[si] - amount
							end
						end
					end
				end
			end
		elseif next(networks[cnsnum].stored_items) == nil then
			--log('hit')
			for _, in_chest in pairs(networks[cnsnum].input_chests) do
				--log('hit')
				if pycloud.chests[in_chest] ~= nil and pycloud.chests[in_chest].entity.valid ~= false then
					--log('hit')
					local inv = pycloud.chests[in_chest].entity.get_inventory(defines.inventory.chest)
					if inv ~= nil and pycloud.chests[in_chest].skin.energy > 1 then
						--log('hit')
						for c, contents in pairs(inv.get_contents()) do
							--log(serpent.block(c))
							--log(serpent.block(contents))
							--log('hit')
							if networks[cnsnum].stored_items[c] ~= nil and networks[cnsnum].stored_items[c] < game.item_prototypes[c].stack_size then
								--log('hit')
								local amount = inv.remove(c)
								networks[cnsnum].stored_items[c] = amount
							elseif networks[cnsnum].stored_items[c] == nil then
								--log('hit')
								local amount = inv.remove(c)
								networks[cnsnum].stored_items[c] = amount
							end
						end
					end
				end
			end
		end
	end
	--asd
	--log(serpent.block(pycloud.current_network_search))
	--log(cns)
	pycloud.current_network_search = cns + 1
	local key
	for k,_ in pairs(pycloud.networks) do
		--log(k)
		key = k
	end
	if tonumber(cns) > tonumber(key) then
		pycloud.current_network_search = 1
	end
	--log(serpent.block(global.pycloud))
end)

script.on_event(
	defines.events.on_tick,
	function()
		--log('tick start')
		if global.watch_slaughterhouse == true then
			if global.watched_slaughterhouse.entity.valid and global.watched_slaughterhouse.entity.get_recipe() == nil then
				--log('hit')
				if global.slaughterhouse_gui_open == false then
					--log('hit')
					table.insert(global.current_entity, global.watched_slaughterhouse.player)
					global.current_entity[global.watched_slaughterhouse.player] = global.watched_slaughterhouse.entity
					--log(serpent.block(global.current_entity))
					game.players[global.watched_slaughterhouse.player].opened = nil
					local event = {
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
		]]
		local start_num = global.checked_farm_counter
			for i = global.checked_farm_counter, global.farm_count_last do
				--log('hit')
				--log(i)
				--log(serpent.block(global.farms))
				--log(serpent.block(global.farms[global.farm_count[i]]))
				--log(serpent.block(global.farms[global.farm_count[i]].name))
				if global.farms[global.farm_count[i]] ~= nil and global.farms[global.farm_count[i]].valid == false then
				--log('hit')
					if global.rendered_icons[global.farm_count[i]] ~= nil then
						rendering.destroy(global.rendered_icons[global.farm_count[i]])
						global.rendered_icons[global.farm_count[i]] = nil
					end
					global.farms[global.farm_count[i]] = nil
				elseif global.farms[global.farm_count[i]] ~= nil and global.farms[global.farm_count[i]].valid == true and global.farms[global.farm_count[i]].get_module_inventory().is_empty() == false then
					global.farms[global.farm_count[i]].active = true
					if global.rendered_icons[global.farm_count[i]] ~= nil then
						rendering.destroy(global.rendered_icons[global.farm_count[i]])
						global.rendered_icons[global.farm_count[i]] = nil
					end
				elseif
					global.farms[global.farm_count[i]] ~= nil and global.farms[global.farm_count[i]].valid == true and
						global.farms[global.farm_count[i]].get_module_inventory().is_empty() == true
				 then
					global.farms[global.farm_count[i]].active = false
					--log(serpent.block(global.farm_count[i]))
					--log(serpent.block(global.rendered_icons[global.farm_count[i]]))
					if global.rendered_icons[global.farm_count[i]] == nil then --and  rendering.is_valid(global.rendered_icons[global.farm_count[i]]) == false then
						local E = global.farms[global.farm_count[i]]
						local stopsign
						for _, farm in pairs(farm_buildings) do
							if animal_farm_buildings[string.match(E.name, farm)] then
								stopsign =
									rendering.draw_sprite {
									sprite = "no_module_animal",
									render_layer = "188",
									target = E.position,
									surface = E.surface.name
								}
							elseif plant_farm_buildings[string.match(E.name, farm)] then
								stopsign =
									rendering.draw_sprite {
									sprite = "no_module_plant",
									render_layer = "188",
									target = E.position,
									surface = E.surface.name
								}
							elseif fungus_farm_buildings[string.match(E.name, farm)] then
								stopsign =
									rendering.draw_sprite {
									sprite = "no_module_fungi",
									render_layer = "188",
									target = E.position,
									surface = E.surface.name
								}
							end
						end
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
		if global.fish_disable == false then
			local weeds = game.surfaces['nauvis'].find_entities_filtered{name = 'seaweed'}
			for _,weed in pairs(weeds) do
				weed.active = false
			end
			global.fish_disable = true
		end
	end
)

script.on_event({defines.events.on_player_mined_entity, defines.events.on_robot_mined_entity}, function(event)
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
		if event.entity.name == "outpost" then
			global.outpost_names[event.entity.unit_number] = nil
		end
		global.caravanroutes = caravanroutes
		if E.name == 'ocula' then
		ocula_removed(E)
		elseif E.name == 'ipod' then
			global.ocula_master_table.ocula_boxes[E.unit_number] = nil
		elseif E.name == 'pydrive' then
			local skin = game.surfaces['nauvis'].find_entities( { {E.position.x-1,E.position.y-1}, {E.position.x+1,E.position.y+1} } )
			if skin ~= nil then
				for _,ent in pairs(skin) do
					if ent.name == 'pydrive_skin' then
						ent.destroy()
						--log(serpent.block(global.pycloud))
						local pycloud = global.pycloud
						local chest = pycloud.chests[E.unit_number]
						--log(serpent.block(chest))
						if pycloud.chests[E.unit_number].cloud_id_num == 0 then
							pycloud.chests[E.unit_number] = nil
						else
							if pycloud.networks[chest.cloud_id_num] ~= nil then
								--log('hit')
								if chest.input_output_state == 'left' then
									for k, _ in pairs(pycloud.networks[tostring(chest.cloud_id_num)].input_chests) do
										table.remove(pycloud.networks[tostring(chest.cloud_id_num)].input_chests, k)
									end
								elseif chest.input_output_state == 'right' then
									--log('hit')
									for k,_ in pairs(pycloud.networks[chest.cloud_id_num].output_chests) do
										table.remove(pycloud.networks[chest.cloud_id_num].output_chests, k)
									end
								end
								pycloud.chests[E.unit_number] = nil
								--log(serpent.block(global.pycloud))
							end
						end
					end
				end
			end
		end
end)

script.on_event(defines.events.on_chunk_generated, function(event)

	local weeds = game.surfaces['nauvis'].find_entities_filtered{area = event.area, name = 'seaweed'}
	for _,weed in pairs(weeds) do
		weed.active = false
	end

end)

script.on_event(
	defines.events.on_gui_opened,
	function(event)
		if event.entity ~= nil then
			--log(event.entity.name)
			--log(event.gui_type)
			if event.entity.name == "outpost" then
				create_outpost_gui(event)
				global.current_outpost = event.entity.unit_number
			elseif event.entity ~= nil and string.match(event.entity.name, "slaughterhouse") and event.entity.get_recipe() == nil and
					global.slaughterhouse_gui_open == false then
				--log('hit')
				table.insert(global.current_entity, event.player_index)
				global.current_entity[event.player_index] = event.entity
				game.players[event.player_index].opened = nil
				create_slaughterhouse_gui(event)
			elseif
				event.entity ~= nil and string.match(event.entity.name, "slaughterhouse") and event.entity.get_recipe() == nil and
					global.slaughterhouse_gui_open == true
			 then
				game.players[event.player_index].opened = nil
			elseif event.entity ~= nil and string.match(event.entity.name, "slaughterhouse") and event.entity.get_recipe() ~= nil then
				--log('hit')
				global.watch_slaughterhouse = true
				global.watched_slaughterhouse.entity = event.entity
				global.watched_slaughterhouse.player = event.player_index
			--global.current_entity[event.player_index] = event.entity
			elseif event.entity.name == 'pydrive' and game.players[event.player_index].gui.screen.chest_menu == nil then
				create_pycloud_chest_gui(event)
				global.pycloud.current_chest = event.entity
			end
		end
	end
)

script.on_event(defines.events.on_gui_selection_state_changed, function(event)
		--log(event.element.name)
		caravanroutes = global.caravanroutes
		--log(serpent.block(caravanroutes))
		--log(event.element.selected_index)
		--log(serpent.block(next(lastclickedunit)))
		--log(serpent.block(lastclickedunit[next(lastclickedunit)].unit_number))
		if next(lastclickedunit) ~= nil then
			--log(serpent.block(lastclickedunit))
			local id_num = next(lastclickedunit)
			if event.element.name == "outpost-list" then
				local value = event.element.get_item(event.element.selected_index)
				--log(value)
				--log(serpent.block(outpost_table))
				--log(serpent.block(outpost_table[value]))

				local otnum = global.outpost_numbers[value]

				caravanroutes[id_num].startpoint.id = global.outpost_table["outpost" .. otnum].entity.unit_number
				caravanroutes[id_num].startpoint.pos = global.outpost_table["outpost" .. otnum].entity.position

				caravanroutes[id_num].unit.set_command {
					type = defines.command.go_to_location,
					destination = caravanroutes[id_num].startpoint.pos,
					radius = 4
				}
			elseif event.element.name == "outpost-list-2" then
				local value = event.element.get_item(event.element.selected_index)
				--log(value)
				--log(serpent.block(outpost_table))
				--log(serpent.block(outpost_table[value]))

				local otnum = global.outpost_numbers[value]

				--log(serpent.block(caravanroutes[id_num]))
				--log(serpent.block(outpost_table))
				--log(serpent.block(outpost_table['outpost'..otnum]))

				caravanroutes[id_num].endpoint.id = global.outpost_table["outpost" .. otnum].entity.unit_number
				caravanroutes[id_num].endpoint.pos = global.outpost_table["outpost" .. otnum].entity.position
			elseif event.element.name == 'destination' then
				--log(serpent.block(id_num))
				local bitters = game.surfaces['nauvis'].find_entities_filtered{force = 'enemy', position = lastclickedunit[id_num].position, radius = 2000}
				for _, enemy in pairs(bitters) do
					lastclickedunit[id_num].set_command {
						type = defines.command.go_to_location,
						destination = enemy.position,
						radius = 4
					}
				end
			end
		end
		--log(serpent.block(caravanroutes))
		global.caravanroutes = caravanroutes
	end
)

script.on_event(defines.events.on_gui_switch_state_changed, function(event)

	if event.element.name == 'chest_state_switch' then
		local pycloud = global.pycloud
		pycloud.chests[pycloud.current_chest.unit_number].input_output_state = event.element.switch_state
		--check for chest network and update the put in that as well
		local cur_chest = pycloud.current_chest.unit_number
		if pycloud.networks[pycloud.chests[cur_chest].cloud_id_num] ~= nil and pycloud.chests[cur_chest].cloud_id_num ~= 0 then
			if pycloud.chests[cur_chest].input_output_state == 'left' then
				table.insert(pycloud.networks[pycloud.chests[cur_chest].cloud_id_num].input_chests, cur_chest)
			elseif pycloud.chests[cur_chest].input_output_state == 'right' then
				table.insert(pycloud.networks[pycloud.chests[cur_chest].cloud_id_num].output_chests, cur_chest)
				--log(serpent.block(pycloud.networks[pycloud.chests[cur_chest].cloud_id_num].input_chests))
				--log(serpent.block(pycloud.networks[pycloud.chests[cur_chest].cloud_id_num].input_chests[cur_chest]))
				--log(serpent.block(cur_chest))
				for k, v in pairs(pycloud.networks[pycloud.chests[cur_chest].cloud_id_num].input_chests) do
					--log('hit')
					if v == cur_chest then
						--log('hit')
						table.remove(pycloud.networks[pycloud.chests[cur_chest].cloud_id_num].input_chests, k)
						break
					end
				end
			end
		end
	end
	--log(serpent.block(global.pycloud))
end)

script.on_event(defines.events.on_gui_value_changed, function()
		--log(event.element.name)
	end
)

script.on_event(defines.events.on_gui_confirmed, function(event)
		--log(event.element.name)
		if event.element.name == "outpost_name" then
			global.outpost_names[global.current_outpost] = outpostgui.outpost_name.text
		end
		if event.element.name == 'chest_id_text' then
			--log(event.element.text)
			--log(serpent.block(global.pycloud))
			local pycloud = global.pycloud
			local un = pycloud.current_chest.unit_number
			--log(un)
			if event.element.text ~= 0 then
				pycloud.chests[un].cloud_id_num = event.element.text
				if pycloud.networks[event.element.text] == nil then
					local default =
					{
						input_chests = {},
						output_chests =	{},
						stored_items = {}
					}
					pycloud.networks[event.element.text] = default
					if pycloud.chests[un].input_output_state == 'left' then
						table.insert(pycloud.networks[event.element.text].input_chests, un)
					elseif pycloud.chests[un].input_output_state == 'right' then
						table.insert(pycloud.networks[event.element.text].output_chests, un)
					end
				elseif pycloud.networks[event.element.text] ~= nil then
					if pycloud.chests[un].input_output_state == 'left' then
						table.insert(pycloud.networks[event.element.text].input_chests, un)
					elseif pycloud.chests[un].input_output_state == 'right' then
						table.insert(pycloud.networks[event.element.text].output_chests, un)
					end
				end
			end
			--log(event.element.parent.parent.name)
			event.element.parent.parent.Current_chest_network_id.caption = 'Current cloud network id: ' .. global.pycloud.chests[un].cloud_id_num
			--log(serpent.block(global.pycloud))
		end
	end
)
--[[
script.on_event(
	defines.events.on_gui_elem_changed,
	function(event)
		--log(event.element.name)
		if string.match(event.element.name, "recipe%-menu") ~= nil then
			--log(serpent.block(global.current_entity))
			--log('hit')
			local entity = global.current_entity[event.player_index]
			--log(serpent.block(global.current_entity))
			--log(serpent.block(global.current_entity[event.player_index]))
			--log(entity.name)
			--log(serpent.block(entity))
			--log(serpent.block(global.current_entity))
			entity.set_recipe(string.match(event.element.name, "%_(.*)"))
			event.element.parent.parent.parent.parent.destroy()
			game.players[event.player_index].opened = global.current_entity[event.player_index]
			global.scipt_opening_gui = true
			global.current_entity[event.player_index] = nil
			global.slaughterhouse_gui_open = false
			log('set recipe')
		end
	end
)
]]--
local function create_slaughterhouse_recipe_gui(event)
	local slaughterhouse_recipe_gui = event.element.parent
	local button_name = event.element.name
	slaughterhouse_recipe_gui.clear()
	slaughterhouse_recipe_gui.add({type = "frame", name = "recipe_selection_frame", caption = "Select Recipe"})
	slaughterhouse_recipe_gui.recipe_selection_frame.add(
		{type = "sprite-button", name = "slaughterhouse_back", sprite = "utility/left_arrow"}
	)
	slaughterhouse_recipe_gui.recipe_selection_frame.add({type = "table", name = "recipe_table", column_count = 5})
	for _, recipe in pairs(game.players[event.player_index].force.recipes) do
		if
			string.match(recipe.category, "slaughterhouse") and string.match(recipe.category, button_name) and
				recipe.enabled == true
		 then
			--[[
			slaughterhouse_recipe_gui.recipe_selection_frame.recipe_table.add(
				{
					type = "sprite-button",
					name = "recipe-menu_" .. recipe.name,
					sprite = "recipe/" .. recipe.name,
					style = "recipe_slot_button",
					tooltip = recipe.localised_name
				}
			)
			]]--
			slaughterhouse_recipe_gui.recipe_selection_frame.recipe_table.add(
				{
					type = "choose-elem-button",
					name = "recipe-menu_" .. recipe.name,
					elem_type = 'recipe',
					recipe = recipe.name,
					style = "recipe_slot_button",
					--tooltip = recipe.localised_name .. 'elem test'
				}
			)
		end
	end
end

script.on_event(
	defines.events.on_gui_click,
	function(event)
		--log(event.element.name)
		--log(string.match(event.element.name, 'recipe%-menu'))
		if event.element.name == "caravan_close" then
			caravangui.destroy()
			hascarguiopen = false
			lastclickedunit = {}
		elseif event.element.name == "slaughterhouse_close" then
			slaughterhouse_gui.destroy()
			global.slaughterhouse_gui_open = false
		elseif event.element.parent ~= nil and event.element.parent.name == "s_table" then
			create_slaughterhouse_recipe_gui(event)
		elseif event.element.name == "slaughterhouse_back" then
			--log(event.element.parent.name)
			--log(event.element.parent.parent.name)
			--log(event.element.parent.parent.parent.name)
			local elem_p2 = event.element.parent.parent.parent
			event.element.parent.parent.destroy()
			create_slaughterhouse_animal_table(elem_p2, event.player_index)
		elseif string.match(event.element.name, "recipe%-menu") ~= nil then
			--log(serpent.block(global.current_entity))
			--log('hit')
			local entity = global.current_entity[event.player_index]
			--log(serpent.block(global.current_entity))
			--log(serpent.block(global.current_entity[event.player_index]))
			--log(entity.name)
			--log(serpent.block(entity))
			--log(serpent.block(global.current_entity))
			entity.set_recipe(string.match(event.element.name, "%_(.*)"))
			event.element.parent.parent.parent.parent.destroy()
			game.players[event.player_index].opened = global.current_entity[event.player_index]
			global.current_entity[event.player_index] = nil
			global.slaughterhouse_gui_open = false
			--log('set recipe')
		elseif event.element.name == "fh_accept_button" and global.has_built_first_farm == false then
			farm_help_gui.destroy()
			global.has_built_first_farm = true
			global.farm_help_message_open = false
		--elseif event.element.name == 'cloud_chest_close' then
			--global.pycloud.current_chest = ''
			--local player = game.players[event.player_index]
			--player.gui.screen.chest_menu.destroy()
		end
	end
)

script.on_event(
	defines.events.on_gui_closed,
	function(event)
		if event.entity ~= nil then
			--log(event.entity.name)
			if event.entity.name == "outpost" then
				outpostgui.destroy()
			end
		end
		if event.entity ~= nil and string.match(event.entity.name, "slaughterhouse") and global.watch_slaughterhouse == true then
			--log('hit')
			global.watch_slaughterhouse = false
		--global.current_entity[event.player_index] = nil
		end
		if event.entity ~= nil and event.entity.name == 'pydrive' then
			local player = game.players[event.player_index]
			if player.gui.screen.chest_menu ~= nil then
				player.gui.screen.chest_menu.destroy()
				global.pycloud.current_chest = ''
			end
		end
	end
)

script.on_event(
	defines.events.on_rocket_launched,
	function(event)
		if event.rocket_silo.name == "mega-farm" then
			--log(serpent.block(event))
			--log(serpent.block(event.rocket.get_inventory(defines.inventory.rocket).get_contents()))

			local item = event.rocket.get_inventory(defines.inventory.rocket).get_contents()
			local items = {}

			for k in pairs(item) do
				items["item1"] = k
			end
			--log(items['item1'])
			--log(serpent.block(item))

			local rs = event.rocket_silo

			for _, farm in pairs(farms) do
				--log(serpent.block(farm))
				if items["item1"] == farm.seed then
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
							if game.surfaces["nauvis"].find_entity(farm.crop, {rpos.x + posx, (rpos.y - 15) + posy}) == nil then
								game.surfaces["nauvis"].create_entity {
									name = farm.crop,
									position = {rpos.x + posx, (rpos.y - 15) + posy},
									amount = output[rs.get_recipe().name]
								}
							else
								local ore = game.surfaces["nauvis"].find_entity(farm.crop, {rpos.x + posx, (rpos.y - 15) + posy})
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
			local harvesters =
				game.surfaces["nauvis"].find_entities_filtered {
				area = {{rpos.x - 11, (rpos.y - 15) - 11}, {rpos.x + 11, (rpos.y - 15) + 11}},
				name = {"harvester", "collector"}
			}
			for _, har in pairs(harvesters) do
				har.update_connections()
			end
		end
	end
)

local function create_caravan_gui(event, entity)
	--log('did a thing')
	--log(serpent.block(outpost_table))
	local player = game.players[event.player_index]
	caravangui = player.gui.center.add({type = "frame", name = "caravan_frame_left", direction = "horizontal"})
	caravangui.add({type = "table", name = "ctable", column_count = 1})
	local caption
	if
		caravanroutes[entity.unit_number] ~= nil and caravanroutes[entity.unit_number].startpoint.id ~= nil and
			global.outpost_names[caravanroutes[entity.unit_number].startpoint.id] ~= nil
	 then
		caption = "Route Start: " .. global.outpost_names[caravanroutes[entity.unit_number].startpoint.id]
	else
		caption = "Route Start: "
	end
	caravangui.ctable.add({type = "frame", name = "route_frame", direction = "vertical", caption = caption})
	local names = {}
	 --
	--[[
		for n, name in pairs(global.outpost_table) do
			table.insert(names, n)
		end
		]] for n, name in pairs(
		global.outpost_names
	) do
		table.insert(names, name)
		global.outpost_numbers[name] = n
	end
	caravangui.ctable.route_frame.add({type = "drop-down", name = "outpost-list", items = names})
	if
		caravanroutes[entity.unit_number] ~= nil and caravanroutes[entity.unit_number].endpoint.id ~= nil and
			global.outpost_names[caravanroutes[entity.unit_number].endpoint.id] ~= nil
	 then
		caption = "Route End: " .. global.outpost_names[caravanroutes[entity.unit_number].endpoint.id]
	else
		caption = "Route End: "
	end
	caravangui.ctable.add({type = "frame", name = "route_frame_2", direction = "vertical", caption = caption})
	caravangui.ctable.route_frame_2.add({type = "drop-down", name = "outpost-list-2", items = names})

	caravangui.add({type = "frame", name = "caravan_frame_center", direction = "vertical", caption = "current inventory"})
	if caravanroutes[entity.unit_number] ~= nil and caravanroutes[entity.unit_number].inventory.hasitem == true then
		caravangui.caravan_frame_center.add(
			{
				type = "sprite-button",
				name = "inventory",
				sprite = "item/" .. caravanroutes[entity.unit_number].inventory.item,
				number = caravanroutes[entity.unit_number].inventory.stackamount
			}
		)
	else
		caravangui.caravan_frame_center.add({type = "sprite-button", name = "inventory"})
	end
	caravangui.add({type = "frame", name = "caravan_frame_right", direction = "vertical", caption = "Location"})
	caravangui.caravan_frame_right.add({type = "minimap", name = "minimap", position = entity.position})
	caravangui.add({type = "sprite-button", name = "caravan_close", sprite = "utility/close_fat"})
	hascarguiopen = true
end

local function create_nuka_caravan_gui(event)
	--log('did a thing')
	--log(serpent.block(outpost_table))
	local player = game.players[event.player_index]
	caravangui = player.gui.center.add({type = "frame", name = "nuka_caravan_frame_left", direction = "horizontal"})
	caravangui.add({type = "table", name = "ctable", column_count = 1})
	caravangui.ctable.add({type = "frame", name = "route_frame_2", direction = "vertical"})
	caravangui.ctable.route_frame_2.add({type = "drop-down", name = "destination", items = {'exterminatus'}})

	caravangui.add({type = "sprite-button", name = "caravan_close", sprite = "utility/close_fat"})
end

script.on_event(
	defines.events.on_player_selected_area,
	function(event)
		caravanroutes = global.caravanroutes

		if event.item == "unit-controller" then
			for _, ent in pairs(event.entities) do
				--log(serpent.block(ent.name))
				--log('did a thing here')
				if ent.name == "caravan" and hascarguiopen == false then
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
							item = "",
							stackamount = 0,
							hasitem = false
						}
					}
					if caravanroutes[next(lastclickedunit)] == nil or caravanroutes[next(lastclickedunit)].hasroute ~= true then
						caravanroutes[next(lastclickedunit)] = newroute
					end
				--lastclickedunit = {}
				--log(serpent.block(lastclickedunit))
				elseif ent.name == 'nuka-caravan' then
					create_nuka_caravan_gui(event, ent)
					lastclickedunit[ent.unit_number] = ent
					--log(serpent.block(lastclickedunit))
				end
			end
		end

		global.caravanroutes = caravanroutes
	end
)

--added 3d trees to bio reserve and remove depleted resource trees
script.on_event(
	defines.events.on_resource_depleted,
	function(event)
		local resourcetrees =
			game.surfaces["nauvis"].find_entities_filtered {
			position = event.entity.position,
			name = event.entity.name .. "-fake"
		} --, type='tree'}
		--log(serpent.block(resourcetrees))
		--log(serpent.block(resourcetrees.name))
		for _, tree in pairs(resourcetrees) do
			--log(serpent.block(resourcetrees))
			--log(serpent.block(resourcetrees.name))
			tree.destroy()
		end
	end
)

script.on_event(
	defines.events.on_player_cursor_stack_changed,
	function(event)
		--log('hit')
		if
			game.players[event.player_index].cursor_stack ~= nil and
				game.players[event.player_index].cursor_stack.valid_for_read == true
		 then
			--log(game.players[event.player_index].cursor_stack)
			--log(game.players[event.player_index].cursor_stack.valid)
			--log(game.players[event.player_index].cursor_stack.valid_for_read)
			local cursor_item = game.players[event.player_index].cursor_stack.name
			--log(cursor_item)
			if cursor_item == "lb-requester-chest" or cursor_item == "lb-provider-chest" then
				global.logistics_square =
					rendering.draw_rectangle {
					color = {r = 255, g = 165, b = 0, a = 0.75},
					filled = true,
					left_top = {-30, -30},
					right_bottom = {30, 30},
					surface = "nauvis",
					draw_on_ground = true
				}
				global.has_drawn_square = true
			end
		elseif game.players[event.player_index].cursor_stack.valid_for_read == false and global.has_drawn_square == true then
			rendering.destroy(global.logistics_square)
		end
	end
)

script.on_event(
	defines.events.on_player_used_capsule,
	function(event)
		if event.item.name == "energy-drink" then
			game.players[event.player_index].character_running_speed_modifier = 5
		end
	end
)

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
					if effect.type == "unlock-recipe" then
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
	end
)
