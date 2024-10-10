Biofluid.events.on_gui_opened = function(event)
	local entity = event.entity
	if event.gui_type ~= defines.gui_type.entity or not entity then return end
	local connection_type = Biofluid.connectable[entity.name]
	if not connection_type then return end
	local player = game.get_player(event.player_index)
	if connection_type == Biofluid.ROBOPORT then
		Biofluid.build_bioport_gui(entity, player)
	elseif connection_type == Biofluid.REQUESTER then
		Biofluid.build_requester_gui(entity, player)
	end
end

function Biofluid.update_bioport_gui(player, gui)
	local unit_number = gui.tags.unit_number
	local bioport_data = storage.biofluid_bioports[unit_number]
	if not bioport_data then
		player.opened = nil; return
	end
	local entity = bioport_data.entity
	if not entity or not entity.valid then
		player.opened = nil; return
	end
	local network = storage.biofluid_networks[bioport_data.network_id]
	if not network then
		player.opened = nil; return
	end
	Biofluid.update_bioport_animation(bioport_data)

	local status = Biofluid.why_isnt_my_bioport_working(bioport_data)
	local img = Biofluid.failure_reasons[status]
	local content_flow = gui.content_frame.content_flow
	content_flow.status_flow.status_text.caption = {status}
	content_flow.status_flow.status_sprite.sprite = img

	local fuel_flow = content_flow.fuel_flow
	for _, element in pairs(fuel_flow.children) do
		if element.type == "sprite-button" and element.name ~= "py_guano_output" then
			local tags = element.tags
			element.sprite = "slot_icon_fuel"
			element.number = nil
			element.visible = false
			tags.slot_index = nil
			element.tags = tags
		end
	end
	local module_flow = content_flow.module_flow
	for _, element in pairs(module_flow.children) do
		local tags = element.tags
		element.sprite = "utility/empty_module_slot"
		element.number = nil
		tags.slot_index = nil
		element.tags = tags
	end

	local inventory = entity.get_inventory(defines.inventory.assembling_machine_input)
	local contents = inventory.get_contents()
	local i = 1
	local j = 1
	for _, item in pairs(contents) do
		local name = item.name

		local slot_index = Biofluid.bioport_slot_indexes[name]
		local slot = inventory[slot_index]
		if slot.valid_for_read then
			local element
			if Biofluid.favorite_foods[name] then
				element = fuel_flow["py_biofluid_food_" .. i]
				i = i + 1
			elseif Biofluid.biorobots[name] then
				element = module_flow["py_biofluid_module_" .. j]
				j = j + 1
			end
			if element then
				local tags = element.tags
				element.sprite = "item/" .. slot.name
				element.number = slot.count
				element.visible = true
				tags.slot_index = slot_index
				element.tags = tags
			end
		end
	end

	if i == 1 then fuel_flow["py_biofluid_food_1"].visible = true end

	local slot = entity.get_inventory(defines.inventory.assembling_machine_output)[1]
	local element = fuel_flow["py_guano_output"]
	element.number = slot.valid_for_read and slot.count or 0

	local bar_flow = fuel_flow.bar_flow
	if bioport_data.last_eaten_fuel_value then
		bar_flow.fuel_bar.value = bioport_data.fuel_remaning / bioport_data.last_eaten_fuel_value
	end
	bar_flow.guano_bar.value = bioport_data.guano / 3
end

