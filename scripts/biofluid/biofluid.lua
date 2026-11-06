---@namespace PyAlienLife
---@type PyAlienLifeStorage
storage = storage --[[@as PyAlienLifeStorage]]

local TO_GROUND = "pipe-to-ground"
local VESSEL = "vessel"
local BIOPORT = "bioport"

---@class (partial) Biofluid
---@field built_pipe fun()
---@field update_bioport_animation fun(bioport_data: BiofluidBioport)
---@field render_error_icons fun()
---@field start_journey fun(unfulfilled_request: BiofluidRequest, provider: LuaEntity, bioport_data: BiofluidBioport): float
---@field eat fun(bioport_data: BiofluidBioport): boolean
---@field poop fun(bioport_data: BiofluidBioport, robot_name: string)
---@field reset_provider_allocations fun(biorobot: BiofluidBiorobot)
---@field reset_requester_allocations fun(biorobot: BiofluidBiorobot)
---@field make_homeless fun(biorobot: BiofluidBiorobot)
---@field find_new_home fun(biorobot: BiofluidBiorobot, network_data: BiofluidNetwork?)
---@field go_home fun(biorobot: BiofluidBiorobot)
---@field pickup fun(biorobot: BiofluidBiorobot)
---@field dropoff fun(biorobot: BiofluidBiorobot)
---@field returning fun(biorobot: BiofluidBiorobot)
---@field get_unfulfilled_requests fun(): BiofluidRequest[], table<uint, table<string, boolean>>
---@field why_isnt_my_bioport_working fun(bioport: BiofluidBioport): Biofluid.bioport_status

Biofluid = Biofluid or {} --[[@as Biofluid]]

require "scripts.biofluid.biofluid-prototypes"
require "scripts.biofluid.biofluid-gui"

local INPUT_INVENTORY = defines.inventory.crafter_input
local OUTPUT_INVENTORY = defines.inventory.crafter_output

---@class BiofluidBioport
---@field active boolean
---@field entity LuaEntity
---@field fuel_remaning number
---@field last_eaten_fuel_value uint?
---@field guano number
---@field animation table
---@field network_id uint?
---@field animation_entity LuaEntity?

---@class BiofluidNetwork
---@field biofluid_requesters table<uint, true?>
---@field biofluid_providers table<uint, true?>
---@field biofluid_bioports table<uint, true?>
---@field providers_by_contents table<string, table<uint, LuaEntity>>
---@field allocated_fluids_from_providers table<uint, number>

---@class BiofluidRequest
---@field name string
---@field amount FluidAmount
---@field entity LuaEntity
---@field priority uint
---@field network_id uint
---@field target_temperature? float
---@field temperature_operator? 1|2|3|4|5|6

---@class BiofluidBiorobot
---@field entity LuaEntity
---@field status Biofluid.biorobot_status
---@field requester uint64
---@field provider LuaEntity
---@field provider_unit_number uint64
---@field fluid string
---@field delivery_amount FluidAmount
---@field temperature float?
---@field bioport uint64
---@field network_id uint?
---@field alt_mode_sprite_id uint?
---@field alt_mode_shadow_id uint?

---@param fluids table<string, string>
local function migrate_network_data(fluids)
    local num_migrated = 0
    local fluids_deleted = {}
    local fluids_deleted_full = {}
    local MAX_MESSAGE_SIZE = 30

    if not fluids then return end
    for _, biofluid_entity_type in pairs {"biofluid_robots", "biofluid_requesters"} do
        for k, entry in pairs(storage[biofluid_entity_type]) do
            if fluids[entry.name] == "" then
                -- This fluid has been deleted from factorio.
                if biofluid_entity_type == "biofluid_requesters" then
                    -- Remove the filter from the requester tank.
                    entry.name = nil
                else
                    -- Delete the in-flight robot and drop the robot item on the ground.
                    local entity = entry.entity
                    entity.surface.spill_item_stack {
                        position = entity.position,
                        force = entity.force_index,
                        stack = {name = entity.name, count = 1},
                        marked_for_deconstruction = true
                   }
                    storage.biofluid_robots[k] = nil
                    num_migrated = num_migrated + 1

                    if num_migrated <= MAX_MESSAGE_SIZE then
                        fluids_deleted[entity.gps_tag] = entry.name
                    end
                    fluids_deleted_full[entity.gps_tag] = entry.name

                    entity.destroy()
                end
            else
                entry.name = fluids[entry.name] or entry.name -- if it exists in the table, swap over
            end
        end
    end

    if num_migrated ~= 0 then
        local fluids_deleted_message = serpent.block(fluids_deleted):gsub("\"] = \"", " used to be => \""):gsub("%[\"",
            "biofluid robot at ")
        local fluids_deleted_full_message = serpent.block(fluids_deleted_full):gsub("\"] = \"", " used to be => \""):gsub("%[\"",
            "biofluid robot at ")

        game.print {"messages.warning-biofluid-migration", num_migrated, fluids_deleted_message}
        if num_migrated > MAX_MESSAGE_SIZE then
            game.print("\t... " ..
                (num_migrated - MAX_MESSAGE_SIZE) .. " more not shown. Check factorio-current.log for full list.")
            log "FULL LIST: "
            log {"messages.warning-biofluid-migration", num_migrated, fluids_deleted_full_message}
        end
    end
