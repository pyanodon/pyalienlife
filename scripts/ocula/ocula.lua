Oculua = {}
Oculua.events = {}

Oculua.inventory_size = 1
Oculua.range = 12

local WANDERING = 0
local PICKING_UP = 1
local DROPPING_OFF = 2
local RETURNING = 3

local CHEST = defines.inventory.chest

Oculua.events.on_init = function()
	global.incoming_oculua_items = global.incoming_oculua_items or {}
	global.should_run_oculua_code = global.should_run_oculua_code or false
	global.oculuas = global.oculuas or {}
	global.ipods = global.ipods or {}
end

function Oculua.set_target(oculua_data, target)
	local entity = oculua_data.entity
	if entity.surface_index ~= target.surface_index then
		Oculua.go_home(oculua_data)
		return
	end
	entity.set_command{
		type = defines.command.go_to_location,
		destination_entity = target,
		radius = Oculua.range,
		distraction = defines.distraction.none
	}
	oculua_data.target = target
end

function Oculua.spawn_oculua(ipod_data, player)
	ipod_data.inventory.remove{name = 'ocula', count = 1}
	local ipod = ipod_data.entity
	local oculua = ipod.surface.create_entity{
		name = 'ocula',
		position = ipod.position,
		force = ipod.force,
		create_build_effect_smoke = false
	}
	global.oculuas[oculua.unit_number] = {
		entity = oculua,
		status = PICKING_UP,
		ipod = ipod,
		player = player
	}
	ipod_data.active_oculua = ipod_data.active_oculua + 1
	return global.oculuas[oculua.unit_number]
end

function Oculua.find_ipod(player, item)
	local checked_logistic_networks = {}
	for _, ipod_data in py.shuffled_pairs(global.ipods) do
		local ipod = ipod_data.entity
		if ipod.force ~= player.force or ipod.surface ~= player.surface then goto continue end
		if ipod_data.active_oculua >= #ipod_data.inventory then goto continue end
		if ipod_data.inventory.get_item_count('ocula') == 0 then goto continue end

		local network = ipod.force.find_logistic_network_by_position(ipod.position, ipod.surface)
		if not network or checked_logistic_networks[network] then goto continue end
		if network.get_item_count(item) > 0 then return ipod_data, network end
		checked_logistic_networks[network] = true
		::continue::
	end
	return nil
end

function Oculua.process_player(player)
	local inventory = player.get_main_inventory().get_contents()
	local cursor_stack = player.cursor_stack
	global.incoming_oculua_items[player.index] = global.incoming_oculua_items[player.index] or {}
	local incoming = global.incoming_oculua_items[player.index]
	local character = player.character
	local logistic_point = character.get_logistic_point(defines.logistic_member_index.character_requester)
	if not logistic_point then return end
	local logistic_network_incoming = logistic_point.targeted_items_deliver

	for i = 1, character.request_slot_count do
		local request_slot = character.get_request_slot(i)
		if not request_slot then goto continue end
		local item = request_slot.name

		if not FUN.check_for_basic_item(item) then goto continue end -- Cannot transfer blueprint books, item-with-tags, ect. Otherwise it would wipe data
		local needed = request_slot.count - (incoming[item] or 0) - (inventory[item] or 0) - (logistic_network_incoming[item] or 0)
		if cursor_stack and cursor_stack.valid_for_read and cursor_stack.name == item then needed = needed - cursor_stack.count end

		local network = character.logistic_network
		if network then
			for _, construction_robot in pairs(network.construction_robots) do
				needed = needed - construction_robot.get_item_count(item)
				if construction_robot.name == item then needed = needed - 1 end
			end
		end

		if needed <= 0 then goto continue end

		local insertable_count = player.get_main_inventory().get_insertable_count(item)
		if insertable_count == 0 then goto continue end

		local ipod_data, network = Oculua.find_ipod(player, item)
		if not ipod_data then goto continue end
		local pickup_point = network.select_pickup_point{name = item, position = ipod_data.entity.position, include_buffers = true}
		if not pickup_point then goto continue end
		pickup_point = pickup_point.owner
		local inventory = pickup_point.get_inventory(CHEST)
		if not inventory then goto continue end

		local target_count = math.min(insertable_count, needed, inventory.get_item_count(item), game.item_prototypes[item].stack_size * Oculua.inventory_size)
		if target_count <= 0 then goto continue end
		local oculua_data = Oculua.spawn_oculua(ipod_data, player)
		oculua_data.item = item
		oculua_data.target_count = target_count
		Oculua.set_target(oculua_data, pickup_point)
		incoming[item] = (incoming[item] or 0) + oculua_data.target_count

		::continue::
	end
end

