local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

Biofluid = {}
Biofluid.events = {}

require 'biofluid-prototypes'
require 'network-builder'
require 'biofluid-gui'

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
			target_temperature = 0,
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

Biofluid.events[79] = function(event)
	for unit_number, bioport_data in pairs(global.biofluid_bioports) do
		local entity = bioport_data.entity
		if not entity or not entity.valid then
			global.biofluid_bioports[unit_number] = nil
			goto continue
		end
		local failure_reason = Biofluid.why_isnt_my_bioport_working(bioport_data)
		local status_icon = Biofluid.status_icons[failure_reason]
		if status_icon then
			draw_error_sprite(entity, status_icon, 40)
			bioport_data.active = false
		else
			bioport_data.active = true
		end
		::continue::
	end

	local networks = global.biofluid_networks
	if #networks == 0 then return end
	local unfulfilled_requests = Biofluid.get_unfulfilled_requests()
end

local function requester_sort_function(a, b)
	return a.priority > b.priority or a.amount > b.amount
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
			draw_error_sprite(requester, 'utility.too_far_from_roboport_icon', 40)
			goto continue
		end
		local fluid_name = requester_data.name
		if not fluid_name then goto continue end
		local request_size = requester_data.amount
		if request_size == 0 then goto continue end
		local contents = requester.fluidbox[1]
		local already_stored = requester_data.incoming
		if not contents then
			-- pass
		elseif contents.name ~= fluid_name then
			goto continue
		else
			already_stored = already_stored + contents.amount
		end
		local request_size = request_size - already_stored
		if request_size < Biofluid.min_delivery_size then goto continue end
		result[#result+1] = {
			name = fluid_name,
			amount = request_size,
			entity = requester,
			priority = requester_data.priority,
			network_id = network_id
		}
		::continue::
	end
	table.sort(result, requester_sort_function)
	for _, request_data in pairs(result) do
		game.print(request_data.name ..' '.. request_data.amount)
	end
	return result
end

function Biofluid.why_isnt_my_bioport_working(bioport_data)
	local entity = bioport_data.entity
	if not entity or not entity.valid then return 'entity-status.working' end
	local network = global.biofluid_networks[bioport_data.network_id]
	if not network then return 'entity-status.working' end
	
	local has_food, has_creature = false
	for item, _ in pairs(entity.get_inventory(defines.inventory.assembling_machine_input).get_contents()) do
		if Biofluid.favorite_foods[item] then
			has_food = true
		elseif Biofluid.biorobots[item] then
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
		local inventory = entity.get_inventory(defines.inventory.assembling_machine_output)
		if inventory.can_insert('guano') then
			return 'entity-status.working'
		end
		return 'entity-status.full-output'
	end
end