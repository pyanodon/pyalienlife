RECIPE {
    type = "recipe",
    name = "bio-reactor-mk04",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "bio-reactor-mk03", amount = 1},
        {type = "item", name = "kevlar",           amount = 50},
        {type = "item", name = "super-alloy",      amount = 30},
        {type = "item", name = "super-steel",      amount = 60},
        {type = "item", name = "control-unit",     amount = 10},
        {type = "item", name = "blanket",          amount = 1},
    },
    results = {
        {type = "item", name = "bio-reactor-mk04", amount = 1}
    }
}:add_unlock("biotech-machines-mk04")

ITEM {
    type = "item",
    name = "bio-reactor-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/bio-reactor-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk04",
    order = "a",
    place_result = "bio-reactor-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "bio-reactor-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/bio-reactor-mk04.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "bio-reactor-mk04"},
    fast_replaceable_group = "bio-reactor",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_slots = 4,
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    crafting_categories = {"bio-reactor"},
    crafting_speed = 4,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 0.06
        },
    },
    energy_usage = "1000kW",
    graphics_set = {
        working_visualisations = {
            {
                north_position = {0.312, -0.218},
                west_position = {0.312, -0.218},
                south_position = {0.312, -0.218},
                east_position = {0.312, -0.218},
                animation = {
                    filename = "__pyalienlifegraphics__/graphics/entity/bio-reactor/on.png",
                    frame_count = 50,
                    width = 246,
                    height = 236,
                    line_length = 8,
                    animation_speed = 0.3,
                    priority = "medium"
                }
            },
            {
                north_position = {0.312, -0.218},
                west_position = {0.312, -0.218},
                south_position = {0.312, -0.218},
                east_position = {0.312, -0.218},
                animation = {
                    filename = "__pyalienlifegraphics__/graphics/entity/bio-reactor/on-mask.png",
                    frame_count = 50,
                    width = 246,
                    height = 236,
                    line_length = 8,
                    animation_speed = 0.3,
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0},
                    priority = "medium"
                }
            },
        },
        animation = {
            layers = {
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/bio-reactor/off.png",
                    width = 246,
                    height = 236,
                    frame_count = 1,
                    shift = {0.312, -0.218},
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/bio-reactor/off-mask.png",
                    width = 246,
                    height = 236,
                    frame_count = 1,
                    shift = {0.312, -0.218},
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
                },
            },
        },
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    fluid_boxes = {
        --North
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.0, -0.95}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {1.0, -3.0}, direction = defines.direction.north}},
            priority = "extra-high"
        },
        --North2
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.0, -0.95}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-1.0, -3.0}, direction = defines.direction.north}},
            priority = "extra-high"
        },
        --South
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {2.0, 3.0}, direction = defines.direction.south}},
            priority = "extra-high"
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {0.0, 3.0}, direction = defines.direction.south}},
            priority = "extra-high"
        },
        --South2
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {-2.0, 3.0}, direction = defines.direction.south}},
            priority = "extra-high"
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/bio-reactor.ogg", volume = 1.2},
        idle_sound = {filename = "__pyfusionenergygraphics__/sounds/bio-reactor.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
