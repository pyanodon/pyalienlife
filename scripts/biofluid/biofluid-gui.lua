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
	local network
	for _, n in pairs(global.biofluid_networks) do
		if n.bioports[unit_number] then
			network = n
			break
		end
	end
	if not network then gui.destroy() return end

	local inventory = Biofluid.get_bioport_inventory(entity)
	local contents = inventory.get_contents()
	local status = Biofluid.why_isnt_my_bioport_working(network, contents)
	local img = Biofluid.failure_reasons[status]
	local content_flow = gui.content_frame.content_flow
	content_flow.status_flow.status_text.caption = {status}
	content_flow.status_flow.status_sprite.sprite = img

	local fuel_flow = content_flow.fuel_flow
	for _, element in pairs(fuel_flow.children) do
		if element.type == 'sprite-button' then
			element.sprite = 'utility/slot_icon_fuel'
			element.number = nil
			element.visible = false
		end
	end
	local module_flow = content_flow.module_flow
	for _, element in pairs(module_flow.children) do
		element.sprite = 'utility/slot_icon_module'
		element.number = nil
	end

	local i = 1
	local j = 1
	for name, count in pairs(contents) do
		local slot = inventory[Biofluid.bioport_slot_indexes[name]]
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
				element.sprite = 'item/' .. slot.name
				element.number = slot.count
				element.visible = true
			end
		end
	end

	if i == 1 then
		fuel_flow['py_biofluid_food_1'].visible = true
	end
end

function Biofluid.build_bioport_gui(entity, player)
	local main_frame = player.gui.screen.add{type = 'frame', name = 'bioport_gui', caption = entity.prototype.localised_name, direction = 'vertical'}
    main_frame.auto_center = true
    player.opened = main_frame
	main_frame.style.width = 436
	main_frame.style.minimal_height = 710

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
    fuel_flow.add{type = 'progressbar', name = 'fuel_bar', style = 'burning_progressbar'}.style.horizontally_stretchable = true

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
	if event.gui_type == defines.gui_type.custom then
		local gui = player.gui.screen.bioport_gui
		if gui then gui.destroy() end
	end
end