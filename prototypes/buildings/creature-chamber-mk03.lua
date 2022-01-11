RECIPE {
    type = "recipe",
    name = "creature-chamber-mk03",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"creature-chamber-mk02", 1},
        {"ticocr-alloy", 30},
        {"nbti-alloy", 50},
        {"electric-engine-unit", 12},
        {"nexelit-plate", 50},
        {"processing-unit", 40},
    },
    results = {
        {"creature-chamber-mk03", 1}
    }
}:add_unlock("biotech-mk03")

ITEM {
    type = "item",
    name = "creature-chamber-mk03",
    icon = "__pyalienlifegraphics__/graphics/icons/creature-chamber-mk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk03",
    order = "a",
    place_result = "creature-chamber-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "creature-chamber-mk03",
    icon = "__pyalienlifegraphics__/graphics/icons/creature-chamber-mk03.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "creature-chamber-mk03"},
    fast_replaceable_group = "creature-chamber",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.1, -5.1}, {5.1, 5.1}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 3
    },
    allowed_effects = {"speed","productivity",'consumption','pollution'},
    crafting_categories = {"creature-chamber"},
    crafting_speed = 3,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 1,
    },
    energy_usage = "800kW",
    animation = {
        layers = {
            {
                filename = "__pyalienlifegraphics__/graphics/entity/creature-chamber/base.png",
                width = 384,
                height = 32,
                line_length = 5,
                frame_count = 80,
                animation_speed = 0.3,
                shift = util.by_pixel(16, 160)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/creature-chamber/a1.png",
                width = 128,
                height = 320,
                line_length = 16,
                frame_count = 80,
                animation_speed = 0.3,
                shift = util.by_pixel(-112, -16)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/creature-chamber/a1-mask.png",
                width = 128,
                height = 320,
                line_length = 16,
                frame_count = 80,
                animation_speed = 0.3,
                shift = util.by_pixel(-112, -16),
                tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/creature-chamber/a2.png",
                width = 128,
                height = 320,
                line_length = 16,
                frame_count = 80,
                animation_speed = 0.3,
                shift = util.by_pixel(16, -16)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/creature-chamber/a2-mask.png",
                width = 128,
                height = 320,
                line_length = 16,
                frame_count = 80,
                animation_speed = 0.3,
                shift = util.by_pixel(16, -16),
                tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/creature-chamber/a3.png",
                width = 128,
                height = 320,
                line_length = 16,
                frame_count = 80,
                animation_speed = 0.3,
                shift = util.by_pixel(144, -16)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/creature-chamber/a3-mask.png",
                width = 128,
                height = 320,
                line_length = 16,
                frame_count = 80,
                animation_speed = 0.3,
                shift = util.by_pixel(144, -16),
                tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
            },
        }
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.0, -6.0}}},
            secondary_draw_orders = { north = -1 }
        },
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-2.0, -6.0}}},
            secondary_draw_orders = { north = -1 }
        },
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {2.0, -6.0}}},
            secondary_draw_orders = { north = -1 }
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = 1,
            pipe_connections = {{type = "output", position = {0.0, 6.0}}},
            secondary_draw_orders = { north = -1 }
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = 1,
            pipe_connections = {{type = "output", position = {-2.0, 6.0}}},
            secondary_draw_orders = { north = -1 }
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = 1,
            pipe_connections = {{type = "output", position = {2.0, 6.0}}},
            secondary_draw_orders = { north = -1 }
        },
        off_when_no_fluid_recipe = true
    },

    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/creature-chamber.ogg", volume = 0.7},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/creature-chamber.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
