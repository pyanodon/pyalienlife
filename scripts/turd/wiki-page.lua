local tech_upgrades = require 'prototypes/upgrades/tech-upgrades'

local function create_turd_page(gui, player)
	for i, tech_upgrade in pairs(tech_upgrades) do
		local frame = gui.add{type = 'frame', direction = 'vertical'}
		frame.style.horizontally_stretchable = true
		frame.tags = {index = i}

		local master_tech = tech_upgrade.master_tech
		local header_flow = frame.add{type = 'flow', direction = 'horizontal', name = 'header_flow'}
		header_flow.style.vertical_align = 'center'
		header_flow.style.horizontal_spacing = 10
		header_flow.add{type = 'sprite', sprite = 'technology/' .. master_tech.name, resize_to_sprite = false}.style.size = {32, 32}
		header_flow.add{type = 'label', caption = {'', '[font=default-semibold][color=255,230,192]', {'technology-name.' .. master_tech.name}, '[/color][/font]'}}
		header_flow.add{type = 'empty-widget', style = 'py_empty_widget'}

		local affected_entities_flow = header_flow.add{type = 'flow', name = 'affected_entities_flow', direction = 'horizontal'}
		for _, affected_entity in pairs(tech_upgrade.affected_entities) do
			local sprite = affected_entities_flow.add{type = 'choose-elem-button', elem_type = 'entity'}
			sprite.elem_value = affected_entity
			sprite.locked = true
		end

		header_flow.add{
			name = 'py_open_turd_techtree', type = 'sprite-button', style = 'frame_action_button',
			sprite = 'utility/technology_white', hovered_sprite = 'utility/technology_black', clicked_sprite = 'utility/technology_black'
		}
		header_flow.add{name = 'py_minimize_turd', type = 'sprite-button', style = 'frame_action_button', sprite = 'down-white', hovered_sprite = 'down-black', clicked_sprite = 'down-black'}

		local sub_tech_flow = frame.add{type = 'flow', name = 'sub_tech_flow', direction = 'vertical'}
		sub_tech_flow.style.top_margin = 5
		sub_tech_flow.visible = false
		sub_tech_flow.style.vertical_spacing = 10
		for _, sub_tech in pairs(tech_upgrade.sub_techs) do
			local content_frame = sub_tech_flow.add{type = 'frame', direction = 'vertical', style = 'inside_deep_frame'}
			content_frame.style.padding = {5, 10, 5, 5}
			content_frame.style.horizontally_stretchable = true
			content_frame.add{type = 'label', caption = {'', '[font=default-semibold][color=255,230,192]❬ ', {'technology-name.' .. sub_tech.name}, ' ❭[/color][/font]'}}

			local description_flow = content_frame.add{type = 'flow', direction = 'horizontal'}
			description_flow.add{type = 'sprite', sprite = sub_tech.name}
			description_flow.add{type = 'label', caption = {'technology-description.' .. sub_tech.name}}.style.single_line = false

			content_frame.add{type = 'line', direction = 'horizontal'}.style.margin = {5, 0, 5, 0}
			content_frame.add{type = 'label', caption = {'', '[font=default-semibold][color=255,230,192]', {'gui-technology-preview.effects'}, '[/color][/font]'}}

			local effects_flow = content_frame.add{type = 'flow', direction = 'horizontal'}
			for _, effect in pairs(sub_tech.effects) do
				if effect.type == 'module-effects' then
					local sprite = effects_flow.add{type = 'choose-elem-button', elem_type = 'item'}
					sprite.elem_value = sub_tech.name .. '-module'
					sprite.locked = true
				end
			end
		end
	end
end

gui_events[defines.events.on_gui_click]['py_open_turd_techtree'] = function(event)
	local player = game.get_player(event.player_index)
	local master_tech = tech_upgrades[event.element.parent.parent.tags.index].master_tech.name
	player.opened = nil
	player.open_technology_gui(master_tech)
end

gui_events[defines.events.on_gui_click]['py_minimize_turd'] = function(event)
	local frame = event.element.parent.parent
	local gui = frame.parent

	for _, tech_upgrade_element in pairs(gui.children) do
		local sub_tech_flow = tech_upgrade_element.sub_tech_flow
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

remote.add_interface('create_turd_page', {create_turd_page = create_turd_page})