end

---@class (partial) PyAlienLifeStorage
---@field biofluid_robots table
---@field biofluid_requesters table
---@field biofluid_providers table
---@field biofluid_bioports table<uint, BiofluidBioport>
---@field biofluid_networks table<uint, BiofluidNetwork>

---@param changes ConfigurationChangedData?
py.on_event(py.events.on_init(), function(changes)
    storage.biofluid_robots = storage.biofluid_robots or {}
    storage.biofluid_requesters = storage.biofluid_requesters or {}
    storage.biofluid_providers = storage.biofluid_providers or {}
    storage.biofluid_bioports = storage.biofluid_bioports or {}
    storage.biofluid_networks = storage.biofluid_networks or {}
    if changes and changes.migrations then
        migrate_network_data(changes.migrations.fluid)
    end
end)

py.on_event(py.events.on_built(), function(event)
    local entity = event.entity
    if not entity.valid then return end
    local connection_type = Biofluid.connectables[entity.name]
    if not connection_type then return end
    entity.disabled_by_script = true
    entity.custom_status = {
        diode = defines.entity_status_diode.green,
        label = {"entity-status.working"},
   }
    local unit_number = entity.unit_number
    if connection_type == Biofluid.type.requester then
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
    elseif connection_type == Biofluid.type.roboport then
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
    elseif connection_type == Biofluid.type.provider then
        local tags = event.tags or {}
        storage.biofluid_providers[unit_number] = {
            entity = entity, 
            priority = tags.priority or 0 
       }
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

---@param entity LuaEntity
local function get_fluid_segment_id(entity)
    local biofluid_pipe_index = ENTITY_BIOFLUID_PIPE_INDEXES[entity.name]
    if not biofluid_pipe_index then error("Invalid biofluid pipe: " .. entity.name) end
    for _, connection --[[@as FluidBoxNeighbourRecord]] in pairs(entity.get_fluid_box_neighbours(biofluid_pipe_index) or {}) do
        if connection.entity.has_fluid_segment(1) then
            local network_id = connection.entity.get_fluid_segment_id(1)
            if network_id then return network_id end
        end
    end
    return math.random(1, 1000000) -- todo get rid of this bad system
end

function Biofluid.built_pipe()
    local allocated_fluids_from_providers = {}

    for _, network in pairs(storage.biofluid_networks) do
        for provider_unit_number, amount in pairs(network.allocated_fluids_from_providers or {}) do
            allocated_fluids_from_providers[provider_unit_number] = amount +
                (allocated_fluids_from_providers[provider_unit_number] or 0)
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
        local new_stage = math.floor(input.get_item_count(creature_name) / 2)
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
                    rendering.get_object_by_id(animation_data.id)--[[@cast -?]].animation = new_animation_name
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
        local status = Biofluid.why_isnt_my_bioport_working(bioport_data)
        local status_icon = Biofluid.status_icons[status]
        if status_icon then
            py.draw_error_sprite(entity, status_icon, 143, 71)
            bioport_data.active = nil
        else
            bioport_data.active = true
        end
        ::continue::
    end
end

local allocated_fluids_from_providers = {}

---@param entity_a LuaEntity
---@param entity_b LuaEntity
---@return boolean
local function provider_sort_function(entity_a, entity_b)
    local priority_a = storage.biofluid_providers[entity_a.unit_number].priority
    local priority_b = storage.biofluid_providers[entity_b.unit_number].priority

    if (priority_a > priority_b) then
        return true
    elseif (priority_a < priority_b) then
        return false
    end
  
    local a_fluid = entity_a.get_fluid(1) or {} --[[@as Fluid]]
    a_fluid.amount = a_fluid.amount or 0
    a_fluid.amount = a_fluid.amount - (allocated_fluids_from_providers[entity_a.unit_number] or 0)

    local b_fluid = entity_b.get_fluid(1) or {} --[[@as Fluid]]
    b_fluid.amount = b_fluid.amount or 0
    b_fluid.amount = b_fluid.amount - (allocated_fluids_from_providers[entity_b.unit_number] or 0)

    return a_fluid.amount > b_fluid.amount
end

--TODO: cache this on the provider, invalidate caches on bioport placement
---@param base_entity LuaEntity
---@param unit_numbers table<uint64, any>
---@return fun(tbl: any): (int, int)
function order_by_distance(base_entity, unit_numbers)
    local order = {}--[[@as integer[] ]]
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
        local distA = (py.vector.new(entityA_pos) - base_entity.position):mag2()
        local distB = (py.vector.new(entityB_pos) - base_entity.position):mag2()

        return distA < distB
    end)
    return ipairs(order)
