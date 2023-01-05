require 'scripts/lib'
require 'scripts/caravan/caravan'
require 'scripts/digosaurus/digosaurus'
require 'scripts/oculua'
require 'scripts/farming'

local bio_list = require('prototypes/items/biomass-convertion')

remote.add_interface('data_puller', {order_biolist = function()
    local bio = global.compostables.og_list
        local name_table = {}
        local input_table = {}
        local output_table = {}
        for i, item in pairs(bio) do
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
        table.sort(name_table)
        for k, v in pairs(input_table) do table.sort(v) end
        for k, v in pairs(output_table) do table.sort(v) end
        return bio, name_table, input_table, output_table
    end
})

local farms = {
	farm1 = require('scripts/smart-farm/farm-ralesia'),
	farm2 = require('scripts/smart-farm/farm-rennea'),
	farm3 = require('scripts/smart-farm/farm-tuuphra'),
	farm4 = require('scripts/smart-farm/farm-grod'),
	farm5 = require('scripts/smart-farm/farm-yotoi'),
	farm6 = require('scripts/smart-farm/farm-kicalk'),
	farm7 = require('scripts/smart-farm/farm-arum'),
	farm8 = require('scripts/smart-farm/farm-yotoi-fruit'),
	farm9 = require('scripts/smart-farm/farm-bioreserve')
}

if script.active_mods['pyalternativeenergy'] then
    farms['farm10'] = require('__pyalternativeenergy__/scripts/crops/farm-mova')
end

local function create_sh_animal_table(sh_gui, player)
	local animals = {
		'auog',
		'ulric',
		'mukmoux',
		'arthurian',
		'cottongut',
		'dhilmos',
		'scrondrix',
		'phadai',
		'fish',
		'phagnot',
		'kmauts',
		'dingrits',
		'xeno',
		'arqad',
		'cridren',
		'antelope',
		'trits',
		'vonix',
		'vrauks',
		'xyhiphoe',
		'zipir',
		'korlex',
		'simik',
	}
    if script.active_mods['pyalternativeenergy'] then
        table.insert(animals, 'zungror')
        table.insert(animals, 'numal')
    end
	local sg_table = sh_gui
	sg_table.add({type = 'table', name = 's_table', column_count = 6})
	for _, recipe in pairs(player.force.recipes) do
		if string.match(recipe.category, 'slaughterhouse') then
			for _, animal in pairs(animals) do
				if string.match(recipe.category, animal) and recipe.enabled == true then
					if next(sg_table.s_table.children) ~= nil then
						local child_list = {}
						for _, child in pairs(sg_table.s_table.children) do
							child_list[child.name] = true
						end
						if child_list[animal] == nil then
							if animal == 'zipir' then
								sg_table.s_table.add(
									{
										type = 'choose-elem-button',
										name = animal,
										elem_type = 'item',
										item = animal .. '1',
										style = 'image_tab_slot',
									}
								)
							else
								sg_table.s_table.add(
									{
										type = 'choose-elem-button',
										name = animal,
										elem_type = 'item',
										item = animal,
										style = 'image_tab_slot',
									}
								)
							end
						end
					elseif next(sg_table.s_table.children) == nil then
                        if animal == 'zipir' then
                            sg_table.s_table.add(
                                {
                                    type = 'choose-elem-button',
                                    name = animal,
                                    elem_type = 'item',
                                    item = animal .. '1',
                                    style = 'image_tab_slot',
                                }
                            )
                        else
                            sg_table.s_table.add(
                                {
                                    type = 'choose-elem-button',
                                    name = animal,
                                    elem_type = 'item',
                                    item = animal,
                                    style = 'image_tab_slot',
                                }
                            )
                        end
					end
				end
			end
		end
	end
end

local sh_gui

local function create_slaughterhouse_gui(event)
    local player = game.players[event.player_index]
    sh_gui = player.gui.screen.add(
        {
            type = 'frame',
            name = 'recipe_menu',
            direction = 'vertical',
            caption = {'slaughterhouse_gui.gui_title'},
            style = 'inner_frame_in_outer_frame'
        }
    )
    sh_gui.add(
        {
            type = 'sprite-button',
            name = 'slaughterhouse_close',
            sprite = 'utility/close_fat'
        }
    )
    sh_gui.force_auto_center()
    create_sh_animal_table(sh_gui, player)
    global.slaughterhouse_gui_open = true
end

local function init_discoscience()
    if remote.interfaces['DiscoScience'] and remote.interfaces['DiscoScience']['setIngredientColor'] then
        remote.call('DiscoScience', 'setIngredientColor', 'py-science-pack-1', {r = 178, g = 88, b = 1})
        remote.call('DiscoScience', 'setIngredientColor', 'py-science-pack-2', {r = 246, g = 125, b = 45})
        remote.call('DiscoScience', 'setIngredientColor', 'py-science-pack-3', {r = 213, g = 134, b = 23})
        remote.call('DiscoScience', 'setIngredientColor', 'py-science-pack-4', {r = 192, g = 75, b = 23})
        remote.call('DiscoScience', 'setIngredientColor', 'automation-secience-pack', {r = 158, g = 129, b = 100})
    end