local target_offset = {0, -0.3}
function Oculua.render_altmode_icon(oculua_data)
	oculua_data.alt_mode_light = rendering.draw_sprite{
		sprite = 'utility/entity_info_dark_background',
		target = oculua_data.entity,
		target_offset = target_offset,
		surface = oculua_data.entity.surface,
		only_in_alt_mode = true,
		x_scale = 0.9,
		y_scale = 0.9
	}
	oculua_data.alt_mode = rendering.draw_sprite{
		sprite = 'item/' .. oculua_data.item,
		target = oculua_data.entity,
		target_offset = target_offset,
		surface = oculua_data.entity.surface,
		only_in_alt_mode = true,
		x_scale = 1.2,
		y_scale = 1.2
	}
end

function Oculua.destroy_altmode_icon(oculua_data)
	if oculua_data.count == 0 then
		if oculua_data.alt_mode then rendering.destroy(oculua_data.alt_mode) end
		if oculua_data.alt_mode_light then rendering.destroy(oculua_data.alt_mode_light) end
	end
end

Oculua.events[221] = function()
	if not global.should_run_oculua_code then return end -- Save on UPS if no ipods are built
	for _, player in pairs(game.connected_players) do
		if player.character and player.character_personal_logistic_requests_enabled and not player.force.find_logistic_network_by_position(player.position, player.surface) then
			Oculua.process_player(player)
		end
	end

	for _, ipod_data in pairs(global.ipods) do
		local ipod = ipod_data.entity
		if ipod_data.active_oculua == 0 and (not ipod_data.inventory.valid or ipod_data.inventory.is_empty()) then
			rendering.draw_sprite{
				sprite = 'no_module_animal',
				x_scale = 0.5,
				y_scale = 0.5,
				target = ipod,
				surface = ipod.surface,
				position = ipod.position,
				time_to_live = 110
			}
		elseif not ipod.force.find_logistic_network_by_position(ipod.position, ipod.surface) then
			rendering.draw_sprite{
				sprite = 'utility.too_far_from_roboport_icon',
				x_scale = 0.5,
				y_scale = 0.5,
				target = ipod,
				surface = ipod.surface,
				position = ipod.position,
				time_to_live = 110
			}
		end
	end
end

Oculua.events[43] = function()
	if not global.should_run_oculua_code then return end
	for _, oculua_data in pairs(global.oculuas) do
		local map_tag = oculua_data.map_tag
		local oculua = oculua_data.entity
		if map_tag and map_tag.valid then
			map_tag.destroy()
		end
		oculua_data.map_tag = oculua.force.add_chart_tag(oculua.surface, {
			position = oculua.position,
			icon = {
				type = 'virtual',
				name = 'ocula-map-tag'
			}
		})
	end
end

function Oculua.clear_incoming_oculua_items(oculua_data)
	local item = oculua_data.item
	if not item then return end
	local oculua = oculua_data.entity
	if oculua_data.count and oculua_data.count > 0 then
		-- Somehow it still contains items. Need to find somewhere to put them.
		local network_target = (oculua_data.ipod and oculua_data.ipod.valid) and oculua_data.ipod or oculua
		local network = network_target.force.find_logistic_network_by_position(network_target.position, network_target.surface)
		local items = {name = oculua_data.item, count = oculua_data.count}
		if network then
			network.insert(items)
		else
			oculua.surface.spill_item_stack(oculua.position, items, false, oculua.force, false)
		end
		oculua_data.count = 0
	end

	local player = oculua_data.player
	if not player or not player.valid then return end
	local incoming = global.incoming_oculua_items[player.index]
	if not incoming then return end
	incoming[item] = (incoming[item] or 0) - (oculua_data.target_count or 0)
	if incoming[item] <= 0 then incoming[item] = nil end
end

function Oculua.wander(oculua_data)
	local oculua = oculua_data.entity
	game.print{'oculua.wandering', math.floor(oculua.position.x * 10) / 10, math.floor(oculua.position.y * 10) / 10}
	oculua.set_command{
		type = defines.command.wander,
		distraction = defines.distraction.none
	}
	oculua_data.target = nil
	oculua_data.status = WANDERING
	Oculua.clear_incoming_oculua_items(oculua_data)
end

function Oculua.go_home(oculua_data)
	local ipod = oculua_data.ipod
	if not ipod or not ipod.valid then Oculua.wander(oculua_data); return end
	local entity = oculua_data.entity
	if not ipod or not ipod.valid or ipod.surface_index ~= entity.surface_index then
		Oculua.wander(oculua_data)
		return
	end
	entity.set_command{
		type = defines.command.go_to_location,
		destination_entity = ipod,
		radius = 0.5,
		distraction = defines.distraction.none
	}
	oculua_data.target = ipod
	oculua_data.status = RETURNING
	Oculua.clear_incoming_oculua_items(oculua_data)
end

