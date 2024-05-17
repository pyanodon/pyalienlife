if global.farms then
	game.print('pYAL: Migrated ' .. #(global.indexed_farm_list or {}) .. ' farm buildings')
	global.farms = nil
	global.indexed_farm_list = nil
	rendering.clear('pyalienlife')
	---@diagnostic disable-next-line: different-requires
	require '__pyalienlife__/scripts/farming/farming.lua'
	Farming.events.on_init()
	for _, surface in pairs(game.surfaces) do
		for _, entity in pairs(surface.find_entities_filtered{type = 'assembling-machine'}) do
			Farming.disable_machine(entity)
		end
	end
end