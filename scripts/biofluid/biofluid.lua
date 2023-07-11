local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

Biofluid = {}
Biofluid.events = {}

require 'biofluid-prototypes'
require 'network-builder'
require 'biofluid-gui'

local PICKING_UP = 1
local DROPPING_OFF = 2
local RETURNING = 3

local sort = table.sort
local random = math.random
local insert = table.insert

local input_inventory = defines.inventory.assembling_machine_input
local output_inventory = defines.inventory.assembling_machine_output

Biofluid.events.on_init = function()
	global.biofluid_robots = global.biofluid_robots or {}
	global.biofluid_requesters = global.biofluid_requesters or {}
	global.biofluid_bioports = global.biofluid_bioports or {}
	global.biofluid_undergrounds = global.biofluid_undergrounds or {}
	global.biofluid_networks = global.biofluid_networks or {}
	global.network_positions = global.network_positions or {}
end

Biofluid.events.on_built = function(event)
	local entity = event.created_entity or event.entity
	local connection_type = Biofluid.connectable[entity.name]
	if not connection_type then return end
	entity.active = false
	local unit_number = entity.unit_number
	if connection_type == Biofluid.REQUESTER then
		global.biofluid_requesters[unit_number] = {
			entity = entity,
			name = nil,
			amount = 0,
			incoming = 0,
			care_about_temperature = false,
			target_temperature = 15,
			priority = 0
		}
	elseif connection_type == Biofluid.ROBOPORT then
		global.biofluid_bioports[unit_number] = {
			entity = entity,
			fuel_remaning = 0,
			active = false,
			guano = 0
		}
	elseif entity.type == 'pipe-to-ground' then
		entity.operable = false
		local underground_data = {entity = entity}
		global.biofluid_undergrounds[unit_number] = underground_data
		Biofluid.spawn_underground_pipe_heat_connection(underground_data)
	end
	Biofluid.built_pipe(entity)
end

function Biofluid.spawn_underground_pipe_heat_connection(underground_data)
	if underground_data.heat_connection and underground_data.heat_connection.valid then
		underground_data.heat_connection.destroy()
	end
	local entity = underground_data.entity
	local heat_connection = entity.surface.create_entity{
		direction = entity.direction,
		name = 'vessel-to-ground-heat-connection',
		force = entity.force_index,
		position = entity.position
	}
	heat_connection.destructible = false
	heat_connection.minable = false
	heat_connection.operable = false
	heat_connection.active = false
	heat_connection.rotatable = false
	underground_data.heat_connection = heat_connection
end

Biofluid.events.on_destroyed = function(event)
	local entity = event.entity
	if Biofluid.connectable[entity.name] then
		Biofluid.destroyed_pipe(entity)
		local unit_number = entity.unit_number
		if entity.type == 'pipe-to-ground' then
			local underground_data = global.biofluid_undergrounds[unit_number]
			if not underground_data then return end
			local heat_connection = underground_data.heat_connection
			if not heat_connection or not heat_connection.valid then return end
			heat_connection.destroy()
			global.biofluid_undergrounds[unit_number] = nil
		else
			global.biofluid_requesters[unit_number] = nil
			global.biofluid_bioports[unit_number] = nil
			global.biofluid_robots[unit_number] = nil
		end
	end
end

Biofluid.events.on_player_rotated_entity = function(event)
	local entity = event.entity
	if Biofluid.connectable[entity.name] then
		Biofluid.rotated_pipe(entity, event.previous_direction)
		if entity.type == 'pipe-to-ground' then
			local underground_data = global.biofluid_undergrounds[entity.unit_number]
			if not underground_data then return end
			Biofluid.spawn_underground_pipe_heat_connection(underground_data)
		end
	end
end

