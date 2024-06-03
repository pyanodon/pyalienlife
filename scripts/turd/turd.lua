Turd = {}
Turd.events = {}
local tech_upgrades, farm_building_tiers = table.unpack(require 'prototypes/upgrades/tech-upgrades')
require 'bhoddos'

local NOT_SELECTED = 333 -- enum

local views = {'all', 'researched', 'selected', 'unselected'}
views = table.map(views, function(v) return {'turd.visible-' .. v, v} end)

local function check_viewable(element, player, researched_technologies)
	local name = element.tags.name
	local view_type = views[global.turd_views[player.index] or 1][2]
	if view_type == 'all' then
		return true
	elseif not researched_technologies[name].researched then
		return false
	elseif view_type == 'researched' then
		return true
	end
	local selection = global.turd_bonuses[player.force.index][name] or NOT_SELECTED
	if view_type == 'selected' then
		return selection ~= NOT_SELECTED
	elseif view_type == 'unselected' then
		return selection == NOT_SELECTED
	else return true end
end

local function on_search(search_key, gui, player)
	local researched_technologies = player.force.technologies
	if search_key == '' then
		for _, element in pairs(gui.children) do
			if element.sub_tech_flow then
				element.visible = check_viewable(element, player, researched_technologies)
			end
		end
		return
	end

	search_key = search_key:lower()
	for _, element in pairs(gui.children) do
		local sub_tech_flow = element.sub_tech_flow
		if sub_tech_flow then
			local tech_upgrade = tech_upgrades[element.tags.name]
			local name = tech_upgrade.master_tech.name:lower()
			element.visible = check_viewable(element, player, researched_technologies) and name:find(search_key, 1, true)
		end
	end
end

local function has_turd_migration(force_index, sub_tech_name)
	return game.tick < ((global.turd_migrations[force_index] or {})[sub_tech_name] or 0)
end

local function update_confirm_button(element, player, researched_technologies)
	local force_index = player.force_index
	global.turd_bonuses[force_index] = global.turd_bonuses[force_index] or {}
	local name = element.tags.master_tech_name
	local selected_upgrade = global.turd_bonuses[force_index][name] or NOT_SELECTED
	researched_technologies = researched_technologies or player.force.technologies

	if not researched_technologies[name].researched then
		element.style = 'red_back_button_unhoverable'
		element.caption = {'turd.no-research'}
	elseif selected_upgrade == NOT_SELECTED then
		element.style = 'confirm_button_without_tooltip'
		element.caption = {'turd.select'}
	elseif selected_upgrade == element.tags.sub_tech_name then
		if has_turd_migration(force_index, selected_upgrade)then
			local ticks_remaining = global.turd_migrations[force_index][selected_upgrade] - game.tick
			local hours = math.floor(ticks_remaining / 216000)
			local minutes = math.floor(ticks_remaining / 3600) % 60
			local seconds = math.floor(ticks_remaining / 60) % 60
			if minutes < 10 then minutes = '0' .. minutes end
			if seconds < 10 then seconds = '0' .. seconds end
			element.style = 'confirm_button_without_tooltip'
			element.caption = {'turd.unselect-migrate', hours, minutes, seconds}
		elseif (global.turd_reset_remaining[force_index] or 0) > 0 then
			element.style = 'confirm_button_without_tooltip'
			element.caption = {'turd.unselect'}
		else
			element.style = 'confirm_button_without_tooltip_unhoverable'
			element.caption = {'turd.selected'}
		end
	else
		element.style = 'red_back_button_unhoverable'
		element.caption = {'turd.unavailable'}
	end
end

local function defunctionize_effect_table(sub_tech)
	if type(sub_tech.effects) == 'function' then
		sub_tech.effects = sub_tech.effects()
	end
end

