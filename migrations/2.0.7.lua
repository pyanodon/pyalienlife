if storage.farms then
	game.print("pYAL: Migrated " .. #(storage.indexed_farm_list or {}) .. " farm buildings")
	storage.farms = nil
	storage.indexed_farm_list = nil
	rendering.clear("pyalienlife")
	---@diagnostic disable-next-line: different-requires
	require "__pyalienlife__/scripts/farming/farming.lua"
	
	-- Farming.events.on_init()
	storage.disabled_farm_buildings = storage.disabled_farm_buildings or {}
	storage.enabled_farm_buildings = storage.enabled_farm_buildings or {}
	storage.farm_prototypes = farm_buildings
	storage.next_farm_index = storage.next_farm_index or 1

	for _, surface in pairs(game.surfaces) do
		for _, entity in pairs(surface.find_entities_filtered {type = "assembling-machine"}) do
			Farming.disable_machine(entity)
		end
	end
end
