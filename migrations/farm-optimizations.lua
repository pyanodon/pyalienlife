storage.farm_buildings = storage.farm_buildings or {}

local function base_name(name)
    -- TODO: Find a method that avoids two searches?
    local is_turd = not not name:find("%-turd")
    -- keep suffix if necessary while allowing other building suffixes
    return name:gsub("%-mk..+", is_turd and "-turd" or "")
end

-- animal, plant, or fungi?
local function get_kingdom(entity)
    local farm_data = storage.farm_prototypes[base_name(entity.name)]
    if farm_data then return farm_data.domain end
end

local function get_default_module(entity)
    local farm_data = storage.farm_prototypes[base_name(entity.name)]
    if farm_data then return farm_data.default_module end
end

local function register_sacrifice(manager, farm)
  manager.get_inventory(defines.inventory.crafter_input).insert{
    name = "pyfarm-internal-item",
    count = 1,
    health = 0.5,
  }
  storage.farming_deathrattles[script.register_on_object_destroyed(manager.get_inventory(defines.inventory.crafter_input)[1].item)] = farm.unit_number
end

for _, metadata in pairs{storage.enabled_farm_buildings, storage.disabled_farm_buildings} do
    for _, entity in pairs(metadata)do

        if not storage.farm_prototypes[base_name(entity.name)] then return end

        local default_module = get_default_module(entity)

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
        local warning
        
        -- connect source, manager, mimic, and (?) monitor
        manager.get_wire_connector(defines.wire_connector_id.circuit_green, true).connect_to(monitor.get_wire_connector(defines.wire_connector_id.circuit_green, true), false, defines.wire_origin.script)
        
        local active = not entity.get_module_inventory().is_empty()
        entity.active = active
        entity.custom_status = not active and {
            diode = defines.entity_status_diode.red,
            label = default_module and {"entity-status.requires-module", default_module, prototypes.item[default_module].localised_name} or {"entity-status.requires-module-reproductive-complex"}
        } or nil

        -- set circuit settings
        local manager_behaviour = manager.get_or_create_control_behavior()
        manager_behaviour.circuit_enable_disable = true
        manager_behaviour.circuit_condition = {
            comparator = active and "=" or "≠",
            constant = 0,
            first_signal = { name = active and "signal-everything" or "signal-anything", type = "virtual" }
        }

        monitor.proxy_target_entity = entity
        monitor.proxy_target_inventory = defines.inventory.crafter_modules

        -- update warning icon and crafting progress
        if not active then
            warning = py.draw_error_sprite(entity, "no_module_" .. get_kingdom(entity), 0, 30)
            if entity.is_crafting() then
                entity.crafting_progress = 0.0001
                entity.bonus_progress = 0
            end
        end

        -- save data and register event
        script.register_on_object_destroyed(entity)
        storage.farm_buildings[entity.unit_number] = {farm = entity, manager = manager, monitor = monitor, warning = warning}
        register_sacrifice(manager, entity)  
    end
end

-- remove excess data
storage.enabled_farm_buildings = nil
storage.disabled_farm_buildings = nil
storage.next_farm_index = nil