function Biofluid.build_bioport_gui(entity, player)
	if player.gui.relative.bioport_gui then player.gui.relative.bioport_gui.destroy() end
	local main_frame = player.gui.relative.add {
		type = "frame", name = "bioport_gui", caption = entity.prototype.localised_name, direction = "vertical", tags = {unit_number = entity.unit_number},
		anchor = {
			gui = defines.relative_gui_type.assembling_machine_gui,
			position = defines.relative_gui_position.right
		}
	}
	main_frame.style.width = 448
	main_frame.style.vertically_stretchable = false
	main_frame.style.vertically_squashable = true

	local content_frame = main_frame.add {type = "frame", name = "content_frame", direction = "vertical", style = "inside_shallow_frame_with_padding"}
	content_frame.style.vertically_stretchable = true
	local content_flow = content_frame.add {type = "flow", name = "content_flow", direction = "vertical"}
	content_flow.style.vertical_spacing = 8
	content_flow.style.margin = {-4, 0, -4, 0}
	content_flow.style.vertical_align = "center"

	local status_flow = content_flow.add {type = "flow", name = "status_flow", direction = "horizontal"}
	status_flow.style.vertical_align = "center"
	local status_sprite = status_flow.add {type = "sprite", name = "status_sprite"}
	status_sprite.resize_to_sprite = false
	status_sprite.style.size = {16, 16}
	status_flow.add {type = "label", name = "status_text"}
	status_flow.add {type = "empty-widget", style = "py_empty_widget"}

	local camera_frame = content_flow.add {type = "frame", name = "camera_frame", style = "py_nice_frame"}
	local camera = camera_frame.add {type = "camera", name = "camera", position = {entity.position.x, entity.position.y - 1}, style = "py_caravan_camera", surface_index = entity.surface.index}
	camera.visible = true
	camera.style.height = 155

	local fuel_flow = content_flow.add {type = "flow", name = "fuel_flow", direction = "horizontal"}
	fuel_flow.style.vertical_align = "center"
	local favorite_food_tooltip = py.generate_favorite_food_tooltip(Biofluid.favorite_foods, "biofluid-gui")
	for i = 1, Biofluid.fuel_size do
		local fuel_slot = fuel_flow.add {type = "sprite-button", name = "py_biofluid_food_" .. i, style = "inventory_slot", tags = {unit_number = entity.unit_number, i = i}}
		fuel_slot.sprite = "slot_icon_fuel"
		fuel_slot.tooltip = favorite_food_tooltip
	end
	local bar_flow = fuel_flow.add {type = "flow", name = "bar_flow", direction = "vertical"}
	bar_flow.add {type = "progressbar", name = "fuel_bar", style = "burning_progressbar"}.style.horizontally_stretchable = true
	bar_flow.add {type = "progressbar", name = "guano_bar", style = "bonus_progressbar"}.style.horizontally_stretchable = true
	fuel_flow.add {type = "sprite-button", name = "py_guano_output", style = "inventory_slot", tags = {unit_number = entity.unit_number, slot_index = 1}, sprite = "item/guano"}

	content_flow.add {type = "line"}

	local module_flow = content_flow.add {type = "flow", name = "module_flow", direction = "horizontal"}
	module_flow.style.vertical_align = "center"
	local allowed_module_tooltip = py.generate_allowed_module_tooltip(Biofluid.biorobots)
	for i = 1, Biofluid.module_size do
		local module_slot = module_flow.add {type = "sprite-button", name = "py_biofluid_module_" .. i, style = "inventory_slot", tags = {unit_number = entity.unit_number, i = i}}
		module_slot.sprite = "utility/empty_module_slot"
		module_slot.tooltip = allowed_module_tooltip
	end

	Biofluid.update_bioport_gui(player, main_frame)
end

function Biofluid.update_requester_gui(player, gui)
	local unit_number = gui.tags.unit_number
	local requester_data = storage.biofluid_requesters[unit_number]
	if not requester_data then
		player.opened = nil; return
	end
	local entity = requester_data.entity
	if not entity or not entity.valid then
		player.opened = nil; return
	end
	local network = storage.biofluid_networks[requester_data.network_id]
	if not network then
		player.opened = nil; return
	end

	local status = "entity-status.working"
	if not next(network.bioports) then status = "entity-status.no-biofluid-network" end
	local img = Biofluid.failure_reasons[status]
	local content_flow = gui.content_frame.content_flow
	content_flow.status_flow.status_text.caption = {status}
	content_flow.status_flow.status_sprite.sprite = img

	local config_flow = content_flow.config_flow
	config_flow.py_request_type.elem_value = requester_data.name
	config_flow.py_request_amount.text = tostring(requester_data.amount)
	config_flow.py_requester_priority_input.text = tostring(requester_data.priority)

	local temperature_flow = content_flow.temperature_flow
	local enabled = requester_data.care_about_temperature
	temperature_flow.py_biofluid_temperature_switch.switch_state = enabled and "right" or "left"
	temperature_flow.py_biofluid_temperature.text = tostring(requester_data.target_temperature)
	temperature_flow.py_biofluid_temperature.enabled = enabled
	temperature_flow.py_biofluid_temperature_equality_operator.selected_index = requester_data.temperature_operator or 1
	temperature_flow.py_biofluid_temperature_equality_operator.enabled = enabled
