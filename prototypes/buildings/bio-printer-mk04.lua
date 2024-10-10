RECIPE {
    type = "recipe",
    name = "bio-printer-mk04",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "bio-printer-mk03", amount = 1},
        {type = "item", name = "control-unit",     amount = 10},
        {type = "item", name = "wall-shield",      amount = 15},
        {type = "item", name = "nbfe-alloy",       amount = 40},
        {type = "item", name = "silver-foam",      amount = 20},
        {type = "item", name = "divertor",         amount = 10},
    },
    results = {
        {type = "item", name = "bio-printer-mk04", amount = 1}
    }
}:add_unlock("mass-production")

ITEM {
    type = "item",
    name = "bio-printer-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/bio-printer-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk04",
    order = "a",
    place_result = "bio-printer-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "bio-printer-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/bio-printer-mk04.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "bio-printer-mk04"},
    fast_replaceable_group = "bio-printer",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-4.1, -4.1}, {4.1, 4.1}},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
    match_animation_speed_to_activity = false,
    module_slots = 4,
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"bio-printer"},
    crafting_speed = 4,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 0.5
        },
    },
    energy_usage = "16000kW",
    fluid_boxes_off_when_no_fluid_recipe = true,
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {0.0, -4.0}, direction = defines.direction.north}},
            secondary_draw_orders = {north = -1}
        },
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {-2.0, -4.0}, direction = defines.direction.north}},
            secondary_draw_orders = {north = -1}
        },
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {2.0, -4.0}, direction = defines.direction.north}},
            secondary_draw_orders = {north = -1}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {{flow_direction = "output", position = {0.0, 4.0}, direction = defines.direction.south}},
            secondary_draw_orders = {north = -1}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {{flow_direction = "output", position = {-2.0, 4.0}, direction = defines.direction.south}},
            secondary_draw_orders = {north = -1}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {{flow_direction = "output", position = {2.0, 4.0}, direction = defines.direction.south}},
            secondary_draw_orders = {north = -1}
        },
    },
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/bio-printer/base.png",
                    priority = "high",
                    width = 320,
                    height = 32,
                    line_length = 6,
                    frame_count = 150,
                    animation_speed = 0.4,
                    shift = util.by_pixel(16, 128)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/bio-printer/base-mask.png",
                    priority = "high",
                    width = 320,
                    height = 32,
                    line_length = 6,
                    frame_count = 150,
                    animation_speed = 0.4,
                    shift = util.by_pixel(16, 128),
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/bio-printer/a1.png",
                    priority = "high",
                    width = 64,
                    height = 352,
                    line_length = 32,
                    frame_count = 150,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-112, -64)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/bio-printer/a1-mask.png",
                    priority = "high",
                    width = 64,
                    height = 352,
                    line_length = 32,
                    frame_count = 150,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-112, -64),
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/bio-printer/a2.png",
                    priority = "high",
                    width = 64,
                    height = 352,
                    line_length = 32,
                    frame_count = 150,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-48, -64)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/bio-printer/a2-mask.png",
                    priority = "high",
                    width = 64,
                    height = 352,
                    line_length = 32,
                    frame_count = 150,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-48, -64),
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/bio-printer/a3.png",
                    priority = "high",
                    width = 64,
                    height = 352,
                    line_length = 32,
                    frame_count = 150,
                    animation_speed = 0.4,
                    shift = util.by_pixel(16, -64)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/bio-printer/a3-mask.png",
                    priority = "high",
                    width = 64,
                    height = 352,
                    line_length = 32,
                    frame_count = 150,
                    animation_speed = 0.4,
                    shift = util.by_pixel(16, -64),
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/bio-printer/a4.png",
                    priority = "high",
                    width = 64,
                    height = 352,
                    line_length = 32,
                    frame_count = 150,
                    animation_speed = 0.4,
                    shift = util.by_pixel(80, -64)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/bio-printer/a4-mask.png",
                    priority = "high",
                    width = 64,
                    height = 352,
                    line_length = 32,
                    frame_count = 150,
                    animation_speed = 0.4,
                    shift = util.by_pixel(80, -64),
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/bio-printer/a5.png",
                    priority = "high",
                    width = 64,
                    height = 352,
                    line_length = 32,
                    frame_count = 150,
                    animation_speed = 0.4,
                    shift = util.by_pixel(144, -64)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/bio-printer/a5-mask.png",
                    priority = "high",
                    width = 64,
                    height = 352,
                    line_length = 32,
                    frame_count = 150,
                    animation_speed = 0.4,
                    shift = util.by_pixel(144, -64),
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
                },
            }
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/bio-printer.ogg", volume = 0.9},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/bio-printer.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
