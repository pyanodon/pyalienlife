local prototypes = require 'caravan-prototypes'
local Table = require('__stdlib__/stdlib/utils/table')
local Position = require('__stdlib__/stdlib/area/position')

local function format_energy(energy)
	return string.format('%.2f', energy / 1000000) .. 'MJ'
end

local function generate_button_status(caravan_data, schedule_id, action_id)
	local style = 'train_schedule_action_button'
	local sprite = 'utility/play'
	if caravan_data.schedule_id == schedule_id and (not action_id or action_id == caravan_data.action_id) then
		style = 'py_clicked_train_schedule_action_button'
		sprite = 'utility/stop'
	end
	return style, sprite
end

local impossible_without_outpost = {
	['store-food'] = true,
	['fill-inventory'] = true,
	['empty-inventory'] = true,
	['item-count'] = true
}

local elem_filters = {
	'item-with-entity-data', 'ammo', 'item-with-label', 'item-with-inventory', 'blueprint-book', 'item-with-tags',
	'selection-tool', 'blueprint', 'copy-paste-tool', 'deconstruction-item', 'upgrade-item', 'spidertron-remote', 'tool', 'armor', 'repair-tool'
}
elem_filters = Table.map(elem_filters, function(v) return {filter = 'type', type = v, invert = true, mode = 'and'} end)

function Caravan.build_schedule_gui(gui, caravan_data)
	for i, schedule in ipairs(caravan_data.schedule) do
		local schedule_flow = gui.add{type = 'flow', direction = 'vertical'}
		schedule_flow.style.horizontal_align = 'right'
		schedule_flow.style.vertically_stretchable = false
		schedule_flow.style.right_margin = -12

		local schedule_frame = schedule_flow.add{type = 'frame', style = 'train_schedule_station_frame'}
		schedule_frame.style.horizontally_stretchable = true
		schedule_frame.style.vertically_stretchable = true
		schedule_frame.style.height = 36
		schedule_frame.style.right_padding = 12

		local tags = {unit_number = caravan_data.unit_number, schedule_id = i}
		local playbutton = schedule_frame.add{type = 'sprite-button', name = 'py_schedule_play', tags = tags}
		playbutton.style, playbutton.sprite = generate_button_status(caravan_data, i)
		schedule_frame.add{type = 'label', name = 'py_outpost_name', style = 'clickable_squashable_label', tags = tags, caption = schedule.localised_name}

		schedule_frame.add{type = 'empty-widget', style = 'py_empty_widget', tags = tags}
		schedule_frame.add{type = 'sprite-button', name = 'py_shuffle_schedule_1', style = 'py_schedule_move_button',
			tags = {unit_number = caravan_data.unit_number, schedule_id = i, up = true},
			sprite = 'up-white', hovered_sprite = 'up-black', clicked_sprite = 'up-black'
		}
		schedule_frame.add{
			type = 'sprite-button', name = 'py_shuffle_schedule_2', style = 'py_schedule_move_button', tags = tags,
			sprite = 'down-white', hovered_sprite = 'down-black', clicked_sprite = 'down-black'
		}
		schedule_frame.add{
			type = 'sprite-button', name = 'py_delete_schedule', style = 'py_schedule_move_button', tags = tags,
			sprite = 'utility/close_white', hovered_sprite = 'utility/close_black', clicked_sprite = 'utility/close_black'
		}

		for j, action in ipairs(schedule.actions) do
			local tags = {unit_number = caravan_data.unit_number, schedule_id = i, action_id = j}

			local action_frame = schedule_flow.add{type = 'frame', style = 'train_schedule_condition_frame'}
			action_frame.style.horizontally_stretchable = true
			action_frame.style.vertically_stretchable = true
			action_frame.style.height = 36
			action_frame.style.right_padding = 12

			local playbutton = action_frame.add{type = 'sprite-button', name = 'py_action_play', tags = tags}
			playbutton.style, playbutton.sprite = generate_button_status(caravan_data, i, j)
			local label = action_frame.add{type = 'label', style = 'squashable_label_with_left_padding', caption = action.localised_name}

			if action.type == 'time-passed' then
				action_frame.add{type = 'empty-widget', style = 'py_empty_widget'}
				local textfield = action_frame.add{type = 'textfield', name = 'py_time_passed_text', style = 'py_compact_slider_value_textfield', text = action.wait_time or 5, tags = tags}
				textfield.numeric = true
				textfield.allow_decimal = false
				textfield.allow_negative = false
				action_frame.add{type = 'label', caption = 's'}.style.left_margin = -5
			elseif action.type == 'item-count' then
				label.style.right_margin = -20
				label.style.left_margin = -5
				action_frame.add{type = 'empty-widget', style = 'py_empty_widget'}
				local itemselect = action_frame.add{
					type = 'choose-elem-button', name = 'py_item_count', style = 'train_schedule_item_select_button',
					tags = tags, elem_type = 'item', elem_filters = elem_filters
				}
				itemselect.elem_value = action.elem_value
				action_frame.add{type = 'label', caption = '='}
				local textfield = action_frame.add{type = 'textfield', name = 'py_item_count_text', style = 'py_compact_slider_value_textfield', tags = tags, text = action.item_count}
				textfield.numeric = true
				textfield.allow_decimal = false
				textfield.allow_negative = false
			else
				action_frame.add{type = 'empty-widget', style = 'py_empty_widget'}
			end

			action_frame.add{
				type = 'sprite-button', name = 'py_shuffle_schedule_1', style = 'py_schedule_move_button',
				tags = {unit_number = caravan_data.unit_number, schedule_id = i, action_id = j, up = true},
				sprite = 'up-white', hovered_sprite = 'up-black', clicked_sprite = 'up-black'
			}
			action_frame.add{
				type = 'sprite-button', name = 'py_shuffle_schedule_2', style = 'py_schedule_move_button', tags = tags,
				sprite = 'down-white', hovered_sprite = 'down-black', clicked_sprite = 'down-black'
			}
			action_frame.add{
				type = 'sprite-button', name = 'py_delete_schedule', style = 'py_schedule_move_button', tags = tags,
				sprite = 'utility/close_white', hovered_sprite = 'utility/close_black', clicked_sprite = 'utility/close_black'
			}
		end

		local add_action = schedule_flow.add{type = 'button', name = 'action_frame_button', style = 'train_schedule_add_wait_condition_button', caption = {'caravan-gui.add-action'}}
		add_action.style.horizontal_align = 'right'
		local actions = prototypes[caravan_data.entity.name].actions
		local entity = schedule.entity
		if not entity or not entity.valid or (entity.name ~= 'character' and not prototypes[entity.name] and prototypes[caravan_data.entity.name].outpost ~= entity.name) then
			actions = Table.filter(actions, function(v) return not impossible_without_outpost[v] end)
		end
		actions = Table.map(actions, function(v) return {'caravan-actions.' .. v, v} end)
		add_action.add{type = 'drop-down', name = 'py_add_action', items = actions, caption = {'caravan-gui.add-action'}, tags = tags}
	end
	local add_outpost = gui.add{type = 'button', name = 'py_add_outpost', style = 'train_schedule_add_station_button', caption = {'caravan-gui.add-outpost'}}
