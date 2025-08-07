storage.farm_buildings = storage.farm_buildings or {}

for _, metatable in pairs(storage.enabled_farm_buildings) do
  
end

for _, metatable in pairs(storage.disabled_farm_buildings) do
  
end

storage.enabled_farm_buildings = nil
storage.disabled_farm_buildings = nil
storage.next_farm_index = nil



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
    if not storage.farm_prototypes[entity.name:gsub("%-mk..+", "")] then return end

    local default_module = Farming.get_default_module(entity)

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
    
    -- connect source, manager, mimic, and (?) monitor
    manager.get_wire_connector(defines.wire_connector_id.circuit_green, true).connect_to(monitor.get_wire_connector(defines.wire_connector_id.circuit_green, true), false, defines.wire_origin.script)
    
    -- set circuit settings
    manager_behaviour = manager.get_or_create_control_behavior()
    manager_behaviour.circuit_enable_disable = true
    manager_behaviour.circuit_condition = {
        comparator = "≠",
        constant = 0,
        first_signal = { name = "signal-anything", type = "virtual" }
    }
    monitor.proxy_target_entity = entity
    monitor.proxy_target_inventory = defines.inventory.crafter_modules

    entity.active = false
    entity.custom_status = {
        diode = defines.entity_status_diode.red,
        label = default_module and {"entity-status.requires-module", default_module, prototypes.item[default_module].localised_name} or {"entity-status.requires-module-reproductive-complex"}
    }

    -- save data and register event
    script.register_on_object_destroyed(entity)
    storage.farm_buildings[entity.unit_number] = {farm = entity, manager = manager, monitor = monitor, warning = py.draw_error_sprite(entity, "no_module_" .. Farming.get_kingdom(entity), 0, 30)}
    register_sacrifice(manager, entity)

end)

py.on_event(defines.events.on_object_destroyed, function(event)
    if not event.useful_id or not event.registration_number then return end

    if storage.farming_deathrattles[event.registration_number] then

        -- handle deathrattles
        local metadata = storage.farm_buildings[storage.farming_deathrattles[event.registration_number]]
        if not metadata then return elseif not (metadata.farm and metadata.farm.valid and metadata.manager and metadata.manager.valid and metadata.monitor and metadata.monitor.valid) or (metadata.warning and not metadata.monitor.valid) then
            if metadata.farm and metadata.farm.valid then metadata.farm.destroy() end
            if metadata.manager and metadata.manager.valid then metadata.manager.destroy() end
            if metadata.monitor and metadata.monitor.valid then metadata.monitor.destroy() end
            if metadata.warning and metadata.warning.valid then metadata.farm.destroy() end
            storage.farm_buildings[storage.farming_deathrattles[event.registration_number]] = nil
            storage.farming_deathrattles[event.registration_number] = nil
            return
        end
        storage.farming_deathrattles[event.registration_number] = nil -- remove unused reference

        local farm = metadata.farm
        local manager = metadata.manager
        local default_module = Farming.get_default_module(farm)
        
        register_sacrifice(manager, farm)

        local active = not farm.get_module_inventory().is_empty()
        if active == farm.active then return end -- no change

        farm.active = active
        farm.custom_status = not active and {
            diode = defines.entity_status_diode.red,
            label = default_module and {"entity-status.requires-module", default_module, prototypes.item[default_module].localised_name} or {"entity-status.requires-module-reproductive-complex"}
        } or nil
        manager.get_or_create_control_behavior().circuit_condition = {
            comparator = active and "=" or "≠",
            constant = 0,
            first_signal = { name = active and "signal-everything" or "signal-anything", type = "virtual" }
        }

        -- update warning icon
        if not active then
            metadata.warning = py.draw_error_sprite(farm, "no_module_" .. Farming.get_kingdom(farm), 0, 30)
        else -- building is working, remove warning
            metadata.warning.destroy()
        end

        if farm.is_crafting() then
            farm.crafting_progress = 0.0001
            farm.bonus_progress = 0
        end

    elseif storage.farm_buildings[event.useful_id] then
        local metadata = storage.farm_buildings[event.useful_id]
        -- destroy support entities and remove storage reference
        metadata.manager.destroy()
        metadata.monitor.destroy()
        if metadata.warning then metadata.warning.destroy() end
        storage.farm_buildings[event.useful_id] = nil
    end
end)