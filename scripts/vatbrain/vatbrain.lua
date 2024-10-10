Vatbrain = {}
Vatbrain.events = {}

Vatbrain.events.on_init = function()
    storage.vatbrains = storage.vatbrains or {}
end

Vatbrain.events.on_built = function(event)
    local entity = event.created_entity or event.entity
    if not entity.valid or entity.name ~= "vat-brain" then return end

    local beacon = entity.surface.create_entity {
        name = "hidden-beacon",
        position = entity.position,
        force = entity.force,
    }
    storage.vatbrains[beacon.unit_number] = {beacon = beacon, vatbrain = entity}
end

Vatbrain.events.on_destroyed = function(event)
    local entity = event.entity
    if entity.name ~= "vat-brain" then return end

    local beacon = entity.surface.find_entities_filtered {position = entity.position, radius = 3, name = "hidden-beacon", limit = 1}[1]
    if beacon then
        storage.vatbrains[beacon.unit_number] = nil
        beacon.destroy()
    end
end

local cartridge_tiers = {
    ["brain-food-01"] = {module = "vatbrain-1", tier = 1},
    ["brain-food-02"] = {module = "vatbrain-2", tier = 2},
    ["brain-food-03"] = {module = "vatbrain-3", tier = 3},
    ["brain-food-04"] = {module = "vatbrain-4", tier = 4},
}
Vatbrain.events[41] = function()
    for _, vatbrain_data in pairs(storage.vatbrains) do
        local vatbrain, beacon = vatbrain_data.vatbrain, vatbrain_data.beacon
        if not vatbrain or not vatbrain.valid or not beacon or not beacon.valid then goto continue end
        beacon.active = false

        local recipe = vatbrain.get_recipe()
        if not recipe then goto continue end
        local cartridge = cartridge_tiers[recipe.name]
        if not cartridge then goto continue end
        local module, module_tier = cartridge.module, cartridge.tier

        if vatbrain_data.current_lvl ~= module_tier then
            local module_slot = beacon.get_inventory(defines.inventory.beacon_modules)
            module_slot.clear()
            module_slot.insert {name = module, amount = 1}
            vatbrain_data.current_lvl = module_tier
        end

        if vatbrain.status == defines.entity_status.working then beacon.active = true end
        ::continue::
    end
end
