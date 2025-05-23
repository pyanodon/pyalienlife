local TO_GROUND = "pipe-to-ground"
local VESSEL = "vessel"
local BIOPORT = "bioport"

Biofluid = {}

require "scripts.biofluid.biofluid-prototypes"
require "scripts.biofluid.biofluid-gui"

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

---@class BiofluidBioport
---@field active boolean
---@field entity LuaEntity
---@field fuel_remaning int
---@field guano int
---@field animation table
---@field network_id int?
---@field animation_entity unknown?

---@class BiofluidNetwork
---@field biofluid_requesters table
---@field biofluid_providers table
---@field biofluid_bioports table<any, int>,
---@field providers_by_contents table<string, table<int, LuaEntity>>,
---@field allocated_fluids_from_providers table<int, number>,

py.on_event(py.events.on_init(), function()
    storage.biofluid_robots = storage.biofluid_robots or {}
    storage.biofluid_requesters = storage.biofluid_requesters or {}
    storage.biofluid_providers = storage.biofluid_providers or {}
    ---@type BiofluidBioport[]
    storage.biofluid_bioports = storage.biofluid_bioports or {}
    ---@type BiofluidNetwork[]
    storage.biofluid_networks = storage.biofluid_networks or {}
end)



py.on_event(py.events.on_built(), function(event)
    local entity = event.entity
    if not entity.valid then return end
    local connection_type = Biofluid.connectable[entity.name]
    if not connection_type then return end
    entity.active = false
    entity.custom_status = {
        diode = defines.entity_status_diode.green,
        label = {"entity-status.working"},
    }
    local unit_number = entity.unit_number
    if connection_type == Biofluid.REQUESTER then
        local tags = event.tags or {}
        storage.biofluid_requesters[unit_number] = {
            entity = entity,
            name = tags.name,
            amount = tags.amount or 10000,
            incoming = 0,
            care_about_temperature = tags.care_about_temperature or false,
            target_temperature = tags.target_temperature or 15,
            temperature_operator = tags.temperature_operator or 1,
            priority = tags.priority or 0
        }
    elseif connection_type == Biofluid.ROBOPORT then
        storage.biofluid_bioports[unit_number] = {
            entity = entity,
            fuel_remaning = 0,
            active = false,
            guano = 0,
            animation = {
                gobachov = {stage = 0, id = nil},
                chorkok = {stage = 0, id = nil}
            }
        }
    elseif entity.type == "pipe-to-ground" then	
        entity.operable = false
    elseif connection_type == Biofluid.PROVIDER then
        storage.biofluid_providers[unit_number] = {entity = entity}
    end
	
	::continue::
    Biofluid.built_pipe()
end)

local ENTITY_BIOFLUID_PIPE_INDEXES = {
    ["vessel-to-ground"] = 1,
    ["vessel"] = 1,
    ["bioport"] = 1,
    ["provider-tank"] = 2,
    ["requester-tank"] = 1,
}

-- https://forums.factorio.com/viewtopic.php?f=7&t=120459
local function get_fluid_segment_id(entity)
    local biofluid_pipe_index = ENTITY_BIOFLUID_PIPE_INDEXES[entity.name]
    if not biofluid_pipe_index then error("Invalid biofluid pipe: " .. entity.name) end
    local fluidbox = entity.fluidbox
    for _, connection in pairs(fluidbox.get_connections(biofluid_pipe_index)) do
        local network_id = connection.get_fluid_segment_id(1)
        if network_id then return network_id end
    end
    return math.random(1, 1000000) -- todo: remove this once the vanilla bug is fixed
end

