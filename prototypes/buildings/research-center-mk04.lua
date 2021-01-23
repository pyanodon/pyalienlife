RECIPE {
    type = "recipe",
    name = "research-center-mk04",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"research-center-mk03", 1},
        {"wall-shield", 30},
        {"control-unit", 15},
        {"boron-carbide", 25},
        {"low-density-structure", 20},
        {"blanket", 5},
        {"nbfe-alloy", 50},
    },
    results = {
        {"research-center-mk04", 1}
    }
}:add_unlock("biotech-mk04")

ITEM {
    type = "item",
    name = "research-center-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/research-center-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk04",
    order = "a",
    place_result = "research-center-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "research-center-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/research-center-mk04.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "research-center-mk04"},
    fast_replaceable_group = "research-center",
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-4.7, -4.7}, {4.7, 4.7}},
    selection_box = {{-5.0, -5.0}, {5.0, 5.0}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 4
    },
    allowed_effects = {"speed","productivity",'consumption','pollution'},
    crafting_categories = {"research"},
    crafting_speed = 1.25,
    energy_source = {
        type = "electric",
        usage_priority = "primary-input",
        emissions_per_minute = 1,
    },
    energy_usage = "1500kW",
    animation = {
        layers = {
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/research-center/off-bottom.png",
                width = 352,
                height = 32,
                frame_count = 1,
                shift = util.by_pixel(16, 144)
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/research-center/off.png",
                width = 352,
                height = 512,
                frame_count = 1,
                shift = util.by_pixel(16, -128)
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/research-center/off-mask.png",
                width = 352,
                height = 512,
                frame_count = 1,
                shift = util.by_pixel(16, -128),
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
            },
        }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(16, -128),
            west_position = util.by_pixel(16, -128),
            south_position = util.by_pixel(16, -128),
            east_position = util.by_pixel(16, -128),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/research-center/on.png",
                width = 352,
                height = 512,
                frame_count = 1,
                draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(16, -128),
            west_position = util.by_pixel(16, -128),
            south_position = util.by_pixel(16, -128),
            east_position = util.by_pixel(16, -128),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/research-center/on-mask.png",
                width = 352,
                height = 512,
                frame_count = 1,
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
            }
        },
        {
            north_position = util.by_pixel(-96, -52),
            west_position = util.by_pixel(-96, -52),
            south_position = util.by_pixel(-96, -52),
            east_position = util.by_pixel(-96, -52),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/research-center/blink-left.png",
                width = 32,
                height = 32,
                frame_count = 25,
                line_length = 5,
                animation_speed = 0.5,
                draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(84, -53),
            west_position = util.by_pixel(84, -53),
            south_position = util.by_pixel(84, -53),
            east_position = util.by_pixel(84, -53),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/research-center/blink-right.png",
                width = 64,
                height = 64,
                frame_count = 25,
                line_length = 5,
                animation_speed = 0.5,
                draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(0, -63),
            west_position = util.by_pixel(84, -53),
            south_position = util.by_pixel(84, -53),
            east_position = util.by_pixel(84, -53),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/research-center/center.png",
                width = 64,
                height = 64,
                frame_count = 250,
                line_length = 30,
                animation_speed = 0.8,
                scale= 0.9,
                draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(0, -112),
            west_position = util.by_pixel(0, -112),
            south_position = util.by_pixel(0, -112),
            east_position = util.by_pixel(0, -112),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/research-center/tela-down.png",
                width = 128,
                height = 96,
                frame_count = 248,
                line_length = 16,
                animation_speed = 0.3,
                draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(0, -224),
            west_position = util.by_pixel(0, -224),
            south_position = util.by_pixel(0, -224),
            east_position = util.by_pixel(0, -224),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/research-center/tela-up.png",
                width = 128,
                height = 128,
                frame_count = 248,
                line_length = 16,
                animation_speed = 0.3,
                draw_as_glow = true,
            }
        },
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.5, -5.5}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-1.5, -5.5}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {2.5, -5.5}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {0.5, 5.5}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-1.5, 5.5}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {2.5, 5.5}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics3__/sounds/research-center.ogg", volume = 1.5},
        idle_sound = {filename = "__pyalienlifegraphics3__/sounds/research-center.ogg", volume = 0.8},
        apparent_volume = 2.5
    }
}
