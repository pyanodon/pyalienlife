Farming = {}

local function validate_farm_building_list(farm_buildings, throw)
    local modules = prototypes.get_item_filtered {{filter = "type", type = "module"}}
    ---@as table<string, table<string, boolean>> two level table containing buildings indexed by their base (mk-less) name
    local buildings = {}
    local crafting_machines = prototypes.get_entity_filtered {{filter = "crafting-machine"}}
    -- This early search and sort lets us avoid o^n searching below
    for building_name in pairs(crafting_machines) do
        -- TODO: Find a method that avoids two searches?
        local is_turd = not not building_name:find("%-turd")
        -- keep suffix if necessary while allowing other building suffixes
        local basename = building_name:gsub("%-mk..+", is_turd and "-turd" or "")
        if farm_buildings[basename] then
            buildings[basename] = buildings[basename] or {}
            buildings[basename][building_name] = true
        end
    end

    -- Assigns nil or errors depending on `throw`
    local result = throw and error or log
    for entity_name, farm_prototype in pairs(farm_buildings) do
        -- No buildings with this base name
        if not buildings[entity_name] then
            farm_buildings[entity_name] = result(("Farm building \"%s\" has no associated crafting machines"):format(entity_name))
            goto next_farm_prototype
        end
        -- No modules with this name
        if farm_prototype.default_module ~= nil and not modules[farm_prototype.default_module] then
            farm_buildings[entity_name] = result(("Invalid default module \"%s\" for farm building \"%s\""):format(farm_prototype.default_module, entity_name))
            goto next_farm_prototype
        end
        -- Unspecified or invalid domain
        local domain = farm_prototype.domain
        if not domain or not (domain == "animal" or domain == "plant" or domain == "fungi") then
            farm_buildings[entity_name] = result(("Invalid domain \"%s\" for farm building \"%s\". Expected 'animal', 'plant', or 'fungi'"):format(domain or "nil", entity_name))
            goto next_farm_prototype
        end
        -- Wow, so valid
        ::next_farm_prototype::
    end
end

---@as table<string, table<string, string>>
---Contains key-value pairs of `{farm_name = {default_module = farm_module, domain = farm_domain, requires = farm_mod}`
-- See `scripts/farming/farm-build-list.lua` for an example
local farm_buildings = require "farm-building-list"

---register_type registers a farm for module restrictions
---@param farm_name string name of farm building without -mkxx suffix
---@param domain 'animal' | 'plant' | 'fungi'
---@param default_module string
function Farming.register_type(farm_name, domain, default_module)
    log("remote registered farm \'" .. farm_name .. "\' (" .. domain .. ")")
    storage.farm_prototypes = storage.farm_prototypes or farm_buildings
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
    local is_turd = not not entity.name:find("%-turd")
    local name = entity.name:gsub("%-mk..+", is_turd and "-turd" or "")
    local farm_data = storage.farm_prototypes[name]
    if farm_data then return farm_data.domain end
end

function Farming.get_default_module(entity)
    local is_turd = not not entity.name:find("%-turd")
    local name = entity.name:gsub("%-mk..+", is_turd and "-turd" or "")
    local farm_data = storage.farm_prototypes[name]
    if farm_data then return farm_data.default_module end
end

function Farming.process(farm_data)
    local entity = farm_data.entity
    local kingdom = Farming.get_kingdom(entity)
    if not kingdom then return end
    if entity.get_module_inventory().is_empty() then
        -- update render, otherwise it will destroy itself
        -- it lasts just longer than once cycle so it will always stick around even when timing and ordering gets weird
        local default_module = Farming.get_default_module(entity)
        local message = default_module and {"entity-status.requires-module", default_module, "__ITEM__" .. default_module .. "__"} or {"entity-status.requires-module-reproductive-complex"}
        farm_data.alert_id = farm_data.alert_id or py.generate_alert(entity, {type = "virtual", name = "no_module_" .. kingdom}, "no_module_" .. kingdom, message, true)
        entity.custom_status = {
            diode = defines.entity_status_diode.red,
            label = message
        }
    else
        py.clear_alert(farm_data.alert_id)
        entity.custom_status = nil
    end
end

py.on_event(py.events.on_init(), function()
    storage.farms = storage.farms or {}
    storage.farm_count = storage.farm_count or 0
    storage.farm_prototypes = farm_buildings
    validate_farm_building_list(storage.farm_prototypes)
end)

py.on_event(py.events.on_built(), function(event)
    local entity = event.entity
    local kingdom = Farming.get_kingdom(entity)
    if not kingdom then return end
    script.register_on_object_destroyed(entity)
    storage.farms[entity.unit_number] = {entity = entity}
    Farming.process(storage.farms[entity.unit_number])
    storage.farm_count = storage.farm_count + 1
end)

py.on_event(defines.events.on_object_destroyed, function(event)
    local unit_number = event.useful_id
    if not unit_number then return end
    if storage.farms[unit_number] then
        py.clear_alert(storage.farms[unit_number].alert_id)
        storage.farms[unit_number] = nil
        storage.farm_count = storage.farm_count - 1
    end
end)

-- every 2 seconds, check 1/8th of farm buildings
py.register_on_nth_tick(121, "Farming121", "pyal", function()
    if game.tick % 8 == 0 then
        storage.farm_batch_size = math.ceil(storage.farm_count / 8)
        storage.last_farm_index = nil
    end
    local limit = (storage.last_farm_index or game.tick % 8 == 0) and storage.farm_batch_size or 0
    local i = 1
    local remove_previous = false
    while i <= limit do
        local index, farm_data = next(storage.farms, storage.last_farm_index)
        if remove_previous then
          local farm = storage.farms[storage.last_farm_index]
          if farm and farm.entity and farm.entity.valid then farm.destroy() end
          storage.farms[storage.last_farm_index] = nil
          remove_previous = false
        end
        storage.last_farm_index = index
        if farm_data and farm_data.entity and farm_data.entity.valid then
            Farming.process(farm_data)
            i = i + 1; -- only count things we process
        else
            remove_previous = true
        end
        if not index then break end
    end
end)
