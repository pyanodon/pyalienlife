--closes the edit interrupt gui and clears the global
--we could try and migrate but that brings up a lot of edge cases
--also this is a second file because people are running github versions /tableflip
local edited_interrupt = storage.edited_interrupt
storage.edited_interrupt = nil
if not edited_interrupt then return end
for _, player in pairs(game.players) do
    if player.valid and player.gui.screen.edit_interrupt_gui then
        player.gui.screen.edit_interrupt_gui.destroy()
    end
end