Oculua.events.on_ai_command_completed = function(event)
	local oculua_data = global.oculuas[event.unit_number]
	if not oculua_data then return end
	local oculua = oculua_data.entity
	if event.result == defines.behavior_result.success then
		if oculua_data.status == PICKING_UP then
			local target = oculua_data.target
			local player = oculua_data.player
			if not target or not target.valid then Oculua.go_home(oculua_data); return end
			if not player or not player.valid then Oculua.go_home(oculua_data); return end
			local character = player.character
			if not character then Oculua.go_home(oculua_data); return end

			oculua_data.count = target.get_inventory(CHEST).remove{name = oculua_data.item, count = oculua_data.target_count}
			if oculua_data.count == 0 then Oculua.go_home(oculua_data); return end

			Oculua.fire_laser_beam(oculua_data)
			Oculua.render_altmode_icon(oculua_data)
			Oculua.set_target(oculua_data, character)
			oculua_data.status = DROPPING_OFF
		elseif oculua_data.status == DROPPING_OFF then
			local player = oculua_data.player
			if player and player.valid and oculua_data.count ~= 0 and player.get_main_inventory() then
				local item = oculua_data.item
				local inserted_count = player.get_main_inventory().insert{name = item, count = oculua_data.count}
				oculua_data.count = oculua_data.count - inserted_count
				Oculua.destroy_altmode_icon(oculua_data)
				Oculua.fire_laser_beam(oculua_data)
			end
			Oculua.go_home(oculua_data)
		elseif oculua_data.status == RETURNING then
			local ipod = oculua_data.ipod
			if not ipod or not ipod.valid then Oculua.wander(oculua_data); return end
			local ipod_data = global.ipods[ipod.unit_number]
			if not ipod_data then Oculua.wander(oculua_data); return end
			
			local inventory = ipod_data.inventory
			local inserted_count = inventory.insert{name = 'ocula', count = 1}
			if inserted_count == 0 then Oculua.wander(oculua_data); return end
			ipod_data.active_oculua = ipod_data.active_oculua - 1
			if oculua_data.map_tag then oculua_data.map_tag.destroy() end
			global.oculuas[oculua.unit_number] = nil
			oculua.destroy()
		end
	else Oculua.go_home(oculua_data) end
end

function Oculua.find_nearest_ipod(entity)
	local ipods = entity.surface.find_entities_filtered{position = entity.position, radius = 100, name = 'ipod', force = entity.force, type = 'container'}
	for _, ipod in pairs(ipods) do
		local ipod_data = global.ipods[ipod.unit_number]
		local inventory = ipod.get_inventory(CHEST)
		if ipod_data.active_oculua + inventory.get_item_count('ocula') < #inventory then
			ipod_data.active_oculua = ipod_data.active_oculua + 1
			return ipod
		end
	end
end

function Oculua.set_ipod_chest_filters(entity)
	local inventory = entity.get_inventory(CHEST)
	for i = 1, #inventory do inventory.set_filter(i, 'ocula') end
end

function Oculua.fire_laser_beam(oculua_data)
	local oculua = oculua_data.entity
	oculua.surface.create_entity{
		position = oculua.position,
		name = 'ocula-beam',
		force = oculua.force,
		target = oculua_data.target,
		source = oculua,
		duration = 5,
		source_offset = {0, -1}
	}
end

Oculua.events.on_built = function(event)
	local entity = event.created_entity or event.entity
	if entity.name == 'ipod' then
		local inventory = entity.get_inventory(CHEST)
		Oculua.set_ipod_chest_filters(entity)
		global.ipods[entity.unit_number] = {entity = entity, inventory = inventory, active_oculua = 0}
		global.should_run_oculua_code = true
	elseif entity.name == 'ocula' then
		local ipod = Oculua.find_nearest_ipod(entity)
		if not ipod then return end
		global.oculuas[entity.unit_number] = {
			entity = entity,
			ipod = ipod
		}
		Oculua.go_home(global.oculuas[entity.unit_number])
	end
end

Oculua.events.on_destroyed = function(event)
	local entity = event.entity
	if entity.name == 'ipod' then
		global.ipods[entity.unit_number] = nil
		global.should_run_oculua_code = not not next(global.ipods)
	elseif entity.name == 'ocula' then
		local oculua_data = global.oculuas[entity.unit_number]
		if oculua_data and oculua_data.map_tag then
			oculua_data.map_tag.destroy()
		end
		if oculua_data and event.buffer and oculua_data.item and oculua_data.count and oculua_data.count > 0 then
			event.buffer.insert{name = oculua_data.item, count = oculua_data.count}
			oculua_data.count = 0
		end
		if oculua_data and oculua_data.ipod and oculua_data.ipod.valid then
			for unit_number, ipod_data in pairs(global.ipods) do
				if unit_number == oculua_data.ipod.unit_number then
					ipod_data.active_oculua = ipod_data.active_oculua - 1
					Oculua.clear_incoming_oculua_items(oculua_data)
					break
				end
			end
		end
		global.oculuas[entity.unit_number] = nil
	end
end

Oculua.events.on_gui_opened = function(event)
	local entity = event.entity
	if not entity or entity.name ~= 'ipod' then return end
	Oculua.set_ipod_chest_filters(entity)
end