local killed_ninjas = 0
for _, surface in pairs(game.surfaces) do
    ---@cast surface LuaSurface
    local found = {}
    for _, wyrmhole in pairs(surface.find_entities_filtered{name = "wyrmhole"}) do
        local skin = surface.find_entity("wyrmhole-skin", wyrmhole.position)
        if skin and skin.valid then
            storage.worm_skins[wyrmhole.unit_number] = skin
            found[skin.unit_number] = true
        end
    end
    for _, skin in pairs(surface.find_entities_filtered{name = "wyrmhole-skin"}) do
        if skin.valid and not found[skin.unit_number] then
            skin.destroy()
            killed_ninjas = killed_ninjas + 1
        end
    end
end
if killed_ninjas > 0 then
    game.print("Killed " .. killed_ninjas .. " ninjas")
end