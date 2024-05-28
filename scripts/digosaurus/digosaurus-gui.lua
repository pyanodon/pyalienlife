function Digosaurus.update_gui(gui)
	local dig_data = global.dig_sites[gui.tags.unit_number]
	if not Digosaurus.validity_check(dig_data) then gui.destroy() return end
	local content_flow = gui.content_frame.content_flow
	local entity = dig_data.entity

	content_flow.status_flow.electricity.value = entity.energy / entity.electric_buffer_size
	content_flow.status_flow.consumption.caption = {'', py.format_energy(entity.energy, 'W'), '/', py.format_energy(entity.electric_buffer_size, 'W')}

	local status, img
	if entity.to_be_deconstructed() then
		status = {'entity-status.marked-for-deconstruction'}
		img = 'utility/status_not_working'
		content_flow.status_flow.consumption.caption = ''
	elseif table_size(dig_data.scanned_ores) == 0 then
		status = {'entity-status.no-minable-resources'}
		img = 'utility/status_not_working'
	elseif dig_data.food_inventory.is_empty() then
		status = {'entity-status.no-food'}
		img = 'utility/status_not_working'
	elseif entity.energy == 0 then
		status = {'entity-status.no-power'}
		img = 'utility/status_not_working'
	elseif dig_data.digosaur_inventory.is_empty() then
		status = {'entity-status.no-creature'}
		img = 'utility/status_not_working'
	elseif entity.energy < entity.electric_buffer_size * 0.9 then
		status = {'entity-status.low-power'}
		img = 'utility/status_yellow'
	else
		status = {'entity-status.working'}
		img = 'utility/status_working'
	end

	content_flow.status_flow.status_text.caption = status
	content_flow.status_flow.status_sprite.sprite = img

	local food_flow = content_flow.food_flow
	for i = 1, #dig_data.food_inventory do
		local slot = dig_data.food_inventory[i]
		local element = food_flow['dig_food_' .. i]
		if slot.valid_for_read then
			element.sprite = 'item/' .. slot.name
			element.number = slot.count
		else
			element.sprite = 'utility/slot_icon_fuel'
			element.number = nil
		end
		element.tooltip = py.generate_favorite_food_tooltip(Digosaurus.favorite_foods, 'digosaurus-gui')
	end
end

Digosaurus.events.on_gui_opened = function(event)
	local entity = event.entity
	if event.gui_type ~= defines.gui_type.entity or not entity or entity.name ~= 'dino-dig-site' then return end
	local player = game.get_player(event.player_index)
	local dig_data = global.dig_sites[entity.unit_number]

	-- Since we never really do a search for dig sites this can happen with a weird migration or players doing editor things
	if not dig_data then
		log('diggy diggy gui found no diggy diggy data')
		Digosaurus.events.on_built(event)
		return
	end

	local main_frame = player.gui.relative.add{
		type = 'frame', name = 'digosaurus_gui', caption = {'entity-name.dino-dig-site'}, direction = 'vertical', tags = {unit_number = entity.unit_number},
		anchor = {
			gui = defines.relative_gui_type.assembling_machine_gui,
			position = defines.relative_gui_position.left
		}
	}
	main_frame.style.width = 448

	local content_frame = main_frame.add{type = 'frame', name = 'content_frame', direction = 'vertical', style = 'inside_shallow_frame_with_padding'}
    content_frame.style.vertically_stretchable = true
	local content_flow = content_frame.add{type = 'flow', name = 'content_flow', direction = 'vertical'}
	content_flow.style.vertical_spacing = 8
	content_flow.style.margin = {-4, 0, -4, 0}
	content_flow.style.vertical_align = 'center'

	local status_flow = content_flow.add{type = 'flow', name = 'status_flow', direction = 'horizontal'}
	status_flow.style.vertical_align = 'center'
	status_flow.style.top_margin = 4
	local status_sprite = status_flow.add{type = 'sprite', name = 'status_sprite'}
	status_sprite.resize_to_sprite = false
	status_sprite.style.size = {16, 16}
	status_flow.add{type = 'label', name = 'status_text'}

    status_flow.add{type = 'empty-widget', style = 'py_empty_widget'}
	status_flow.add{type = 'label', name = 'consumption'}.style.right_margin = 4
	local electricity = status_flow.add{type = 'progressbar', name = 'electricity', style = 'electric_satisfaction_progressbar'}
    electricity.style.horizontally_squashable = true

    local deep_frame_in_shallow_frame = content_flow.add{type = 'frame', direction = 'vertical', style = 'py_nice_frame'}
	local entity_preview = deep_frame_in_shallow_frame.add{type = 'entity-preview', name = 'entity_preview', style = 'py_entity_preview'}
	entity_preview.entity = entity
	entity_preview.visible = true
	entity_preview.style.height = 148

	content_flow.add{type = 'label', caption = {'digosaurus-gui.food'}, style = 'heading_2_label'}
	local food_flow = content_flow.add{type = 'flow', name = 'food_flow', direction = 'horizontal'}
	for i = 1, #dig_data.food_inventory do
		local slot = food_flow.add{type = 'sprite-button', name = 'dig_food_' .. i, style = 'inventory_slot'}
		slot.tags = {unit_number = dig_data.unit_number, i = i}
	end

	Digosaurus.update_gui(main_frame)
end

Digosaurus.events.close_gui = function(event)
	local player = game.get_player(event.player_index)
	if event.gui_type == defines.gui_type.entity then
		local gui = player.gui.relative.digosaurus_gui
		if gui then gui.destroy() end
	end
end