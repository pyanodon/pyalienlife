Worm = {}

py.on_event(py.events.on_init(), function()
    storage.worm_skins = storage.worm_skins or {}
end)

py.on_event(py.events.on_built(), function(event)
    local entity = event.entity
    if entity.name ~= "wyrmhole" then return end

    storage.worm_skins[entity.unit_number] = entity.surface.create_entity {
        name = "wyrmhole-skin",
        position = entity.position,
        force = entity.force
    }
    script.register_on_object_destroyed(entity)
end)

py.on_event(defines.events.on_object_destroyed, function(event)
    local unit_number = event.useful_id
    local skin = storage.worm_skins[unit_number]

    if not skin or not skin.valid then return end
    skin.destroy()
end)