end

script.on_load(function()

end)

local function init()
    --slaughterhouse
    global.current_entity = global.current_entity or {}
	global.slaughterhouse_gui_open = global.slaughterhouse_gui_open or false
	global.watch_slaughterhouse = global.watch_slaughterhouse or false
	global.watched_slaughterhouse = global.watched_slaughterhouse or {
		entity = {},
	    player = ''
	}

    --wiki info
    global.compostables = global.compostables or {
        og_list = bio_list,
        name_order = {},
        input_order = {},
        output_order = {}
    }

    global.vatbrains = global.vatbrains or {}

    init_discoscience()

    Caravan.events.init()
    Digosaurus.events.init()
    Oculua.events.on_init()
    Farming.events.on_init()
end

script.on_init(function()
    init()
    if remote.interfaces['freeplay'] then
        local created_items = remote.call("freeplay", "get_created_items")
	if created_items then
            created_items["firearm-magazine"] = 500
            remote.call("freeplay", "set_created_items", created_items)
	end

        local ship_items = remote.call('freeplay', 'get_ship_items')
        ship_items['iron-chest'] = 5
        remote.call('freeplay', 'set_ship_items', ship_items)
    end
end)
script.on_configuration_changed(init)

local on_built = {defines.events.on_built_entity, defines.events.on_robot_built_entity, defines.events.script_raised_revive, defines.events.script_raised_built}
script.on_event(on_built, function(event)
    Oculua.events.on_built(event)
    Caravan.events.on_built(event)
    Digosaurus.events.on_built(event)
    Farming.events.on_built(event)

    local E = event.created_entity or event.entity

    if E.name == 'mega-farm' then
        --script for placing down the farm
        local posx = -13
        local posy = -13
        local rpos = E.position
        repeat
            if posx == -13 or posy == -13 or posx == 13 or posy == 13 then
                E.surface.create_entity {
                    name = 'wood-fence',
                    position = {rpos.x + posx, (rpos.y - 15) + posy},
                    force = E.force
                }
            end
            --create landfill
            E.surface.set_tiles{{name = 'landfill', position = {rpos.x + posx, (rpos.y - 15) + posy}}}

            posx = posx + 1
            if posx == 14 then
                posx = -13
                posy = posy + 1
            end
        until posy == 14
    end
end)

script.on_event(defines.events.on_ai_command_completed, function(event)
    Caravan.events.ai_command_completed(event)
    Digosaurus.events.on_ai_command_completed(event)
    Oculua.events.on_ai_command_completed(event)
end)

script.on_event(defines.events.on_tick, function()
    if global.watch_slaughterhouse == true then
        if global.watched_slaughterhouse.entity.valid and global.watched_slaughterhouse.entity.get_recipe() == nil then
            if global.slaughterhouse_gui_open == false then
                table.insert(global.current_entity, global.watched_slaughterhouse.player)
                global.current_entity[global.watched_slaughterhouse.player] = global.watched_slaughterhouse.entity
                game.players[global.watched_slaughterhouse.player].opened = nil
                local event = {
                    player_index = global.watched_slaughterhouse.player,
                    entity = global.watched_slaughterhouse.entity
                }
                create_slaughterhouse_gui(event)
            end
        end
    end
end)

local on_destroyed = {defines.events.on_player_mined_entity, defines.events.on_robot_mined_entity, defines.events.script_raised_destroy, defines.events.on_entity_died}
script.on_event(on_destroyed, function(event)
    Caravan.events.on_destroyed(event)
    Digosaurus.events.on_destroyed(event)
    Oculua.events.on_destroyed(event)
end)

script.on_event(defines.events.on_gui_opened, function(event)
    Oculua.events.on_gui_opened(event)
    Digosaurus.events.on_gui_opened(event)

    if event.entity then
        if string.match(event.entity.name, 'slaughterhouse') and event.entity.get_recipe() == nil and
            global.slaughterhouse_gui_open == false then
            table.insert(global.current_entity, event.player_index)
            global.current_entity[event.player_index] = event.entity
            game.players[event.player_index].opened = nil
            create_slaughterhouse_gui(event)
        elseif string.match(event.entity.name, 'slaughterhouse') and event.entity.get_recipe() == nil and global.slaughterhouse_gui_open then
            game.players[event.player_index].opened = nil
        elseif string.match(event.entity.name, 'slaughterhouse') and event.entity.get_recipe() then
            global.watch_slaughterhouse = true
            global.watched_slaughterhouse.entity = event.entity
            global.watched_slaughterhouse.player = event.player_index
        end
    end
end)

