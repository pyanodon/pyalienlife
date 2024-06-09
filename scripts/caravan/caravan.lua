Caravan = {}
Caravan.events = {}

require 'italian-names'
require 'caravan-gui'
require 'caravan-global-gui'
require 'caravan-connected-gui'
local prototypes = require 'caravan-prototypes'
local Position = require('__stdlib__/stdlib/area/position')
local Table = require('__stdlib__/stdlib/utils/table')

local function goto_entity(caravan_data, entity)
	local caravan = caravan_data.entity
	caravan.set_command{
		type = defines.command.go_to_location,
		destination_entity = entity,
		distraction = defines.distraction.none,
		pathfind_flags = prototypes[caravan.name].pathfinder_flags
	}
	caravan_data.arrival_tick = nil
end

local function goto_position(caravan_data, position)
	local caravan = caravan_data.entity
	caravan.set_command{
		type = defines.command.go_to_location,
		destination = position,
		distraction = defines.distraction.none,
		pathfind_flags = prototypes[caravan.name].pathfinder_flags
	}
	caravan_data.arrival_tick = nil
end

local function wander(caravan_data)
	caravan_data.entity.set_command{
		type = defines.command.wander,
		distraction = defines.distraction.none,
		radius = 10
	}
end

local no_fuel_map_tag = {
	type = 'virtual',
	name = 'no-fuel'
}

local function add_fuel_alert(entity)
	for _, player in pairs(game.players) do
		if player.valid then
			player.add_custom_alert(
				entity,
				no_fuel_map_tag,
				{'virtual-signal-name.no-fuel'},
				true
			)
		end
	end
end

local function remove_fuel_alert(prototype)
	for _, player in pairs(game.players) do
		if player.valid then
			player.remove_alert({
				prototype = prototype,
				icon = no_fuel_map_tag,
				message = {'virtual-signal-name.no-fuel'}
			})
		end
	end
end

Caravan.events.init = function()
	global.caravans = global.caravans or {}
	global.last_opened_caravan = global.last_opened_caravan or {}
	global.make_operable_next_tick = global.make_operable_next_tick or {}
end

local function exists_and_valid(v) return v and v.valid end
function Caravan.validity_check(caravan_data)
	if not caravan_data or caravan_data.itemised then return false end
	local inventory, fuel_inventory = caravan_data.inventory, caravan_data.fuel_inventory
	if
		not caravan_data.entity.valid or
		(inventory and not inventory.valid) or
		(fuel_inventory and not fuel_inventory.valid)
	then
		if caravan_data.entity.valid then caravan_data.entity.destroy() end
		if exists_and_valid(inventory) then inventory.destroy() end
		if exists_and_valid(fuel_inventory) then fuel_inventory.destroy() end
		global.caravans[caravan_data.unit_number] = nil
		return false
	end
	return true
end

