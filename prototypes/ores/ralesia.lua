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
    name = "ralesia-flowers",
    --category = "ore-aluminium",
    icon = "__pyalienlife__/graphics/icons/ralesia-plantation-mk01.png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 1, g = 0.709, b = 0.286},
    minable = {
        hardness = 1,
        -- mining_particle = "aluminium-ore-particle",
        mining_time = 2,
        results = {
            {type = 'item', name = "ralesias", amount = 1}
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
    stage_counts = {2000},--, 1600, 1400, 1200, 800, 400, 200, 10},
    stages = {
        sheet = {
            filename = "__pyalienlife__/graphics/icons/ores/ralesia.png",
            priority = "extra-high",
            width = 32,
            height = 32,
            frame_count = 1,
            variation_count = 1,
        }
    }
}
