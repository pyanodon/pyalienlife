for _, surface in pairs(game.surfaces) do
    if #surface.find_entities_filtered{name = {"auog-paddock-mk02", "auog-paddock-mk03", "auog-paddock-mk04"}} > 0 then
        game.print({"command-output.update-note", {"mod-name.pyalienlife"}, "[entity=auog-paddock-mk02][entity=auog-paddock-mk03][entity=auog-paddock-mk04] had a small speed increase (~2%) this update, you may wish to adjust your building ratios."})
        break
    end
end