end

---MELON CHECK THIS
---@param network_data BiofluidNetwork
---@param relavant_fluids table<string, boolean>
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
        local provider_priority = provider_data.priority

        local contents = provider.get_fluid(1)
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

---@param unfulfilled_request BiofluidRequest
---@param relavant_fluids table<uint, table<string, boolean>>
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
    table.sort(providers --[[@as LuaEntity[] ]], provider_sort_function)
    for _, p in pairs(providers) do
        local contents = p.get_fluid(1)
        if target_temperature then
            local stored_temperature = contents.temperature
            local operator = unfulfilled_request.temperature_operator or 1
            if operator == 1 then
                if not (stored_temperature == target_temperature) then goto continue end
            elseif operator == 2 then
                if not (stored_temperature > target_temperature) then goto continue end
            elseif operator == 3 then
                if not (stored_temperature >= target_temperature) then goto continue end
            elseif operator == 4 then
                if not (stored_temperature < target_temperature) then goto continue end
            elseif operator == 5 then
                if not (stored_temperature <= target_temperature) then goto continue end
            elseif operator == 6 then
                if not (stored_temperature ~= target_temperature) then goto continue end
            else
                error("Invalid operator: " .. operator)
            end
        end
        local can_give = contents.amount - (allocated_fluids_from_providers[p.unit_number --[[@as uint64]]] or 0)

        if (contents.amount >= Biofluid.tank_size) then
            -- again, if the provider tank is full assume it is also well-supplied and can provide much more than we can currently see
            -- ignore existing allocations and assume it will be full when we get there
            can_give = contents.amount
        end

        provider = p
        unfulfilled_request.amount = math.min(amount, can_give)
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

