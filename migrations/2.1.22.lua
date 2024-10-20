for _, surface in pairs(game.surfaces) do
    for _, arm in pairs(surface.find_entities_filtered {name = "bioport-floor-animation"}) do
        local port = surface.find_entity("bioport", arm.position)
        if not (port and port.position.x == arm.position.x and port.position.y == arm.position.y) then
            arm.destroy()
        end
    end
end
