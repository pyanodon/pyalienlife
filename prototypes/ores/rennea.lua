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
    name = "rennea-flowers",
    category = "rennea-flowers",
    icon = "__pyalienlife__/graphics/icons/rennea-ore.png",
    icon_size = 64,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0.780, g = 0.0, b = 0.129},
    minable = {
        hardness = 1,
        -- mining_particle = "aluminium-ore-particle",
        mining_time = 2,
        results = {
            {type = 'item', name = "rennea", amount = 1}
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
            filename = "__pyalienlife__/graphics/entity/crops/rennea/rennea.png",
            priority = "extra-high",
            width = 64,
            height = 64,
            frame_count = 8,
            variation_count = 1,
            hr_version = {
                filename = "__pyalienlife__/graphics/entity/crops/rennea/hr-rennea.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                frame_count = 8,
                variation_count = 1,
                scale = 0.5
            }
        }
    }
}
