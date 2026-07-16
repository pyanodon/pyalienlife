---@diagnostic disable: unnecessary-assert, undefined-field
---@type {creatures: {[data.EntityID]: DigosaurPrototype}, foods: {[data.ItemID]: uint}, resource_categories: {[data.ResourceCategoryID]: true}, dig_sites: {[data.EntityID]: DigSitePrototype}}
local data = py.mod_data.digosaurus

if not data then error ("ERROR: pY mod data [digosaurus] not found!") end

local assert = function(value, error, param1, param2, param3, param4)
    _G.assert (value, error:format(param1, param2, param3, param4))
end

for creature, creature_data in pairs(data.creatures) do
    assert (
        prototypes.entity[creature],
        "ERROR: pY mod data [digosaurus] has invalid creature EntityID: %s",
        creature
    )
    assert (
        prototypes.entity[creature_data.proxy],
        "ERROR: pY mod data [digosaurus] creature [%s] has invalid proxy EntityID: %s",
        creature, creature_data.proxy
    )
    assert (
        type(creature_data.mining_bonus) == "number" and creature_data.mining_bonus > 0,
        "ERROR: pY mod data [digosaurus] creature [%s] has invalid mining_bonus: %s",
        creature, creature_data.mining_bonus
    )
end

Digosaurus.creatures = data.creatures

for food, mult in pairs(data.foods) do
    assert(
        prototypes.item[food],
        "ERROR: pY mod data [digosaurus] has invalid food ItemID: %s",
        food
    )
    assert(
        type(mult) == "number" and mult > 0,
        "ERROR: pY mod data [digosaurus] food [%s] has invalid multiplier: %s",
        food, mult
    )
end

Digosaurus.foods = data.foods

for category in pairs(data.resource_categories) do
    assert(
        prototypes.resource_category[category],
        "ERROR: pY mod data [digosaurus] has invalid ResourceCategoryID: %s",
        category
    )
end

Digosaurus.resource_categories = data.resource_categories

for site, site_data in pairs(data.dig_sites) do
    assert (
        prototypes.entity[site],
        "ERROR: pY mod data [digosaurus] has invalid site EntityID: %s",
        site
    )
    assert (
        site_data.mining_range,
        "ERROR: pY mod data [digosaurus] site [%s] has invalid mining_range: %s",
        site, site_data.mining_range
    )
    assert (
        site_data.mining_range_offsets and type(site_data.mining_range_offsets) == "table",
        "ERROR: pY mod data [digosaurus] site [%s] has invalid mining_range_offset: %s",
        site, site_data.mining_range_offsets
    )
    assert (
        site_data.spawn_point and type(site_data.spawn_point) == "table",
        "ERROR: pY mod data [digosaurus] site [%s] has invalid spawn_point: %s",
        site, site_data.spawn_point
    )
    assert (
        site_data.mining_range and type(site_data.mining_range) == "number",
        "ERROR: pY mod data [digosaurus] site [%s] has invalid mining_range: %s",
        site, site_data.mining_range
    )
    for _, direction in pairs{
      "north",
      "east",
      "south",
      "west"
    } do
        local offset = site_data.mining_range_offsets[defines.direction[direction] .. ""]
        local spawn = site_data.spawn_point[defines.direction[direction] .. ""]
        assert (
            offset,
            "ERROR: pY mod data [digosaurus] site [%s] is missing mining_range_offset [%s]",
            site, direction
        )
        assert (
            type(offset) == "table",
            "ERROR: pY mod data [digosaurus] site [%s] has invalid mining_range_offset [%s]: %s",
            site, direction, offset
        )
        assert (
            (offset.x and offset.y or offset[1] and offset[2]) and type(offset.x or offset[1]) == "number" and type(offset.y or offset[1]) == "number",
            "ERROR: pY mod data [digosaurus] site [%s] has invalid mining_range_offset [%s]: %s",
            site, direction, serpent.line(offset)
        )
        assert (
            spawn,
            "ERROR: pY mod data [digosaurus] site [%s] is missing spawn_point [%s]",
            site, direction
        )
        assert (
            type(spawn) == "table",
            "ERROR: pY mod data [digosaurus] site [%s] has invalid spawn_point [%s]: %s", 
            site, direction, spawn
        )
        assert (
            (spawn.x and spawn.y or spawn[1] and spawn[2]) and type(spawn.x or spawn[1]) == "number" and type(spawn.y or spawn[1]) == "number",
            "ERROR: pY mod data [digosaurus] site [%s] has invalid spawn_point [%s]: %s",
            site, direction, serpent.line(offset)
        )
        offset.x = offset.x or offset[1]
        offset.y = offset.y or offset[2]
        offset[1] = nil
        offset[2] = nil
        site_data.mining_range_offsets[defines.direction[direction]] = offset
        spawn.x = spawn.x or spawn[1]
        spawn.y = spawn.y or spawn[2]
        spawn[1] = nil
        spawn[2] = nil
        site_data.spawn_point[defines.direction[direction]] = spawn
    end
end

Digosaurus.dig_sites = data.dig_sites
