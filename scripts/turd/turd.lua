Turd = {}
Turd.events = {}

local tech_upgrades = require 'prototypes/upgrades/tech-upgrades'

local NOT_SELECTED = 333 -- enum

local function on_search(search_key, gui)
	if search_key == '' then
		for _, tech_upgrade_element in pairs(gui.children) do
			tech_upgrade_element.visible = true
		end
		return
	end

	search_key = search_key:lower()
	for _, tech_upgrade_element in pairs(gui.children) do
		local sub_tech_flow = tech_upgrade_element.sub_tech_flow
		if sub_tech_flow then
			local tech_upgrade = tech_upgrades[tech_upgrade_element.tags.name]
			local name = tech_upgrade.master_tech.name:lower()
			tech_upgrade_element.visible = name:find(search_key, 1, true)
		end
	end
end

local function update_confirm_button(element, player)
	local force_index = player.force_index
	global.turd_bonuses[force_index] = global.turd_bonuses[force_index] or {}
	local selected_upgrade = global.turd_bonuses[force_index][element.tags.master_tech_name] or NOT_SELECTED

	if selected_upgrade == NOT_SELECTED then
		element.style = 'confirm_button_without_tooltip'
		element.caption = {'turd.select'}
	elseif selected_upgrade == element.tags.sub_tech_name then
		element.style = 'confirm_button_without_tooltip_unhoverable'
		element.caption = {'turd.selected'}
	else
		element.style = 'red_back_button_unhoverable'
		element.caption = {'turd.unavalible'}
	end
end

local function create_turd_page(gui, player)
	local textbox_frame = gui.add{type = 'frame', direction = 'vertical'}
    textbox_frame.style.horizontally_stretchable = true
	local label = textbox_frame.add{type = 'label', caption = {'pywiki-descriptions.turd'}, style = 'label_with_left_padding'}
	label.style.single_line = false
	local researched_technologies = player.force.technologies

	for name, tech_upgrade in pairs(tech_upgrades) do
		if not researched_technologies[name].researched then goto continue end

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
			for _, effect in pairs(sub_tech.effects) do
				if effect.type == 'module-effects' then
					local sprite = effects_flow.add{type = 'choose-elem-button', elem_type = 'item', style = 'transparent_slot'}
					sprite.elem_value = sub_tech.name .. '-module'
					sprite.locked = true
				elseif effect.type == 'unlock-recipe' then
					local sprite = effects_flow.add{type = 'choose-elem-button', elem_type = 'recipe', style = 'transparent_slot'}
					sprite.elem_value = effect.recipe
					sprite.locked = true
				elseif effect.type == 'recipe-replacement' then
					local old = effects_flow.add{type = 'choose-elem-button', elem_type = 'recipe', style = 'transparent_slot'}
					old.elem_value = effect.old
					old.locked = true

					effects_flow.add{type = 'label', caption = '[font=default-semibold]➜[/font]', ignored_by_interaction = true}.style.margin = {0, -10, 0, -10}

					local new = effects_flow.add{type = 'choose-elem-button', elem_type = 'recipe', style = 'transparent_slot'}
					new.elem_value = effect.new
					new.locked = true
				end
			end

			info_flow.add{type = 'empty-widget', style = 'py_empty_widget'}
			local confirm_button = info_flow.add{type = 'button', name = 'py_turd_confirm_button'}
			confirm_button.tags = {
				master_tech_name = name,
				sub_tech_name = sub_tech.name
			}
			update_confirm_button(confirm_button, player)
		end

		::continue::
	end

	local search_key = remote.call('pywiki', 'get_page_searchbar', player).text
	on_search(search_key, gui)
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
	old.enabled = false
	if new then new.enabled = true end

	for _, machine in pairs(assembling_machine_list) do
		if machine.get_recipe() == old then
			local removed_items = machine.set_recipe(new)
			handle_removed_items(machine.surface, force, machine, removed_items)
		end
	end
end

local function create_hidden_beacon(machine, module_name)
	local beacon = global.turd_beaconed_machines[machine.unit_number]
	if not beacon or not beacon.valid then
		beacon = machine.surface.create_entity{name = 'hidden-beacon', position = machine.position, force = force}
		beacon.destructible = false
		beacon.operable = false
		beacon.minable = false
	end

	local inventory = beacon.get_module_inventory()
	inventory.clear()
	inventory.insert{name = module_name, count = 1}
	global.turd_beaconed_machines[machine.unit_number] = beacon