function Biofluid.render_error_icons()
	for unit_number, bioport_data in pairs(global.biofluid_bioports) do
		local entity = bioport_data.entity
		if not entity or not entity.valid then
			global.biofluid_bioports[unit_number] = nil
			goto continue
		end
		local failure_reason = Biofluid.why_isnt_my_bioport_working(bioport_data)
		local status_icon = Biofluid.status_icons[failure_reason]
		if status_icon then
			draw_error_sprite(entity, status_icon, 71)
			bioport_data.active = false
		else
			bioport_data.active = true
		end
		::continue::
	end
end

local function provider_sort_function(a, b)
	a = a.fluidbox[1]
	b = b.fluidbox[1]
	if not b then return true end
	if not a then return false end
	return a.amount > b.amount
end

local function random_order(l)
	local order = {}
	local i = 1
	for _, elem in pairs(l) do
		if elem.valid then
			insert(order, random(1, i), elem)
			i = i + 1
		end
	end
	return ipairs(order)
end

Biofluid.events[143] = function()
	Biofluid.render_error_icons()

	local networks = global.biofluid_networks
	if #networks == 0 then return end
	for _, unfulfilled_request in pairs(Biofluid.get_unfulfilled_requests()) do
		local network_data = global.biofluid_networks[unfulfilled_request.network_id]
		local providers = network_data.providers
		if not network_data.sorted then
			sort(providers, provider_sort_function)
			network_data.sorted = true
		end
		local name, amount = unfulfilled_request.name, unfulfilled_request.amount
		local target_temperature = unfulfilled_request.target_temperature
		local provider
		for _, p in pairs(providers) do
			if not p.valid then goto continue end
			local contents = p.fluidbox[1]
			if not contents or contents.name ~= name then goto continue end
			if target_temperature and contents.temperature ~= target_temperature then goto continue end
			local already_allocated = network_data.allocated_fluids_from_providers[p.unit_number] or 0
			if contents.amount - already_allocated >= amount then provider = p end
			break
			::continue::
		end
		if provider then
			for _, bioport in random_order(network_data.bioports) do
				local bioport_data = global.biofluid_bioports[bioport.unit_number]
				if bioport_data and bioport_data.active then
					local delivery_amount = Biofluid.start_journey(unfulfilled_request, provider, bioport_data)
					local allocated = network_data.allocated_fluids_from_providers
					allocated[provider.unit_number] = (allocated[provider.unit_number] or 0) + delivery_amount
					break
				end
			end
		end
	end

	for _, network_data in pairs(global.biofluid_networks) do network_data.sorted = nil end
end

function Biofluid.start_journey(unfulfilled_request, provider, bioport_data)
	if not Biofluid.eat(bioport_data) then return 0 end
	local name, delivery_amount = unfulfilled_request.name, unfulfilled_request.amount
	local requester = unfulfilled_request.entity
	local bioport = bioport_data.entity
	local bioport_input_inventory = bioport.get_inventory(input_inventory)
	local robot_name
	for robot, delivery_size in pairs(Biofluid.delivery_sizes) do
		local removed = bioport_input_inventory.remove{name = robot, count = 1}
		if removed ~= 0 then
			robot_name = robot
			delivery_amount = math.min(delivery_amount, delivery_size)
			break
		end
	end
	if not robot_name then return 0 end
	Biofluid.poop(bioport_data, robot_name)
	local bioport_position = bioport.position
	local position = {bioport_position.x, bioport_position.y - 2.5}
	local requester_position = requester.position
	local robot = bioport.surface.create_entity{
		name = robot_name,
		force = bioport.force_index,
		position = position,
		create_build_effect_smoke = false,
		direction = math.floor((math.atan2(position[2] - requester_position.y, position[1] - requester_position.x) / math.pi - 0.5) / 2 % 1)
	}
	local biorobot_data = {
		entity = robot,
		status = PICKING_UP,
		requester = requester.unit_number,
		provider = provider.unit_number,
		bioport = bioport.unit_number,
		delivery_amount = delivery_amount,
	}
	Biofluid.set_target(biorobot_data, provider)
	global.biofluid_bioports[robot.unit_number] = biorobot_data
	return delivery_amount
end

