-- removes spilled items accidentally created by TURD placements
local turd_buildings = {}
for building_name in pairs(prototypes.entity) do
    if building_name:find("turd%-") or building_name:find("%-turd") then
        turd_buildings[#turd_buildings+1] = building_name
    end
end
local removed = 0
for _, surface in pairs(game.surfaces) do
    for _, building in pairs(surface.find_entities_filtered{name = turd_buildings}) do
        local item = surface.find_entity("item-on-ground", building.position)
        if item then
            item.destroy()
            removed = removed + 1
        end
    end
end
log(string.format("Removed %i T.U.R.D. spilled items", removed))
-- "item-entity"