end

local function generate_favorite_food_tooltip(caravan_data)
	local favorites = {''}
	for food, actions in pairs(prototypes[caravan_data.entity.name].favorite_foods) do
		favorites[#favorites + 1] = {'caravan-gui.favorite-foods-sub', '[item=' .. food .. ']', game.item_prototypes[food].localised_name, actions}
		favorites[#favorites + 1] = '\n'
	end
	favorites[#favorites] = nil
	return {'caravan-gui.favorite-foods-main', favorites}
end

function Caravan.build_gui(player, entity)
	local caravan_data = global.caravans[entity.unit_number]
	local prototype = prototypes[entity.name]
	
	local main_frame
	if prototype.opens_player_inventory then
		player.opened = caravan_data.inventory
		main_frame = player.gui.relative.add{
			type = 'frame', name = 'caravan_gui', caption = entity.prototype.localised_name, direction = 'vertical',
			anchor = {
				gui = defines.relative_gui_type.script_inventory_gui,
				position = defines.relative_gui_position.right
			}
		}
	else
		main_frame = player.gui.screen.add{type = 'frame', name = 'caravan_gui', caption = entity.prototype.localised_name, direction = 'vertical'}
		main_frame.auto_center = true
		player.opened = main_frame
	end
	main_frame.style.width = 436
	main_frame.style.minimal_height = 710
	main_frame.tags = {unit_number = entity.unit_number}

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
	local refocus = status_flow.add{type = 'sprite-button', name = 'py_refocus', style = 'tool_button', sprite = 'utility/import_slot', tooltip = {'caravan-gui.refocus'}, tags = {unit_number = caravan_data.unit_number}}
	refocus.style.size = {26, 26}
	refocus.style.top_margin = -2
	refocus.style.bottom_margin = -4
	refocus.visible = false

	local camera_frame = content_flow.add{type = 'frame', name = 'camera_frame', style = 'py_nice_frame'}
	local camera = camera_frame.add{type = 'camera', name = 'camera', style = 'py_caravan_camera', position = entity.position, surface_index = entity.surface.index}
	camera.entity = entity
	camera.visible = true
	camera.style.height = 155
	camera.zoom = prototype.camera_zoom or 1

	if caravan_data.is_aerial then
		content_flow.add{type = 'label', name = 'stored_energy'}
	end

	if caravan_data.fuel_inventory then
		local fuel_flow = content_flow.add{type = 'flow', name = 'fuel_flow', direction = 'horizontal'}
		fuel_flow.style.vertical_align = 'center'
		local favorite_food_tooltip = generate_favorite_food_tooltip(caravan_data)
		for i = 1, prototype.fuel_size do
			local fuel_slot = fuel_flow.add{type = 'sprite-button', name = 'py_fuel_slot_' .. i, style = 'inventory_slot', tags = {unit_number = caravan_data.unit_number, i = i}}
			fuel_slot.sprite = 'utility/slot_icon_fuel'
			fuel_slot.tooltip = favorite_food_tooltip
		end
		fuel_flow.add{type = 'progressbar', name = 'fuel_bar', style = 'burning_progressbar'}.style.horizontally_stretchable = true
	end

	local schedule_frame = content_flow.add{type = 'frame', name = 'schedule_frame', direction = 'vertical', style = 'py_nice_frame'}
	schedule_frame.style.vertically_stretchable = true

	local schedule_pane = schedule_frame.add{type = 'scroll-pane', name = 'schedule_pane', style = 'train_schedule_scroll_pane'}
	schedule_pane.horizontal_scroll_policy = 'never'
	schedule_pane.vertical_scroll_policy = 'auto-and-reserve-space'
	schedule_pane.style.horizontally_stretchable = true
	schedule_pane.style.vertically_stretchable = true
	Caravan.update_gui(main_frame)
end

script.on_event('open-caravan-gui', function(event)
	local player = game.players[event.player_index]
	if player.cursor_stack.valid_for_read then return end
	local entity = player.selected
	if not entity or not prototypes[entity.name] then return end
	local caravan_data = Caravan.instantiate_caravan(entity)
	local existing = Caravan.get_caravan_gui(player)
	if existing then
		if existing.tags.unit_number == caravan_data.unit_number then
			return
		else
			player.opened = nil
		end
	end
	Caravan.build_gui(player, entity)
end)

function Caravan.update_gui(gui, weak)
	local caravan_data = global.caravans[gui.tags.unit_number]
	if not Caravan.validity_check(caravan_data) then gui.destroy() return end
	local content_flow = gui.content_frame.content_flow
	local entity = caravan_data.entity

	local status, img
	if caravan_data.is_aerial then
		status = {'entity-status.working'}
		img = 'utility/status_working'
	elseif caravan_data.fuel_bar == 0 and caravan_data.fuel_inventory.is_empty() then
		status = {'entity-status.starved'}
		img = 'utility/status_not_working'
	elseif entity.health ~= entity.prototype.max_health then
		status = {'entity-status.wounded'}
		img = 'utility/status_yellow'
	else
		status = {'entity-status.healthy'}
		img = 'utility/status_working'
	end
	content_flow.status_flow.status_text.caption = status
	content_flow.status_flow.status_sprite.sprite = img

	if caravan_data.fuel_inventory then
		for i = 1, #caravan_data.fuel_inventory do
			local stack = caravan_data.fuel_inventory[i]
			local element = content_flow.fuel_flow['py_fuel_slot_' .. i]
			if stack.valid_for_read then
				element.sprite = 'item/' .. stack.name
				element.number = stack.count
			else
				element.sprite = 'utility/slot_icon_fuel'
				element.number = nil
			end
		end
		content_flow.fuel_flow.fuel_bar.value = caravan_data.fuel_bar / caravan_data.last_eaten_fuel_value
	end

	if caravan_data.is_aerial then
		local energy = caravan_data.stored_energy or 0
		if not caravan_data.stored_energy and caravan_data.last_outpost_location then
			local formula = prototypes[entity.name].energy_per_distance_formula
			energy = formula(Position.distance(caravan_data.last_outpost_location, entity.position))
		end
		content_flow.stored_energy.caption = {'caravan-gui.stored-energy', format_energy(energy)}
	end

	if not weak then
		local schedule_pane = gui.content_frame.content_flow.schedule_frame.schedule_pane
		schedule_pane.clear()
		Caravan.build_schedule_gui(schedule_pane, caravan_data)
	end
end

Caravan.events.close_gui = function(event)
	local player = game.get_player(event.player_index)
	if event.gui_type == defines.gui_type.script_inventory or event.gui_type == defines.gui_type.custom then
		local gui = Caravan.get_caravan_gui(player)
		if gui then gui.destroy() end
	end
end

function Caravan.get_caravan_gui(player)
	local gui = player.gui.relative.caravan_gui or player.gui.screen.caravan_gui
	if gui then return gui end
end