RECIPE {
    type = "recipe",
    name = "simik-den-mk02",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"simik-den-mk01", 1},
        {"nbti-alloy", 30},
        {"engine-unit", 2},
        {"nexelit-plate", 10},
        {"latex", 20},
        {"neuroprocessor", 30},
    },
    results = {
        {"simik-den-mk02", 1}
    }
}:add_unlock("land-animals-mk03")

ITEM {
    type = "item",
    name = "simik-den-mk02",
    icon = "__pyalienlifegraphics2__/graphics/icons/simik-den-mk02.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk02",
    order = "d",
    place_result = "simik-den-mk02",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "simik-den-mk02",
    icon = "__pyalienlifegraphics2__/graphics/icons/simik-den-mk02.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "simik-den-mk02"},
    fast_replaceable_group = "simik-den",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-7.6, -7.6}, {7.6, 7.6}},
    selection_box = {{-8.0, -8.0}, {8.0, 8.0}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 10
    },
    allowed_effects = {"speed","productivity",'consumption','pollution'},
    crafting_categories = {"simik"},
    crafting_speed = data.raw["assembling-machine"]["simik-den-mk01"].crafting_speed,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 2,
    },
    energy_usage = "600kW",
    animation = {
        layers = {
            --TERRAIN
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/simik-den/terrain.png",
                width = 576,
                height = 576,
                --line_length = 9,
                frame_count = 1,
                shift = util.by_pixel(0, 0),
                priority = "low"
                --animation_speed = 0.75,
            },
            --ENCLOSURE
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/simik-den/enclosure.png",
                width = 576,
                height = 576,
                --line_length = 9,
                frame_count = 1,
                shift = util.by_pixel(0, 0),
                priority = "low"
                --animation_speed = 0.75,
            },
            --MASK
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/simik-den/enclosure-mask.png",
                width = 576,
                height = 576,
                --line_length = 9,
                frame_count = 1,
                shift = util.by_pixel(0, 0),
                priority = "low",
                tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
            },
        }
    },
    working_visualisations = {
        --MID
        {
            north_position = util.by_pixel(105, -56),
            west_position = util.by_pixel(105, -56),
            south_position = util.by_pixel(105, -56),
            east_position = util.by_pixel(105, -56),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/simik-den/mid.png",
                frame_count = 45,
                width = 128,
                height = 288,
                line_length = 9,
                animation_speed = 0.4,
                priority = "medium"
            }
        },
        --LAVA POP
        {
            north_position = util.by_pixel(96, 64),
            west_position = util.by_pixel(96, 64),
            south_position = util.by_pixel(96, 64),
            east_position = util.by_pixel(96, 64),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/simik-den/lava-pop.png",
                frame_count = 50,
                width = 96,
                height = 128,
                line_length = 10,
                animation_speed = 0.4,
                priority = "medium"
            }
        },
        --LAVA TOP
        {
            north_position = util.by_pixel(27, -120),
            west_position = util.by_pixel(27, -120),
            south_position = util.by_pixel(27, -120),
            east_position = util.by_pixel(27, -120),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/simik-den/lava-top.png",
                frame_count = 26,
                width = 96,
                height = 128,
                line_length = 13,
                animation_speed = 0.4,
                priority = "high"
            }
        },
        --ROAR
        {
            north_position = util.by_pixel(32, -76),
            west_position = util.by_pixel(32, -76),
            south_position = util.by_pixel(32, -76),
            east_position = util.by_pixel(32, -76),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/simik-den/roar.png",
                frame_count = 96,
                width = 128,
                height = 128,
                line_length = 12,
                animation_speed = 0.4,
                priority = "medium"
            }
        },
        --LEFT
        {
            north_position = util.by_pixel(-80, 76),
            west_position = util.by_pixel(-80, 76),
            south_position = util.by_pixel(-80, 76),
            east_position = util.by_pixel(-80, 76),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/simik-den/left.png",
                frame_count = 46,
                width = 256,
                height = 128,
                line_length = 5,
                animation_speed = 0.4,
                priority = "medium"
            }
        },
        --ENCLOSURE-OVER
        {
            north_position = util.by_pixel(-0, 0),
            west_position = util.by_pixel(-0, 0),
            south_position = util.by_pixel(-0, 0),
            east_position = util.by_pixel(-0, 0),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/simik-den/enclosure-over.png",
                width = 576,
                height = 576,
                --line_length = 9,
                frame_count = 1,
                shift = util.by_pixel(0, 0),
                priority = "high"
                --animation_speed = 0.75,
            }
        },
        --POOF-1
        {
            north_position = util.by_pixel(-128, 32),
            west_position = util.by_pixel(-128, 32),
            south_position = util.by_pixel(-128, 32),
            east_position = util.by_pixel(-128, 32),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/simik-den/poof-1.png",
                frame_count = 70,
                width = 64,
                height = 192,
                line_length = 10,
                animation_speed = 0.35,
                priority = "medium"
            }
        },
        --POOF-2
        {
            north_position = util.by_pixel(160, -141),
            west_position = util.by_pixel(160, -141),
            south_position = util.by_pixel(160, -141),
            east_position = util.by_pixel(160, -141),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/simik-den/poof-2.png",
                frame_count = 60,
                width = 64,
                height = 160,
                line_length = 20,
                animation_speed = 0.35,
                priority = "medium"
            }
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics2__/sounds/simik-den.ogg", volume = 0.90},
        idle_sound = {filename = "__pyalienlifegraphics2__/sounds/simik-den.ogg", volume = 0.0},
        audible_distance_modifier = 0.35,
    }
}
