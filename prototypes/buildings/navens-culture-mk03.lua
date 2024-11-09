RECIPE {
    type = "recipe",
    name = "navens-culture-mk03",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "navens-culture-mk02",  amount = 1},
        {type = "item", name = "py-heat-exchanger",    amount = 1},
        {type = "item", name = "nichrome",             amount = 25},
        {type = "item", name = "neuromorphic-chip",    amount = 30},
        {type = "item", name = "electric-engine-unit", amount = 2},
        {type = "item", name = "processing-unit",      amount = 35},
        {type = "item", name = "ticocr-alloy",         amount = 20},
    },
    results = {
        {type = "item", name = "navens-culture-mk03", amount = 1}
    }
}:add_unlock("mycology-mk04"):add_ingredient {type = "item", name = "small-parts-03", amount = 30}

ITEM {
    type = "item",
    name = "navens-culture-mk03",
    icon = "__pyalienlifegraphics__/graphics/icons/navens-culture-mk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-farm-buildings-mk03",
    order = "b",
    place_result = "navens-culture-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "navens-culture-mk03",
    icon = "__pyalienlifegraphics__/graphics/icons/navens-culture-mk03.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "navens-culture-mk03"},
    fast_replaceable_group = "navens-culture",
    max_health = 50,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-4.8, -4.8}, {4.8, 4.8}},
    selection_box = {{-5.0, -5.0}, {5.0, 5.0}},
    forced_symmetry = "diagonal-pos",
    match_animation_speed_to_activity = false,
    module_slots = 10,
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
    crafting_categories = {"navens"},
    crafting_speed = 0.02,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = -1
        },
    },
    energy_usage = "800kW",
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/navens-culture/a1.png",
                    width = 352,
                    height = 64,
                    line_length = 5,
                    frame_count = 120,
                    animation_speed = 0.4,
                    shift = util.by_pixel(16, 128)
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/navens-culture/a1-mask.png",
                    width = 352,
                    height = 64,
                    line_length = 5,
                    frame_count = 120,
                    animation_speed = 0.4,
                    shift = util.by_pixel(16, 128),
                    tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/navens-culture/a2.png",
                    width = 352,
                    height = 64,
                    line_length = 5,
                    frame_count = 120,
                    animation_speed = 0.4,
                    shift = util.by_pixel(16, 64)
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/navens-culture/a2-mask.png",
                    width = 352,
                    height = 64,
                    line_length = 5,
                    frame_count = 120,
                    animation_speed = 0.4,
                    shift = util.by_pixel(16, 64),
                    tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/navens-culture/a3.png",
                    width = 352,
                    height = 64,
                    line_length = 5,
                    frame_count = 120,
                    animation_speed = 0.4,
                    shift = util.by_pixel(16, 0)
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/navens-culture/a3-mask.png",
                    width = 352,
                    height = 64,
                    line_length = 5,
                    frame_count = 120,
                    animation_speed = 0.4,
                    shift = util.by_pixel(16, 0),
                    tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/navens-culture/a4.png",
                    width = 352,
                    height = 64,
                    line_length = 5,
                    frame_count = 120,
                    animation_speed = 0.4,
                    shift = util.by_pixel(16, -64)
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/navens-culture/a4-mask.png",
                    width = 352,
                    height = 64,
                    line_length = 5,
                    frame_count = 120,
                    animation_speed = 0.4,
                    shift = util.by_pixel(16, -64),
                    tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/navens-culture/a5.png",
                    width = 352,
                    height = 64,
                    line_length = 5,
                    frame_count = 120,
                    animation_speed = 0.4,
                    shift = util.by_pixel(16, -128)
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/navens-culture/a5-mask.png",
                    width = 352,
                    height = 64,
                    line_length = 5,
                    frame_count = 120,
                    animation_speed = 0.4,
                    shift = util.by_pixel(16, -128),
                    tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/navens-culture/a6.png",
                    width = 352,
                    height = 32,
                    line_length = 5,
                    frame_count = 120,
                    animation_speed = 0.4,
                    shift = util.by_pixel(16, -176)
                },
            }
        },
    },

    fluid_boxes_off_when_no_fluid_recipe = true,
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {1.5, -4.5}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {-1.5, -4.5}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {1.5, 4.5}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-1.5, 4.5}, direction = defines.direction.south}}
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/navens-culture.ogg", volume = 1.8},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/navens-culture.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
