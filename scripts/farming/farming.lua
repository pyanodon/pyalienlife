Farming = {}

local function base_name(name)
    -- TODO: Find a method that avoids two searches?
    local is_turd = not not name:find("%-turd")
    -- keep suffix if necessary while allowing other building suffixes
    return name:gsub("%-mk..+", is_turd and "-turd" or "")
end

local function validate_farm_building_list(farm_buildings_list, throw)
    local modules = prototypes.get_item_filtered {{filter = "type", type = "module"}}
    ---@as table<string, table<string, boolean>> two level table containing buildings indexed by their base (mk-less) name
    local buildings = {}
    local crafting_machines = prototypes.get_entity_filtered {{filter = "crafting-machine"}}
    -- This early search and sort lets us avoid o^n searching below
    for building_name in pairs(crafting_machines) do
        local basename = base_name(building_name)
        if farm_buildings_list[basename] then
            buildings[basename] = buildings[basename] or {}
            buildings[basename][building_name] = true
        end
    end

    -- Assigns nil or errors depending on `throw`
    local result = throw and error or log
    for entity_name, farm_prototype in pairs(farm_buildings_list) do
        -- No buildings with this base name
        if not buildings[entity_name] then
            farm_buildings_list[entity_name] = result(("Farm building \"%s\" has no associated crafting machines"):format(entity_name))
            goto next_farm_prototype
        end
        -- No modules with this name
        if farm_prototype.default_module ~= nil and not modules[farm_prototype.default_module] then
            farm_buildings_list[entity_name] = result(("Invalid default module \"%s\" for farm building \"%s\""):format(farm_prototype.default_module, entity_name))
            goto next_farm_prototype
        end
        -- Unspecified or invalid domain
        local domain = farm_prototype.domain
        if not domain or not (domain == "animal" or domain == "plant" or domain == "fungi") then
            farm_buildings_list[entity_name] = result(("Invalid domain \"%s\" for farm building \"%s\". Expected 'animal', 'plant', or 'fungi'"):format(domain or "nil", entity_name))
            goto next_farm_prototype
        end
        -- Wow, so valid
        ::next_farm_prototype::
    end
end

---@as table<string, table<string, string>>
---Contains key-value pairs of `{farm_name = {default_module = farm_module, domain = farm_domain, requires = farm_mod}`
-- See `scripts/farming/farm-build-list.lua` for an example
local farm_buildings_list = require "farm-building-list"

---register_type registers a farm for module restrictions
---@param farm_name string name of farm building without -mkxx suffix
---@param domain 'animal' | 'plant' | 'fungi'
---@param default_module string
function Farming.register_type(farm_name, domain, default_module)
    log("remote registered farm \'" .. farm_name .. "\' (" .. domain .. ")")
    storage.farm_prototypes = storage.farm_prototypes or farm_buildings_list
    storage.farm_prototypes[farm_name] = {default_module = default_module, domain = domain}
    validate_farm_building_list(storage.farm_prototypes, true)
end

---unregister_type unregisters a farm for module restrictions
---@param farm_name string name of farm building without -mkxx suffix
function Farming.unregister_type(farm_name)
    log("remote unregistered farm \'" .. farm_name .. "\'")
    storage.farm_prototypes[farm_name] = nil
end

remote.remove_interface("pyfarm")
remote.add_interface("pyfarm", {
    register = Farming.register_type,
    unregister = Farming.unregister_type
})

-- animal, plant, or fungi?
function Farming.get_kingdom(entity)
    local farm_data = storage.farm_prototypes[base_name(entity.name)]
    if farm_data then return farm_data.domain end
end

function Farming.get_default_module(entity)
    local farm_data = storage.farm_prototypes[base_name(entity.name)]
    if farm_data then return farm_data.default_module end
end

py.on_event(py.events.on_init(), function()
    storage.farm_buildings = storage.farm_buildings or {}
    storage.farming_deathrattles = storage.farming_deathrattles or {}
    storage.farm_prototypes = farm_buildings_list
    validate_farm_building_list(storage.farm_prototypes)
end)

---function to register an event firing when the manager is enabled via the circuit network, i.e. detects a change in the farm module inventory
---this works by creating an item with data (health in this case) and registering it to fire an event when destroyed (consumed for crafting)
---we save the associated farm data by unit number in storage via a key associated with that specific item, returned from script.register_on_object_destroyed
local function register_sacrifice(manager, farm)
  manager.get_inventory(defines.inventory.crafter_input).insert{
    name = "pyfarm-internal-item",
    count = 1,
    health = 0.5,
  }
  storage.farming_deathrattles[script.register_on_object_destroyed(manager.get_inventory(defines.inventory.crafter_input)[1].item)] = farm.unit_number
end

