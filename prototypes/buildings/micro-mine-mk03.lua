RECIPE {
    type = "recipe",
    name = "micro-mine-mk03",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "micro-mine-mk02", amount = 1},
        {type = "item", name = "nexelit-plate", amount = 60},
        {type = "item", name = "ticocr-alloy", amount = 20},
        {type = "item", name = "processing-unit", amount = 30},
        {type = "item", name = "electric-engine-unit", amount = 20},
        {type = "item", name = "nichrome", amount = 30},
    },
    results = {
        {type = "item", name = "micro-mine-mk03", amount = 1}
    }
}:add_unlock("biotech-machines-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 30})

ITEM {
    type = "item",
    name = "micro-mine-mk03",
    icon = "__pyalienlifegraphics__/graphics/icons/micro-mine-mk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk03",
    order = "a",
    place_result = "micro-mine-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "micro-mine-mk03",
    icon = "__pyalienlifegraphics__/graphics/icons/micro-mine-mk03.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "micro-mine-mk03"},
    fast_replaceable_group = "micro-mine",
    max_health = 100,
    
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 3
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"micro-mine"},
    crafting_speed = 3,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 2
        },
    },
    energy_usage = "550kW",
    animation = {
        layers = {
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/micro-mine/a1.png",
                width = 96,
                height = 320,
                line_length = 21,
                frame_count = 125,
                animation_speed = 0.4,
                shift = util.by_pixel(-64, -46)
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/micro-mine/a1-mask.png",
                width = 96,
                height = 320,
                line_length = 21,
                frame_count = 125,
                animation_speed = 0.4,
                shift = util.by_pixel(-64, -46),
                tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/micro-mine/a2.png",
                width = 96,
                height = 320,
                line_length = 21,
                frame_count = 125,
                animation_speed = 0.4,
                shift = util.by_pixel(32, -46)
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/micro-mine/a2-mask.png",
                width = 96,
                height = 320,
                line_length = 21,
                frame_count = 125,
                animation_speed = 0.4,
                shift = util.by_pixel(32, -46),
                tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/micro-mine/a3.png",
                width = 64,
                height = 320,
                line_length = 21,
                frame_count = 125,
                animation_speed = 0.4,
                shift = util.by_pixel(112, -46)
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/micro-mine/a3-mask.png",
                width = 64,
                height = 320,
                line_length = 21,
                frame_count = 125,
                animation_speed = 0.4,
                shift = util.by_pixel(112, -46),
                tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
            },
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/micro-mine.ogg", volume = 1.5},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/micro-mine.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
