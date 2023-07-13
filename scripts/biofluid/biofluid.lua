Biofluid = {}
Biofluid.events = {}

require 'biofluid-prototypes'
require 'network-builder'
require 'biofluid-gui'

local PICKING_UP = 1
local DROPPING_OFF = 2
local RETURNING = 3

local INPUT_INVENTORY = defines.inventory.assembling_machine_input
local OUTPUT_INVENTORY = defines.inventory.assembling_machine_output

local sort = table.sort
local insert = table.insert
local random = math.random
local min = math.min
local floor = math.floor
local atan2 = math.atan2
local pi = math.pi

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
			bioport_data.active = nil
		else
			bioport_data.active = true
		end
		::continue::
	end
end

local function provider_sort_function(a, b)
	a = a.fluidbox[1]
	if not a then a = 0 else a = a.amount end
	b = b.fluidbox[1]
	if not b then b = 0 else b = b.amount end
	return a > b
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
			local can_give = contents.amount - already_allocated
			if can_give >= 100 then
				provider = p
				unfulfilled_request.amount = min(amount, can_give)
			end
			break
			::continue::
		end
		if provider then
			local requester_data = global.biofluid_requesters[unfulfilled_request.entity.unit_number]
			for _, bioport in random_order(network_data.bioports) do
				local bioport_data = global.biofluid_bioports[bioport.unit_number]
				if bioport_data and bioport_data.active then
					local delivery_amount = Biofluid.start_journey(unfulfilled_request, provider, bioport_data)
					local allocated = network_data.allocated_fluids_from_providers
					allocated[provider.unit_number] = (allocated[provider.unit_number] or 0) + delivery_amount
					requester_data.incoming = requester_data.incoming + delivery_amount
					bioport_data.active = nil
					break
				end
			end
		end
	end

	for _, network_data in pairs(global.biofluid_networks) do
		for _,p in pairs(network_data.providers) do
			rendering.draw_text{color = {1, 1, 1}, target = p.position, surface = p.surface, time_to_live = 144, text = tostring(network_data.allocated_fluids_from_providers[p.unit_number] or 0)}
		end
	end
	for _, network_data in pairs(global.biofluid_networks) do network_data.sorted = nil end
end

local function set_target(biorobot_data, target)
	biorobot_data.entity.set_command{
		type = defines.command.go_to_location,
		destination = target,
		radius = 0.5,
		pathfind_flags = {
			prefer_straight_paths = true,
			low_priority = true,
			allow_paths_through_own_entities = true,
			allow_destroy_friendly_entities = true
		},
		distraction = defines.distraction.none
	}
end

function Biofluid.start_journey(unfulfilled_request, provider, bioport_data)
	if not Biofluid.eat(bioport_data) then return 0 end
	local delivery_amount = unfulfilled_request.amount
	local requester = unfulfilled_request.entity
	local bioport = bioport_data.entity
	local bioport_input_inventory = bioport.get_inventory(INPUT_INVENTORY)
	local robot_name
	for robot, delivery_size in pairs(Biofluid.delivery_sizes) do
		local removed = bioport_input_inventory.remove{name = robot, count = 1}
		if removed ~= 0 then
			robot_name = robot
			delivery_amount = min(delivery_amount, delivery_size)
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
		direction = floor((atan2(position[2] - requester_position.y, position[1] - requester_position.x) / pi - 0.5) / 2 % 1)
	}
	local biorobot_data = {
		entity = robot,
		status = PICKING_UP,
		requester = requester.unit_number,
		provider = provider,
		provider_unit_number = provider.unit_number,
		bioport = bioport.unit_number,
		delivery_amount = delivery_amount,
		name = unfulfilled_request.name,
		network_id = bioport_data.network_id
	}
	set_target(biorobot_data, provider.position)
	global.biofluid_robots[robot.unit_number] = biorobot_data
	return delivery_amount
end

function Biofluid.eat(bioport_data)
	local bioport = bioport_data.entity
	if bioport_data.fuel_remaning == 0 then
		local bioport_input_inventory = bioport.get_inventory(INPUT_INVENTORY)
		for food, calories in pairs(Biofluid.favorite_foods) do
			local removed = bioport_input_inventory.remove{name = food, count = 1}
			if removed ~= 0 then
				bioport_data.fuel_remaning = calories
				bioport_data.last_eaten_fuel_value = calories
				bioport.force.item_production_statistics.on_flow(food, -1)
				return true
			end
		end
		return false
	end
	bioport_data.fuel_remaning = bioport_data.fuel_remaning - 1
	return true
end

local batch_size = 3
local special_delivery = {name = 'guano', count = batch_size}
function Biofluid.poop(bioport_data, robot_name)
	local poop_amount = Biofluid.taco_bell[robot_name]
	bioport_data.guano = bioport_data.guano + poop_amount
	if bioport_data.guano >= batch_size then
		bioport_data.guano = bioport_data.guano - batch_size
		local entity = bioport_data.entity
		entity.get_inventory(OUTPUT_INVENTORY).insert(special_delivery)
		entity.products_finished = entity.products_finished + batch_size
        entity.force.item_production_statistics.on_flow('guano', batch_size)
	end
end

local function reset_provider_allocations(biorobot_data)
	local delivery_amount = biorobot_data.delivery_amount
	local network_data = global.biofluid_networks[biorobot_data.network_id]
	if not network_data then return end
	local provider_unit_number = biorobot_data.provider_unit_number
	local allocated = network_data.allocated_fluids_from_providers
	if not allocated[provider_unit_number] then return end
	local new = allocated[provider_unit_number] - delivery_amount
	if new < 0.001 then new = nil end
	allocated[provider_unit_number] = new
end

