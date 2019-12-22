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
    --category = "ore-bioreserve",
    icon = "__pyalienlife__/graphics/icons/agar.png",
    icon_size = 64,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0.9, g = 0.9, b = 0.9},
    minable = {
        hardness = 1,
        mining_time = 2,
        results = {
            {"agar", 1}
        },
    },
    starting_area = true,
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    autoplace = {
		order = 'b',
        control = "ore-bioreserve",
        sharpness = 15/16,
        richness_multiplier = 1500,
        richness_multiplier_distance_bonus = 20,
        richness_base = 10,
        coverage = 0.0006,
        peaks = {
            {
                noise_layer = "ore-bioreserve",
                noise_octaves_difference = -0.85,
                noise_persistence = 0.4
            }
        },
		starting_area_size = 5500 * 0.002,
		starting_area_amount = 1600
    },
    stage_counts = {450, 400, 350, 300, 250, 200, 150, 100, 60, 45, 25},
    stages = {
        sheet = {
            filename = "__pyalienlife__/graphics/entity/bioreserve/rich-1.png",
            priority = "extra-high",
            width = 64,
            height = 80,
            frame_count = 64,
            randomize_visual_position = true,
            variation_count = 11,
            shift = util.by_pixel(0, -16),
            hr_version = {
                filename = "__pyalienlife__/graphics/entity/bioreserve/hr-rich-1.png",
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