end

local function module_effects(tech_upgrade, sub_tech, assembling_machine_list)
	local module_name = sub_tech.name .. '-module'
	for _, machine in pairs(assembling_machine_list) do
		if tech_upgrade.affected_entities[machine.name] then
			create_hidden_beacon(machine, module_name)
		end
	end
	for entity in pairs(tech_upgrade.affected_entities) do
		global.turd_unlocked_modules[entity] = module_name
	end
end

local function reapply_turd_bonuses(force)
	global.turd_unlocked_modules = {}
	local recipes = force.recipes
	local turd_bonuses = global.turd_bonuses[force.index] or {}

	local assembling_machine_list = {}
	for _, surface in pairs(game.surfaces) do
		for _, machine in pairs(surface.find_entities_filtered{type = {'assembling-machine', 'furnace'}, force = force}) do
			assembling_machine_list[#assembling_machine_list+1] = machine
		end
	end

	for master_tech_name, tech_upgrade in pairs(tech_upgrades) do
		local selection = turd_bonuses[master_tech_name] or NOT_SELECTED
		if selection == NOT_SELECTED then goto continue end
		local sub_tech = tech_upgrade.sub_techs[selection]

		for _, effect in pairs(sub_tech.effects) do
			if effect.type == 'unlock-recipe' then
				recipes[effect.recipe].enabled = true
			elseif effect.type == 'recipe-replacement' then
				local old, new = recipes[effect.old], recipes[effect.new]
				if old.enabled then recipe_replacement(old, new, force, assembling_machine_list) end
			elseif effect.type == 'lock-recipe' then
				local recipe = recipes[effect.recipe]
				if recipe.enabled then recipe_replacement(recipe, nil, force, assembling_machine_list) end
			elseif effect.type == 'module-effects' then
				module_effects(tech_upgrade, sub_tech, assembling_machine_list)
			end
		end

		::continue::
	end
end

gui_events[defines.events.on_gui_click]['py_turd_confirm_button'] = function(event)
	local element = event.element
	local master_tech_name = element.tags.master_tech_name
	local sub_tech_flow = element.parent.parent.parent
	local player = game.get_player(event.player_index)
	local force = player.force

	if not player.admin then
		force.print{'turd.font', {'turd.admin-needed'}}
		return
	end

	local turd_bonuses = global.turd_bonuses[force.index] or {}
	global.turd_bonuses[force.index] = turd_bonuses
	local selection = turd_bonuses[master_tech_name] or NOT_SELECTED
	if selection ~= NOT_SELECTED then return end
	turd_bonuses[master_tech_name] = element.tags.sub_tech_name

	for _, sub_tech in pairs(sub_tech_flow.children) do
		local confirm_button = sub_tech.info_flow.py_turd_confirm_button
		update_confirm_button(confirm_button, player)
	end

	reapply_turd_bonuses(force)
end

Turd.events.on_init = function()
	global.turd_bonuses = global.turd_bonuses or {}
	global.turd_beaconed_machines = global.turd_beaconed_machines or {}
	global.turd_unlocked_modules = global.turd_unlocked_modules or {}
end

local function on_researched(event)
	local technology = event.research
	local force = technology.force

	if tech_upgrades[technology.name] then
		global.turd_bonuses[force.index] = global.turd_bonuses[force.index] or {}
		global.turd_bonuses[force.index][technology.name] = NOT_SELECTED
	end

	if game.tick ~= 0 then reapply_turd_bonuses(force) end
end

local function on_unresearched(event)
	local technology = event.research
	local force = technology.force

	if tech_upgrades[technology.name] then
		force.reset_technology_effects()
	end

	on_researched(event)
end

Turd.events.on_research_finished = on_researched
Turd.events.on_research_reversed = on_unresearched

Turd.events.on_built = function(event)
    local entity = event.created_entity or event.entity
	if not entity.valid or not entity.unit_number then return end
	local module_name = global.turd_unlocked_modules[entity.name]
	if not module_name then return end
	create_hidden_beacon(entity, module_name)
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