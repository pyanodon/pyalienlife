RECIPE {
    type = "recipe",
    name = "slaughterhouse-mk04",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"blanket", 5},
        {"wall-shield", 20},
        {"nbfe-alloy", 40},
        {"super-steel", 100},
        {"control-unit", 10},
        {"slaughterhouse-mk03", 1},
    },
    results = {
        {"slaughterhouse-mk04", 1}
    }
}:add_unlock("biotech-machines-mk04")

ITEM {
    type = "item",
    name = "slaughterhouse-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/slaughterhouse-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk04",
    order = "a",
    place_result = "slaughterhouse-mk04",
    stack_size = 10
}

ENTITY {
    type = 'assembling-machine',
    name = "slaughterhouse-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/slaughterhouse-mk04.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "slaughterhouse-mk04"},
    fast_replaceable_group = "slaughterhouse",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.1, -5.1}, {5.1, 5.1}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 4
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"slaughterhouse"},
    crafting_speed = 4,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 10,
    },
    energy_usage = "900kW",
    animation = {
        layers = {
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/slaughterhouse/base.png",
                width = 384,
                height = 32,
                line_length = 5,
                frame_count = 105,
                animation_speed = 0.3,
                run_mode = "backward",
                shift = util.by_pixel(16, 160)
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/slaughterhouse/a1.png",
                width = 96,
                height = 324,
                line_length = 21,
                frame_count = 105,
                animation_speed = 0.3,
                -- run_mode = backward,
                shift = util.by_pixel(-128, -18)
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/slaughterhouse/a1-mask.png",
                width = 96,
                height = 324,
                line_length = 21,
                frame_count = 105,
                animation_speed = 0.3,
                run_mode = "backward",
                shift = util.by_pixel(-128, -18),
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/slaughterhouse/a2.png",
                width = 96,
                height = 324,
                line_length = 21,
                frame_count = 105,
                animation_speed = 0.3,
                run_mode = "backward",
                shift = util.by_pixel(-32, -18)
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/slaughterhouse/a2-mask.png",
                width = 96,
                height = 324,
                line_length = 21,
                frame_count = 105,
                animation_speed = 0.3,
                run_mode = "backward",
                shift = util.by_pixel(-32, -18),
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/slaughterhouse/a3.png",
                width = 96,
                height = 324,
                line_length = 21,
                frame_count = 105,
                animation_speed = 0.3,
                --run_mode = "backward",
                shift = util.by_pixel(64, -18)
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/slaughterhouse/a3-mask.png",
                width = 96,
                height = 324,
                line_length = 21,
                frame_count = 105,
                animation_speed = 0.3,
                --run_mode = "backward",
                shift = util.by_pixel(64, -18),
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/slaughterhouse/a4.png",
                width = 96,
                height = 324,
                line_length = 21,
                frame_count = 105,
                --run_mode = "backward",
                animation_speed = 0.3,
                shift = util.by_pixel(160, -18)
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/slaughterhouse/a4-mask.png",
                width = 96,
                height = 324,
                line_length = 21,
                frame_count = 105,
                --run_mode = "backward",
                animation_speed = 0.3,
                shift = util.by_pixel(160, -18),
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
            },
        }
    },

    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {-2.0, 5.1}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {0.0, -5.1}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-2.0, -5.1}, direction = defines.direction.north}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/slaughterhouse.ogg", volume = 1.15},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/slaughterhouse.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
