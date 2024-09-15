RECIPE {
    type = "recipe",
    name = "sponge-culture-mk04",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"kevlar", 100},
        {"sponge-culture-mk03", 1},
        {"blanket", 5},
        {"metallic-glass", 50},
        {"control-unit", 10},
    },
    results = {
        {"sponge-culture-mk04", 1}
    }
}:add_unlock("water-invertebrates-mk04")

ITEM {
    type = "item",
    name = "sponge-culture-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/sponge-culture-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-farm-buildings-mk04",
    order = "d",
    place_result = "sponge-culture-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "sponge-culture-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/sponge-culture-mk04.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "sponge-culture-mk04"},
    fast_replaceable_group = "sponge-culture",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.2, -5.2}, {5.2, 5.2}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 32
    },
    allowed_effects = {'speed', 'productivity', 'consumption', 'pollution'},
    crafting_categories = {"sponge"},
    crafting_speed = 0.1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 1,
    },
    energy_usage = "900kW",
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {0.0, -5.2}, direction = defines.direction.north}},
            secondary_draw_orders = { north = -1 }
        },
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {0.0, 5.2}, direction = defines.direction.south}},
            secondary_draw_orders = { north = -1 }
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {{flow_direction = "output", position = {5.2, 0.0}, direction = defines.direction.east}},
            secondary_draw_orders = { north = -1 }
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {{flow_direction = "output", position = {-5.2, 0.0}, direction = defines.direction.west}},
            secondary_draw_orders = { north = -1 }
        },
        off_when_no_fluid_recipe = true
    },
    animation = {
        layers = {
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/sponge-culture/a1.png",
                width = 367,
                height = 96,
                line_length = 5,
                frame_count = 100,
                animation_speed = 0.4,
                shift = util.by_pixel(8, 128)
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/sponge-culture/a1-mask.png",
                width = 367,
                height = 96,
                line_length = 5,
                frame_count = 100,
                animation_speed = 0.4,
                shift = util.by_pixel(8, 128),
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/sponge-culture/a2.png",
                width = 367,
                height = 96,
                line_length = 5,
                frame_count = 100,
                animation_speed = 0.4,
                shift = util.by_pixel(8, 32)
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/sponge-culture/a2-mask.png",
                width = 367,
                height = 96,
                line_length = 5,
                frame_count = 100,
                animation_speed = 0.4,
                shift = util.by_pixel(8, 32),
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/sponge-culture/a3.png",
                width = 367,
                height = 96,
                line_length = 5,
                frame_count = 100,
                animation_speed = 0.4,
                shift = util.by_pixel(8, -64)
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/sponge-culture/a3-mask.png",
                width = 367,
                height = 96,
                line_length = 5,
                frame_count = 100,
                animation_speed = 0.4,
                shift = util.by_pixel(8, -64),
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/sponge-culture/a4.png",
                width = 367,
                height = 96,
                line_length = 5,
                frame_count = 100,
                animation_speed = 0.4,
                shift = util.by_pixel(8, -160)
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/sponge-culture/a4-mask.png",
                width = 367,
                height = 96,
                line_length = 5,
                frame_count = 100,
                animation_speed = 0.4,
                shift = util.by_pixel(8, -160),
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/sponge-culture/a5.png",
                width = 367,
                height = 32,
                line_length = 5,
                frame_count = 100,
                animation_speed = 0.4,
                shift = util.by_pixel(8, -192)
            },
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/sponge-culture.ogg", volume = 1.4},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/sponge-culture.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