Caravan.events.used_capsule = function(event)
	local player = game.get_player(event.player_index)
	local cursor_stack = player.cursor_stack
	if not cursor_stack or not cursor_stack.valid_for_read or cursor_stack.name ~= 'caravan-control' then return end
	cursor_stack.clear()

	local caravan_data = global.last_opened_caravan[player.index]
	if not Caravan.validity_check(caravan_data) then return end
	local schedule = caravan_data.schedule
	local prototype = prototypes[caravan_data.entity.name]
	local only_outpost = prototype.only_allow_outpost_as_destination

	local entity = player.selected or player.surface.find_entities_filtered{
		position = event.cursor_position,
		limit = 1,
		collision_mask = {'object-layer', 'player-layer', 'train-layer', 'resource-layer', 'floor-layer', 'transport-belt-layer', 'ghost-layer'}
	}[1]
	if entity then
		if entity.operable then global.make_operable_next_tick[#global.make_operable_next_tick + 1] = entity end
		entity.operable = false
		if only_outpost and entity.name ~= prototype.outpost then return end
		if entity == caravan_data.entity or entity.surface ~= caravan_data.entity.surface then return end
		schedule[#schedule + 1] = {
			localised_name = {'caravan-gui.entity-position', entity.prototype.localised_name, math.floor(entity.position.x), math.floor(entity.position.y)},
			entity = entity,
			position = entity.position,
			actions = {}
		}
	elseif not only_outpost then
		local position = event.cursor_position
		schedule[#schedule + 1] = {
			localised_name = {'caravan-gui.map-position', math.floor(position.x), math.floor(position.y)},
			position = position,
			actions = {}
		}
	else return end
	Caravan.build_gui(player, caravan_data.entity)
end

Caravan.is_automated = function(caravan_data)
	return caravan_data.schedule_id and caravan_data.schedule_id >= 0
end

local function eat(caravan_data)
	if caravan_data.fuel_bar == 0 then
		local fuel = caravan_data.fuel_inventory
		for item, count in pairs(fuel.get_contents()) do
			fuel.remove{name = item, count = 1}
			caravan_data.fuel_bar = prototypes[caravan_data.entity.name].favorite_foods[item]
			caravan_data.last_eaten_fuel_value = caravan_data.fuel_bar
			caravan_data.entity.force.item_production_statistics.on_flow(item, -1)
			return true
		end
		return false
	end
	caravan_data.fuel_bar = caravan_data.fuel_bar - 1
	return true
end

local function stop_actions(caravan_data)
	caravan_data.schedule_id = -1
	caravan_data.action_id = -1
	caravan_data.stored_energy = nil
	caravan_data.last_outpost_location = nil
	caravan_data.arrival_tick = nil
	wander(caravan_data)
end

gui_events[defines.events.on_gui_click]['py_add_outpost'] = function(event)
	local player = game.get_player(event.player_index)
	local stack = player.cursor_stack
	if not stack then return end
	if stack.valid_for_read then
		if player.insert(stack) == 0 then
			player.surface.spill_item_stack(player.position, stack, true, player.force)
		end
		stack.clear()
	end
	stack.set_stack{name = 'caravan-control'}
	global.last_opened_caravan[player.index] = global.caravans[Caravan.get_caravan_gui(player).tags.unit_number]
	player.opened = nil
end

gui_events[defines.events.on_gui_selection_state_changed]['py_add_action'] = function(event)
	local player = game.get_player(event.player_index)
	local element = event.element
	local caravan_data = global.caravans[element.tags.unit_number]
	local schedule = caravan_data.schedule[element.tags.schedule_id]
	local actions = schedule.actions

	if element.selected_index == 0 then return end

	actions[#actions + 1] = {
		type = element.get_item(element.selected_index)[2],
		localised_name = element.get_item(element.selected_index)
	}
	Caravan.update_gui(Caravan.get_caravan_gui(player))
end

gui_events[defines.events.on_gui_click]['py_delete_schedule'] = function(event)
	local player = game.get_player(event.player_index)
	local element = event.element
	local tags = element.tags
	local caravan_data = global.caravans[tags.unit_number]
	local schedule = caravan_data.schedule
	if tags.action_id then schedule = schedule[tags.schedule_id].actions end
	local id = tags.action_id or tags.schedule_id

	table.remove(schedule, id)

	stop_actions(caravan_data)
	Caravan.update_gui(Caravan.get_caravan_gui(player))
end

gui_events[defines.events.on_gui_click]['py_blocking_caravan'] = function(event)
	local element = event.element
	local tags = element.tags
	local caravan_data = global.caravans[tags.unit_number]
	local action = caravan_data.schedule[tags.schedule_id].actions[tags.action_id]
	action.async= not element.state
	stop_actions(caravan_data)
end


gui_events[defines.events.on_gui_click]['py_shuffle_schedule_.'] = function(event)
	local player = game.get_player(event.player_index)
	local element = event.element
	local tags = element.tags
	local caravan_data = global.caravans[tags.unit_number]
	local schedule = caravan_data.schedule
	if tags.action_id then schedule = schedule[tags.schedule_id].actions end
	local id = tags.action_id or tags.schedule_id

	local offset = tags.up and -1 or 1
	local a, b = schedule[id], schedule[id + offset]
	if not a or not b then return end
	schedule[id] = b
	schedule[id + offset] = a

	stop_actions(caravan_data)
	Caravan.update_gui(Caravan.get_caravan_gui(player))
end

gui_events[defines.events.on_gui_click]['py_outpost_name'] = function(event)
	local player = game.get_player(event.player_index)
	local element = event.element
	local tags = element.tags
	local caravan_data = global.caravans[tags.unit_number]
	local schedule = caravan_data.schedule[tags.schedule_id]
	local camera = Caravan.get_caravan_gui(player).content_frame.content_flow.camera_frame.camera
	local refocus = Caravan.get_caravan_gui(player).content_frame.content_flow.status_flow.py_refocus

	if schedule.entity and schedule.entity.valid then
		camera.entity = schedule.entity
	else
		camera.entity = nil
		camera.position = schedule.position
	end
	refocus.visible = true
	camera.zoom = 1
end

gui_events[defines.events.on_gui_click]['py_refocus'] = function(event)
	local player = game.get_player(event.player_index)
	local element = event.element
	local tags = element.tags
	local caravan_data = global.caravans[tags.unit_number]
	local camera = Caravan.get_caravan_gui(player).content_frame.content_flow.camera_frame.camera
	local refocus = Caravan.get_caravan_gui(player).content_frame.content_flow.status_flow.py_refocus

	camera.entity = caravan_data.entity
	refocus.visible = false
	camera.zoom = prototypes[caravan_data.entity.name].camera_zoom or 1
end

local function begin_schedule(caravan_data, schedule_id, skip_eating, is_retry)
	if caravan_data.last_scheduled_tick and caravan_data.last_scheduled_tick + 30 > game.tick then
		if caravan_data.schedule_id ~= schedule_id then
			if not skip_eating and not eat(caravan_data) then stop_actions(caravan_data); return end
		end
		caravan_data.schedule_id = schedule_id
		caravan_data.retry_pathfinder = 1
		return
	end

	local entity = caravan_data.entity
	local schedule = caravan_data.schedule[schedule_id]
	if caravan_data.fuel_inventory then
		if not skip_eating and not eat(caravan_data) then stop_actions(caravan_data); return end
	end
	if not schedule then stop_actions(caravan_data); return end

	caravan_data.schedule_id = schedule_id
	caravan_data.action_id = -1
	if schedule.entity then
		local schedule_entity = schedule.entity
		if schedule_entity.valid and schedule_entity.surface == entity.surface then
			goto_entity(caravan_data, schedule.entity)
		else
			game.print{'caravan-warnings.no-destination', entity.name, math.floor(entity.position.x*10)/10, math.floor(entity.position.y*10)/10}
			table.remove(caravan_data.schedule, schedule_id)
			stop_actions(caravan_data)
			return
		end
	else
		goto_position(caravan_data, schedule.position)
	end

	caravan_data.last_scheduled_tick = game.tick
end

local function begin_action(caravan_data, action_id)
	local entity = caravan_data.entity
	local schedule = caravan_data.schedule[caravan_data.schedule_id]
	if not schedule then stop_actions(caravan_data); return end
	local action = schedule.actions[action_id]
	if not action then stop_actions(caravan_data); return end

	caravan_data.action_id = action_id

	if action.type == 'time-passed' then
		action.timer = action.wait_time or 5
	end

	if caravan_data.fuel_inventory and not Caravan.free_actions[action.type] then eat(caravan_data) end
end

gui_events[defines.events.on_gui_click]['py_schedule_play'] = function(event)
	local player = game.get_player(event.player_index)
	local element = event.element
	local tags = element.tags
	local caravan_data = global.caravans[tags.unit_number]

	if caravan_data.schedule_id == tags.schedule_id then
		stop_actions(caravan_data)
	else
		begin_schedule(caravan_data, tags.schedule_id)
	end

	Caravan.update_gui(Caravan.get_caravan_gui(player))
end

gui_events[defines.events.on_gui_click]['py_action_play'] = function(event)
	local player = game.get_player(event.player_index)
	local element = event.element
	local tags = element.tags
	local caravan_data = global.caravans[tags.unit_number]
	local schedule = caravan_data.schedule[tags.schedule_id]

	if caravan_data.schedule_id == tags.schedule_id then
		if caravan_data.action_id == tags.action_id then
			stop_actions(caravan_data)
		else
			local position; if schedule.entity then position = schedule.entity.position else position = schedule.position end
			if Position.distance_squared(position, caravan_data.entity.position) < 1000 then
				begin_action(caravan_data, tags.action_id)
			end
		end
	else
		begin_schedule(caravan_data, tags.schedule_id)
	end

	Caravan.update_gui(Caravan.get_caravan_gui(player))
end

gui_events[defines.events.on_gui_click]['py_fuel_slot_.'] = function(event)
	local player = game.get_player(event.player_index)
	local element = event.element
	local tags = element.tags
	local caravan_data = global.caravans[tags.unit_number]
	local cursor_stack = player.cursor_stack
	if not cursor_stack then return end
	local fuel_stack = caravan_data.fuel_inventory[tags.i]
	if cursor_stack.valid_for_read and not prototypes[caravan_data.entity.name].favorite_foods[cursor_stack.name] then return end

	cursor_stack.swap_stack(fuel_stack)
	if eat(caravan_data) then caravan_data.fuel_bar = caravan_data.fuel_bar + 1 end
	Caravan.update_gui(Caravan.get_caravan_gui(player))
end

gui_events[defines.events.on_gui_elem_changed]['py_item_count'] = function(event)
	local element = event.element
	local tags = element.tags
	local caravan_data = global.caravans[tags.unit_number]
	local action = caravan_data.schedule[tags.schedule_id].actions[tags.action_id]

	action.elem_value = element.elem_value
end

gui_events[defines.events.on_gui_text_changed]['py_item_count_text'] = function(event)
	local element = event.element
	local tags = element.tags
	local caravan_data = global.caravans[tags.unit_number]
	local action = caravan_data.schedule[tags.schedule_id].actions[tags.action_id]
	local item_count = tonumber(element.text)

	if action.elem_value then
		if item_count then
			item_count = math.min(item_count, game.item_prototypes[action.elem_value].stack_size * #caravan_data.inventory)
		end
		action.item_count = item_count
	else
		action.item_count = nil
	end
end

gui_events[defines.events.on_gui_elem_changed]['py_circuit_condition_right'] = function(event)
	local element = event.element
	local tags = element.tags
	local caravan_data = global.caravans[tags.unit_number]
	local action = caravan_data.schedule[tags.schedule_id].actions[tags.action_id]

	action.circuit_condition_right = element.elem_value
end

gui_events[defines.events.on_gui_elem_changed]['py_circuit_condition_left'] = function(event)
	local element = event.element
	local tags = element.tags
	local caravan_data = global.caravans[tags.unit_number]
	local action = caravan_data.schedule[tags.schedule_id].actions[tags.action_id]

	action.circuit_condition_left = element.elem_value
end

gui_events[defines.events.on_gui_text_changed]['py_time_passed_text'] = function(event)
	local element = event.element
	local tags = element.tags
	local caravan_data = global.caravans[tags.unit_number]
	local action = caravan_data.schedule[tags.schedule_id].actions[tags.action_id]

	action.wait_time = tonumber(element.text or 5)
end

Caravan.events.ai_command_completed = function(event)
	local unit_number = event.unit_number
	local caravan_data = global.caravans[unit_number]
	if not caravan_data or not Caravan.validity_check(caravan_data) then return end
	local schedule = caravan_data.schedule[caravan_data.schedule_id]
	local status = event.result
	if not schedule then stop_actions(caravan_data); goto update_gui end

	if status == defines.behavior_result.in_progress then return end
	if status == defines.behavior_result.fail or status == defines.behavior_result.deleted then
		caravan_data.retry_pathfinder = 10
		caravan_data.action_id = -1
		return
	end

	if #schedule.actions == 0 then
		local schedule_num = #caravan_data.schedule
		if schedule_num == 1 then
			caravan_data.retry_pathfinder = 3
			return
		elseif caravan_data.schedule_id == schedule_num then
			begin_schedule(caravan_data, 1)
		else
			begin_schedule(caravan_data, caravan_data.schedule_id + 1)
		end
	else
		local entity = caravan_data.entity
		begin_action(caravan_data, 1)
		entity.set_command{
			type = defines.command.stop,
			distraction = defines.distraction.none,
			pathfind_flags = {}
		}
		local prototype = prototypes[entity.name]
		if prototype.requeue_required then
			global.caravan_queue = nil
			caravan_data.arrival_tick = game.tick
		end
	end

	::update_gui::
	for _, player in pairs(game.connected_players) do
		local gui = Caravan.get_caravan_gui(player)
		if gui and gui.tags.unit_number == unit_number then Caravan.update_gui(gui); return end
	end
end

local function caravan_sort_function(a, b)
	return (a.arrival_tick or 0) < (b.arrival_tick or 0)
end

Caravan.events[60] = function(event)
	local guis_to_update = {}

	if not global.caravan_queue then
		local queue = {}
		for _, caravan_data in pairs(global.caravans) do
			if Caravan.validity_check(caravan_data) then
				queue[#queue+1] = caravan_data
			end
		end
		table.sort(queue, caravan_sort_function)
		global.caravan_queue = queue
	end

	for _, caravan_data in pairs(global.caravan_queue) do
		if not Caravan.validity_check(caravan_data) then goto continue end
		local entity = caravan_data.entity
		local needs_fuel = caravan_data.fuel_inventory and caravan_data.fuel_bar == 0 and caravan_data.fuel_inventory.is_empty()

		if needs_fuel then
			-- 300 ticks/5 seconds is how long these alerts last
			if event.tick % 300 == 0 then
				add_fuel_alert(entity)
			end
			draw_error_sprite(entity, 'utility.fuel_icon', 30)
			goto continue
		end

		if caravan_data.retry_pathfinder then
			caravan_data.retry_pathfinder = caravan_data.retry_pathfinder - 1
			if caravan_data.retry_pathfinder == 0 then
				begin_schedule(caravan_data, caravan_data.schedule_id, true, true)
			end
			if caravan_data.retry_pathfinder == 0 then
				caravan_data.retry_pathfinder = nil
			end
			goto continue
		end

		if caravan_data.action_id == -1 then goto continue end
		local schedule = caravan_data.schedule[caravan_data.schedule_id]
		local action = schedule.actions[caravan_data.action_id]
		local result = Caravan.actions[action.type](caravan_data, schedule, action)
		if result == 'nuke' then goto continue
		elseif result == 'error' then
			stop_actions(caravan_data)
			guis_to_update[caravan_data.unit_number] = true
		elseif result then
			if #schedule.actions == caravan_data.action_id then
				if caravan_data.schedule_id == #caravan_data.schedule then
					begin_schedule(caravan_data, 1, #caravan_data.schedule == 1)
				else
					begin_schedule(caravan_data, caravan_data.schedule_id + 1)
				end
			else
				begin_action(caravan_data, caravan_data.action_id + 1)
			end
			guis_to_update[caravan_data.unit_number] = true
		else
			if schedule.entity and schedule.entity.valid then
				if Position.distance_squared(schedule.entity.position, entity.position) > 1000 then
					goto_entity(caravan_data, schedule.entity)
				end
			else
				if Position.distance_squared(schedule.position, entity.position) > 1000 then
					goto_position(caravan_data, schedule.position)
				end
			end
		end

		::continue::
	end

	if next(guis_to_update) then
		for _, player in pairs(game.connected_players) do
			local gui = Caravan.get_caravan_gui(player)
			if gui and guis_to_update[gui.tags.unit_number] then Caravan.update_gui(gui) end
		end
	end

	if next(global.make_operable_next_tick) then
		for _, entity in pairs(global.make_operable_next_tick) do
			if entity.valid then entity.operable = true end
		end
		global.make_operable_next_tick = {}
	end
end

function Caravan.instantiate_caravan(entity)
	local existing = global.caravans[entity.unit_number]
	if existing then return existing end

	local prototype = prototypes[entity.name]
	local caravan_data = {
		unit_number = entity.unit_number,
		entity = entity,
		schedule = {},
		schedule_id = -1,
		action_id = -1
	}

	if prototype.favorite_foods and prototype.fuel_size then
		caravan_data.fuel_inventory = game.create_inventory(prototype.fuel_size)
		caravan_data.fuel_bar = 0
		caravan_data.last_eaten_fuel_value = 1
	end

	if prototype.inventory_size then
		caravan_data.inventory = game.create_inventory(prototype.inventory_size)
	end

	global.caravans[entity.unit_number] = caravan_data
	return caravan_data
end

Caravan.events.on_built = function(event)
	local entity = event.created_entity or event.entity
	local prototype = prototypes[entity.name]
	if not prototype then return end
	if prototype.destructible == false then entity.destructible = false end

	local stack = event.stack
	local tags = stack and stack.valid_for_read and stack.type == 'item-with-tags' and stack.tags

	if tags and tags.unit_number and global.caravans[tags.unit_number] then
		local caravan_data = global.caravans[tags.unit_number]
		caravan_data.itemised = nil
		caravan_data.unit_number = entity.unit_number
		caravan_data.entity = entity
		stop_actions(caravan_data)
		global.caravans[entity.unit_number] = caravan_data
		global.caravans[tags.unit_number] = nil
	else
		Caravan.instantiate_caravan(entity)
	end
	script.register_on_entity_destroyed(entity)
	global.caravan_queue = nil
end

Caravan.events.on_destroyed = function(event)
	local entity = event.entity
	local prototype = prototypes[entity.name]
	if not prototype then return end

	remove_fuel_alert(prototype.placeable_by)

	local buffer = event.buffer
	if buffer then
		buffer[1].tags = {unit_number = entity.unit_number}
		local caravan_data = global.caravans[entity.unit_number]
		if caravan_data then
			buffer[1].custom_description = {
				'',
				{'caravan-gui.hello-my-name-is', Caravan.get_name(caravan_data)},
				'\n',
				entity.prototype.localised_description
			}
		end
	end
	global.caravan_queue = nil
end

Caravan.events.on_entity_destroyed = function(event)
	local unit_number = event.unit_number
	local caravan_data = global.caravans[unit_number]

	if not caravan_data then return end

	global.caravans[unit_number].itemised = true
	for _, player in pairs(game.connected_players) do
		local gui = Caravan.get_caravan_gui(player)
		if gui and gui.tags.unit_number == unit_number then gui.destroy(); player.opened = nil end
	end

	local map_tag = caravan_data.map_tag
	if map_tag and map_tag.valid then map_tag.destroy() end
end

Caravan.events.on_entity_settings_pasted = function(event)
    local source, destination = event.source, event.destination
	local source_data, destination_data = global.caravans[source.unit_number], global.caravans[destination.unit_number]
	if not source_data or not destination_data then return end

	for _, prototype in pairs(source.prototype.additional_pastable_entities) do
		if prototype.name == destination.name then goto continue end
	end
	do return end
	::continue::

	stop_actions(destination_data)
	destination_data.schedule = Table.deep_copy(source_data.schedule)
	for _, player in pairs(game.connected_players) do
		local gui = Caravan.get_caravan_gui(player)
		if gui and gui.tags.unit_number == destination.unit_number then Caravan.update_gui(gui) end
	end
end

remote.add_interface('caravans', {
	get_caravan_count = function()
		local result = 0
		for _, caravan_data in pairs(global.caravans) do
			if caravan_data.entity and caravan_data.entity.valid and not caravan_data.itemised then
				result = result + 1
			end
		end
		return result
	end
})

function Caravan.entity_changed_unit_number(old, new)
	if not old.valid then error('Don\'t call this with an invalid entity') end
	for _, caravan_data in pairs(global.caravans) do
		for _, schedule in pairs(caravan_data.schedule) do
			if schedule.entity == old then
				schedule.localised_name = {'caravan-gui.entity-position', new.prototype.localised_name, math.floor(new.position.x), math.floor(new.position.y)}
				schedule.entity = new
				schedule.position = new.position
			end
		end
	end
end