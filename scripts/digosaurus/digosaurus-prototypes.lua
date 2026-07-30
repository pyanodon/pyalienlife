---@diagnostic disable: unnecessary-assert, undefined-field, assign-type-mismatch
---@type DigosaursData
local data = py.mod_data.digosaurus

local assert = function(value, str, param1, param2, param3, param4)
    if value then return end
    error (str:format(param1, param2, param3, param4), 0)
end

local type_assert = function(value, vtype, error, param1, param2, param3, param4)
    assert (value and type(value) == vtype, (error .. " Expected " .. vtype .. ", found " .. type(value) .. "."):format(param1, param2, param3, param4))
end

type_assert (
    data,
    "table",
    "ERROR: pY mod data [digosaurus] not found."
)

type_assert(
    data.creatures,
    "table",
    "ERROR: pY mod data [digosaurus] has invalid creatures."
)

for creature, creature_data in pairs(data.creatures) do
    assert (
        prototypes.entity[creature],
        "ERROR: pY mod data [digosaurus] has invalid creature EntityID: %s",
        creature
    )
    type_assert (
        creature_data.proxy,
        "string",
        "ERROR: pY mod data [digosaurus] creature [%s] has invalid proxy.",
        creature
    )
    assert (
        prototypes.entity[creature_data.proxy],
        "ERROR: pY mod data [digosaurus] creature [%s] has invalid proxy EntityID. Entity [%s] does not exist.",
        creature, creature_data.proxy
    )
    type_assert (
        creature_data.mining_bonus,
        "number",
        "ERROR: pY mod data [digosaurus] creature [%s] has invalid mining_bonus.",
        creature
    )
    assert (
        creature_data.mining_bonus > 0,
        "ERROR: pY mod data [digosaurus] creature [%s] has invalid mining_bonus. Number must be > 0.",
        creature
    )
end

Digosaurus.creatures = data.creatures

type_assert(
    data.foods,
    "table",
    "ERROR: pY mod data [digosaurus] has invalid foods."
)

for food, mult in pairs(data.foods) do
    type_assert (
        food,
        "string",
        "ERROR: pY mod data [digosaurus] has invalid food ItemID.",
        food
    )
    assert (
        prototypes.item[food],
        "ERROR: pY mod data [digosaurus] has invalid food ItemID. Item [%s] does not exist.",
        food
    )
    type_assert (
        mult,
        "number",
        "ERROR: pY mod data [digosaurus] food [%s] has invalid multiplier.",
        food
    )
    assert (
        mult > 0,
        "ERROR: pY mod data [digosaurus] food [%s] has invalid multiplier. Number must be > 0.",
        food, mult
    )
end

Digosaurus.foods = data.foods

type_assert(
    data.resource_categories,
    "table",
    "ERROR: pY mod data [digosaurus] has invalid resource_categories."
)

for category in pairs(data.resource_categories) do
    type_assert (
        category,
        "string",
        "ERROR: pY mod data [digosaurus] has invalid ResourceCategoryID.",
        category
    )
    assert (
        prototypes.resource_category[category],
        "ERROR: pY mod data [digosaurus] has invalid ResourceCategoryID. ResourceCategory [%s] does not exist.",
        category
    )
end

Digosaurus.resource_categories = data.resource_categories

type_assert(
    data.dig_sites,
    "table",
    "ERROR: pY mod data [digosaurus] has invalid dig_sites."
)

for site, site_data in pairs(data.dig_sites) do
    type_assert (
        site,
        "string",
        "ERROR: pY mod data [digosaurus] has invalid site EntityID.",
        site
    )
    assert (
        prototypes.entity[site],
        "ERROR: pY mod data [digosaurus] has invalid site EntityID. Entity [%s] does not exist.",
        site
    )
    type_assert (
        site_data.mining_range_offsets,
        "table",
        "ERROR: pY mod data [digosaurus] site [%s] has invalid mining_range_offsets.",
        site
    )
    type_assert (
        site_data.spawn_point,
        "table",
        "ERROR: pY mod data [digosaurus] site [%s] has invalid spawn_point.",
        site
    )
    type_assert (
        site_data.mining_range,
        "number",
        "ERROR: pY mod data [digosaurus] site [%s] has invalid mining_range.",
        site
    )
    for _, direction in pairs{
      "north",
      "east",
      "south",
      "west"
    } do
        local offset = site_data.mining_range_offsets[defines.direction[direction] .. ""]
        local spawn = site_data.spawn_point[defines.direction[direction] .. ""]
        type_assert (
            offset,
            "table",
            "ERROR: pY mod data [digosaurus] site [%s] has invalid mining_range_offset [defines.direction.%s].",
            site, direction, offset or "nil"
        )
        assert (
            (offset.x and offset.y or offset[1] and offset[2]) and type(offset.x or offset[1]) == "number" and type(offset.y or offset[1]) == "number",
            "ERROR: pY mod data [digosaurus] site [%s] has invalid mining_range_offset [%s]: %s",
            site, direction, serpent.line(offset)
        )
        type_assert (
            spawn,
            "table",
            "ERROR: pY mod data [digosaurus] site [%s] has invalid spawn_point [defines.direction.%s].",
            site, direction, offset or "nil"
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
