require 'scripts/caravan/caravan'
require 'scripts/digosaurus/digosaurus'

local bio_list = require('prototypes/items/biomass-convertion')

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

local farms = {
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

if script.active_mods['pyalternativeenergy'] then
    local farm10 = require('__pyalternativeenergy__/scripts/crops/farm-mova')
    table.insert(farms, farm10)
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
								sg_table.s_table.add(
									{
										type = 'choose-elem-button',
										name = animal,
										elem_type = 'item',
										item = animal .. '1',
										style = 'image_tab_slot',
										--tooltip = animal
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
										--tooltip = animal
									}
								)
							end
						end
					elseif next(sg_table.s_table.children) == nil then
						--log('hit')
                        if animal == 'zipir' then
                            sg_table.s_table.add(
                                {
                                    type = 'choose-elem-button',
                                    name = animal,
                                    elem_type = 'item',
                                    item = animal .. '1',
                                    style = 'image_tab_slot',
                                    --tooltip = animal
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
                                    --tooltip = animal
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

local farm_buildings = {
    'antelope',
    'arqad',
    'arthurian',
    'auog',
    'bhoddos',
    'cadaveric',
    'cridren',
    'dhilmos',
    'dingrits',
    'fawogae',
    'fish',
    'fwf',
    'grod',
    'guar',
    'kicalk',
    'kmauts',
    'moondrop',
    'moss',
    'mukmoux',
    'navens',
    'phadai',
    'phagnot',
    'prandium',
    'ralesia',
    'ranch',
    'rc%-mk',
    'rennea',
    'sap',
    'scrondrix',
    'seaweed',
    'seaweed',
    'simik',
    'simik',
    'sponge',
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
}

if script.active_mods['pyalternativeenergy'] then
    table.insert(farm_buildings
    , 'zungror')
    table.insert(farm_buildings, 'numal')
end

local animal_farm_buildings = {
	['antelope'] = true,
	['arqad'] = true,
	['arthurian'] = true,
	['auog'] = true,
	['cridren'] = true,
	['dhilmos'] = true,
	['dingrits'] = true,
	['fish'] = true,
	['kmauts'] = true,
	['mukmoux'] = true,
	['phadai'] = true,
	['phagnot'] = true,
	['prandium'] = true,
	['ranch'] = true,
	['rc-mk'] = true,
	['scrondrix'] = true,
	['simik'] = true,
	['trits'] = true,
	['ulric'] = true,
	['vonix'] = true,
	['vrauks'] = true,
	['xenopen'] = true,
	['xyhiphoe'] = true,
	['zipir'] = true,
}

if script.active_mods['pyalternativeenergy'] then
    animal_farm_buildings['zungror'] = true
    animal_farm_buildings['numal'] = true
end

local plant_farm_buildings = {
	['cadaveric'] = true,
	['fwf'] = true,
	['grod'] = true,
	['guar'] = true,
	['kicalk'] = true,
	['moondrop'] = true,
	['moss'] = true,
	['ralesia'] = true,
	['rennea'] = true,
	['sap'] = true,
	['seaweed'] = true,
	['sponge'] = true,
	['tuuphra'] = true,
	['yotoi'] = true,
}

local fungus_farm_buildings = {
	['bhoddos'] = true,
	['fawogae'] = true,
	['navens'] = true,
	['yaedols'] = true,
}

--add building to global list and disable it on placement
local function disable_machine(entity)
    local E = entity
    global.total_farm_count = global.total_farm_count+1
    global.farms[E.unit_number] = E
    global.indexed_farm_list[global.total_farm_count] = E.unit_number
    E.active = false
    local stopsign
    local signtype
    if global.farm_rendered_icons[E.unit_number] == nil then
        for f,farm in pairs(farm_buildings) do
            if animal_farm_buildings[string.match(E.name, farm)] then
                signtype = 'animal'
            elseif plant_farm_buildings[string.match(E.name, farm)] then
                signtype = 'plant'
            elseif fungus_farm_buildings[string.match(E.name, farm)] then
                signtype = 'fungi'
            end
        end
        stopsign = rendering.draw_sprite{
            sprite = 'no_module_' .. signtype,
            render_layer = '188',
            target = E.position,
            surface = E.surface.name
        }
        global.farm_rendered_icons[E.unit_number] = stopsign
    end
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

    --farm buildings
    global.farms = global.farms or {}
    global.indexed_farm_list = global.indexed_farm_list or {}
    global.total_farm_count = global.total_farm_count or 0
    global.checked_farm_counter = global.checked_farm_counter or 1
    global.farm_rendered_icons = global.farm_rendered_icons or {}

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
end

script.on_init(function()
    init()
    if remote.interfaces['freeplay'] then
        local ship_items = remote.call('freeplay', 'get_ship_items')
        ship_items['iron-chest'] = 5
        remote.call('freeplay', 'set_ship_items', ship_items)
    end
end)

script.on_configuration_changed(function()
    init()
    rendering.clear('pyalienlife')

    for _, entity in pairs(game.surfaces['nauvis'].find_entities_filtered{type = 'assembling-machine'}) do
        if string.match(entity.name, farm) then
            disable_machine(entity)
        end
    end
end)

local on_built = {defines.events.on_built_entity, defines.events.on_robot_built_entity, defines.events.script_raised_revive, defines.events.script_raised_built}
script.on_event(on_built, function(event)
    Caravan.events.on_built(event)
    Digosaurus.events.on_built(event)

    local E = event.created_entity or event.entity

    if string.match(E.name, 'numal%-reef') and not string.match(E.name, 'placer') then
        disable_machine(E)
    elseif E.name == 'mega-farm' then
        --script for placing down the farm
        local posx = -13
        local posy = -13
        local rpos = E.position
        repeat
            --log(posx)
            --log(posy)
            if posx == -13 or posy == -13 or posx == 13 or posy == 13 then
                game.surfaces['nauvis'].create_entity {
                    name = 'wood-fence',
                    position = {rpos.x + posx, (rpos.y - 15) + posy},
                    force = E.force
                }
            end
            --create landfill
            game.surfaces['nauvis'].set_tiles {{name = 'landfill', position = {rpos.x + posx, (rpos.y - 15) + posy}}}

            posx = posx + 1
            if posx == 14 then
                posx = -13
                posy = posy + 1
            end
        until posy == 14
    --[[elseif E.name == 'vat-brain' then
        log('hit')
        local beacon = game.surfaces['nauvis'].create_entity{
            name = 'hidden-beacon',
            position = E.position,
            force = E.force,
        }
        log(beacon.position)
        local module_slot = beacon.get_inventory(defines.inventory.beacon_modules)
        local module = module_slot.insert({name = 'vatbrain-1', count = 1})]]--
    else
        for f, farm in pairs(farm_buildings) do
            if string.match(E.name, farm) and string.match(E.name, 'boiler') == nil then
                disable_machine(E)
            end
        end
    end
end)

script.on_event(defines.events.on_ai_command_completed, function(event)
    Caravan.events.ai_command_completed(event)
    Digosaurus.events.on_ai_command_completed(event)
end)

script.on_event(defines.events.on_tick, function()
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
    local fcount = global.indexed_farm_list
    local last = global.total_farm_count
    if next(fcount) ~= nil and last > 0 then
        local start_num = global.checked_farm_counter
        for i = global.checked_farm_counter, last do
            local farm = global.farms[fcount[i]]
            local icon = global.farm_rendered_icons
            if farm ~= nil then
                if farm.valid == false then
                    if icon[fcount[i]] ~= nil then
                        rendering.destroy(icon[fcount[i]])
                        icon[fcount[i]] = nil
                    end
                    farm = nil
                elseif farm.valid == true then
                    if farm.get_module_inventory().is_empty() == false then
                        farm.active = true
                        if icon[fcount[i]] ~= nil then
                            rendering.destroy(icon[fcount[i]])
                            icon[fcount[i]] = nil
                        end
                    elseif farm.get_module_inventory().is_empty() == true then
                        --log(serpent.block(global.indexed_farm_list))
                        local E = farm
                        E.active = false
                        local stopsign
                        local signtype
                        if global.farm_rendered_icons[E.unit_number] == nil then
                            for f,farm_building in pairs(farm_buildings) do
                                if animal_farm_buildings[string.match(E.name, farm_building)] then
                                    signtype = 'animal'
                                elseif plant_farm_buildings[string.match(E.name, farm_building)] then
                                    signtype = 'plant'
                                elseif fungus_farm_buildings[string.match(E.name, farm_building)] then
                                    signtype = 'fungi'
                                end
                            end
                            stopsign = rendering.draw_sprite{
                                sprite = 'no_module_' .. signtype,
                                render_layer = '188',
                                target = E.position,
                                surface = E.surface.name
                            }
                            global.farm_rendered_icons[E.unit_number] = stopsign
                        end
                    end
                end
            end
            if i == start_num + 9 then
                break
            end
        end
        global.checked_farm_counter = start_num + 9
        if global.checked_farm_counter > last + 10 then
            global.checked_farm_counter = 1
        end
    end
end)

local on_destroyed = {defines.events.on_player_mined_entity, defines.events.on_robot_mined_entity, defines.events.script_raised_destroy, defines.events.on_entity_died}
script.on_event(on_destroyed, function(event)
    Caravan.events.on_destroyed(event)
    Digosaurus.events.on_destroyed(event)

    local E = event.entity
    if global.farms[E.unit_number] ~= nil then
        global.farms[E.unit_number] = nil
        if global.farm_rendered_icons[E.unit_number] ~= nil then
            if rendering.is_valid(global.farm_rendered_icons[E.unit_number]) == false then
                global.farm_rendered_icons[E.unit_number] = nil
            elseif rendering.is_valid(global.farm_rendered_icons[E.unit_number]) == true then
                rendering.destroy(global.farm_rendered_icons[E.unit_number])
                global.farm_rendered_icons[E.unit_number] = nil
            end
        end
    end
end)

script.on_event(defines.events.on_gui_opened, function(event)
    Digosaurus.events.on_gui_opened(event)

    local E = event
    local p_index = event.player_index
    local player = game.players[p_index]

    if E.entity ~= nil then
        if string.match(event.entity.name, 'slaughterhouse') and event.entity.get_recipe() == nil and
            global.slaughterhouse_gui_open == false then
            --log('hit')
            table.insert(global.current_entity, event.player_index)
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
    process_gui_event(event)
end)

script.on_event(defines.events.on_gui_switch_state_changed, function(event)
    if event.element.name == 'rp-switch' then
        if event.element.switch_state == 'left' then
            local frame = event.element.parent.add({
                type = 'frame',
                name = 'requestor_frame',
                style = 'invisible_frame',
                direction = 'vertical'
            })
            local table = frame.add({
                type = 'table',
                name = 'outpost_requests',
                column_count = 10
            })
            for i = 1, 20 do
                table.add({
                    type = 'choose-elem-button',
                    name = 'outpost_request_elem_' .. i,
                    elem_type = 'item'
                })
            end
            local flow = frame.add({
                type = 'flow',
                name = 'num_flow'
            })
            flow.add({
                type = 'slider',
                name = 'outpost_request_slider',
                minimum_value = 0,
                maximum_value = 1000000000,
                descrete_values = true
            })
            flow.add({
                type = 'textfield',
                name = 'outpost_request_slider_text',
                text = flow.outpost_request_slider.slider_value,
                numeric = true,
                lose_focus_on_confirm = true
            })
        elseif event.element.switch_state == 'right' then
            --asd
        end
    end
    process_gui_event(event)
end)

script.on_event(defines.events.on_gui_value_changed, function(event)
    if event.element.name == 'outpost_request_slider' then
        event.element.parent['outpost_request_slider_text'].text = tostring(event.element.slider_value)
        global.last_elem_selected.number = event.element.slider_value
    end
    process_gui_event(event)
end)

script.on_event(defines.events.on_gui_confirmed, function(event)
    process_gui_event(event)
end)

script.on_event(defines.events.on_gui_elem_changed, function(event)
    if string.match(event.element.name, 'outpost_request_elem_') ~= nil then
        --log(event.element.elem_value)
        local parent = event.element.parent
        local sp = parent.add({
            type = 'sprite-button',
            name = event.element.name .. '_value',
            sprite = 'item/' .. event.element.elem_value,
            number = 0,
            index = event.element.get_index_in_parent()
        })
        global.last_elem_selected = sp
        event.element.destroy()
    end
    process_gui_event(event)
end)

--[[
script.on_event(
	defines.events.on_gui_elem_changed,
	function(event)
		--log(event.element.name)
		if string.match(event.element.name, 'recipe%-menu') ~= nil then
			--log(serpent.block(global.current_entity))
			--log('hit')
			local entity = global.current_entity[event.player_index]
			--log(serpent.block(global.current_entity))
			--log(serpent.block(global.current_entity[event.player_index]))
			--log(entity.name)
			--log(serpent.block(entity))
			--log(serpent.block(global.current_entity))
			entity.set_recipe(string.match(event.element.name, '%_(.*)'))
			event.element.parent.parent.parent.parent.destroy()
			game.players[event.player_index].opened = global.current_entity[event.player_index]
			global.scipt_opening_gui = true
			global.current_entity[event.player_index] = nil
			global.slaughterhouse_gui_open = false
			--log('set recipe')
		end
	end
)
]]--
local function create_slaughterhouse_recipe_gui(event)
	local slaughterhouse_recipe_gui = event.element.parent
	local button_name = event.element.name
	slaughterhouse_recipe_gui.clear()
	slaughterhouse_recipe_gui.add({type = 'frame', name = 'recipe_selection_frame', caption = 'Select Recipe'})
	slaughterhouse_recipe_gui.recipe_selection_frame.add(
		{type = 'sprite-button', name = 'slaughterhouse_back', sprite = 'utility/left_arrow'}
	)
	slaughterhouse_recipe_gui.recipe_selection_frame.add({type = 'table', name = 'recipe_table', column_count = 5})
	for _, recipe in pairs(game.players[event.player_index].force.recipes) do
		if
			string.match(recipe.category, 'slaughterhouse') and string.match(recipe.category, button_name) and
				recipe.enabled == true
		 then
			--[[
			slaughterhouse_recipe_gui.recipe_selection_frame.recipe_table.add(
				{
					type = 'sprite-button',
					name = 'recipe-menu_' .. recipe.name,
					sprite = 'recipe/' .. recipe.name,
					style = 'recipe_slot_button',
					tooltip = recipe.localised_name
				}
			)
			]]--
			slaughterhouse_recipe_gui.recipe_selection_frame.recipe_table.add(
				{
					type = 'choose-elem-button',
					name = 'recipe-menu_' .. recipe.name,
					elem_type = 'recipe',
					recipe = recipe.name,
					style = 'recipe_slot_button',
					--tooltip = recipe.localised_name .. 'elem test'
				}
			)
		end
	end
end

script.on_event(defines.events.on_gui_click, function(event)
    if event.element.type == 'sprite-button' and string.match(event.element.name, 'outpost_request_elem_') ~= nil then
        event.element.parent.parent['num_flow']['outpost_request_slider'].slider_value = event.element.number
        event.element.parent.parent['num_flow']['outpost_request_slider_text'].text = tostring(event.element.number)
    elseif event.element.name == 'slaughterhouse_close' then
        sh_gui.destroy()
        global.slaughterhouse_gui_open = false
    elseif event.element.parent ~= nil and event.element.parent.name == 's_table' then
        create_slaughterhouse_recipe_gui(event)
    elseif event.element.name == 'slaughterhouse_back' then
        local player = game.players[event.player_index]
        --log(event.element.parent.name)
        --log(event.element.parent.parent.name)
        --log(event.element.parent.parent.parent.name)
        local elem_p2 = event.element.parent.parent.parent
        event.element.parent.parent.destroy()
        create_sh_animal_table(elem_p2, player)
    elseif string.match(event.element.name, 'recipe%-menu') ~= nil then
        --log(serpent.block(global.current_entity))
        --log('hit')
        local entity = global.current_entity[event.player_index]
        --log(serpent.block(global.current_entity))
        --log(serpent.block(global.current_entity[event.player_index]))
        --log(entity.name)
        --log(serpent.block(entity))
        --log(serpent.block(global.current_entity))
        entity.set_recipe(string.match(event.element.name, '%_(.*)'))
        event.element.parent.parent.parent.parent.destroy()
        game.players[event.player_index].opened = global.current_entity[event.player_index]
        global.current_entity[event.player_index] = nil
        global.slaughterhouse_gui_open = false
        --log('set recipe')
    end
    process_gui_event(event)
end)

script.on_event({defines.events.on_gui_closed, defines.events.on_player_changed_surface}, function(event)
    Caravan.events.close_gui(event)
    Digosaurus.events.close_gui(event)

    if event.entity ~= nil and string.match(event.entity.name, 'slaughterhouse') and global.watch_slaughterhouse == true then
        --log('hit')
        global.watch_slaughterhouse = false
    --global.current_entity[event.player_index] = nil
    end
end)

script.on_event(defines.events.on_gui_text_changed, function(event)
    if event.element.name == 'outpost_request_slider_text' then
        event.element.parent['outpost_request_slider'].slider_value = tonumber(event.element.text)
        global.last_elem_selected.number = tonumber(event.element.text)
    end
    process_gui_event(event)
end)

script.on_event(defines.events.on_rocket_launched, function(event)
    if event.rocket_silo.name == 'mega-farm' then
        local item = event.rocket.get_inventory(defines.inventory.rocket).get_contents()
        local items = {}

        for k in pairs(item) do
            items['item1'] = k
        end

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
                        if game.surfaces['nauvis'].find_entity(farm.crop, {rpos.x + posx, (rpos.y - 15) + posy}) == nil then
                            game.surfaces['nauvis'].create_entity {
                                name = farm.crop,
                                position = {rpos.x + posx, (rpos.y - 15) + posy},
                                amount = output[rs.get_recipe().name]
                            }
                        else
                            local ore = game.surfaces['nauvis'].find_entity(farm.crop, {rpos.x + posx, (rpos.y - 15) + posy})
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
            game.surfaces['nauvis'].find_entities_filtered {
            area = {{rpos.x - 11, (rpos.y - 15) - 11}, {rpos.x + 11, (rpos.y - 15) + 11}},
            name = {'harvester', 'collector'}
        }
        for _, har in pairs(harvesters) do
            har.update_connections()
        end
    end
end)

script.on_event(defines.events.on_player_selected_area, function(event)

end)

script.on_event(defines.events.on_resource_depleted, function(event)

end)

script.on_event(defines.events.on_player_cursor_stack_changed, function(event)

end)

script.on_event(defines.events.on_player_used_capsule, function(event)
    Caravan.events.used_capsule(event)
end)

script.on_event(defines.events.on_research_finished, function(event)

end)

--script.on_event('tech-upgrades', function(event)

--end)

script.on_event(defines.events.on_cutscene_cancelled, function(event)

end)

script.on_event(defines.events.on_selected_entity_changed, function(event)

end)

script.on_event(defines.events.on_entity_destroyed, function(event)
	Caravan.events.on_entity_destroyed(event)
end)

script.on_nth_tick(60, function()
    Caravan.events[60]()
    Digosaurus.events[60]()
end)

script.on_nth_tick(3, Digosaurus.events[3])