function Biofluid.built_pipe()
    local allocated_fluids_from_providers = {}

    for _, network in pairs(storage.biofluid_networks) do
        for provider_unit_number, amount in pairs(network.allocated_fluids_from_providers or {}) do
            allocated_fluids_from_providers[provider_unit_number] = amount + (allocated_fluids_from_providers[provider_unit_number] or 0)
        end
    end

    local networks = {}
    storage.biofluid_networks = networks

    for _, biofluid_connectable_name in pairs {"biofluid_bioports", "biofluid_requesters", "biofluid_providers"} do
        local biofluid_connectables = storage[biofluid_connectable_name]

        local new_biofluid_connectables = {}
        for unit_number, biofluid_connectable in pairs(biofluid_connectables) do
            local entity = biofluid_connectable.entity
            if not entity.valid then goto continue end
            new_biofluid_connectables[unit_number] = biofluid_connectable
            local network_id = get_fluid_segment_id(entity)
            if not network_id then goto continue end
            local network = networks[network_id] or {
                biofluid_bioports = {},
                biofluid_requesters = {},
                biofluid_providers = {},
                allocated_fluids_from_providers = {},
            }
            networks[network_id] = network
            network[biofluid_connectable_name][unit_number] = true
            if allocated_fluids_from_providers[unit_number] then
                network.allocated_fluids_from_providers[unit_number] = allocated_fluids_from_providers[unit_number]
            end
            biofluid_connectable.network_id = network_id
            ::continue::
        end
        storage[biofluid_connectable_name] = new_biofluid_connectables
    end
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
                    local animation = rendering.get_object_by_id(animation_data.id)
                    if animation then animation.destroy() end
                    animation_data.id = nil
                end
            else
                local new_animation_name = "bioport-animation-" .. creature_name .. "-" .. math.min(new_stage, 10)
                if animation_data.id then
                    rendering.get_object_by_id(animation_data.id).animation = new_animation_name
                else
                    animation_data.id = rendering.draw_animation {
                        animation = new_animation_name,
                        render_layer = "higher-object-above",
                        target = entity,
                        surface = entity.surface,
                        animation_speed = creature_name == "chorkok" and 0.25 or 0.5
                    }.id
                end
            end
        end
    end
end

function Biofluid.render_error_icons()
    for unit_number, bioport_data in pairs(storage.biofluid_bioports) do
        local entity = bioport_data.entity
        if not entity or not entity.valid then
            storage.biofluid_bioports[unit_number] = nil
            goto continue
        end
        local failure_reason = Biofluid.why_isnt_my_bioport_working(bioport_data)
        local status_icon = Biofluid.status_icons[failure_reason]
        if status_icon then
            py.draw_error_sprite(entity, status_icon, 71)
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



--TODO: cache this on the provider, invalidate caches on bioport placement
function order_by_distance(base_entity, unit_numbers)
    local order = {}
    for unit_number in pairs(unit_numbers) do
        table.insert(order, unit_number)
    end
    table.sort(order, function(a, b)

		local dataA = storage.biofluid_bioports[a]
		if dataA == nil then return false end
		
		local entityA = dataA.entity
		if entityA == nil then return false end
		
		local entityA_pos = entityA.position
		if entityA_pos == nil then return false end
		
		local dataB = storage.biofluid_bioports[b]
		if dataB == nil then return false end
		
		local entityB = dataB.entity
		if entityB == nil then return false end
		
		local entityB_pos = entityB.position
		if entityB_pos == nil then return false end
	
		local distA = (entityA_pos.x - base_entity.position.x)^2 + (entityA_pos.y - base_entity.position.y)^2
        local distB = (entityB_pos.x - base_entity.position.x)^2 + (entityB_pos.y - base_entity.position.y)^2
		
        return distA < distB
    end)
    return ipairs(order)
end




local function random_order(l)
    local order = {}
    local i = 1
    for unit_number in pairs(l) do
        insert(order, random(1, i), unit_number)
        i = i + 1
    end
    return ipairs(order)
end

