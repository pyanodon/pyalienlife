for _, force in pairs(game.forces) do
	if force.technologies['sap-upgrade'].researched and global.turd_bonuses[force.index] then
		global.turd_unlocked_modules[force.index]['inoculator-module'] = nil
		global.turd_unlocked_modules[force.index]['patch-module'] = nil
		global.turd_unlocked_modules[force.index]['bark-module'] = nil
		if global.turd_bonuses[force.index] then
			global.turd_bonuses[force.index]['sap-upgrade'] = nil
		end
	end
end