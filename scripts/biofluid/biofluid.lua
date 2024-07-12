local TO_GROUND = 'pipe-to-ground'
local VESSEL = 'vessel'
local BIOPORT = 'bioport'

Biofluid = {}
Biofluid.events = {}

require 'scripts.biofluid.biofluid-prototypes'
require 'scripts.biofluid.network-builder'
require 'scripts.biofluid.biofluid-gui'

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
	if not entity.valid then return end
	local connection_type = Biofluid.connectable[entity.name]
	if not connection_type then return end
	entity.active = false
	local unit_number = entity.unit_number
	if connection_type == Biofluid.REQUESTER then
		local tags = event.tags or {}
		global.biofluid_requesters[unit_number] = {
			entity = entity,
			name = tags.name,
			amount = tags.amount or 0,
			incoming = 0,
			care_about_temperature = tags.care_about_temperature or false,
			target_temperature = tags.target_temperature or 15,
			temperature_operator = tags.temperature_operator or 1,
			priority = tags.priority or 0
		}
	elseif connection_type == Biofluid.ROBOPORT then
		global.biofluid_bioports[unit_number] = {
			entity = entity,
			fuel_remaning = 0,
			active = false,
			guano = 0,
			animation = {
				gobachov = {stage = 0, id = nil},
				chorkok = {stage = 0, id = nil}
			}
		}
	elseif entity.type == 'pipe-to-ground' then
		entity.operable = false
		local underground_data = {entity = entity}
		global.biofluid_undergrounds[unit_number] = underground_data
		Biofluid.spawn_underground_pipe_heat_connection(underground_data)
	elseif connection_type == Biofluid.PROVIDER then
		entity.operable = false
	end
	Biofluid.built_pipe(entity)
end

function Biofluid.update_bioport_animation(bioport_data)
	local entity = bioport_data.entity
	local input = entity.get_inventory(INPUT_INVENTORY)
	for creature_name, animation_data in pairs(bioport_data.animation) do
		local new_stage = floor(input.get_item_count(creature_name) / 2)
		if new_stage ~= animation_data.stage then
			animation_data.stage = new_stage
			if new_stage == 0 then
				if animation_data.id then
					rendering.destroy(animation_data.id)
					animation_data.id = nil
				end
			else
				local new_animation_name = 'bioport-animation-' .. creature_name .. '-' .. math.min(new_stage, 10)
				if animation_data.id then
					rendering.set_animation(animation_data.id, new_animation_name)
				else
					animation_data.id = rendering.draw_animation{
						animation = new_animation_name,
						render_layer = 'higher-object-above',
						target = entity,
						surface = entity.surface,
						animation_speed = creature_name == 'chorkok' and 0.25 or 0.5
					}
				end
			end
		end
	end
end

