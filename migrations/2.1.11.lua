local to_reset = {}

for _, force in pairs(game.forces) do
	if storage.turd_bonuses and storage.turd_bonuses[force.index] then
		if force.technologies['bhoddos-upgrade'] and force.technologies['bhoddos-upgrade'].researched then
            to_reset[force.index] = 'bhoddos-upgrade'
		end
		if storage.turd_bonuses[force.index]['moondrop-upgrade'] == 'moon' then
            to_reset[force.index] = 'moondrop-upgrade'		
		end
	end
end

local future = game.tick + 1
script.on_nth_tick(future, function()
    for force_index, tech in pairs(to_reset) do
        local force = game.forces[force_index]
        if force then
            force.technologies[tech].researched = false
            force.technologies[tech].researched = true
        end
    end
    script.on_nth_tick(future, nil)
end)