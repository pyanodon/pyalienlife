---@diagnostic disable: assign-type-mismatch
---@diagnostic disable-next-line: assign-type-mismatch
---@type DigosaursData
local data = py.mod_data.digosaurus

py.assert_type (
    data,
    "table",
    "ERROR: pY mod data [digosaurus] is invalid"
)

py.assert_type(
    data.creatures,
    "table",
    "ERROR: pY mod data [digosaurus] has invalid creatures"
)

for creature, creature_data in pairs(data.creatures) do
    py.assert (
        prototypes.entity[creature],
        "ERROR: pY mod data [digosaurus] has invalid creature EntityID: %s",
        creature
    )
    py.assert_type (
        creature_data.proxy,
        "string",
        "ERROR: pY mod data [digosaurus] creature [%s] has invalid proxy",
        creature
    )
    py.assert (
        prototypes.entity[creature_data.proxy],
        "ERROR: pY mod data [digosaurus] creature [%s] has invalid proxy EntityID. Entity [%s] does not exist",
        creature, creature_data.proxy
    )
    py.assert_type (
        creature_data.mining_bonus,
        {"number", "gtzero"},
        "ERROR: pY mod data [digosaurus] creature [%s] has invalid mining_bonus",
        creature
    )
end

Digosaurus.creatures = data.creatures

py.assert_type(
    data.foods,
    "table",
    "ERROR: pY mod data [digosaurus] has invalid foods"
)

for food, mult in pairs(data.foods) do
    py.assert_type (
        food,
        "string",
        "ERROR: pY mod data [digosaurus] has invalid food ItemID",
        food
    )
    py.assert (
        prototypes.item[food],
        "ERROR: pY mod data [digosaurus] has invalid food ItemID. Item [%s] does not exist",
        food
    )
    py.assert_type (
        mult,
        {"number", "gtzero"},
        "ERROR: pY mod data [digosaurus] food [%s] has invalid multiplier",
        food
    )
end

Digosaurus.foods = data.foods

py.assert_type(
    data.resource_categories,
    "table",
    "ERROR: pY mod data [digosaurus] has invalid resource_categories"
)

for category in pairs(data.resource_categories) do
    py.assert_type (
        category,
        "string",
        "ERROR: pY mod data [digosaurus] has invalid ResourceCategoryID",
        category
    )
    py.assert (
        prototypes.resource_category[category],
        "ERROR: pY mod data [digosaurus] has invalid ResourceCategoryID. ResourceCategory [%s] does not exist",
        category
    )
end

Digosaurus.resource_categories = data.resource_categories

py.assert_type(
    data.dig_sites,
    "table",
    "ERROR: pY mod data [digosaurus] has invalid dig_sites"
)

for site, site_data in pairs(data.dig_sites) do
    py.assert_type (
        site,
        "string",
        "ERROR: pY mod data [digosaurus] has invalid site EntityID",
        site
    )
    py.assert (
        prototypes.entity[site],
        "ERROR: pY mod data [digosaurus] has invalid site EntityID. Entity [%s] does not exist",
        site
    )
    py.assert_type (
        site_data.mining_range_offsets,
        "table",
        "ERROR: pY mod data [digosaurus] site [%s] has invalid mining_range_offsets",
        site
    )
    py.assert_type (
        site_data.spawn_point,
        "table",
        "ERROR: pY mod data [digosaurus] site [%s] has invalid spawn_point",
        site
    )
    py.assert_type (
        site_data.mining_range,
        {"number", "gtzero"},
        "ERROR: pY mod data [digosaurus] site [%s] has invalid mining_range",
        site
    )
    for _, direction in pairs{
        "north",
        "east",
        "south",
        "west"
    } do
        ---@diagnostic disable-next-line: undefined-field
        local offset = site_data.mining_range_offsets[defines.direction[direction] .. ""]
        ---@diagnostic disable-next-line: undefined-field
        local spawn = site_data.spawn_point[defines.direction[direction] .. ""]
        py.assert_type (
            offset,
            "table",
            "ERROR: pY mod data [digosaurus] site [%s] has invalid mining_range_offset [defines.direction.%s]",
            site, direction, offset or "nil"
        )
        py.assert (
            (offset.x and offset.y or offset[1] and offset[2]) and type(offset.x or offset[1]) == "number" and type(offset.y or offset[1]) == "number",
            "ERROR: pY mod data [digosaurus] site [%s] has invalid mining_range_offset [%s]: %s",
            site, direction, serpent.line(offset)
        )
        py.assert_type (
            spawn,
            "table",
            "ERROR: pY mod data [digosaurus] site [%s] has invalid spawn_point [defines.direction.%s]",
            site, direction, offset or "nil"
        )
        py.assert (
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
