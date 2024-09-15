RECIPE {
    type = "recipe",
    name = "yotoi-aloe-orchard-mk04",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"yotoi-aloe-orchard-mk03", 1},
        {"silver-foam", 40},
        {"blanket", 5},
        {"control-unit", 10},
        {"kevlar", 100},
    },
    results = {
        {"yotoi-aloe-orchard-mk04", 1}
    }
}:add_unlock("botany-mk04")

ITEM {
    type = "item",
    name = "yotoi-aloe-orchard-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/yotoi-aloe-orchard-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-farm-buildings-mk04",
    order = "e",
    place_result = "yotoi-aloe-orchard-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "yotoi-aloe-orchard-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/yotoi-aloe-orchard-mk04.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "yotoi-aloe-orchard-mk04"},
    fast_replaceable_group = "yotoi-aloe-orchard",
    max_health = 50,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.2, -5.2}, {5.2, 5.2}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 132
    },
    allowed_effects = {'speed', 'productivity', 'consumption', 'pollution'},
    crafting_categories = {"yotoi"},
    crafting_speed = 0.12,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = -4,
    },
    energy_usage = "1700kW",
    animation = {
        layers = {
            {
                filename = "__pyalienlifegraphics3__/graphics/entity/yotoi-aloe-orchard/a1.png",
                width = 384,
                height = 96,
                line_length = 5,
                frame_count = 100,
                animation_speed = 0.4,
                shift = util.by_pixel(16, 128)
            },
            {
                filename = "__pyalienlifegraphics3__/graphics/entity/yotoi-aloe-orchard/a1-mask.png",
                width = 384,
                height = 96,
                line_length = 5,
                frame_count = 100,
                animation_speed = 0.4,
                shift = util.by_pixel(16, 128),
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics3__/graphics/entity/yotoi-aloe-orchard/a2.png",
                width = 384,
                height = 96,
                line_length = 5,
                frame_count = 100,
                animation_speed = 0.4,
                shift = util.by_pixel(16, 32)
            },
            {
                filename = "__pyalienlifegraphics3__/graphics/entity/yotoi-aloe-orchard/a2-mask.png",
                width = 384,
                height = 96,
                line_length = 5,
                frame_count = 100,
                animation_speed = 0.4,
                shift = util.by_pixel(16, 32),
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics3__/graphics/entity/yotoi-aloe-orchard/a3.png",
                width = 384,
                height = 96,
                line_length = 5,
                frame_count = 100,
                animation_speed = 0.4,
                shift = util.by_pixel(16, -64)
            },
            {
                filename = "__pyalienlifegraphics3__/graphics/entity/yotoi-aloe-orchard/a3-mask.png",
                width = 384,
                height = 96,
                line_length = 5,
                frame_count = 100,
                animation_speed = 0.4,
                shift = util.by_pixel(16, -64),
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics3__/graphics/entity/yotoi-aloe-orchard/a4.png",
                width = 384,
                height = 96,
                line_length = 5,
                frame_count = 100,
                animation_speed = 0.4,
                shift = util.by_pixel(16, -160)
            },
            {
                filename = "__pyalienlifegraphics3__/graphics/entity/yotoi-aloe-orchard/a4-mask.png",
                width = 384,
                height = 96,
                line_length = 5,
                frame_count = 100,
                animation_speed = 0.4,
                shift = util.by_pixel(16, -160),
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
            pipe_connections = {{flow_direction = "input", position = {-5.2, 0.0}, direction = defines.direction.west}}
        },
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {5.2, 0.0}, direction = defines.direction.east}}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {0.0, -5.2}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {0.0, 5.2}, direction = defines.direction.south}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/yotoi-aloe-orchard.ogg", volume = 1.9},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/yotoi-aloe-orchard.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
