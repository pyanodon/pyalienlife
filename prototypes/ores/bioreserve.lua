local resource_autoplace = require "resource-autoplace"

data.raw.planet.nauvis.map_gen_settings.autoplace_controls["ore-bioreserve"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings["ore-bioreserve"] = {}

data:extend {{
    type = "autoplace-control",
    category = "resource",
    name = "ore-bioreserve",
    richness = true,
    order = "p-bio"
}}

-- data:extend{{
--     type = "noise-layer",
--     name = "ore-bioreserve"
-- }}

ENTITY {
    type = "resource",
    name = "ore-bioreserve",
    category = "ore-bioreserve",
    icon = "__pyalienlifegraphics__/graphics/icons/mip/bio/30.png",
    icon_size = 64,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0.647, g = 0.0, b = 0.415},
    highlight = true,
    minable = {
        mining_time = 1,
        results = {
            {type = "item", name = "native-flora", amount = 1}
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
    stage_counts = {20000, 15000, 11000, 8000, 5000, 3000, 1000, 500, 300, 200, 100},
    stages = {
        sheet = {
            filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/rich-1.png",
            priority = "extra-high",
            width = 128,
            height = 160,
            frame_count = 64,
            randomize_visual_position = true,
            variation_count = 11,
            shift = util.by_pixel(0, -16),
            scale = 0.65
        },
    }
}
