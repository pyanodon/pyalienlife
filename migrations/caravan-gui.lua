for _, player in pairs(game.players) do
    local gui = player.gui.relative.caravan_gui
    if gui then
        gui.destroy()
    end --it lives in a flow now
end
