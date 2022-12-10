local resource_autoplace = require("resource-autoplace")
DATA {
    type = "autoplace-control",
    category = "resource",
    name = "ore-nexelit",
    richness = true,
    order = "p-bio"
}

DATA {
    type = "noise-layer",
    name = "ore-nexelit"
}

ENTITY {
    type = "resource",
    name = "ore-nexelit",
    category = "ore-nexelit",
    icon = "__pycoalprocessinggraphics__/graphics/icons/mip/nexelit-ore-3.png",
    icon_size = 64,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0.317, g = 0.603, b = 0.733},
    highlight = true,
    minable = {
        mining_time = 1,
        results = {
            {"nexelit-ore", 1}
        },
    },
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    autoplace = resource_autoplace.resource_autoplace_settings
    {
        name = "ore-nexelit",
        order = "b",
        base_density = 10,
        base_spots_per_km2 = 1.25,
        has_starting_area_placement = false,
        random_spot_size_minimum = 2,
        random_spot_size_maximum = 4,
        regular_rq_factor_multiplier = 1,
        starting_rq_factor_multiplier = 2,
        candidate_spot_count = 20
    },
    stage_counts = {20000, 13000, 10000, 5000, 3000, 1000, 500, 100},
    stages = {
        sheet = {
            filename = "__pyalienlifegraphics3__/graphics/entity/nexelit/nexelit.png",
            priority = "extra-high",
            width = 64,
            height = 64,
            frame_count = 8,
            variation_count = 8,
            hr_version = {
                filename = "__pyalienlifegraphics3__/graphics/entity/nexelit/hr-nexelit.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                frame_count = 8,
                variation_count = 8,
                scale = 0.5
                }
            },
    }
}
