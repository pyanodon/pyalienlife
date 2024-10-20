local function allowed_module_categories()
    local allowed_module_categories = {}
    for _, category in pairs(data.raw["module-category"]) do
        allowed_module_categories[#allowed_module_categories+1] = category.name
    end
    return allowed_module_categories
end

ENTITY {
    type = "beacon",
    name = "hidden-beacon",
    icon = "__pycoalprocessinggraphics__/graphics/empty.png",
    icon_size = 32,
    hidden = true,
    flags = {"placeable-player", "hide-alt-info", "not-on-map"},
    max_health = 200,
    corpse = "beacon-remnants",
    dying_explosion = "beacon-explosion",
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{0, 0}, {0, 0}},
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    allowed_module_categories = allowed_module_categories(),
    supply_area_distance = 12,
    energy_source = {type = "void"},
    energy_usage = "1W",
    distribution_effectivity = 1,
    module_slots = 1,
    rotate = false,
    orientation_to_variation = false,
    selectable_in_game = false,
    collision_mask = {layers = {}},
    subgroup = data.raw.item.beacon.subgroup,
    order = "a",
}

ENTITY {
    type = "beacon",
    name = "hidden-beacon-turd",
    icon = "__pyalienlifegraphics3__/graphics/technology/updates/restart.png",
    icon_size = 128,
    flags = {"placeable-player", "hide-alt-info", "not-on-map"},
    max_health = 200,
    corpse = "beacon-remnants",
    dying_explosion = "beacon-explosion",
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{0, 0}, {0, 0}},
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    allowed_module_categories = allowed_module_categories(),
    supply_area_distance = 1,
    energy_source = {type = "void"},
    energy_usage = "1W",
    distribution_effectivity = 1,
    module_slots = 1,
    rotate = false,
    orientation_to_variation = false,
    selectable_in_game = false,
    collision_mask = {layers = {}},
    subgroup = data.raw.item.beacon.subgroup,
    order = "a",
}
