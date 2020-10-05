
ENTITY {
    type = "resource",
    name = "yotoi-tree-fruit",
    category = "yotoi-tree-fruit",
    icon = "__pyalienlifegraphics__/graphics/icons/yotoi-fruit.png",
    icon_size = 64,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0.176, g = 0.525, b = 0.607},
    minable = {
        
        -- mining_particle = "aluminium-ore-particle",
        mining_time = 2,
        results = {
            {type = 'item', name = "yotoi-fruit", amount = 1}
        },
        --fluid_amount = 100,
        --required_fluid = "coal-gas"
    },
    starting_area = false,
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    --[[
	autoplace = {
        control = "ore-aluminium",
        sharpness = 15/16,
        richness_multiplier = 1500,
        richness_multiplier_distance_bonus = 20,
        richness_base = 10,
        coverage = 0.0003,
        peaks = {
            {
                noise_layer = "ore-aluminium",
                noise_octaves_difference = -0.85,
                noise_persistence = 0.4
            }
        }
    },
	]]--
    stage_counts = {800},
    stages = {
        sheet = {
            filename = "__pyalienlifegraphics__/graphics/entity/crops/yotoi/yotoi.png",
            priority = "extra-high",
            width = 64,
            height = 64,
            frame_count = 8,
            variation_count = 1,
            shift = util.by_pixel(0, -0),
            hr_version = {
                filename = "__pyalienlifegraphics__/graphics/entity/crops/yotoi/hr-yotoi.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                frame_count = 8,
                variation_count = 1,
                scale = 0.5,
                shift = util.by_pixel(0, 0),
            }
        }
    }
}
