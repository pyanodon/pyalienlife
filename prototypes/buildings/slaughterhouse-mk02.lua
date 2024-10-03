RECIPE {
    type = "recipe",
    name = "slaughterhouse-mk02",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "duralumin", amount = 50},
        {type = "item", name = "niobium-pipe", amount = 20},
        {type = "item", name = "lead-plate", amount = 40},
        {type = "item", name = "engine-unit", amount = 20},
        {type = "item", name = "advanced-circuit", amount = 30},
        {type = "item", name = "slaughterhouse-mk01", amount = 1},
        {type = "item", name = "latex", amount = 25},
    },
    results = {
        {type = "item", name = "slaughterhouse-mk02", amount = 1}
    }
}:add_unlock("biotech-machines-mk02")

ITEM {
    type = "item",
    name = "slaughterhouse-mk02",
    icon = "__pyalienlifegraphics__/graphics/icons/slaughterhouse-mk02.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk02",
    order = "a",
    place_result = "slaughterhouse-mk02",
    stack_size = 10
}

ENTITY {
    type = 'assembling-machine',
    name = "slaughterhouse-mk02",
    icon = "__pyalienlifegraphics__/graphics/icons/slaughterhouse-mk02.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "slaughterhouse-mk02"},
    fast_replaceable_group = "slaughterhouse",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.1, -5.1}, {5.1, 5.1}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    match_animation_speed_to_activity = false,
    module_slots = 2,
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"slaughterhouse"},
    crafting_speed = 2,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 10
        },
    },
    energy_usage = "500kW",
    graphics_set = {
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
                    -- run_mode = "backward",
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
                    tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
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
                    tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
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
                    tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
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
                    tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
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
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/slaughterhouse.ogg", volume = 1.15},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/slaughterhouse.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