local function create_turd_page(gui, player)
	local textbox_frame = gui.add{type = 'frame', direction = 'vertical', name = 'textbox_frame'}
    textbox_frame.style.horizontally_stretchable = true
	local label = textbox_frame.add{type = 'label', caption = {'pywiki-descriptions.turd'}, style = 'label_with_left_padding'}
	label.style.single_line = false

	local resets = global.turd_reset_remaining[player.force_index] or 0
	if resets ~= 0 then
		local reset_label = textbox_frame.add{type = 'label', caption = {'turd.resets-left', resets}, style = 'label_with_left_padding', name = 'py_resets_left'}
		reset_label.style.single_line = false
	end

	local py_select_view = textbox_frame.add{type = 'drop-down', name = 'py_select_view', items = views, selected_index = global.turd_views[player.index] or 1}
	py_select_view.style.width = 200
	py_select_view.style.top_margin = 10

	local item_prototypes = game.item_prototypes
	local recipe_prototypes = game.recipe_prototypes
	local researched_technologies = player.force.technologies

	for name, tech_upgrade in pairs(tech_upgrades) do
		local frame = gui.add{type = 'frame', direction = 'vertical'}
		frame.style.horizontally_stretchable = true
		frame.tags = {name = name}

		local header_flow = frame.add{type = 'flow', direction = 'horizontal', name = 'header_flow'}
		header_flow.style.vertical_align = 'center'
		header_flow.style.horizontal_spacing = 10
		local sprite = header_flow.add{type = 'choose-elem-button', elem_type = 'technology', style = 'transparent_slot'}
		sprite.elem_value = name
		sprite.locked = true
		header_flow.add{type = 'label', caption = {'', '[font=default-semibold][color=255,230,192]', {'technology-name.' .. name}, '[/color][/font]'}}
		header_flow.add{type = 'empty-widget', style = 'py_empty_widget'}

		for affected_entity in pairs(tech_upgrade.affected_entities) do
			local sprite = header_flow.add{type = 'choose-elem-button', elem_type = 'entity', style = 'transparent_slot'}
			sprite.elem_value = affected_entity
			sprite.locked = true
		end

		header_flow.add{
			name = 'py_open_turd_techtree', type = 'sprite-button', style = 'frame_action_button', tooltip = {'turd.open-in-tech-tree'},
			sprite = 'utility/technology_white', hovered_sprite = 'utility/technology_black', clicked_sprite = 'utility/technology_black'
		}
		header_flow.add{name = 'py_minimize_turd', type = 'sprite-button', style = 'frame_action_button', sprite = 'down-white', hovered_sprite = 'down-black', clicked_sprite = 'down-black'}

		local sub_tech_flow = frame.add{type = 'flow', name = 'sub_tech_flow', direction = 'vertical'}
		sub_tech_flow.style.top_margin = 5
		sub_tech_flow.visible = false
		sub_tech_flow.style.vertical_spacing = 10
		for _, sub_tech in pairs(tech_upgrade.sub_techs) do
			local content_frame = sub_tech_flow.add{type = 'frame', direction = 'vertical', style = 'inside_deep_frame'}
			content_frame.style.padding = {5, 10, 5, 10}
			content_frame.style.horizontally_stretchable = true
			content_frame.add{type = 'label', caption = {'', '[font=default-semibold][color=255,230,192]❬ ', {'technology-name.' .. sub_tech.name}, ' ❭[/color][/font]'}}

			local description_flow = content_frame.add{type = 'flow', direction = 'horizontal'}
			description_flow.add{type = 'sprite', sprite = sub_tech.name}
			description_flow.add{type = 'label', caption = {'technology-description.' .. sub_tech.name}}.style.single_line = false

			content_frame.add{type = 'line', direction = 'horizontal'}.style.margin = {5, 0, 5, 0}
			content_frame.add{type = 'label', caption = {'', '[font=default-semibold][color=255,230,192]', {'gui-technology-preview.effects'}, '[/color][/font]'}}

			local info_flow = content_frame.add{type = 'flow', direction = 'horizontal', name = 'info_flow'}
			local effects_scroll_pane = info_flow.add{type = 'scroll-pane', style = 'scroll_pane_under_subheader', vertical_scroll_policy = 'never', horizontal_scroll_policy = 'dont-show-but-allow-scrolling'}
			local effects_flow = effects_scroll_pane.add{type = 'flow', direction = 'horizontal'}
			effects_flow.style.vertical_align = 'center'
			defunctionize_effect_table(sub_tech)
			for _, effect in pairs(sub_tech.effects) do
				if effect.type == 'module-effects' then
					local sprite = effects_flow.add{type = 'choose-elem-button', elem_type = 'item', style = 'transparent_slot'}
					local module_name = sub_tech.name .. '-module'
					if not item_prototypes[module_name] then module_name = module_name .. '-mk01' end
					if not item_prototypes[module_name] then
						game.print('Turd: Module ' .. module_name .. ' does not exist!')
						goto continue
					end
					sprite.elem_value = module_name
					sprite.locked = true
				elseif effect.type == 'unlock-recipe' then
					local sprite = effects_flow.add{type = 'choose-elem-button', elem_type = 'recipe', style = 'transparent_slot'}
					if not recipe_prototypes[effect.recipe] then
						game.print('Turd: Recipe ' .. effect.recipe .. ' does not exist!')
						goto continue
					end
					sprite.elem_value = effect.recipe
					sprite.locked = true
				elseif effect.type == 'recipe-replacement' then
					if not recipe_prototypes[effect.old] then
						game.print('Turd: Recipe ' .. effect.old .. ' does not exist!')
						goto continue
					end
					if not recipe_prototypes[effect.new] then
						game.print('Turd: Recipe ' .. effect.new .. ' does not exist!')
						goto continue
					end

					local old = effects_flow.add{type = 'choose-elem-button', elem_type = 'recipe', style = 'transparent_slot'}
					old.elem_value = effect.old
					old.locked = true

					effects_flow.add{type = 'label', caption = '[font=default-semibold]➜[/font]', ignored_by_interaction = true}.style.margin = {0, -10, 0, -10}

					local new = effects_flow.add{type = 'choose-elem-button', elem_type = 'recipe', style = 'transparent_slot'}
					new.elem_value = effect.new
					new.locked = true
				elseif effect.type == 'machine-replacement' then
					local old = effects_flow.add{type = 'choose-elem-button', elem_type = 'entity', style = 'transparent_slot'}
					old.elem_value = effect.old
					old.locked = true

					effects_flow.add{type = 'label', caption = '[font=default-semibold]➜[/font]', ignored_by_interaction = true}.style.margin = {0, -10, 0, -10}

					local new = effects_flow.add{type = 'choose-elem-button', elem_type = 'entity', style = 'transparent_slot'}
					new.elem_value = effect.new
					new.locked = true
				end
				::continue::
			end

			info_flow.add{type = 'empty-widget', style = 'py_empty_widget'}
			local confirm_button = info_flow.add{type = 'button', name = 'py_turd_confirm_button'}
			confirm_button.tags = {
				master_tech_name = name,
				sub_tech_name = sub_tech.name
			}
			update_confirm_button(confirm_button, player, researched_technologies)
		end

		::continue::
	end

	local search_key = remote.call('pywiki', 'get_page_searchbar', player).text
	on_search(search_key, gui, player)