py.on_event(py.events.on_built(), function(event)
    local entity = event.entity
    if not storage.farm_prototypes[base_name(entity.name)] then return end

    local default_module = Farming.get_default_module(entity)
    -- create entities to track modules
    local manager = entity.surface.create_entity{
        name = "pyfarm-internal-manager",
        position = entity.position,
        force = entity.force
    }
    local monitor = entity.surface.create_entity{
        name = "pyfarm-internal-monitor",
        position = entity.position,
        force = entity.force
    }
    
    -- connect manager and monitor such that any changes to the module inventory are sent via circuit network
    manager.get_wire_connector(defines.wire_connector_id.circuit_green, true).connect_to(monitor.get_wire_connector(defines.wire_connector_id.circuit_green, true), false, defines.wire_origin.script)
    
    -- set circuit settings, such that when any item is detected in the module inventory the crafter will turn on
    local manager_behaviour = manager.get_or_create_control_behavior()
    manager_behaviour.circuit_enable_disable = true
    manager_behaviour.circuit_condition = {
        comparator = "≠",
        constant = 0,
        first_signal = { name = "signal-anything", type = "virtual" }
    }
    -- set the monitor to point to the module inventory
    monitor.proxy_target_entity = entity
    monitor.proxy_target_inventory = defines.inventory.crafter_modules
    -- turn off the farm, it will turn on when modules are inserted
    entity.active = false
    entity.custom_status = {
        diode = defines.entity_status_diode.red,
        label = default_module and {"entity-status.requires-module", default_module, prototypes.item[default_module].localised_name} or {"entity-status.requires-module-reproductive-complex"}
    }

    -- save farm data in storage and register this farm to fire an event when modules are inserted
    -- also register the farm to fire an event when it is destroyed so we can clean up
    script.register_on_object_destroyed(entity)
    storage.farm_buildings[entity.unit_number] = {farm = entity, manager = manager, monitor = monitor, warning = py.draw_error_sprite(entity, "no_module_" .. Farming.get_kingdom(entity), 0, 30)}
    register_sacrifice(manager, entity)
end)

-- event fired when a thing registered via script.register_on_destroyed is destroyed
py.on_event(defines.events.on_object_destroyed, function(event)
    -- skip other event categories we dont care about
    if not event.useful_id or not event.registration_number then return end
    -- other mods can use it too, make sure its our event (registration number is unique across all mods and all registrations)
    if storage.farming_deathrattles[event.registration_number] then

        -- handle deathrattles from module inventories changing
        local metadata = storage.farm_buildings[storage.farming_deathrattles[event.registration_number]]
        -- if anything is invalid destroy it all
        if not metadata then return elseif not (metadata.farm and metadata.farm.valid and metadata.manager and metadata.manager.valid and metadata.monitor and metadata.monitor.valid) then
            if metadata.farm and metadata.farm.valid then metadata.farm.destroy() end
            if metadata.manager and metadata.manager.valid then metadata.manager.destroy() end
            if metadata.monitor and metadata.monitor.valid then metadata.monitor.destroy() end
            storage.farm_buildings[storage.farming_deathrattles[event.registration_number]] = nil
            storage.farming_deathrattles[event.registration_number] = nil
            return
        end
        storage.farming_deathrattles[event.registration_number] = nil -- remove unused reference

        local farm = metadata.farm
        local manager = metadata.manager
        local default_module = Farming.get_default_module(farm)
        -- reset the event trigger
        register_sacrifice(manager, farm)
        -- it should be ON if the module inventory is not empty
        local active = not farm.get_module_inventory().is_empty()
        -- skip if the state hasnt changed (required to skip triggering twice)
        if active ~= farm.disabled_by_script then return end

        farm.active = active
        farm.custom_status = not active and {
            diode = defines.entity_status_diode.red,
            label = default_module and {"entity-status.requires-module", default_module, prototypes.item[default_module].localised_name} or {"entity-status.requires-module-reproductive-complex"}
        } or nil
        -- set manager to enable if everything = 0 (no modules exist) or anything ~= 0 (modules exist)
        manager.get_or_create_control_behavior().circuit_condition = {
            comparator = active and "=" or "≠",
            constant = 0,
            first_signal = { name = active and "signal-everything" or "signal-anything", type = "virtual" }
        }

        -- update warning icon and crafting progress
        if not active then
            metadata.warning = py.draw_error_sprite(farm, "no_module_" .. Farming.get_kingdom(farm), 0, 30)
            if farm.is_crafting() then
                farm.crafting_progress = 0.0001
                farm.bonus_progress = 0
            end
        else -- building is working, remove warning
            metadata.warning.destroy()
        end

    elseif storage.farm_buildings[event.useful_id] then
        local metadata = storage.farm_buildings[event.useful_id]
        -- destroy support entities and remove storage reference
        metadata.manager.destroy()
        metadata.monitor.destroy()
        storage.farm_buildings[event.useful_id] = nil
    end
end)