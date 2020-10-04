DATA {
    type = "autoplace-control",
    category = "resource",
    name = "ore-bioreserve",
    richness = true,
    order = "b-e"
}

DATA {
    type = "noise-layer",
    name = "ore-bioreserve"
}

ENTITY {
    type = "resource",
    name = "ore-bioreserve",
    category = "ore-bioreserve",
    icon = "__pyalienlifegraphics__/graphics/icons/biosample.png",
    icon_size = 64,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0.647, g = 0.0, b = 0.415},
    highlight = true,
    minable = {
        mining_time = 1,
        results = {
            {"bio-sample", 1}
        },
    },
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    autoplace = resource_autoplace.resource_autoplace_settings
    {
        name = "ore-bioreserve",
        order = "b",
        base_density = 10,
        base_spots_per_km2 = 1.25,
        has_starting_area_placement = true,
        random_spot_size_minimum = 2,
        random_spot_size_maximum = 4,
        regular_rq_factor_multiplier = 1,
        starting_rq_factor_multiplier = 2,
        candidate_spot_count = 20
    },
    stage_counts = {300, 200, 170, 150, 120, 100, 80, 60, 40, 35, 15},
    stages = {
        sheet = {
            filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
            priority = "extra-high",
            width = 64,
            height = 80,
            frame_count = 64,
            randomize_visual_position = true,
            variation_count = 11,
            shift = util.by_pixel(0, -16),
            hr_version = {
                filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/hr-rich-1.png",
                priority = "extra-high",
                width = 128,
                height = 160,
                frame_count = 64,
                randomize_visual_position = true,
                variation_count = 11,
                shift = util.by_pixel(0, -16),
                scale = 0.65
                }
            },
    }
}
