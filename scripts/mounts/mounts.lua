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
		local burner = mount.burner

		for _, equipment in pairs(grid.equipment) do
			local missing = equipment.max_energy - equipment.energy
			if missing <= 0 then goto dosent_need_energy end

			if burner.remaining_burning_fuel <= 0 then
				local fuel_inventory = burner.inventory
				if fuel_inventory.is_empty() then break end
				
				for i = 1, #fuel_inventory do
					local fuel = fuel_inventory[i]
					if not fuel.valid_for_read then goto invalid_fuel_item end
					local prototype = fuel.prototype
					local fuel_value = prototype.fuel_value
					if not prototype.fuel_value then goto invalid_fuel_item end

					burner.currently_burning = fuel
					burner.remaining_burning_fuel = fuel_value
					fuel.count = fuel.count - 1
					break
					::invalid_fuel_item::
				end
			end

			if burner.remaining_burning_fuel <= 0 then break end

			if burner.remaining_burning_fuel < missing / transfer_efficiency then
				equipment.energy = equipment.energy + burner.remaining_burning_fuel * transfer_efficiency
				burner.remaining_burning_fuel = 0
			else
				burner.remaining_burning_fuel = burner.remaining_burning_fuel - missing / transfer_efficiency
				equipment.energy = equipment.energy + missing
			end

			::dosent_need_energy::
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
	game.print(serpent.block(entity.grid.get_contents()))
	storage.mounts[entity.unit_number] = entity
end)

py.on_event(py.events.on_destroyed(), function(event)
	local entity = event.entity
	local unit_number = entity.valid and entity.unit_number
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