function Biofluid.spawn_underground_pipe_heat_connection(underground_data)
	if underground_data.heat_connection and underground_data.heat_connection.valid then
		underground_data.heat_connection.destroy()
	end
	local entity = underground_data.entity
	local heat_connection = entity.surface.create_entity{
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
	Biofluid.update_graphics(entity)
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

local allocated_fluids_from_providers
local function provider_sort_function(entity_a, entity_b)
	local a = entity_a.fluidbox[1]
	if not a then a = 0 else a = a.amount end
	a = a - (allocated_fluids_from_providers[entity_a.unit_number] or 0)
	local b = entity_b.fluidbox[1]
	if not b then b = 0 else b = b.amount end
	b = b - (allocated_fluids_from_providers[entity_b.unit_number] or 0)
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

local function build_providers_by_contents(network_data, relavant_fluids)
	local providers_by_contents = {}
	network_data.providers_by_contents = providers_by_contents
	local providers = network_data.providers
	local min_fluid_reserve = settings.global['py-min_fluid_reserve'].value

	for k, provider in pairs(providers) do
		if not provider.valid then
			providers[k] = nil
			goto continue
		end
		local contents = provider.fluidbox[1]
		if not contents then goto continue end
		local name = contents.name
		if not relavant_fluids[name] then goto continue end
		local already_allocated = network_data.allocated_fluids_from_providers[provider.unit_number] or 0
		local can_give = contents.amount - already_allocated
		if can_give < min_fluid_reserve then goto continue end

		local list = providers_by_contents[name] or {}
		providers_by_contents[name] = list
		list[#list+1] = provider
		
		::continue::
	end
end

Biofluid.events[143] = function()
	Biofluid.render_error_icons()

	local networks = global.biofluid_networks
	if not next(networks) then return end
	local unfulfilled_requests, relavant_fluids = Biofluid.get_unfulfilled_requests()

	for _, unfulfilled_request in pairs(unfulfilled_requests) do
		local network_id = unfulfilled_request.network_id
		local network_data = global.biofluid_networks[network_id]
		local providers_by_contents = network_data.providers_by_contents

		if not providers_by_contents then
			build_providers_by_contents(network_data, relavant_fluids[network_id])
			providers_by_contents = network_data.providers_by_contents
		end

		local name, amount = unfulfilled_request.name, unfulfilled_request.amount
		local target_temperature = unfulfilled_request.target_temperature
		local provider

		local providers = providers_by_contents[name]
		if providers then
			allocated_fluids_from_providers = network_data.allocated_fluids_from_providers
			sort(providers, provider_sort_function)
			for _, p in pairs(providers) do
				local contents = p.fluidbox[1]
				if target_temperature then
					local stored_temperature = contents.temperature
					local operator = Biofluid.equality_operators[unfulfilled_request.temperature_operator or 1]
					if operator == '=' then
						if not (stored_temperature == target_temperature) then goto continue end
					elseif operator == '>' then
						if not (stored_temperature > target_temperature) then goto continue end
					elseif operator == '≥' then
						if not (stored_temperature >= target_temperature) then goto continue end
					elseif operator == '<' then
						if not (stored_temperature < target_temperature) then goto continue end
					elseif operator == '≤' then
						if not (stored_temperature <= target_temperature) then goto continue end
					elseif operator == '≠' then
						if not (stored_temperature ~= target_temperature) then goto continue end
					else
						error('Invalid operator: ' .. operator)
					end
				end
				local can_give = contents.amount - (allocated_fluids_from_providers[p.unit_number] or 0)
				provider = p
				unfulfilled_request.amount = min(amount, can_give)
				break
				::continue::
			end
		end

		if provider then
			local requester_data = global.biofluid_requesters[unfulfilled_request.entity.unit_number]
			for _, bioport in random_order(network_data.bioports) do
				local bioport_data = global.biofluid_bioports[bioport.unit_number]
				if bioport_data and bioport_data.active then
					local delivery_amount = Biofluid.start_journey(unfulfilled_request, provider, bioport_data)
					if delivery_amount ~= 0 then
						local allocated = network_data.allocated_fluids_from_providers
						allocated[provider.unit_number] = (allocated[provider.unit_number] or 0) + delivery_amount
						requester_data.incoming = requester_data.incoming + delivery_amount
						bioport_data.active = nil
						break
					end
				end
			end
		end
	end

	for _, network_data in pairs(global.biofluid_networks) do network_data.providers_by_contents = nil end
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
			allow_destroy_friendly_entities = true,
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
	local provider_position = provider.position
	local robot = bioport.surface.create_entity{
		name = robot_name,
		force = bioport.force_index,
		position = position,
		create_build_effect_smoke = false,
		direction = floor((atan2(position[2] - provider_position.y, position[1] - provider_position.x) / pi - 0.5) / 2 % 1 * 8)
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
	Biofluid.update_bioport_animation(bioport_data)
	return delivery_amount
end

function Biofluid.eat(bioport_data)
	local bioport = bioport_data.entity
	if bioport_data.fuel_remaning <= 0 then
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
	local effects = bioport.effects
	if effects and effects.consumption then
		bioport_data.fuel_remaning = bioport_data.fuel_remaning - 1 - (effects.consumption.bonus or 0)
	else
		bioport_data.fuel_remaning = bioport_data.fuel_remaning - 1
	end
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

local function make_homeless(biorobot_data)
	global.biofluid_robots[biorobot_data.entity.unit_number] = nil
	rendering.draw_sprite{
		target = biorobot_data.entity,
		sprite = 'utility.no_storage_space_icon',
		surface = biorobot_data.entity.surface,
		x_scale = 0.4,
		y_scale = 0.4
	}
end

local function find_new_home(biorobot_data, network_data)
	if not network_data then
		network_data = global.biofluid_networks[biorobot_data.network_id]
		if not network_data then make_homeless(biorobot_data); return end
	end
	local old_home = biorobot_data.bioport
	local home
	local min_robot_count = 999
	for unit_number, bioport in pairs(network_data.bioports) do
		if bioport.valid then
			local bioport_data = global.biofluid_bioports[bioport.unit_number]
			if unit_number ~= old_home and bioport.valid and bioport_data then
				local robot_count = bioport.get_inventory(INPUT_INVENTORY).get_item_count(biorobot_data.entity.name)
				if robot_count < 6 then
					home = bioport
					biorobot_data.bioport = unit_number
					break
				elseif robot_count < min_robot_count then
					min_robot_count = robot_count
					home = bioport
					biorobot_data.bioport = unit_number
				end
			end
		end
	end
	if not home then make_homeless(biorobot_data); return end
	local position = home.position
	set_target(biorobot_data, {position.x, position.y - 2.5})
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
	local network_id = bioport_data and bioport_data.network_id or biorobot_data.network_id
	local network_data = global.biofluid_networks[network_id]
	if not bioport_data or not bioport_data.entity or (network_data and random() > 0.9 and table_size(network_data.bioports) > 1) then
		if network_data then
			find_new_home(biorobot_data, network_data)
		else
			make_homeless(biorobot_data)
		end
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

local function pickup(biorobot_data)
	local provider = biorobot_data.provider
	if not provider.valid then go_home(biorobot_data); return end
	local name = biorobot_data.name
	local contents = provider.fluidbox[1]
	if not contents or contents.name ~= name then go_home(biorobot_data); return end
	local delivery_amount = min(contents.amount, biorobot_data.delivery_amount)
	if delivery_amount == 0 then go_home(biorobot_data); return end
	local requester_data = global.biofluid_requesters[biorobot_data.requester]
	if not requester_data or not requester_data.entity.valid then go_home(biorobot_data); return end
	local new_amount = contents.amount - delivery_amount
	if new_amount == 0 then
		provider.fluidbox[1] = nil
	else
		provider.fluidbox[1] = {name = name, amount = new_amount, temperature = contents.temperature}
	end
	set_target(biorobot_data, requester_data.entity.position)
	reset_provider_allocations(biorobot_data)
	requester_data.incoming = requester_data.incoming - biorobot_data.delivery_amount + delivery_amount
	biorobot_data.delivery_amount = delivery_amount
	biorobot_data.status = DROPPING_OFF
	if contents then biorobot_data.temperature = contents.temperature end
	local entity = biorobot_data.entity
	biorobot_data.alt_mode_shadow = rendering.draw_sprite{
		sprite = 'utility/entity_info_dark_background',
		target = entity,
		surface = entity.surface,
		only_in_alt_mode = true,
		x_scale = 0.5,
		y_scale = 0.5,
	}
	biorobot_data.alt_mode_sprite = rendering.draw_sprite{
		sprite = 'fluid/' .. name,
		target = entity,
		surface = entity.surface,
		only_in_alt_mode = true,
		x_scale = 0.8,
		y_scale = 0.8,
	}
end

local function dropoff(biorobot_data)
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
	elseif amount > 0 then
		requester.fluidbox[1] = {name = name, amount = amount, temperature = temperature}
	end
	go_home(biorobot_data)
	if biorobot_data.alt_mode_sprite then
		rendering.destroy(biorobot_data.alt_mode_sprite)
	end
	if biorobot_data.alt_mode_shadow then
		rendering.destroy(biorobot_data.alt_mode_shadow)
	end
end

local function returning(biorobot_data)
	local bioport_data = global.biofluid_bioports[biorobot_data.bioport]
	if not bioport_data then find_new_home(biorobot_data); return end
	local bioport = bioport_data.entity
	if not bioport.valid then find_new_home(biorobot_data); return end
	local biorobot = biorobot_data.entity
	local inventory = bioport.get_inventory(INPUT_INVENTORY)
	if inventory.insert{name = biorobot.name, count = 1} == 1 then
		global.biofluid_robots[biorobot.unit_number] = nil
		biorobot.destroy()
		Biofluid.update_bioport_animation(bioport_data)
	else
		find_new_home(biorobot_data)
	end
end

Biofluid.events.on_ai_command_completed = function(event)
	local biorobot_data = global.biofluid_robots[event.unit_number]
	if not biorobot_data then return end
	if event.result ~= defines.behavior_result.success then go_home(biorobot_data); return end

	if biorobot_data.status == PICKING_UP then
		pickup(biorobot_data)
	elseif biorobot_data.status == DROPPING_OFF then
		dropoff(biorobot_data)
	elseif biorobot_data.status == RETURNING then
		returning(biorobot_data)
	end
end

local function requester_sort_function(a, b)
	local a_priority, b_priority = a.priority, b.priority
	if a_priority == b_priority then return a.amount > b.amount end
	return a_priority > b_priority
end

function Biofluid.get_unfulfilled_requests()
	local relavant_fluids = {}
	local result = {}
	local min_fluid_request = settings.global['py-min_fluid_request'].value

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
		if request_size < min_fluid_request then goto continue end
		result[#result+1] = {
			name = fluid_name,
			amount = request_size,
			entity = requester,
			priority = requester_data.priority,
			network_id = network_id
		}
		if requester_data.care_about_temperature then
			result[#result].target_temperature = requester_data.target_temperature
			result[#result].temperature_operator = requester_data.temperature_operator 
		end

		local relavant_fluids_by_network = relavant_fluids[network_id]
		if not relavant_fluids_by_network then
			relavant_fluids_by_network = {}
			relavant_fluids[network_id] = relavant_fluids_by_network
		end
		relavant_fluids_by_network[fluid_name] = true

		::continue::
	end

	sort(result, requester_sort_function)
	return result, relavant_fluids
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
	elseif entity.get_inventory(OUTPUT_INVENTORY).get_item_count('guano') > 97 then
		return 'entity-status.full-output'
	else
		return 'entity-status.working'
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
	destination_data.temperature_operator = source_data.temperature_operator
	destination_data.priority = source_data.priority

	for _, player in pairs(game.connected_players) do
		local gui = player.gui.screen.biofluid_requester_gui
		if gui and gui.tags.unit_number == destination.unit_number then
			Biofluid.update_requester_gui(player, gui)
		end
	end
end

Biofluid.events.on_player_setup_blueprint = function(event)
	local player = game.get_player(event.player_index)
	local blueprint = player.blueprint_to_setup
	if not blueprint.valid_for_read then blueprint = player.cursor_stack end
	if not blueprint or not blueprint.valid_for_read then return end

	local requesters = global.biofluid_requesters
	local max_index = blueprint.get_blueprint_entity_count()
	for index, entity in pairs(event.mapping.get()) do
		if index > max_index then return end
		local requester_data = requesters[entity.unit_number]
		if requester_data then
			blueprint.set_blueprint_entity_tags(index, {
				name = requester_data.name,
				amount = requester_data.amount,
				care_about_temperature = requester_data.care_about_temperature,
				target_temperature = requester_data.target_temperature,
				temperature_operator = requester_data.temperature_operator,
				priority = requester_data.priority
			})
		end
	end
end

Biofluid.events.on_destroyed = function(event)
	local entity = event.entity
	local name = entity.name
	if Biofluid.connectable[name] then
		Biofluid.destroyed_pipe(entity)
		local unit_number = entity.unit_number
		if entity.type == 'pipe-to-ground' then
			local underground_data = global.biofluid_undergrounds[unit_number]
			if not underground_data then return end
			local heat_connection = underground_data.heat_connection
			if not heat_connection or not heat_connection.valid then return end
			heat_connection.destroy()
			global.biofluid_undergrounds[unit_number] = nil
		elseif entity.name == BIOPORT then
			local bioport_data = global.biofluid_bioports[unit_number]
			if not bioport_data then return end
			local graphic = bioport_data.animation_entity
			if graphic and graphic.valid then graphic.destroy() end
			global.biofluid_bioports[unit_number] = nil
		else
			global.biofluid_requesters[unit_number] = nil
		end
	elseif Biofluid.biorobots[name] then
		local unit_number = entity.unit_number
		local biorobot_data = global.biofluid_robots[unit_number]
		if not biorobot_data then return end
		local status = biorobot_data.status
		if status == PICKING_UP then
			reset_provider_allocations(biorobot_data)
			reset_requester_allocations(biorobot_data)
		elseif status == DROPPING_OFF then
			reset_requester_allocations(biorobot_data)
		end
		global.biofluid_robots[unit_number] = nil
	end
end

Biofluid.events.on_player_fast_transferred = function(event)
	local bioport_data = global.biofluid_bioports[event.entity.unit_number]
	if not bioport_data then return end
	Biofluid.update_bioport_animation(bioport_data)
end

local animations = {
	[''] = 1,
	['N'] = 1,
	['E'] = 2,
	['S'] = 3,
	['W'] = 2,
	['NE'] = 5,
	['ES'] = 6,
	['SW'] = 7,
	['NW'] = 8,
	['NS'] = 3,
	['EW'] = 4,
	['NEW'] = 9,
	['NES'] = 10,
	['ESW'] = 11,
	['NSW'] = 12,
	['NESW'] = 13
}

local directions = {
	[0] = 'N',
	[2] = 'E',
	[4] = 'S',
	[6] = 'W'
}

function Biofluid.update_graphics(entity)
	if entity.type == TO_GROUND then
		local graphics_variation = entity.direction / 2 + 1
		if graphics_variation == 3 then
			local connection = Biofluid.find_heat_connections(entity)[1]
			if Biofluid.is_looking_at_us(entity, connection) then
				graphics_variation = 5
			end
		end
		local underground_data = global.biofluid_undergrounds[entity.unit_number]
		if not underground_data then return end
		local heat_connection = underground_data.heat_connection
		if heat_connection and heat_connection.valid then
			heat_connection.graphics_variation = graphics_variation
		end
	elseif entity.name == VESSEL then
		local connections = Biofluid.find_heat_connections(entity)
		local animation_index = ''
		for _, connection in pairs(connections) do
			if Biofluid.is_looking_at_us(entity, connection) then
				animation_index = animation_index .. directions[connection.direction]
			end
		end
		entity.graphics_variation = animations[animation_index] or 1
	elseif entity.name == BIOPORT then
		local bioport_data = global.biofluid_bioports[entity.unit_number]
		if not bioport_data then return end
		local animation_entity = bioport_data.animation_entity
		if not animation_entity or not animation_entity.valid then
			bioport_data.animation_entity = entity.surface.create_entity{
				name = 'bioport-floor-animation',
				position = entity.position,
				force = entity.force_index,
			}
			animation_entity = bioport_data.animation_entity
		end
		local direction = entity.direction
		if direction == defines.direction.south then
			local connection = Biofluid.find_heat_connections(entity)[1]
			if Biofluid.is_looking_at_us(entity, connection) then
				animation_entity.graphics_variation = 5
				return
			end
		end
		animation_entity.graphics_variation = entity.direction / 2 + 1
	end
end