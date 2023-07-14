for _, force in pairs(game.forces) do
	if global.turd_bonuses[force.index] then
		if force.technologies['sap-upgrade'].researched then
			force.technologies['seaweed-upgrade'].researched = false
			force.technologies['seaweed-upgrade'].researched = true
		end
		if force.technologies['seaweed-upgrade'].researched then
			force.technologies['seaweed-upgrade'].researched = false
			force.technologies['seaweed-upgrade'].researched = true
		end
	end

	force.kill_count_statistics.set_input_count('digosaurus', 0)
	force.kill_count_statistics.set_output_count('digosaurus', 0)
	force.kill_count_statistics.set_input_count('thikat', 0)
	force.kill_count_statistics.set_output_count('thikat', 0)
	force.kill_count_statistics.set_input_count('work-o-dile', 0)
	force.kill_count_statistics.set_output_count('work-o-dile', 0)
end