RECIPE {
    type = "recipe",
    name = "bio-reactor-mk03",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"bio-reactor-mk02", 1},
        {"nbti-alloy", 20},
        {"super-alloy", 30},
        {"stainless-steel", 50},
        {"electric-engine-unit", 15},
        {"processing-unit", 30},
        {"ticocr-alloy", 20},
    },
    results = {
        {"bio-reactor-mk03", 1}
    }
}:add_unlock("biotech-machines-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 30})

ITEM {
    type = "item",
    name = "bio-reactor-mk03",
    icon = "__pyalienlifegraphics__/graphics/icons/bio-reactor-mk03.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk03",
    order = "a",
    place_result = "bio-reactor-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "bio-reactor-mk03",
    icon = "__pyalienlifegraphics__/graphics/icons/bio-reactor-mk03.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "bio-reactor-mk03"},
    fast_replaceable_group = "bio-reactor",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 3
    },
    allowed_effects = {'speed', 'productivity', 'consumption', 'pollution'},
    crafting_categories = {"bio-reactor"},
    crafting_speed = 3,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06,
    },
    energy_usage = "800kW",
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
            tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
            },
        },
    },
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
                tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0},
                priority = "medium"
            }
        },
    },
    fluid_boxes = {
        --North
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.0, -0.95}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {1.0, -4.0}}},
            priority = "extra-high"
        },
        --North2
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.0, -0.95}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-1.0, -4.0}}},
            priority = "extra-high"
        },
        --South
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {2.0, 4.0}}},
            priority = "extra-high"
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.0, 4.0}}},
            priority = "extra-high"
        },
        --South2
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-2.0, 4.0}}},
            priority = "extra-high"
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/bio-reactor.ogg", volume = 1.2},
        idle_sound = {filename = "__pyfusionenergygraphics__/sounds/bio-reactor.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
