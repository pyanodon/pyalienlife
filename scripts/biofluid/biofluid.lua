local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

Biofluid = {}
Biofluid.events = {}

require 'biofluid-prototypes'
require 'network-builder'
require 'biofluid-gui'

local NO_REQUEST = nil

Biofluid.events.on_init = function()
	global.biofluid_robots = global.biofluid_robots or {}
	global.biofluid_requesters = global.biofluid_requesters or {}
	global.biofluid_networks = global.biofluid_networks or {}
	global.network_positions = global.network_positions or {}
end

Biofluid.events.on_built = function(event)
	local entity = event.created_entity or event.entity
	local connection_type = Biofluid.connectable[entity.name]
	if not connection_type then return end
	local network_id = Biofluid.built_pipe(entity)
	if not network_id then return end
	local unit_number = entity.unit_number
	if connection_type == Biofluid.REQUESTER then
		global.biofluid_requesters[unit_number] = {
			entity = entity,
			requested_fluid = NO_REQUEST,
			request_amount = 0,
			network_id = network_id,
			incoming = 0
		}
	end
end

Biofluid.events.on_destroyed = function(event)
	local entity = event.entity
	if Biofluid.connectable[entity.name] then
		Biofluid.destroyed_pipe(entity)
	end
end

Biofluid.events.on_player_rotated_entity = function(event)
	local entity = event.entity
	if Biofluid.connectable[entity.name] then
		Biofluid.rotated_pipe(entity, event.previous_direction)
	end
end

Biofluid.events[127] = function(event)
	local networks = global.biofluid_networks
	if #networks == 0 then return end
	local unfulfilled_requests = Biofluid.get_unfulfilled_requests()
end

function Biofluid.get_unfulfilled_requests()
	local result = {}
	return result
end

function Biofluid.get_bioport_inventory(entity)
	return entity.get_inventory(defines.inventory.assembling_machine_input)
end

function Biofluid.why_isnt_my_bioport_working(network, inventory_contents)
	local has_food, has_creature = false
	for item, _ in pairs(inventory_contents) do
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
	end
	return 'entity-status.working'
end