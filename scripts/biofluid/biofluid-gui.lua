Biofluid.events.on_gui_opened = function(event)
	local entity = event.entity
	if event.gui_type ~= defines.gui_type.entity or not entity then return end
    local player = game.get_player(event.player_index)

    if Biofluid.connectable[entity.name] == Biofluid.ROBOPORT then
        Biofluid.build_bioport_gui(entity, player) 
    end
end

function Biofluid.update_bioport_gui(entity, player, gui)
	local unit_number = entity.unit_number
	local bioport_data = global.biofluid_bioports[unit_number]
	if not bioport_data then gui.destroy() return end
	local network = global.biofluid_networks[bioport_data.network_id]
	if not network then gui.destroy() return end

	local inventory = entity.get_inventory(defines.inventory.assembling_machine_input)
	local contents = inventory.get_contents()
	local status = Biofluid.why_isnt_my_bioport_working(network, contents)
	local img = Biofluid.failure_reasons[status]
	local content_flow = gui.content_frame.content_flow
	content_flow.status_flow.status_text.caption = {status}
	content_flow.status_flow.status_sprite.sprite = img

	local fuel_flow = content_flow.fuel_flow
	for _, element in pairs(fuel_flow.children) do
		if element.type == 'sprite-button' and element.name ~= 'py_guano_output' then
			local tags = element.tags
			element.sprite = 'utility/slot_icon_fuel'
			element.number = nil
			element.visible = false
			tags.slot_index = nil
			element.tags = tags
		end
	end
	local module_flow = content_flow.module_flow
	for _, element in pairs(module_flow.children) do
		local tags = element.tags
		element.sprite = 'utility/slot_icon_module'
		element.number = nil
		tags.slot_index = nil
		element.tags = tags
	end

	local i = 1
	local j = 1
	for name, count in pairs(contents) do
		local slot_index = Biofluid.bioport_slot_indexes[name]
		local slot = inventory[slot_index]
		if slot.valid_for_read then
			local element
			if Biofluid.favorite_foods[name] then
				element = fuel_flow['py_biofluid_food_' .. i]
				i = i + 1
			elseif Biofluid.biorobots[name] then
				element = module_flow['py_biofluid_module_' .. j]
				j = j + 1
			end
			if element then
				local tags = element.tags
				element.sprite = 'item/' .. slot.name
				element.number = slot.count
				element.visible = true
				tags.slot_index = slot_index
				element.tags = tags
			end
		end
	end

	if i == 1 then fuel_flow['py_biofluid_food_1'].visible = true end

	local slot = entity.get_inventory(defines.inventory.assembling_machine_output)[1]
	local element = fuel_flow['py_guano_output']
	element.number = slot.valid_for_read and slot.count or 0
end

function Biofluid.build_bioport_gui(entity, player)
	Biofluid.open_inventory(player)

	local main_frame = player.gui.relative.add{
		type = 'frame', name = 'bioport_gui', caption = entity.prototype.localised_name, direction = 'vertical', tags = {unit_number = entity.unit_number},
		anchor = {
			gui = defines.relative_gui_type.item_with_inventory_gui,
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
	local status_sprite = status_flow.add{type = 'sprite', name = 'status_sprite'}
	status_sprite.resize_to_sprite = false
	status_sprite.style.size = {16, 16}
	status_flow.add{type = 'label', name = 'status_text'}
	status_flow.add{type = 'empty-widget', style = 'py_empty_widget'}

	local camera_frame = content_flow.add{type = 'frame', name = 'camera_frame', style = 'py_nice_frame'}
	local camera = camera_frame.add{type = 'camera', name = 'camera', position = {entity.position.x, entity.position.y - 1}, style = 'py_caravan_camera', surface_index = entity.surface.index}
	camera.visible = true
	camera.style.height = 155

    local fuel_flow = content_flow.add{type = 'flow', name = 'fuel_flow', direction = 'horizontal'}
    fuel_flow.style.vertical_align = 'center'
    local favorite_food_tooltip = generate_favorite_food_tooltip(Biofluid.favorite_foods, 'biofluid-gui')
    for i = 1, Biofluid.fuel_size do
        local fuel_slot = fuel_flow.add{type = 'sprite-button', name = 'py_biofluid_food_' .. i, style = 'inventory_slot', tags = {unit_number = entity.unit_number, i = i}}
        fuel_slot.sprite = 'utility/slot_icon_fuel'
        fuel_slot.tooltip = favorite_food_tooltip
    end
	local bar_flow = fuel_flow.add{type = 'flow', name = 'bar_flow', direction = 'vertical'}
    bar_flow.add{type = 'progressbar', name = 'fuel_bar', style = 'burning_progressbar'}.style.horizontally_stretchable = true
    bar_flow.add{type = 'progressbar', name = 'guano_bar', style = 'bonus_progressbar'}.style.horizontally_stretchable = true
	fuel_flow.add{type = 'sprite-button', name = 'py_guano_output', style = 'inventory_slot', tags = {unit_number = entity.unit_number, slot_index = 1}, sprite = 'item/guano'}

    content_flow.add{type = 'line'}

    local module_flow = content_flow.add{type = 'flow', name = 'module_flow', direction = 'horizontal'}
    module_flow.style.vertical_align = 'center'
    local allowed_module_tooltip = generate_allowed_module_tooltip(Biofluid.biorobots)
    for i = 1, Biofluid.module_size do
        local module_slot = module_flow.add{type = 'sprite-button', name = 'py_biofluid_module_' .. i, style = 'inventory_slot', tags = {unit_number = entity.unit_number, i = i}}
        module_slot.sprite = 'utility/slot_icon_module'
        module_slot.tooltip = allowed_module_tooltip
    end

	Biofluid.update_bioport_gui(entity, player, main_frame)
end

Biofluid.events.on_gui_closed = function(event)
	local player = game.get_player(event.player_index)
	if event.gui_type == defines.gui_type.item then
		local gui = player.gui.relative.bioport_gui
		if gui then gui.destroy() end
	end
end

local function gui_click(event, inventory_index)
	local player = game.get_player(event.player_index)
	local cursor_stack = player.cursor_stack
    if not cursor_stack then return end
	local element = event.element
	local unit_number = element.tags.unit_number
	local slot_index = element.tags.slot_index
	local bioport_data = global.biofluid_bioports[unit_number]
	if not bioport_data then return end
	local entity = bioport_data.entity
	if not entity or not entity.valid then return end
	local inventory = entity.get_inventory(inventory_index)
	
	if cursor_stack.valid_for_read then
		local actually_inserted = inventory.insert(cursor_stack)
		if actually_inserted == 0 then return end
		cursor_stack.count = cursor_stack.count - actually_inserted
	elseif slot_index then
		if not cursor_stack.swap_stack(inventory[slot_index]) then return end
	else return end
	
	Biofluid.update_bioport_gui(entity, player, player.gui.relative.bioport_gui)
end

gui_events[defines.events.on_gui_click]['py_biofluid_food_.'] = function(event) gui_click(event, defines.inventory.assembling_machine_input) end
gui_events[defines.events.on_gui_click]['py_biofluid_module_.'] = function(event) gui_click(event, defines.inventory.assembling_machine_input) end
gui_events[defines.events.on_gui_click]['py_guano_output'] = function(event) gui_click(event, defines.inventory.assembling_machine_output) end