end

gui_events[defines.events.on_gui_selection_state_changed]['py_select_view'] = function(event)
	local player = game.get_player(event.player_index)
	local element = event.element
	global.turd_views[event.player_index] = element.selected_index
	local search_key = remote.call('pywiki', 'get_page_searchbar', player).text
	on_search(search_key, element.parent.parent, player)
end

gui_events[defines.events.on_gui_click]['py_open_turd_techtree'] = function(event)
	local player = game.get_player(event.player_index)
	local master_tech_name = event.element.parent.parent.tags.name
	player.opened = nil
	player.open_technology_gui(master_tech_name)
end

gui_events[defines.events.on_gui_click]['py_minimize_turd'] = function(event)
	local frame = event.element.parent.parent
	local gui = frame.parent

	for _, tech_upgrade_element in pairs(gui.children) do
		local sub_tech_flow = tech_upgrade_element.sub_tech_flow
		if sub_tech_flow then
			if tech_upgrade_element == frame then
				sub_tech_flow.visible = not sub_tech_flow.visible
			else
				sub_tech_flow.visible = false
			end

			local button = tech_upgrade_element.header_flow.py_minimize_turd
			if sub_tech_flow.visible then
				button.sprite = 'up-black'
				button.hovered_sprite = 'up-black'
				button.clicked_sprite = 'up-black'
				button.style = 'frame_action_button_always_on'
			else
				button.sprite = 'down-white'
				button.hovered_sprite = 'down-black'
				button.clicked_sprite = 'down-black'
				button.style = 'frame_action_button'
			end
		end
	end
