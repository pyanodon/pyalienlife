RECIPE {
    type = "recipe",
    name = "collector",
    energy_required = 0.5,
    enabled = true,
    ingredients = {
        {"electric-mining-drill", 2},
        {"soil-extractormk03", 1},
        {"electronic-circuit", 5},
        {"iron-gear-wheel", 60},
        {"iron-plate", 40},
        {"titanium-plate", 30},
    },
    results = {
        {"collector", 1}
    }
}

ITEM {
    type = "item",
    name = "collector",
    icon = "__pyalienlife__/graphics/icons/collector.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-others",
    order = "x",
    place_result = "collector",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "collector",
    icon = "__pyalienlife__/graphics/icons/collector.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "collector"},
    fast_replaceable_group = "collector",
    max_health = 700,
    resource_categories = {"ore-bioreserve"},
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification = {
        module_slots = 4
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    mining_speed = 1,
    energy_source =
    {
      type = "burner",
      fuel_category = "bio-container",
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions_per_minute = 0.06,
    },
    energy_usage = "1000kW",
    mining_power = 2,
    resource_searching_radius = 3.5,
    vector_to_place_result = {0, -3.55},
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
        width = 4,
        height = 4
    },
    animations = {
        layers = {
            {
                filename = "__pyalienlife__/graphics/entity/collector/f1.png",
                width = 32,
                height = 288,
                line_length = 64,
                frame_count = 255,
                animation_speed = 0.2,
                shift = util.by_pixel(-96, 0)
            },
            {
                filename = "__pyalienlife__/graphics/entity/collector/f2.png",
                width = 32,
                height = 288,
                line_length = 64,
                frame_count = 255,
                animation_speed = 0.2,
                shift = util.by_pixel(-64, 0)
            },
            {
                filename = "__pyalienlife__/graphics/entity/collector/f3.png",
                width = 32,
                height = 288,
                line_length = 64,
                frame_count = 255,
                animation_speed = 0.2,
                shift = util.by_pixel(-32, 0)
            },
            {
                filename = "__pyalienlife__/graphics/entity/collector/f4.png",
                width = 32,
                height = 288,
                line_length = 64,
                frame_count = 255,
                animation_speed = 0.2,
                shift = util.by_pixel(0, 0)
            },
            {
                filename = "__pyalienlife__/graphics/entity/collector/f5.png",
                width = 32,
                height = 288,
                line_length = 64,
                frame_count = 255,
                animation_speed = 0.2,
                shift = util.by_pixel(32, 0)
            },
            {
                filename = "__pyalienlife__/graphics/entity/collector/f6.png",
                width = 32,
                height = 288,
                line_length = 64,
                frame_count = 255,
                animation_speed = 0.2,
                shift = util.by_pixel(64, 0)
            },
            {
                filename = "__pyalienlife__/graphics/entity/collector/f7.png",
                width = 32,
                height = 288,
                line_length = 64,
                frame_count = 255,
                animation_speed = 0.2,
                shift = util.by_pixel(96, 0)
            },
            {
                filename = "__pyalienlife__/graphics/entity/collector/f8.png",
                width = 32,
                height = 288,
                line_length = 64,
                frame_count = 255,
                animation_speed = 0.2,
                shift = util.by_pixel(128, 0)
            },
        }
    },

    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlife__/sounds/collector.ogg", volume = 0.9},
        idle_sound = {filename = "__pyalienlife__/sounds/collector.ogg", volume = 0.75},
        apparent_volume = 2.5
    }
}