end

function Biofluid.build_requester_gui(entity, player)
	if player.gui.screen.biofluid_requester_gui then player.gui.screen.biofluid_requester_gui.destroy() end
	local unit_number = entity.unit_number
	local main_frame = player.gui.screen.add {type = "frame", name = "biofluid_requester_gui", caption = entity.prototype.localised_name, direction = "vertical"}
	main_frame.auto_center = true
	player.opened = main_frame
	main_frame.style.width = 436
	local tags = {unit_number = unit_number}
	main_frame.tags = tags

	local content_frame = main_frame.add {type = "frame", name = "content_frame", direction = "vertical", style = "inside_shallow_frame_with_padding"}
	content_frame.style.vertically_stretchable = true
	local content_flow = content_frame.add {type = "flow", name = "content_flow", direction = "vertical"}
	content_flow.style.vertical_spacing = 8
	content_flow.style.margin = {-4, 0, -4, 0}
	content_flow.style.vertical_align = "center"

	local status_flow = content_flow.add {type = "flow", name = "status_flow", direction = "horizontal"}
	status_flow.style.vertical_align = "center"
	local status_sprite = status_flow.add {type = "sprite", name = "status_sprite"}
	status_sprite.resize_to_sprite = false
	status_sprite.style.size = {16, 16}
	status_flow.add {type = "label", name = "status_text"}
	status_flow.add {type = "empty-widget", style = "py_empty_widget"}

	local camera_frame = content_flow.add {type = "frame", name = "camera_frame", style = "py_nice_frame"}
	local camera = camera_frame.add {type = "camera", name = "camera", position = entity.position, style = "py_caravan_camera", surface_index = entity.surface.index}
	camera.visible = true
	camera.style.height = 155
	camera.zoom = 2

	local label_flow = content_flow.add {type = "flow", direction = "horizontal"}
	label_flow.add {type = "label", caption = {"gui-logistic.title-request"}}.style.font = "heading-3"
	label_flow.add {type = "empty-widget", style = "py_empty_widget"}
	label_flow.add {type = "label", caption = {"gui.priority"}}.style.font = "heading-3"

	local config_flow = content_flow.add {type = "flow", direction = "horizontal", name = "config_flow"}
	config_flow.style.vertical_align = "center"
	config_flow.add {type = "choose-elem-button", name = "py_request_type", elem_type = "fluid", tags = tags}
	config_flow.add {type = "label", caption = "×"}.style.font = "heading-2"
	local request_amount = config_flow.add {type = "textfield", name = "py_request_amount", tags = tags}
	request_amount.numeric = true
	request_amount.allow_decimal = false
	request_amount.allow_negative = false
	request_amount.style.width = 55

	config_flow.add {type = "empty-widget", style = "py_empty_widget"}

	config_flow.add {
		type = "sprite-button", name = "py_change_priority_1", style = "py_schedule_move_button",
		tags = {unit_number = unit_number, up = false},
		sprite = "down-white", hovered_sprite = "down-black", clicked_sprite = "down-black"
	}.style.height = 35
	local priority = config_flow.add {type = "textfield", name = "py_requester_priority_input", tags = tags}
	priority.numeric = true
	priority.allow_decimal = false
	priority.allow_negative = false
	priority.style.width = 55
	priority.style.height = 35
	config_flow.add {
		type = "sprite-button", name = "py_change_priority_2", style = "py_schedule_move_button",
		tags = {unit_number = unit_number, up = true},
		sprite = "up-white", hovered_sprite = "up-black", clicked_sprite = "up-black"
	}.style.height = 35

	content_flow.add {type = "line"}
	content_flow.add {type = "label", caption = {"gui.temperature-filter"}}.style.font = "heading-3"

	local temperature_flow = content_flow.add {type = "flow", direction = "horizontal", name = "temperature_flow"}
	temperature_flow.style.vertical_align = "center"
	temperature_flow.add {type = "switch", allow_none_state = false, left_label_caption = {"gui-constant.off"}, right_label_caption = {"gui-constant.on"}, name = "py_biofluid_temperature_switch", tags = tags}

	temperature_flow.add {type = "empty-widget", style = "py_empty_widget"}

	temperature_flow.add {type = "label", caption = "°C"}.style.font = "heading-2"

	local equality_operator = temperature_flow.add {type = "drop-down", name = "py_biofluid_temperature_equality_operator", items = Biofluid.equality_operators, tags = tags, style = "circuit_condition_comparator_dropdown"}
	equality_operator.style.left_margin = 10

	local temperature = temperature_flow.add {type = "textfield", name = "py_biofluid_temperature", tags = tags}
	temperature.numeric = true
	temperature.style.width = 55
	temperature.enabled = false
	temperature.allow_negative = true
	temperature.style.left_margin = 10

	Biofluid.update_requester_gui(player, main_frame)