end

local function handle_removed_items(surface, force, machine, removed_items)
	for name, count in pairs(removed_items) do
		local cannot_insert = count - machine.insert{name = name, count = count}
		if cannot_insert ~= 0 then
			surface.spill_item_stack(machine.position, {name = name, count = cannot_insert}, true, force, false)
		end
	end
end

local function recipe_replacement(old, new, force, assembling_machine_list)
	local has_error = false
	if not old then
		game.print('ERROR while applying T.U.R.D. recipe replacement. Recipe "' .. effect.old .. '" does not exist.')
		has_error = true
	end
	if not new then
		game.print('ERROR while applying T.U.R.D. recipe replacement. Recipe "' .. effect.new .. '" does not exist.')
		has_error = true
	end
	if has_error then return end

	old.enabled = false
	if new then new.enabled = true end

	for _, machine in pairs(assembling_machine_list) do
		if machine.get_recipe() == old and machine.type == 'assembling-machine' then
			local removed_items = machine.set_recipe(new)
			handle_removed_items(machine.surface, force, machine, removed_items)
		end
	end
end

local function create_hidden_beacon(machine, module_name, item_prototypes)
	local beacon = global.turd_beaconed_machines[machine.unit_number]
	if not beacon or not beacon.valid then
		beacon = machine.surface.create_entity{name = 'hidden-beacon-turd', position = machine.position, force = machine.force}
		beacon.destructible = false
		beacon.operable = false
		beacon.minable = false
	end

	local inventory = beacon.get_module_inventory()
	inventory.clear()
	if not item_prototypes[module_name] then module_name = module_name .. '-mk0' .. farm_building_tiers[machine.name] end
	inventory.insert{name = module_name, count = 1}
	global.turd_beaconed_machines[machine.unit_number] = beacon
end

local function module_effects(tech_upgrade, sub_tech, assembling_machine_list, force, item_prototypes)
	local module_name = sub_tech.name .. '-module'
	for _, machine in pairs(assembling_machine_list) do
		local i = tech_upgrade.affected_entities[machine.name]
		if i then create_hidden_beacon(machine, module_name, item_prototypes) end
	end
	for entity in pairs(tech_upgrade.affected_entities) do
		global.turd_unlocked_modules[force.index][entity] = module_name
	end
end