local function reset_requester_allocations(biorobot_data)
	local requester_data = global.biofluid_requesters[biorobot_data.requester]
	if requester_data then
		requester_data.incoming = requester_data.incoming - biorobot_data.delivery_amount
	end
end

local function go_home(biorobot_data)
	local status = biorobot_data.status
	if status == PICKING_UP then
		reset_provider_allocations(biorobot_data)
		reset_requester_allocations(biorobot_data)
	elseif status == DROPPING_OFF then
		reset_requester_allocations(biorobot_data)
	end
	biorobot_data.status = RETURNING
	local bioport_data = global.biofluid_bioports[biorobot_data.bioport]
	if not bioport_data or not bioport_data.entity then
		global.biofluid_robots[biorobot_data.entity.unit_number] = nil
		return
	end
	local position = bioport_data.entity.position
	set_target(biorobot_data, {position.x, position.y - 2.5})
end

local function combine_tempatures(first_count, first_tempature, second_count, second_tempature)
	if not first_tempature and not second_tempature then return end
	if not second_tempature or first_tempature == second_tempature then return first_tempature end
	if not first_tempature then return second_tempature end
	return ((first_tempature * first_count) + (second_tempature * second_count)) / (first_count + second_count)
end

Biofluid.events.on_ai_command_completed = function(event)
	local biorobot_data = global.biofluid_robots[event.unit_number]
	if not biorobot_data then return end
	if event.result == defines.behavior_result.success then
		if biorobot_data.status == PICKING_UP then
			local provider = biorobot_data.provider
			if not provider.valid then go_home(biorobot_data); return end
			local contents = provider.fluidbox[1]
			if not contents or contents.name ~= biorobot_data.name then go_home(biorobot_data); return end
			local delivery_amount = min(contents.amount, biorobot_data.delivery_amount)
			if delivery_amount == 0 then go_home(biorobot_data); return end
			local requester_data = global.biofluid_requesters[biorobot_data.requester]
			if not requester_data or not requester_data.entity.valid then go_home(biorobot_data); return end
			local new_amount = contents.amount - delivery_amount
			if new_amount == 0 then
				provider.fluidbox[1] = nil
			else
				provider.fluidbox[1] = {name = contents.name, amount = new_amount, temperature = contents.temperature}
			end
			set_target(biorobot_data, requester_data.entity.position)
			reset_provider_allocations(biorobot_data)
			requester_data.incoming = requester_data.incoming - biorobot_data.delivery_amount + delivery_amount
			biorobot_data.delivery_amount = delivery_amount
			biorobot_data.status = DROPPING_OFF
			if contents then biorobot_data.temperature = contents.temperature end
		elseif biorobot_data.status == DROPPING_OFF then
			local requester_data = global.biofluid_requesters[biorobot_data.requester]
			if not requester_data or not requester_data.entity.valid then go_home(biorobot_data); return end
			local requester = requester_data.entity
			local name, amount, temperature = biorobot_data.name, biorobot_data.delivery_amount, biorobot_data.temperature
			local contents = requester.fluidbox[1]
			if contents then
				if contents.name ~= name then go_home(biorobot_data); return end
				requester.fluidbox[1] = {
					name = name,
					amount = contents.amount + amount,
					temperature = combine_tempatures(contents.amount, contents.temperature, amount, temperature)
				}
			else
				requester.fluidbox[1] = {name = name, amount = amount, temperature = temperature}
			end
			go_home(biorobot_data)
		elseif biorobot_data.status == RETURNING then
			local bioport_data = global.biofluid_bioports[biorobot_data.bioport]
			if not bioport_data then return end
			local bioport = bioport_data.entity
			if not bioport.valid then return end
			local biorobot = biorobot_data.entity
			local inventory = bioport.get_inventory(INPUT_INVENTORY)
			inventory.insert{name = biorobot.name, count = 1}
			biorobot.destroy()
		end
	else go_home(biorobot_data) end
end

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
		if request_size < 100 then goto continue end
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

	for _,unfulfilled_request in pairs(result) do
		local entity = unfulfilled_request.entity
		rendering.draw_text{color = {1, 1, 1}, target = entity.position, surface = entity.surface, time_to_live = 144, text = unfulfilled_request.name .. ' ' .. unfulfilled_request.amount}
	end
	sort(result, requester_sort_function)
	return result
end

function Biofluid.why_isnt_my_bioport_working(bioport_data)
	local entity = bioport_data.entity
	if not entity.valid then return 'entity-status.working' end
	local network = global.biofluid_networks[bioport_data.network_id]
	if not network then return 'entity-status.working' end

	local has_food = bioport_data.fuel_remaning ~= 0
	local has_creature = false
	for item, _ in pairs(entity.get_inventory(INPUT_INVENTORY).get_contents()) do
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
		local inventory = entity.get_inventory(OUTPUT_INVENTORY)
		if inventory.can_insert('guano') then
			return 'entity-status.working'
		end
		return 'entity-status.full-output'
	end
end

Biofluid.events.on_entity_settings_pasted = function(event)
    local source, destination = event.source, event.destination
	local requesters = global.biofluid_requesters
	local source_data, destination_data = requesters[source.unit_number], requesters[destination.unit_number]
	if not source_data or not destination_data then return end

	destination_data.name = source_data.name
	destination_data.amount = source_data.amount
	destination_data.care_about_temperature = source_data.care_about_temperature
	destination_data.target_temperature = source_data.target_temperature
	destination_data.priority = source_data.priority

	for _, player in pairs(game.connected_players) do
		local gui = player.gui.screen.biofluid_requester_gui
		if gui and gui.tags.unit_number == destination.unit_number then
			Biofluid.update_requester_gui(player, gui)
		end
	end
end