--[[
DATA {
    type = "autoplace-control",
    category = "resource",
    name = "ore-aluminium",
    richness = true,
    order = "b-e"
}
]]--

--[[
DATA {
    type = "noise-layer",
    name = "ore-aluminium"
}
]]--

ENTITY {
    type = "resource",
    name = "kicalk-tree",
    category = "kicalk-tree",
    icon = "__pyalienlife__/graphics/icons/kicalk.png",
    icon_size = 64,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0.462, g = 0.694, b = 0.705},
    minable = {
        hardness = 1,
        -- mining_particle = "aluminium-ore-particle",
        mining_time = 2,
        results = {
            {type = 'item', name = "kicalk", amount = 1}
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
            filename = "__pyalienlife__/graphics/entity/crops/kicalk/kicalk.png",
            priority = "extra-high",
            width = 64,
            height = 80,
            frame_count = 8,
            variation_count = 1,
            shift = util.by_pixel(0, -16),
            hr_version = {
                filename = "__pyalienlife__/graphics/entity/crops/kicalk/hr-kicalk.png",
                priority = "extra-high",
                width = 128,
                height = 160,
                frame_count = 8,
                variation_count = 1,
                scale = 0.5,
                shift = util.by_pixel(0, -16),
            }
        }
    }
}
