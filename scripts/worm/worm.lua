Worm = {}
Worm.events = {}

py.on_event(py.events.on_init(), function()
	storage.worm_skins = storage.worm_skins or {}
end)

Worm.events.on_built = function(event)
	local entity = event.created_entity or event.entity
	if entity.name ~= "pydrive" then return end

	storage.worm_skins[entity.unit_number] = entity.surface.create_entity {
		name = "pydrive_skin",
		position = entity.position,
		force = entity.force
	}
	script.register_on_object_destroyed(entity)
end

Worm.events.on_object_destroyed = function(event)
	local unit_number = event.useful_id
	local skin = storage.worm_skins[unit_number]

	if not skin or not skin.valid then return end
	skin.destroy()
end
