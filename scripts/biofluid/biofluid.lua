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
	global.biofluid_bioports = global.biofluid_bioports or {}
	global.biofluid_networks = global.biofluid_networks or {}
	global.network_positions = global.network_positions or {}
end

Biofluid.events.on_built = function(event)
	local entity = event.created_entity or event.entity
	local connection_type = Biofluid.connectable[entity.name]
	if not connection_type then return end
	entity.active = false
	local network_id = Biofluid.built_pipe(entity)
	if not network_id then return end
	local unit_number = entity.unit_number
	if connection_type == Biofluid.PIPE then
		entity.operable = false
	elseif connection_type == Biofluid.REQUESTER then
		global.biofluid_requesters[unit_number] = {
			entity = entity,
			requested_fluid = NO_REQUEST,
			request_amount = 0,
			network_id = network_id,
			incoming = 0
		}
	elseif connection_type == Biofluid.ROBOPORT then
		local bioport_data = {
			entity = entity,
			network_id = network_id,
			fuel_remaning = 0,
			active = false
		}
		Biofluid.reset_guano_bar(bioport_data)
		global.biofluid_bioports[unit_number] = bioport_data
	end
end

Biofluid.events.on_destroyed = function(event)
	local entity = event.entity
	if Biofluid.connectable[entity.name] then
		Biofluid.destroyed_pipe(entity)
		local unit_number = entity.unit_number
		global.biofluid_requesters[unit_number] = nil
		global.biofluid_bioports[unit_number] = nil
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
end

function Biofluid.get_unfulfilled_requests()
	local result = {}
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

function Biofluid.open_inventory(player)
	if not global.blank_gui_item then
		local inventory = game.create_inventory(1)
		inventory[1].set_stack('blank-gui-item')
		inventory[1].allow_manual_label_change = false
		global.empty_gui_item = inventory[1]
	end
	player.opened = nil
	player.opened = global.empty_gui_item
	return player.opened
end

function Biofluid.reset_guano_bar(bioport_data)
	local rng = math.random(4, 7)
	bioport_data.current_delivery = 0
	bioport_data.deliveries_til_guano = rng
end