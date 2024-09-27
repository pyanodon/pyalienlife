Slaughterhouse = {}
Slaughterhouse.events = {}

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
if script.active_mods['pystellarexpedition'] then
    --table.insert(animals, 'tuls')
    --table.insert(animals, 'riga')
    table.insert(animals, 'kakkalakki')
end

local machines_with_gui = {
	['slaughterhouse-mk01'] = true,
	['slaughterhouse-mk02'] = true,
	['slaughterhouse-mk03'] = true,
	['slaughterhouse-mk04'] = true,
	['rc-mk01'] = true,
	['rc-mk02'] = true,
	['rc-mk03'] = true,
	['rc-mk04'] = true,
}

Slaughterhouse.events.on_object_destroyed = function(event)
	local unit_number = event.unit_number
	if not unit_number or not storage.opened_slaughterhouses[unit_number] then return end

	storage.opened_slaughterhouses[unit_number] = nil
	for _, player in pairs(game.players) do
		local gui = player.gui.screen.slaughterhouse
		if gui and gui.tags.entity == unit_number then gui.destroy() end
	end
end

function Slaughterhouse.create_slaughterhouse_gui(player_index, entity)
    local player = game.get_player(player_index)
	if not player then return end
    local main_frame = player.gui.screen.add{
		type = 'frame',
		name = 'slaughterhouse',
		direction = 'vertical',
		tags = {entity = entity.unit_number, categories = entity.prototype.crafting_categories, caption = {'slaughterhouse-gui.' .. entity.name}}
	}
    main_frame.force_auto_center()
	player.opened = main_frame
	local content_frame = main_frame.add{type = 'frame', name = 'content_frame', direction = 'vertical', style = 'inside_shallow_frame_with_padding'}
    content_frame.style.vertically_stretchable = true
    Slaughterhouse.build_animal_table(content_frame, player)
	storage.opened_slaughterhouses[entity.unit_number] = entity
	script.register_on_object_destroyed(entity)
	storage.watched_slaughterhouses[player_index] = nil
	storage.watch_slaughterhouse = not not next(storage.watched_slaughterhouses)
end

function Slaughterhouse.get_animal_item(animal)
	if animal == 'zipir' then
		return 'zipir1'
	elseif animal == 'kakkalakki' then
		return 'kakkalakki-f'
	end
	return animal
end

function Slaughterhouse.build_animal_table(content_frame, player)
	content_frame.clear()
	local main_frame = content_frame.parent
	main_frame.caption = main_frame.tags.caption
	local animal_table = content_frame.add{type = 'table', name = 's_table', column_count = 6}
	for _, recipe in pairs(player.force.recipes) do
		if recipe.enabled and main_frame.tags.categories[recipe.category] then
			for _, animal in pairs(animals) do
				if recipe.subgroup.name:match(animal, 1, true) then
					local name = 'py_slaughterhouse_animal_' .. animal
					if not animal_table[name] then
						animal_table.add{
							type = 'choose-elem-button',
							name = name,
							elem_type = 'item',
							item = Slaughterhouse.get_animal_item(animal),
							style = 'image_tab_slot',
							tags = {animal = animal}
						}
					end
                    goto continue
				end
			end
			game.print('ERROR: Recipe "' .. recipe.name .. '" has crafting category "' .. recipe.category .. '" but will be unselectable in the GUI')
			::continue::
		end
	end
end

Slaughterhouse.events.on_gui_opened = function(event)
	local entity = event.entity
	if not entity then return end
	if not string.match(entity.name, 'slaughterhouse%-') and not string.match(entity.name, 'rc%-') then return end

	if entity.get_recipe() then
		storage.watched_slaughterhouses[event.player_index] = entity
		storage.watch_slaughterhouse = true
	else
		Slaughterhouse.create_slaughterhouse_gui(event.player_index, entity)
	end
end

Slaughterhouse.events.on_gui_closed = function(event)
	if not storage.watched_slaughterhouses then return end
	local player = game.get_player(event.player_index)
	if event.gui_type == defines.gui_type.custom then
		local gui = player.gui.screen.slaughterhouse
		if gui then gui.destroy() end
	end
	storage.watched_slaughterhouses[event.player_index] = nil
	storage.watch_slaughterhouse = not not next(storage.watched_slaughterhouses)
end

function Slaughterhouse.set_recipe(player, entity, recipe)
	for item, count in pairs(entity.set_recipe(recipe)) do
		count = count - player.insert{name = item, count = count}
		if count > 0 then
			player.surface.spill_item_stack(player.position, {name = item, count = count}, true)
		end
	end
	player.opened = entity
end

gui_events[defines.events.on_gui_click]['py_slaughterhouse_animal_.+'] = function(event)
	local player = game.get_player(event.player_index)
	local element = event.element
	local content_frame = element.parent.parent
	local main_frame = content_frame.parent
	local animal = element.tags.animal
	content_frame.clear()
	main_frame.caption = {'slaughterhouse-gui.select-recipe'}
	local recipe_flow = content_frame.add{type = 'flow', direction = 'horizontal'}
	recipe_flow.add{type = 'sprite-button', name = 'py_slaughterhouse_back', sprite = 'utility/left_arrow'}
	local recipe_table = recipe_flow.add{type = 'table', column_count = 5}
	local recipe_count, avalible_recipe = 0, nil
	for _, recipe in pairs(player.force.recipes) do
		if main_frame.tags.categories[recipe.category] and string.match(recipe.subgroup.name, animal) and recipe.enabled then
			recipe_count, avalible_recipe = recipe_count + 1, recipe.name
			recipe_table.add{
                type = 'choose-elem-button',
                name = 'py_slaughterhouse_recipe_' .. recipe.name,
                elem_type = 'recipe',
                recipe = recipe.name,
                style = 'recipe_slot_button',
				tags = {recipe = recipe.name}
			}
		end
	end

	if recipe_count == 1 then
		local entity = storage.opened_slaughterhouses[main_frame.tags.entity]
		if not entity or not entity.valid then return end
		Slaughterhouse.set_recipe(player, entity, avalible_recipe)
	end
end

gui_events[defines.events.on_gui_click]['py_slaughterhouse_back'] = function(event)
	local player = game.players[event.player_index]
	local content_frame = event.element.parent.parent
	Slaughterhouse.build_animal_table(content_frame, player)
end

gui_events[defines.events.on_gui_click]['py_slaughterhouse_recipe_.+'] = function(event)
	local player = game.get_player(event.player_index)
	local element = event.element
	local main_frame = element.parent.parent.parent.parent
	local entity = storage.opened_slaughterhouses[main_frame.tags.entity]
	local recipe = element.tags.recipe
	if not entity or not entity.valid then return end
	Slaughterhouse.set_recipe(player, entity, recipe)
end

Slaughterhouse.events.on_init = function()
	storage.watched_slaughterhouses = storage.watched_slaughterhouses or {}
	storage.opened_slaughterhouses = storage.opened_slaughterhouses or {}
end

py.on_event(defines.events.on_tick, function()
    if not storage.watch_slaughterhouse then return end

	for player_index, entity in pairs(storage.watched_slaughterhouses) do
		if not entity.valid then
			storage.watched_slaughterhouses[player_index] = nil
			return
		end

		if not entity.get_recipe() then
			Slaughterhouse.create_slaughterhouse_gui(player_index, entity)
		end
	end
end)