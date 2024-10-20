ENTITY {
    type = "resource",
    name = "ralesia-flowers",
    category = "ralesia-flowers",
    icon = "__pyalienlifegraphics__/graphics/icons/ralesia-ore.png",
    icon_size = 64,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0.960, g = 0.666, b = 0.0},
    minable = {

        -- mining_particle = "aluminium-ore-particle",
        mining_time = 2,
        results = {
            {type = "item", name = "ralesias", amount = 1}
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
	]] --
    stage_counts = {800, 400, 200},
    stages = {
        sheet = {
            filename = "__pyalienlifegraphics__/graphics/entity/crops/ralesia/hr-ralesia.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            frame_count = 8,
            variation_count = 3,
            scale = 0.5
        }
    }
}