local function create_slaughterhouse_recipe_gui(event)
	local slaughterhouse_recipe_gui = event.element.parent
	local button_name = event.element.name
	slaughterhouse_recipe_gui.clear()
	slaughterhouse_recipe_gui.add({type = 'frame', name = 'recipe_selection_frame', caption = 'Select Recipe'})
	slaughterhouse_recipe_gui.recipe_selection_frame.add{type = 'sprite-button', name = 'slaughterhouse_back', sprite = 'utility/left_arrow'}
	slaughterhouse_recipe_gui.recipe_selection_frame.add({type = 'table', name = 'recipe_table', column_count = 5})
	for _, recipe in pairs(game.players[event.player_index].force.recipes) do
		if string.match(recipe.category, 'slaughterhouse') and string.match(recipe.category, button_name) and recipe.enabled then
			slaughterhouse_recipe_gui.recipe_selection_frame.recipe_table.add{
                type = 'choose-elem-button',
                name = 'recipe-menu_' .. recipe.name,
                elem_type = 'recipe',
                recipe = recipe.name,
                style = 'recipe_slot_button'
			}
		end
	end
end

script.on_event(defines.events.on_gui_click, function(event)
    if event.element.name == 'slaughterhouse_close' then
        sh_gui.destroy()
        global.slaughterhouse_gui_open = false
    elseif event.element.parent ~= nil and event.element.parent.name == 's_table' then
        create_slaughterhouse_recipe_gui(event)
    elseif event.element.name == 'slaughterhouse_back' then
        local player = game.players[event.player_index]
        local elem_p2 = event.element.parent.parent.parent
        event.element.parent.parent.destroy()
        create_sh_animal_table(elem_p2, player)
    elseif string.match(event.element.name, 'recipe%-menu') ~= nil then
        local entity = global.current_entity[event.player_index]
        entity.set_recipe(string.match(event.element.name, '%_(.*)'))
        event.element.parent.parent.parent.parent.destroy()
        game.players[event.player_index].opened = global.current_entity[event.player_index]
        global.current_entity[event.player_index] = nil
        global.slaughterhouse_gui_open = false
    end
    process_gui_event(event)
end)

script.on_event({defines.events.on_gui_closed, defines.events.on_player_changed_surface}, function(event)
    Caravan.events.close_gui(event)
    Digosaurus.events.close_gui(event)

    if event.entity ~= nil and string.match(event.entity.name, 'slaughterhouse') and global.watch_slaughterhouse == true then
        global.watch_slaughterhouse = false
    end
end)

script.on_event(defines.events.on_rocket_launched, function(event)
    if event.rocket_silo.name == 'mega-farm' then
        local item = event.rocket.get_inventory(defines.inventory.rocket).get_contents()
        local items = {}

        for k in pairs(item) do
            items['item1'] = k
        end

        local rs = event.rocket_silo
        local surface = rs.surface

        for _, farm in pairs(farms) do
            if items['item1'] == farm.seed then
                local recipes = {}
                local output = {}
                for _, recipe in pairs(farm.recipes) do
                    recipes[recipe.recipe_name] = true
                    output[recipe.recipe_name] = recipe.crop_output
                end
                if recipes[rs.get_recipe().name] == true then
                    local posx = -11
                    local posy = -11
                    local rpos = event.rocket_silo.position
                    repeat
                        if surface.find_entity(farm.crop, {rpos.x + posx, (rpos.y - 15) + posy}) == nil then
                            surface.create_entity {
                                name = farm.crop,
                                position = {rpos.x + posx, (rpos.y - 15) + posy},
                                amount = output[rs.get_recipe().name]
                            }
                        else
                            local ore = surface.find_entity(farm.crop, {rpos.x + posx, (rpos.y - 15) + posy})
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
            surface.find_entities_filtered {
            area = {{rpos.x - 11, (rpos.y - 15) - 11}, {rpos.x + 11, (rpos.y - 15) + 11}},
            name = {'harvester', 'collector'}
        }
        for _, har in pairs(harvesters) do
            har.update_connections()
        end
    end
end)

script.on_event(defines.events.on_player_used_capsule, function(event)
    Caravan.events.used_capsule(event)
end)

script.on_event(defines.events.on_entity_destroyed, function(event)
	Caravan.events.on_entity_destroyed(event)
	Farming.events.on_entity_destroyed(event)
end)

script.on_nth_tick(60, function()
    Caravan.events[60]()
    Digosaurus.events[60]()
end)

script.on_nth_tick(121, Farming.events[121])
script.on_nth_tick(30, Farming.events[30])
script.on_nth_tick(221, Oculua.events[221])

script.on_nth_tick(4, function()
    for _, player in pairs(game.connected_players) do
		local gui = player.gui.relative.digosaurus_gui
		if gui then Digosaurus.update_gui(gui); goto continue end
        gui = Caravan.get_caravan_gui(player)
        if gui then Caravan.update_gui(gui, true) end
        ::continue::
	end
end)

script.on_event(defines.events.on_entity_settings_pasted, Caravan.events.on_entity_settings_pasted)