local function machine_replacement(old, new, assembling_machine_list)
	local temp_inventory = game.create_inventory(9999)
	local new_machine_list = {}
	for _, machine in pairs(assembling_machine_list) do
		if machine.name == old then
			local position = machine.position
			local crafting_progress = machine.crafting_progress
			local bonus_progress = machine.bonus_progress
			local recipe = machine.get_recipe()
			local force_index = machine.force_index
			local surface = machine.surface
			local items_to_place_this = machine.prototype.items_to_place_this
			local direction = machine.direction
			machine.mine{inventory = temp_inventory, force = true, raise_destroyed = false, ignore_minable = true}
			for _, item_to_place in pairs(items_to_place_this) do
				temp_inventory.remove(item_to_place)
			end
			local new_machine = surface.create_entity{name = new, position = position, force = force_index}
			if new_machine.type == 'assembling-machine' then new_machine.set_recipe(recipe) end
			handle_removed_items(surface, force, new_machine, temp_inventory.get_contents())
			new_machine.crafting_progress = crafting_progress
			new_machine.bonus_progress = bonus_progress
			new_machine.direction = direction
			temp_inventory.clear()
			machine = new_machine
		end
		new_machine_list[#new_machine_list+1] = machine
	end
	temp_inventory.destroy()
	return new_machine_list
end

local function find_all_assembling_machines(force)
	local assembling_machine_list = {}
	for _, surface in pairs(game.surfaces) do
		for _, machine in pairs(surface.find_entities_filtered{type = {'assembling-machine', 'furnace'}, force = force}) do
			assembling_machine_list[#assembling_machine_list+1] = machine
		end
	end
	return assembling_machine_list
end

local function apply_turd_bonus(force, master_tech_name, tech_upgrade, assembling_machine_list)
	local turd_bonuses = global.turd_bonuses[force.index] or {}
	local selection = turd_bonuses[master_tech_name] or NOT_SELECTED
	if selection == NOT_SELECTED then return end
	local sub_tech = tech_upgrade.sub_techs[selection]

	local recipes = force.recipes
	local item_prototypes = game.item_prototypes
	defunctionize_effect_table(sub_tech)
	for _, effect in pairs(sub_tech.effects) do
		if effect.type == 'unlock-recipe' then
			if recipes[effect.recipe] then recipes[effect.recipe].enabled = true end
		elseif effect.type == 'recipe-replacement' then
			local old, new = recipes[effect.old], recipes[effect.new]
			if not old or old.enabled then recipe_replacement(old, new, force, assembling_machine_list) end
		elseif effect.type == 'module-effects' then
			module_effects(tech_upgrade, sub_tech, assembling_machine_list, force, item_prototypes)
		elseif effect.type == 'machine-replacement' then
			assembling_machine_list = machine_replacement(effect.old, effect.new, assembling_machine_list)
			global.turd_machine_replacements[force.index] = global.turd_machine_replacements[force.index] or {}
			global.turd_machine_replacements[force.index][effect.old] = effect.new
		end
	end
end

local function reapply_turd_bonuses(force)
	global.turd_unlocked_modules[force.index] = {}
	local assembling_machine_list = find_all_assembling_machines(force)

	for master_tech_name, tech_upgrade in pairs(tech_upgrades) do
		apply_turd_bonus(force, master_tech_name, tech_upgrade, assembling_machine_list)
	end
end

local function unselect_recipes_for_subtech(sub_tech, force, assembling_machine_list)
	local recipes = force.recipes
	defunctionize_effect_table(sub_tech)
	for _, effect in pairs(sub_tech.effects) do
		if (effect.type == 'unlock-recipe' or effect.type == 'recipe-replacement') and not effect.also_unlocked_by_techs then
			local recipe = recipes[effect.new or effect.recipe]
			if not recipe or recipe.enabled then
				recipe_replacement(recipe, effect.old and recipes[effect.old], force, assembling_machine_list)
			end
		elseif effect.type == 'machine-replacement' then
			assembling_machine_list = machine_replacement(effect.new, effect.old, assembling_machine_list)
			if global.turd_machine_replacements[force.index] then
				global.turd_machine_replacements[force.index][effect.old] = nil
			end
		end
	end
end

local function destroy_all_hidden_beacons(force)
	global.turd_unlocked_modules[force.index] = {}
	for unit_number, beacon in pairs(global.turd_beaconed_machines) do
		if not beacon.valid then
			global.turd_beaconed_machines[unit_number] = nil
		elseif beacon.force == force then
			global.turd_beaconed_machines[unit_number] = nil
			beacon.destroy()
		end
	end
end

gui_events[defines.events.on_gui_click]['py_turd_confirm_button'] = function(event)
	local element = event.element
	local master_tech_name = element.tags.master_tech_name
	local sub_tech_name = element.tags.sub_tech_name
	local sub_tech_flow = element.parent.parent.parent
	local player = game.get_player(event.player_index)
	local force = player.force
	local force_index = force.index

	if not force.technologies[master_tech_name].researched then return end

	if not player.admin then
		force.print{'turd.font', {'turd.admin-needed'}}
		return
	end

	local turd_bonuses = global.turd_bonuses[force_index] or {}
	global.turd_bonuses[force_index] = turd_bonuses
	local selection = turd_bonuses[master_tech_name] or NOT_SELECTED
	if selection == NOT_SELECTED then
		force.print{'turd.font', {'turd.selected-alert', {'technology-name.'..master_tech_name}, {'technology-name.'..sub_tech_name}, player.name, player.color.r, player.color.g, player.color.b}}
		turd_bonuses[master_tech_name] = sub_tech_name
		apply_turd_bonus(force, master_tech_name, tech_upgrades[master_tech_name], find_all_assembling_machines(force))
	else
		global.turd_reset_remaining[force_index] = global.turd_reset_remaining[force_index] or 0
		if global.turd_reset_remaining[force_index] <= 0 and not has_turd_migration(force_index, sub_tech_name) then
			return
		end
		force.print{'turd.font', {'turd.unselected-alert', {'technology-name.'..master_tech_name}, {'technology-name.'..sub_tech_name}, player.name, player.color.r, player.color.g, player.color.b}}
		turd_bonuses[master_tech_name] = NOT_SELECTED
		if has_turd_migration(force_index, sub_tech_name) then
			global.turd_migrations[force_index][sub_tech_name] = 0
		else
			global.turd_reset_remaining[force_index] = global.turd_reset_remaining[force_index] - 1
		end
		unselect_recipes_for_subtech(tech_upgrades[master_tech_name].sub_techs[selection], force, find_all_assembling_machines(force))
		destroy_all_hidden_beacons(force)
		reapply_turd_bonuses(force)

		local resets_left = global.turd_reset_remaining[force_index]
		local reset_label = sub_tech_flow.parent.parent.textbox_frame.py_resets_left
		if resets_left == 0 and reset_label then
			reset_label.destroy()
		elseif resets_left > 0 and reset_label then
			reset_label.caption = {'turd.resets-left', resets_left}
		end
	end

	for _, sub_tech in pairs(sub_tech_flow.children) do
		local confirm_button = sub_tech.info_flow.py_turd_confirm_button
		update_confirm_button(confirm_button, player)
	end
end

Turd.events.on_init = function()
	global.turd_bonuses = global.turd_bonuses or {}
	global.turd_beaconed_machines = global.turd_beaconed_machines or {}
	global.turd_unlocked_modules = global.turd_unlocked_modules or {}
	global.turd_views = global.turd_views or {}
	global.turd_reset_remaining = global.turd_reset_remaining or {}
	global.turd_machine_replacements = global.turd_machine_replacements or {}
    global.turd_migrations = global.turd_migrations or {}
end

local function starts_with(str, start)
	return str:sub(1, #start) == start
end

local function on_researched(event)
	local technology = event.research
	local force = technology.force
	local force_index = force.index

	if tech_upgrades[technology.name] then
		global.turd_bonuses[force_index] = global.turd_bonuses[force_index] or {}
		global.turd_bonuses[force_index][technology.name] = NOT_SELECTED
	elseif starts_with(technology.name, 'turd-partial-respec') then
		global.turd_reset_remaining[force_index] = (global.turd_reset_remaining[force_index] or 0) + 1
		return
	end

	-- this is for recipe replacement. if a non turd tech unlocks a recipe that is replaced by a turd tech, run reapply_turd_bonuses
	-- TODO: optimize this to not run if the tech doesn't need recipe replacements (maybe a table of all turd replacable recipes is needed)
	if game.tick ~= 0 then reapply_turd_bonuses(force) end
end

local function on_unresearched(event)
	local technology = event.research
	local force = technology.force

	if tech_upgrades[technology.name] then
		force.reset_technology_effects()
	end
end

Turd.events.on_research_finished = on_researched
Turd.events.on_research_reversed = on_unresearched

Turd.events.on_built = function(event)
    local entity = event.created_entity or event.entity
	if not entity.valid or not entity.unit_number then return end
	local force_index = entity.force_index

	if global.turd_unlocked_modules[force_index] then
		local module_name = global.turd_unlocked_modules[force_index][entity.name]
		if module_name then
			create_hidden_beacon(entity, module_name, game.item_prototypes)
		end
	end

	if global.turd_machine_replacements[force_index] then
		local new = global.turd_machine_replacements[force_index][entity.name]
		if new then
			machine_replacement(entity.name, new, {entity})
		end
	end
end

Turd.events.on_destroyed = function(event)
    local entity = event.entity
	if not entity.valid or not entity.unit_number then return end
	local beacon = global.turd_beaconed_machines[entity.unit_number]
	global.turd_beaconed_machines[entity.unit_number] = nil
	if not beacon or not beacon.valid then return end
	beacon.destroy()
end

remote.add_interface('pywiki_turd_page', {
	create_turd_page = create_turd_page,
	on_search = on_search,
	reapply_turd_bonuses = reapply_turd_bonuses
})