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
    map_color = {r = 1, g = 1, b = 1},
    minable = {
        hardness = 1,
        mining_time = 2,
        results = {
            {"agar", 1}
        },
    },
    --starting_area = true,
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    autoplace = {
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
        }
    },
    stage_counts = {200, 100, 50},
    stages = {
        sheet = {
            filename = "__pyalienlife__/graphics/entity/bioreserve/rich-2-test.png",
            priority = "extra-high",
            width = 64,
            height = 80,
            frame_count = 40,
            variation_count = 3,
            shift = util.by_pixel(0, -16),
            hr_version = {
                filename = "__pyalienlife__/graphics/entity/bioreserve/hr-rich-2-test.png",
                priority = "extra-high",
                width = 128,
                height = 160,
                frame_count = 40,
                variation_count = 3,
                shift = util.by_pixel(0, -16),
                scale = 0.5
                }
            },
    }
}
