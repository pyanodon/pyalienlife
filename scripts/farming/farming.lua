Farming = {}

local function validate_farm_building_list(farm_buildings)
    for entity_name, farm_prototype in pairs(farm_buildings) do
        if farm_prototype.default_module ~= nil then
            assert(prototypes.item[farm_prototype.default_module], "invalid default module for farm building " .. entity_name .. ". " .. farm_prototype.default_module)
        end
        local domain = farm_prototype.domain
        assert(domain == "animal" or domain == "plant" or domain == "fungi", "invalid domain for farm building " .. entity_name .. ". expected 'animal' 'plant' or 'fungi' got " .. domain)
    end
end

---@as table<string, string>
---Contains key-value pairs of `{farm_name = farm_domain}`
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
    validate_farm_building_list(storage.farm_prototypes)
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
    local name = entity.name:gsub("%-mk..+", "")
    local farm_data = storage.farm_prototypes[name]
    if farm_data then return farm_data.domain end
end

function Farming.get_default_module(entity)
    local name = entity.name:gsub("%-mk..+", "")
    local farm_data = storage.farm_prototypes[name]
    if farm_data then return farm_data.default_module end
end

function Farming.disable_machine(entity)
    local kingdom = Farming.get_kingdom(entity)
    if not kingdom then return end
    local default_module = Farming.get_default_module(entity)
    entity.active = false
    if default_module then
        entity.custom_status = {
            diode = defines.entity_status_diode.red,
            label = {"entity-status.requires-module", default_module, prototypes.item[default_module].localised_name}
        }
    else
        entity.custom_status = {
            diode = defines.entity_status_diode.red,
            label = {"entity-status.requires-module-reproductive-complex"}
        }
    end
    storage.disabled_farm_buildings[entity.unit_number] = entity
    script.register_on_object_destroyed(entity)
    if entity.is_crafting() then
        entity.crafting_progress = 0.0001
        entity.bonus_progress = 0
    end
    py.draw_error_sprite(entity, "no_module_" .. kingdom, 30)
end

function Farming.enable_machine(entity)
    storage.disabled_farm_buildings[entity.unit_number] = nil
    entity.active = true
    entity.custom_status = nil
    storage.enabled_farm_buildings[#storage.enabled_farm_buildings + 1] = entity
end

py.on_event(py.events.on_init(), function()
    storage.disabled_farm_buildings = storage.disabled_farm_buildings or {}
    storage.enabled_farm_buildings = storage.enabled_farm_buildings or {}
    storage.farm_prototypes = farm_buildings
    validate_farm_building_list(storage.farm_prototypes)
    storage.next_farm_index = storage.next_farm_index or 1
end)

py.on_event(py.events.on_built(), function(event)
    local entity = event.entity
    if entity.type == "assembling-machine" then Farming.disable_machine(entity) end
end)

py.on_event(defines.events.on_object_destroyed, function(event)
    local unit_number = event.useful_id
    if not unit_number then return end
    storage.disabled_farm_buildings[unit_number] = nil
end)

-- render warning icons
py.register_on_nth_tick(59, "Farming59", "pyal", function(event)
    for unit_number, farm in pairs(storage.disabled_farm_buildings) do
        if not farm.valid then
            storage.disabled_farm_buildings[unit_number] = nil
        elseif farm.get_module_inventory().is_empty() then
            py.draw_error_sprite(farm, "no_module_" .. Farming.get_kingdom(farm), 30)
        else
            Farming.enable_machine(farm)
        end
    end
end)

-- every 2 seconds, check 1/8th of farm buildings for empty module inventory
py.register_on_nth_tick(121, "Farming121", "pyal", function()
    local farm_count = #storage.enabled_farm_buildings
    if farm_count == 0 then return end
    local first_index_checked_this_tick = storage.next_farm_index
    for i = 1, math.ceil(farm_count / 8) do
        local farm = storage.enabled_farm_buildings[storage.next_farm_index]

        if not farm or not farm.valid then
            table.remove(storage.enabled_farm_buildings, storage.next_farm_index)
        elseif farm.get_module_inventory().is_empty() then
            Farming.disable_machine(farm)
            table.remove(storage.enabled_farm_buildings, storage.next_farm_index)
        else
            storage.next_farm_index = storage.next_farm_index + 1
        end

        if storage.next_farm_index > #storage.enabled_farm_buildings then storage.next_farm_index = 1 end
        if storage.next_farm_index == first_index_checked_this_tick then return end
    end
end)