end

Biofluid.events.on_gui_closed = function(event)
	local player = game.get_player(event.player_index)
	if event.gui_type == defines.gui_type.entity then
		local gui = player.gui.relative.bioport_gui
		if gui then gui.destroy() end
	elseif event.gui_type == defines.gui_type.custom then
		local gui = player.gui.screen.biofluid_requester_gui
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
	local bioport_data = storage.biofluid_bioports[unit_number]
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
	else
		return
	end

	Biofluid.update_bioport_gui(player, player.gui.relative.bioport_gui)
end

gui_events[defines.events.on_gui_click]["py_biofluid_food_."] = function(event) gui_click(event, defines.inventory.assembling_machine_input) end
gui_events[defines.events.on_gui_click]["py_biofluid_module_."] = function(event) gui_click(event, defines.inventory.assembling_machine_input) end
gui_events[defines.events.on_gui_click]["py_guano_output"] = function(event) gui_click(event, defines.inventory.assembling_machine_output) end

gui_events[defines.events.on_gui_elem_changed]["py_request_type"] = function(event)
	local element = event.element
	local unit_number = element.tags.unit_number
	local requester_data = storage.biofluid_requesters[unit_number]
	if not requester_data then return end
	requester_data.name = element.elem_value
end

gui_events[defines.events.on_gui_text_changed]["py_request_amount"] = function(event)
	local element = event.element
	local number = tonumber(element.text) or 0
	if number > Biofluid.tank_size then
		number = Biofluid.tank_size
		element.text = tostring(number)
	end
	local unit_number = element.tags.unit_number
	local requester_data = storage.biofluid_requesters[unit_number]
	if not requester_data then return end
	requester_data.amount = number
end

gui_events[defines.events.on_gui_click]["py_change_priority_."] = function(event)
	local element = event.element
	local unit_number = element.tags.unit_number
	local requester_data = storage.biofluid_requesters[unit_number]
	if not requester_data then return end
	local change = element.tags.up and 1 or -1
	requester_data.priority = requester_data.priority + change
	element.parent.py_requester_priority_input.text = tostring(requester_data.priority)
end

gui_events[defines.events.on_gui_text_changed]["py_requester_priority_input"] = function(event)
	local element = event.element
	local unit_number = element.tags.unit_number
	local requester_data = storage.biofluid_requesters[unit_number]
	if not requester_data then return end
	requester_data.priority = tonumber(element.text) or 0
end

gui_events[defines.events.on_gui_switch_state_changed]["py_biofluid_temperature_switch"] = function(event)
	local element = event.element
	local unit_number = element.tags.unit_number
	local requester_data = storage.biofluid_requesters[unit_number]
	if not requester_data then return end
	requester_data.care_about_temperature = element.switch_state == "right"

	local textfield = element.parent.py_biofluid_temperature
	local equality_operator = element.parent.py_biofluid_temperature_equality_operator
	textfield.enabled = requester_data.care_about_temperature
	equality_operator.enabled = requester_data.care_about_temperature
end

gui_events[defines.events.on_gui_text_changed]["py_biofluid_temperature"] = function(event)
	local element = event.element
	local unit_number = element.tags.unit_number
	local requester_data = storage.biofluid_requesters[unit_number]
	if not requester_data then return end
	requester_data.target_temperature = tonumber(element.text) or 15
end

gui_events[defines.events.on_gui_selection_state_changed]["py_biofluid_temperature_equality_operator"] = function(event)
	local element = event.element
	local unit_number = element.tags.unit_number
	local requester_data = storage.biofluid_requesters[unit_number]
	if not requester_data then return end
	requester_data.temperature_operator = element.selected_index
end
