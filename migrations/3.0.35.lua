for _, force in pairs(game.forces) do
    local oil = force.technologies["oil-sands"]
    local soot = force.technologies["soot-separation"]
    if oil.researched and not soot.researched then
        soot.researched = true
    end
end