function Biofluid.eat(bioport_data)
	local bioport = bioport_data.entity
	if bioport_data.fuel_remaning == 0 then
		local bioport_input_inventory = bioport.get_inventory(input_inventory)
		for food, calories in pairs(Biofluid.favorite_foods) do
			local removed = bioport_input_inventory.remove{name = food, count = 1}
			if removed ~= 0 then
				bioport_data.fuel_remaning = calories
				bioport_data.last_eaten_fuel_value = calories
				return true
			end
		end
		return false
	end
	bioport_data.fuel_remaning = bioport_data.fuel_remaning - 1
	return true
end

local special_delivery = {name = 'guano', count = 3}
function Biofluid.poop(bioport_data, robot_name)
	local poop_amount = Biofluid.taco_bell[robot_name]
	bioport_data.guano = bioport_data.guano + poop_amount
	if bioport_data.guano >= 3 then
		bioport_data.guano = bioport_data.guano - 3
		bioport_data.entity.get_inventory(output_inventory).insert(special_delivery)
	end
end

function Biofluid.set_target(biorobot_data, target)
	biorobot_data.entity.set_command{
		type = defines.command.go_to_location,
		destination_entity = target,
		radius = 1,
		distraction = defines.distraction.none
	}
	biorobot_data.target = target
end

--[[Biofluid.events.on_ai_command_completed = function(event)
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
end--]]

local function requester_sort_function(a, b)
	local a_priority, b_priority = a.priority, b.priority
	if a_priority == b_priority then return a.amount > b.amount end
	return a_priority > b_priority
end

function Biofluid.get_unfulfilled_requests()
	local result = {}
	for unit_number, requester_data in pairs(global.biofluid_requesters) do
		local requester = requester_data.entity
		if not requester or not requester.valid then
			global.biofluid_requesters[unit_number] = nil
			goto continue
		end
		local network_id = requester_data.network_id
		local network = global.biofluid_networks[network_id]
		if not network or not next(network.bioports) then
			draw_error_sprite(requester, 'utility.too_far_from_roboport_icon', 71)
			goto continue
		end
		local fluid_name = requester_data.name
		if not fluid_name then goto continue end
		local goal = requester_data.amount
		if goal == 0 then goto continue end
		local contents = requester.fluidbox[1]
		local already_stored = requester_data.incoming
		if not contents then
			-- pass
		elseif contents.name ~= fluid_name then
			goto continue
		else
			already_stored = already_stored + contents.amount
		end
		local request_size = goal - already_stored
		if request_size * 2 < goal then goto continue end
		result[#result+1] = {
			name = fluid_name,
			amount = request_size,
			entity = requester,
			priority = requester_data.priority,
			network_id = network_id
		}
		if requester_data.care_about_temperature then
			result[#result].target_temperature = requester_data.target_temperature
		end
		::continue::
	end
	sort(result, requester_sort_function)
	return result
end

function Biofluid.why_isnt_my_bioport_working(bioport_data)
	local entity = bioport_data.entity
	if not entity or not entity.valid then return 'entity-status.working' end
	local network = global.biofluid_networks[bioport_data.network_id]
	if not network then return 'entity-status.working' end

	local has_food = bioport_data.fuel_remaning ~= 0
	local has_creature = false
	for item, _ in pairs(entity.get_inventory(input_inventory).get_contents()) do
		if not has_food and Biofluid.favorite_foods[item] then
			has_food = true
		elseif not has_creature and Biofluid.biorobots[item] then
			has_creature = true
		end
		if has_food and has_creature then break end
	end
	if not has_food then
		return 'entity-status.no-food'
	elseif not has_creature then
		return 'entity-status.no-creature'
	elseif not next(network.requesters) and not next(network.providers) then
		return 'entity-status.no-biofluid-network'
	else
		local inventory = entity.get_inventory(output_inventory)
		if inventory.can_insert('guano') then
			return 'entity-status.working'
		end
		return 'entity-status.full-output'
	end
end