---MELON CHECK THIS
---@param network_data BiofluidNetwork
---@param relavant_fluids any
local function build_providers_by_contents(network_data, relavant_fluids)
    local providers_by_contents = {}
    network_data.providers_by_contents = providers_by_contents
    local providers = network_data.biofluid_providers

    local min_fluid_reserve = 10000
    for unit_number in pairs(providers) do
        local provider_data = storage.biofluid_providers[unit_number]
        if not provider_data then goto continue end
        local provider = provider_data.entity
        if not provider.valid then goto continue end

        local contents = provider.fluidbox[1]
        if not contents then goto continue end
        local name = contents.name
        if not relavant_fluids[name] then goto continue end
        local already_allocated = network_data.allocated_fluids_from_providers[provider.unit_number] or 0
        local can_give = contents.amount - already_allocated
        
		if (contents.amount >= Biofluid.tank_size) then
			-- if the provider tank is full, allow as many bots as possible to use it
			-- this allows a well-supplied provider to service many more requesters per unit time without impacting providers with smaller supply
			-- the downside is that sudden demand spikes will waste biofluid bot time by over-allocating them, but that should be rare.
			can_give = contents.amount
		end
		
		if can_give < min_fluid_reserve then goto continue end

        local list = providers_by_contents[name] or {}
        providers_by_contents[name] = list
        list[#list + 1] = provider

        ::continue::
    end
end

local function process_unfulfilled_requests(unfulfilled_request, relavant_fluids)
    local network_id = unfulfilled_request.network_id
    local network_data = storage.biofluid_networks[network_id]
    local providers_by_contents = network_data.providers_by_contents

    if not providers_by_contents then
        build_providers_by_contents(network_data, relavant_fluids[network_id])
        providers_by_contents = network_data.providers_by_contents
    end

    local name, amount = unfulfilled_request.name, unfulfilled_request.amount
    local target_temperature = unfulfilled_request.target_temperature
    local provider

    local providers = providers_by_contents[name]
    if not providers then return end

    allocated_fluids_from_providers = network_data.allocated_fluids_from_providers
    sort(providers, provider_sort_function)
    for _, p in pairs(providers) do
        local contents = p.fluidbox[1]
        if target_temperature then
            local stored_temperature = contents.temperature
            local operator = Biofluid.equality_operators[unfulfilled_request.temperature_operator or 1]
            if operator == "=" then
                if not (stored_temperature == target_temperature) then goto continue end
            elseif operator == ">" then
                if not (stored_temperature > target_temperature) then goto continue end
            elseif operator == "≥" then
                if not (stored_temperature >= target_temperature) then goto continue end
            elseif operator == "<" then
                if not (stored_temperature < target_temperature) then goto continue end
            elseif operator == "≤" then
                if not (stored_temperature <= target_temperature) then goto continue end
            elseif operator == "≠" then
                if not (stored_temperature ~= target_temperature) then goto continue end
            else
                error("Invalid operator: " .. operator)
            end
        end
        local can_give = contents.amount - (allocated_fluids_from_providers[p.unit_number] or 0)
		
		if (contents.amount >= Biofluid.tank_size) then
			-- again, if the provider tank is full assume it is also well-supplied and can provide much more than we can currently see
			-- ignore existing allocations and assume it will be full when we get there
			can_give = contents.amount
		end
		
        provider = p
        unfulfilled_request.amount = min(amount, can_give)
        break
        ::continue::
    end

    if not provider then return end
	
    local requester_data = storage.biofluid_requesters[unfulfilled_request.entity.unit_number]
	
    for _, unit_number in order_by_distance(requester_data.entity, network_data.biofluid_bioports) do

        local bioport_data = storage.biofluid_bioports[unit_number]
        if not bioport_data or not bioport_data.active or not bioport_data.entity.valid then goto continue end

		if (unfulfilled_request.amount <= 0) then
			break
		end

        local delivery_amount = Biofluid.start_journey(unfulfilled_request, provider, bioport_data)
		
        if delivery_amount ~= 0 then
            local allocated = network_data.allocated_fluids_from_providers
            allocated[provider.unit_number] = (allocated[provider.unit_number] or 0) + delivery_amount
            requester_data.incoming = requester_data.incoming + delivery_amount
            bioport_data.active = nil
            break
        end
        ::continue::
    end
end

py.register_on_nth_tick(143, "update-biofluid", "pyal", function()
    local networks = storage.biofluid_networks
    if not next(networks) then return end
    Biofluid.render_error_icons()

    local unfulfilled_requests, relavant_fluids = Biofluid.get_unfulfilled_requests()

    for _, unfulfilled_request in pairs(unfulfilled_requests) do
        process_unfulfilled_requests(unfulfilled_request, relavant_fluids)
    end

    for _, network_data in pairs(storage.biofluid_networks) do network_data.providers_by_contents = nil end
end)

local function set_target(biorobot_data, target)
    biorobot_data.entity.commandable.set_command {
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
        local removed = bioport_input_inventory.remove {name = robot, count = 1}
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
    local robot = bioport.surface.create_entity {
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
    storage.biofluid_robots[robot.unit_number] = biorobot_data
    Biofluid.update_bioport_animation(bioport_data)
    return delivery_amount
end

function Biofluid.eat(bioport_data)
    local bioport = bioport_data.entity
    if bioport_data.fuel_remaning <= 0 then
        local bioport_input_inventory = bioport.get_inventory(INPUT_INVENTORY)
        for food, calories in pairs(Biofluid.favorite_foods) do
            local removed = bioport_input_inventory.remove {name = food, count = 1}
            if removed ~= 0 then
                bioport_data.fuel_remaning = calories
                bioport_data.last_eaten_fuel_value = calories
                bioport.force.get_item_production_statistics(bioport.surface_index).on_flow(food, -1)
                return true
            end
        end
        return false
    end
    local effects = bioport.effects
    if effects and effects.consumption then
        bioport_data.fuel_remaning = bioport_data.fuel_remaning - 1 - effects.consumption
    else
        bioport_data.fuel_remaning = bioport_data.fuel_remaning - 1
    end
    return true
end

local batch_size = 3
local special_delivery = {name = "guano", count = batch_size}
function Biofluid.poop(bioport_data, robot_name)
    local poop_amount = Biofluid.taco_bell[robot_name]
    bioport_data.guano = bioport_data.guano + poop_amount
    if bioport_data.guano >= batch_size then
        bioport_data.guano = bioport_data.guano - batch_size
        local entity = bioport_data.entity
        entity.get_inventory(OUTPUT_INVENTORY).insert(special_delivery)
        entity.products_finished = entity.products_finished + batch_size
        entity.force.get_item_production_statistics(entity.surface_index).on_flow("guano", batch_size)
    end
end

local function reset_provider_allocations(biorobot_data)
    local delivery_amount = biorobot_data.delivery_amount
    local network_data = storage.biofluid_networks[biorobot_data.network_id]
    if not network_data then return end
    local provider_unit_number = biorobot_data.provider_unit_number
    local allocated = network_data.allocated_fluids_from_providers
    if not allocated[provider_unit_number] then return end
    local new = allocated[provider_unit_number] - delivery_amount
    if new < 0.001 then new = nil end
    allocated[provider_unit_number] = new
end

local function reset_requester_allocations(biorobot_data)
    local requester_data = storage.biofluid_requesters[biorobot_data.requester]
    if requester_data then
        requester_data.incoming = requester_data.incoming - biorobot_data.delivery_amount
    end
end

local function make_homeless(biorobot_data)
    storage.biofluid_robots[biorobot_data.entity.unit_number] = nil
    rendering.draw_sprite {
        target = biorobot_data.entity,
        sprite = "utility.no_storage_space_icon",
        surface = biorobot_data.entity.surface,
        x_scale = 0.4,
        y_scale = 0.4
    }
end

local function find_new_home(biorobot_data, network_data)
    if not network_data then
        network_data = storage.biofluid_networks[biorobot_data.network_id]
        if not network_data then
            make_homeless(biorobot_data); return
        end
    end
    local old_home = biorobot_data.bioport
    local home
    local min_robot_count = 999
    for unit_number in pairs(network_data.biofluid_bioports) do
        if unit_number == old_home then goto continue end
        local bioport_data = storage.biofluid_bioports[unit_number]
        if not bioport_data then goto continue end
        local bioport = bioport_data.entity
        if not bioport.valid then goto continue end
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
        ::continue::
    end
    if not home then
        make_homeless(biorobot_data); return
    end
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
    local bioport_data = storage.biofluid_bioports[biorobot_data.bioport]
    local network_id = bioport_data and bioport_data.network_id or biorobot_data.network_id
    local network_data = storage.biofluid_networks[network_id]
    if not bioport_data or not bioport_data.entity or (network_data and random() > 0.9 and table_size(network_data.biofluid_bioports) > 1) then
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
    if not provider.valid then
        go_home(biorobot_data); return
    end
    local name = biorobot_data.name
    local contents = provider.fluidbox[1]
    if not contents or contents.name ~= name then
        go_home(biorobot_data); return
    end
    local delivery_amount = min(contents.amount, biorobot_data.delivery_amount)
    if delivery_amount == 0 then
        go_home(biorobot_data); return
    end
    local requester_data = storage.biofluid_requesters[biorobot_data.requester]
    if not requester_data or not requester_data.entity.valid then
        go_home(biorobot_data); return
    end
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
    biorobot_data.alt_mode_shadow = rendering.draw_sprite {
        sprite = "utility/entity_info_dark_background",
        target = entity,
        surface = entity.surface,
        only_in_alt_mode = true,
        x_scale = 0.5,
        y_scale = 0.5,
    }.id
    biorobot_data.alt_mode_sprite = rendering.draw_sprite {
        sprite = "fluid/" .. name,
        target = entity,
        surface = entity.surface,
        only_in_alt_mode = true,
        x_scale = 0.8,
        y_scale = 0.8,
    }.id
end

local function dropoff(biorobot_data)
    local requester_data = storage.biofluid_requesters[biorobot_data.requester]
    if not requester_data or not requester_data.entity.valid then
        go_home(biorobot_data); return
    end
    local requester = requester_data.entity
    local name, amount, temperature = biorobot_data.name, biorobot_data.delivery_amount, biorobot_data.temperature
    local contents = requester.fluidbox[2]
    if contents then
        if contents.name ~= name then
            go_home(biorobot_data); return
        end
        requester.fluidbox[2] = {
            name = name,
            amount = contents.amount + amount,
            temperature = combine_tempatures(contents.amount, contents.temperature, amount, temperature)
        }
    elseif amount > 0 then
        requester.fluidbox[2] = {name = name, amount = amount, temperature = temperature}
    end
    go_home(biorobot_data)
    if biorobot_data.alt_mode_sprite then
        local alt_mode_sprite = rendering.get_object_by_id(biorobot_data.alt_mode_sprite)
        if alt_mode_sprite then alt_mode_sprite.destroy() end
    end
    if biorobot_data.alt_mode_shadow then
        local alt_mode_shadow = rendering.get_object_by_id(biorobot_data.alt_mode_shadow)
        if alt_mode_shadow then alt_mode_shadow.destroy() end
    end
end

local function returning(biorobot_data)
    local bioport_data = storage.biofluid_bioports[biorobot_data.bioport]
    if not bioport_data then
        find_new_home(biorobot_data); return
    end
    local bioport = bioport_data.entity
    if not bioport.valid then
        find_new_home(biorobot_data); return
    end
    local biorobot = biorobot_data.entity
    local inventory = bioport.get_inventory(INPUT_INVENTORY)
    if inventory.insert {name = biorobot.name, count = 1} == 1 then
        storage.biofluid_robots[biorobot.unit_number] = nil
        biorobot.destroy()
        Biofluid.update_bioport_animation(bioport_data)
    else
        find_new_home(biorobot_data)
    end
end

py.on_event(defines.events.on_ai_command_completed, function(event)
    local biorobot_data = storage.biofluid_robots[event.unit_number]
    if not biorobot_data then return end
    if event.result ~= defines.behavior_result.success then
        go_home(biorobot_data); return
    end

    if biorobot_data.status == PICKING_UP then
        pickup(biorobot_data)
    elseif biorobot_data.status == DROPPING_OFF then
        dropoff(biorobot_data)
    elseif biorobot_data.status == RETURNING then
        returning(biorobot_data)
    end
end)

local function requester_sort_function(a, b)
    local a_priority, b_priority = a.priority, b.priority
    if a_priority == b_priority then return a.amount > b.amount end
    return a_priority > b_priority
end

function Biofluid.get_unfulfilled_requests()
    local relavant_fluids = {}
    local result = {}
    local min_fluid_request = 10000

    for unit_number, requester_data in pairs(storage.biofluid_requesters) do
        local requester = requester_data.entity
        if not requester or not requester.valid then
            storage.biofluid_requesters[unit_number] = nil
            goto continue
        end
        local network_id = requester_data.network_id
        local network = storage.biofluid_networks[network_id]
        if not network or not next(network.biofluid_bioports) then
            py.draw_error_sprite(requester, "utility.too_far_from_roboport_icon", 71)
            goto continue
        end
        local fluid_name = requester_data.name
        if not fluid_name then goto continue end
        local goal = requester_data.amount
        if goal == 0 then goto continue end
        local contents = requester.fluidbox[2]
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
        result[#result + 1] = {
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
    if not entity.valid then return "entity-status.working" end
    local network = storage.biofluid_networks[bioport_data.network_id]
    if not network then return "entity-status.working" end

    local has_food = bioport_data.fuel_remaning ~= 0
    local has_creature = false
    for _, item in pairs(entity.get_inventory(INPUT_INVENTORY).get_contents()) do
        item = item.name
        if not has_food and Biofluid.favorite_foods[item] then
            has_food = true
        elseif not has_creature and Biofluid.biorobots[item] then
            has_creature = true
        end
        if has_food and has_creature then break end
    end
    if not has_food then
        return "entity-status.no-food"
    elseif not has_creature then
        return "entity-status.no-creature"
    elseif not next(network.biofluid_requesters) and not next(network.biofluid_providers) then
        return "entity-status.no-biofluid-network"
    elseif entity.get_inventory(OUTPUT_INVENTORY).get_item_count("guano") > 97 then
        return "entity-status.full-output"
    else
        return "entity-status.working"
    end
end

py.on_event(defines.events.on_entity_settings_pasted, function(event)
    local source, destination = event.source, event.destination
    local requesters = storage.biofluid_requesters
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
end)

py.on_event(defines.events.on_player_setup_blueprint, function(event)
    local player = game.get_player(event.player_index)
    local blueprint = player.blueprint_to_setup
    if not blueprint.valid_for_read then blueprint = player.cursor_stack end
    if not blueprint or not blueprint.valid_for_read then return end

    local requesters = storage.biofluid_requesters
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
end)

py.on_event(defines.events.on_player_rotated_entity, function(event)
    local entity = event.entity
    if not entity.valid then return end
    local name = entity.name
    if Biofluid.connectable[name] then Biofluid.built_pipe() end
end)

py.on_event(py.events.on_destroyed(), function(event)
    local entity = event.entity
    if not entity.valid then return end
    local name = entity.name
    if Biofluid.connectable[name] then
        local unit_number = entity.unit_number
        if entity.name == BIOPORT then
            local bioport_data = storage.biofluid_bioports[unit_number]
            if not bioport_data then return end
            local graphic = bioport_data.animation_entity
            if graphic and graphic.valid then graphic.destroy() end
            storage.biofluid_bioports[unit_number] = nil
        else
            storage.biofluid_requesters[unit_number] = nil
        end
        entity.destroy()
        Biofluid.built_pipe()
    elseif Biofluid.biorobots[name] then
        local unit_number = entity.unit_number
        local biorobot_data = storage.biofluid_robots[unit_number]
        if not biorobot_data then return end
        local status = biorobot_data.status
        if status == PICKING_UP then
            reset_provider_allocations(biorobot_data)
            reset_requester_allocations(biorobot_data)
        elseif status == DROPPING_OFF then
            reset_requester_allocations(biorobot_data)
        end
        storage.biofluid_robots[unit_number] = nil
    end
end)

py.on_event(defines.events.on_player_fast_transferred, function(event)
    local bioport_data = storage.biofluid_bioports[event.entity.unit_number]
    if not bioport_data then return end
    Biofluid.update_bioport_animation(bioport_data)
end)

py.on_event(defines.events.on_selected_entity_changed, function(event)
    local player = game.get_player(event.player_index)
    local entity = player.selected
    if not entity or not entity.valid then return end
    local entity_name = entity.name
    local entity_status

    if entity_name == "bioport" then
        local bioport_data = storage.biofluid_bioports[entity.unit_number]
        if not bioport_data then return end
        entity_status = Biofluid.why_isnt_my_bioport_working(bioport_data)
    elseif entity_name == "requester-tank" then
        local requester_data = storage.biofluid_requesters[entity.unit_number]
        if not requester_data then return end
        local network = storage.biofluid_networks[requester_data.network_id]
        entity_status = "entity-status.working"
        if not next(network.biofluid_bioports) then entity_status = "entity-status.no-biofluid-network" end
    end

    if entity_status then
        entity.custom_status = {
            diode = Biofluid.diode_colors[Biofluid.failure_reasons[entity_status]],
            label = {entity_status},
        }
    end
end)

local animations = {
    [""] = 1,
    ["N"] = 1,
    ["E"] = 2,
    ["S"] = 3,
    ["W"] = 2,
    ["NE"] = 5,
    ["ES"] = 6,
    ["SW"] = 7,
    ["NW"] = 8,
    ["NS"] = 3,
    ["EW"] = 4,
    ["NEW"] = 9,
    ["NES"] = 10,
    ["ESW"] = 11,
    ["NSW"] = 12,
    ["NESW"] = 13
}

local directions = {
    [0] = "N",
    [2] = "E",
    [4] = "S",
    [6] = "W"
}

function Biofluid.update_graphics(entity)
    do return end
end
