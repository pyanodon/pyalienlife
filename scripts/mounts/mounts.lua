Mounts = {}

local transfer_efficiency = 2

py.on_event(py.events.on_init(), function()
	storage.mounts = storage.mounts or {}
end)

py.register_on_nth_tick(239, "update-mounts", "pyal", function(event)
	for id, mount in pairs(storage.mounts) do
		if not mount.valid then
			storage.mounts[id] = nil
			return
		end

		local grid = mount.grid
		for _, equipment in pairs(grid.equipment) do
			local missing = equipment.max_energy - equipment.energy
			if missing > 0 then
				local burner = mount.burner
				if burner.remaining_burning_fuel < missing / transfer_efficiency then
					equipment.energy = equipment.energy + burner.remaining_burning_fuel * transfer_efficiency
					burner.remaining_burning_fuel = 0
					break
				else
					burner.remaining_burning_fuel = burner.remaining_burning_fuel - missing / transfer_efficiency
					equipment.energy = equipment.energy + missing
				end
			end
		end
	end
end)

local mounts = {
	["crawdad"] = true,
	["dingrido"] = true,
	["spidertron"] = true,
	["phadaisus"] = true,
}

py.on_event(py.events.on_built(), function(event)
	local entity = event.entity
	if not entity.valid or not mounts[entity.name] then return end
	entity.grid.put {
		name = "py-mount-generator",
		position = {3, 0},
	}
	storage.mounts[entity.unit_number] = entity
end)

py.on_event(py.events.on_destroyed(), function(event)
	local entity = event.entity
	local unit_number = entity.unit_number
	if unit_number then storage.mounts[unit_number] = nil end
end)

py.on_event(defines.events.on_player_removed_equipment, function(event)
	if event.equipment == "py-mount-generator" then
		event.grid.put {
			name = "py-mount-generator",
			position = {3, 0},
		}
		game.players[event.player_index].remove_item {name = "py-mount-generator", count = 100}
	end
end)
