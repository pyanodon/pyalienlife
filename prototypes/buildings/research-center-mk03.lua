RECIPE {
    type = "recipe",
    name = "research-center-mk03",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "research-center-mk02", amount = 1},
        {type = "item", name = "ticocr-alloy",         amount = 50},
        {type = "item", name = "nbti-alloy",           amount = 100},
        {type = "item", name = "stainless-steel",      amount = 50},
        {type = "item", name = "electric-engine-unit", amount = 20},
        {type = "item", name = "processing-unit",      amount = 50},
        {type = "item", name = "molybdenum-plate",     amount = 100},
    },
    results = {
        {type = "item", name = "research-center-mk03", amount = 1}
    }
}:add_unlock("biotech-machines-mk03")

ITEM {
    type = "item",
    name = "research-center-mk03",
    icon = "__pyalienlifegraphics__/graphics/icons/research-center-mk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk03",
    order = "a",
    place_result = "research-center-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "research-center-mk03",
    icon = "__pyalienlifegraphics__/graphics/icons/research-center-mk03.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "research-center-mk03"},
    fast_replaceable_group = "research-center",
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-4.7, -4.7}, {4.7, 4.7}},
    selection_box = {{-5.0, -5.0}, {5.0, 5.0}},
    match_animation_speed_to_activity = false,
    module_slots = 3,
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
    crafting_categories = {"research", "research-handcrafting"},
    crafting_speed = 3,
    energy_source = {
        type = "electric",
        usage_priority = "primary-input",
        emissions_per_minute = {
            pollution = 1
        },
    },
    energy_usage = "1200kW",
    graphics_set = {
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
                    tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
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
                west_position = util.by_pixel(0, -63),
                south_position = util.by_pixel(0, -63),
                east_position = util.by_pixel(0, -63),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/research-center/center.png",
                    width = 64,
                    height = 64,
                    frame_count = 250,
                    line_length = 30,
                    animation_speed = 0.8,
                    scale = 0.9,
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
                    tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
                },
            }
        },
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {0.5, -4.5}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {-1.5, -4.5}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {2.5, -4.5}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {0.5, 4.5}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-1.5, 4.5}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {2.5, 4.5}, direction = defines.direction.south}}
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics3__/sounds/research-center.ogg", volume = 1.5},
        idle_sound = {filename = "__pyalienlifegraphics3__/sounds/research-center.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