---@param biorobot_data BiofluidBiorobot
---@param target MapPosition
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
    for name, biorobot in pairs(Biofluid.biorobots) do
        local removed = bioport_input_inventory.remove {name = name, count = 1}
        if removed ~= 0 then
            robot_name = name
            delivery_amount = math.min(delivery_amount, biorobot.delivery_volume)
            break
        end
    end
    if not robot_name then return 0 end
    ---@cast robot_name string
    Biofluid.poop(bioport_data, robot_name)
    local bioport_position = bioport.position
    local position = {bioport_position.x, bioport_position.y - 2.5} --[[@as MapPosition]]
    local provider_position = provider.position
    local robot = bioport.surface.create_entity {
        name = robot_name,
        force = bioport.force_index,
        position = position,
        create_build_effect_smoke = false,
        direction = math.floor((math.atan2(position[2] - provider_position.y, position[1] - provider_position.x) / math.pi - 0.5) / 2 % 1 * 8) --[[@as defines.direction]]
    }
    ---@type BiofluidBiorobot
    local biorobot_data = {
        entity = robot --[[@as LuaEntity]],
        status = Biofluid.biorobot_status.picking_up,
        requester = requester.unit_number --[[@as uint64]],
        provider = provider,
        provider_unit_number = provider.unit_number --[[@as uint64]],
        bioport = bioport.unit_number --[[@as uint64]],
        delivery_amount = delivery_amount,
        fluid = unfulfilled_request.name,
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
        for food, calories in pairs(Biofluid.food) do
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
    bioport_data.guano = bioport_data.guano + Biofluid.biorobots[robot_name].poop_factor
    if bioport_data.guano >= batch_size then
        bioport_data.guano = bioport_data.guano - batch_size
        local entity = bioport_data.entity
        entity.get_inventory(OUTPUT_INVENTORY).insert(special_delivery)
        entity.products_finished = entity.products_finished + batch_size
        entity.force.get_item_production_statistics(entity.surface_index).on_flow("guano", batch_size)
    end
end

function Biofluid.reset_provider_allocations(biorobot)
    local delivery_amount = biorobot.delivery_amount
    local network_data = storage.biofluid_networks[biorobot.network_id]
    if not network_data then return end
    local provider_unit_number = biorobot.provider_unit_number
    local allocated = network_data.allocated_fluids_from_providers
    if not allocated[provider_unit_number] then return end
    ---@type number?
    local new = allocated[provider_unit_number] - delivery_amount
    if new < 0.001 then new = nil end
    allocated[provider_unit_number] = new
end

function Biofluid.reset_requester_allocations(biorobot)
    local requester_data = storage.biofluid_requesters[biorobot.requester]
    if requester_data then
        requester_data.incoming = requester_data.incoming - biorobot.delivery_amount
    end
end

function Biofluid.make_homeless(biorobot)
    storage.biofluid_robots[biorobot.entity.unit_number] = nil
    rendering.draw_sprite {
        target = biorobot.entity,
        sprite = "utility.no_storage_space_icon",
        surface = biorobot.entity.surface,
        x_scale = 0.4,
        y_scale = 0.4
   }
end

function Biofluid.find_new_home(biorobot_data, network_data)
    if not network_data then
        network_data = storage.biofluid_networks[biorobot_data.network_id]
        if not network_data then
            Biofluid.make_homeless(biorobot_data); return
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
        local robot_count = bioport.get_inventory(INPUT_INVENTORY)--[[@cast -?]].get_item_count(biorobot_data.entity.name)
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
        Biofluid.make_homeless(biorobot_data); return
    end
    local position = home.position
    set_target(biorobot_data, {position.x, position.y - 2.5})
end

function Biofluid.go_home(biorobot)
    local status = biorobot.status
    if status == Biofluid.biorobot_status.picking_up then
        Biofluid.reset_provider_allocations(biorobot)
        Biofluid.reset_requester_allocations(biorobot)
    elseif status == Biofluid.biorobot_status.dropping_off then
        Biofluid.reset_requester_allocations(biorobot)
    end
    biorobot.status = Biofluid.biorobot_status.returning
    local bioport = storage.biofluid_bioports[biorobot.bioport]
    local network_id = bioport and bioport.network_id or biorobot.network_id
    local network_data = storage.biofluid_networks[network_id]
    if not bioport or not bioport.entity or (network_data and math.random() > 0.9 and table_size(network_data.biofluid_bioports) > 1) then
        if network_data then
            Biofluid.find_new_home(biorobot, network_data)
        else
            Biofluid.make_homeless(biorobot)
        end
        return
    end
    local position = bioport.entity.position
    set_target(biorobot, {position.x, position.y - 2.5} --[[@as MapPosition]])
end

local function combine_with_temperatures(first_count, first_tempature, second_count, second_tempature)
    if not first_tempature and not second_tempature then return end
    if not second_tempature or first_tempature == second_tempature then return first_tempature end
    if not first_tempature then return second_tempature end
    return ((first_tempature * first_count) + (second_tempature * second_count)) / (first_count + second_count)
end

function Biofluid.pickup(biorobot)
    local provider = biorobot.provider
    if not provider.valid then
        Biofluid.go_home(biorobot); return
    end
    local fluid = biorobot.fluid
    local contents = provider.get_fluid(1)
    if not contents or contents.name ~= fluid then
        Biofluid.go_home(biorobot); return
    end
    local delivery_amount = math.min(contents.amount, biorobot.delivery_amount)
    if delivery_amount == 0 then
        Biofluid.go_home(biorobot); return
    end
    local requester_data = storage.biofluid_requesters[biorobot.requester]
    if not requester_data or not requester_data.entity.valid then
        Biofluid.go_home(biorobot); return
    end
    local new_amount = contents.amount - delivery_amount
    if new_amount == 0 then
        provider.clear_fluid(1)
    else
        provider.set_fluid(1, {name = fluid, amount = new_amount, temperature = contents.temperature})
    end
    set_target(biorobot, requester_data.entity.position)
    Biofluid.reset_provider_allocations(biorobot)
    requester_data.incoming = requester_data.incoming - biorobot.delivery_amount + delivery_amount
    biorobot.delivery_amount = delivery_amount
    biorobot.status = Biofluid.biorobot_status.dropping_off
    if contents then biorobot.temperature = contents.temperature end
    local entity = biorobot.entity
    biorobot.alt_mode_shadow_id = rendering.draw_sprite {
        sprite = "utility/entity_info_dark_background",
        target = entity,
        surface = entity.surface,
        only_in_alt_mode = true,
        x_scale = 0.5,
        y_scale = 0.5,
   }.id
    biorobot.alt_mode_sprite_id = rendering.draw_sprite {
        sprite = "fluid/" .. fluid,
        target = entity,
        surface = entity.surface,
        only_in_alt_mode = true,
        x_scale = 0.8,
        y_scale = 0.8,
   }.id
end

function Biofluid.dropoff(biorobot)
    local requester_data = storage.biofluid_requesters[biorobot.requester]
    if not requester_data or not requester_data.entity.valid then
        Biofluid.go_home(biorobot); return
    end
    local requester = requester_data.entity
    local fluid, amount, temperature = biorobot.fluid, biorobot.delivery_amount, biorobot.temperature
    local contents = requester.get_fluid(2)
    if contents then
        if contents.name ~= fluid then
            Biofluid.go_home(biorobot); return
        end
        requester.set_fluid(2, {
            name = fluid,
            amount = contents.amount + amount,
            temperature = combine_with_temperatures(contents.amount, contents.temperature, amount, temperature)
       })
    elseif amount > 0 then
        requester.set_fluid(2, {name = fluid, amount = amount, temperature = temperature})
    end
    Biofluid.go_home(biorobot)
    if biorobot.alt_mode_sprite_id then
        local alt_mode_sprite = rendering.get_object_by_id(biorobot.alt_mode_sprite_id)
        if alt_mode_sprite then alt_mode_sprite.destroy() end
    end
    if biorobot.alt_mode_shadow_id then
        local alt_mode_shadow = rendering.get_object_by_id(biorobot.alt_mode_shadow_id)
        if alt_mode_shadow then alt_mode_shadow.destroy() end
    end
end

function Biofluid.returning(biorobot)
    local bioport_data = storage.biofluid_bioports[biorobot.bioport]
    if not bioport_data then
        Biofluid.find_new_home(biorobot); return
    end
    local bioport = bioport_data.entity
    if not bioport.valid then
        Biofluid.find_new_home(biorobot); return
    end
    local entity = biorobot.entity
    local inventory = bioport.get_inventory(INPUT_INVENTORY) --[[@as LuaInventory]]
    if inventory.insert {name = entity.name, count = 1} == 1 then
        storage.biofluid_robots[entity.unit_number] = nil
        entity.destroy()
        Biofluid.update_bioport_animation(bioport_data)
    else
        Biofluid.find_new_home(biorobot)
    end
end

---@param event EventData.on_ai_command_completed
py.on_event(defines.events.on_ai_command_completed, function(event)
    local biorobot_data = storage.biofluid_robots[event.unit_number]
    if not biorobot_data then return end
    if event.result ~= defines.behavior_result.success then
        Biofluid.go_home(biorobot_data); return
    end

    if biorobot_data.status == Biofluid.biorobot_status.picking_up then
        Biofluid.pickup(biorobot_data)
    elseif biorobot_data.status == Biofluid.biorobot_status.dropping_off then
        Biofluid.dropoff(biorobot_data)
    elseif biorobot_data.status == Biofluid.biorobot_status.returning then
        Biofluid.returning(biorobot_data)
    end
end)

---@param a BiofluidRequest
---@param b BiofluidRequest
---@return boolean
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
            py.draw_error_sprite(requester, "utility.too_far_from_roboport_icon", 143, 71)
            goto continue
        end
        local fluid_name = requester_data.name
        if not fluid_name then goto continue end
        local goal = requester_data.amount
        if goal == 0 then goto continue end
        local contents = requester.get_fluid(2)
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

    table.sort(result, requester_sort_function)
    return result, relavant_fluids
end

function Biofluid.why_isnt_my_bioport_working(bioport)
    local entity = bioport.entity
    if not entity.valid then return Biofluid.bioport_status.working end
    local network = storage.biofluid_networks[bioport.network_id]
    if not network then return Biofluid.bioport_status.working end

    local has_food = bioport.fuel_remaning ~= 0
    local has_creature = false
    for _, item in pairs(entity.get_inventory(INPUT_INVENTORY).get_contents()) do
        if not has_food and Biofluid.food[item.name] then
            has_food = true
        elseif not has_creature and Biofluid.biorobots[item.name] then
            has_creature = true
        end
        if has_food and has_creature then break end
    end
    if not has_food then
        return Biofluid.bioport_status.no_food
    elseif not has_creature then
        return Biofluid.bioport_status.no_creature
    elseif not next(network.biofluid_requesters) and not next(network.biofluid_providers) then
        return Biofluid.bioport_status.no_biofluid_network
    elseif entity.get_inventory(OUTPUT_INVENTORY).get_item_count("guano") > 97 then
        return Biofluid.bioport_status.full_output
    else
        return Biofluid.bioport_status.working
    end
end

---@param event EventData.on_entity_settings_pasted
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

---@param event EventData.on_player_setup_blueprint
py.on_event(defines.events.on_player_setup_blueprint, function(event)
    local player = game.get_player(event.player_index) --[[@as LuaPlayer]]
    local blueprint = player.blueprint_to_setup
    if not blueprint.valid_for_read then blueprint = player.cursor_stack--[[@as LuaItemStack]] end
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

---@param event EventData.on_player_rotated_entity
py.on_event(defines.events.on_player_rotated_entity, function(event)
    local entity = event.entity
    if not entity.valid then return end
    local name = entity.name
    if Biofluid.connectables[name] then Biofluid.built_pipe() end
end)

py.on_event(py.events.on_destroyed(), function(event)
    local entity = event.entity
    if not entity.valid then return end
    local name = entity.name
    if Biofluid.connectables[name] then
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
        if status == Biofluid.biorobot_status.picking_up then
            Biofluid.reset_provider_allocations(biorobot_data)
            Biofluid.reset_requester_allocations(biorobot_data)
        elseif status == Biofluid.biorobot_status.dropping_off then
            Biofluid.reset_requester_allocations(biorobot_data)
        end
        storage.biofluid_robots[unit_number] = nil
    end
end)

---@param event EventData.on_player_fast_transferred
py.on_event(defines.events.on_player_fast_transferred, function(event)
    local bioport_data = storage.biofluid_bioports[event.entity.unit_number --[[@as uint]]]
    if not bioport_data then return end
    Biofluid.update_bioport_animation(bioport_data)
end)

---@param event EventData.on_selected_entity_changed
py.on_event(defines.events.on_selected_entity_changed, function(event)
    local player = game.get_player(event.player_index) --[[@as LuaPlayer]]
    local entity = player.selected
    if not entity or not entity.valid then return end
    local entity_name = entity.name
    local status

    if entity_name == "bioport" then
        local bioport_data = storage.biofluid_bioports[entity.unit_number--[[@cast -?]]]
        if not bioport_data then return end
        status = Biofluid.why_isnt_my_bioport_working(bioport_data)
    elseif entity_name == "requester-tank" then
        local requester_data = storage.biofluid_requesters[entity.unit_number]
        if not requester_data then return end
        local network = storage.biofluid_networks[requester_data.network_id]
        status = Biofluid.bioport_status.working
        if not next(network.biofluid_bioports) then status = Biofluid.bioport_status.no_biofluid_network end
    end

    if status then
        entity.custom_status = {
            diode = Biofluid.diode_colors[status],
            label = Biofluid.bioport_status_locale[status],
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
