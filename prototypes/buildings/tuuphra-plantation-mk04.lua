RECIPE {
    type = "recipe",
    name = "tuuphra-plantation-mk04",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"tuuphra-plantation-mk03", 1},
        {"science-coating", 15},
        {"super-steel", 100},
        {"kevlar", 80},
        {"control-unit", 30},
    },
    results = {
        {"tuuphra-plantation-mk04", 1}
    }
}:add_unlock("botany-mk04")

ITEM {
    type = "item",
    name = "tuuphra-plantation-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/tuuphra-plantation-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-farm-buildings-mk04",
    order = "e",
    place_result = "tuuphra-plantation-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "tuuphra-plantation-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/tuuphra-plantation-mk04.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "tuuphra-plantation-mk04"},
    fast_replaceable_group = "tuuphra-plantation",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-4.2, -4.2}, {4.2, 4.2}},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 40
    },
    allowed_effects = {'speed', 'productivity', 'consumption', 'pollution'},
    crafting_categories = {"tuuphra"},
    crafting_speed = 0.1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = -3,
    },
    energy_usage = "750kW",
    animation = {
        layers = {
            {
                filename = "__pyalienlifegraphics3__/graphics/entity/tuuphra-plantation/a1.png",
                width = 302,
                height = 64,
                line_length = 6,
                frame_count = 150,
                animation_speed = 0.4,
                shift = util.by_pixel(6, 112)
            },
            {
                filename = "__pyalienlifegraphics3__/graphics/entity/tuuphra-plantation/a1-mask.png",
                width = 302,
                height = 64,
                line_length = 6,
                frame_count = 150,
                animation_speed = 0.4,
                shift = util.by_pixel(6, 112),
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics3__/graphics/entity/tuuphra-plantation/a2.png",
                width = 302,
                height = 64,
                line_length = 6,
                frame_count = 150,
                animation_speed = 0.4,
                shift = util.by_pixel(6, 48)
            },
            {
                filename = "__pyalienlifegraphics3__/graphics/entity/tuuphra-plantation/a2-mask.png",
                width = 302,
                height = 64,
                line_length = 6,
                frame_count = 150,
                animation_speed = 0.4,
                shift = util.by_pixel(6, 48),
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics3__/graphics/entity/tuuphra-plantation/a3.png",
                width = 302,
                height = 64,
                line_length = 6,
                frame_count = 150,
                animation_speed = 0.4,
                shift = util.by_pixel(6, -16)
            },
            {
                filename = "__pyalienlifegraphics3__/graphics/entity/tuuphra-plantation/a3-mask.png",
                width = 302,
                height = 64,
                line_length = 6,
                frame_count = 150,
                animation_speed = 0.4,
                shift = util.by_pixel(6, -16),
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics3__/graphics/entity/tuuphra-plantation/a4.png",
                width = 302,
                height = 64,
                line_length = 6,
                frame_count = 150,
                animation_speed = 0.4,
                shift = util.by_pixel(6, -80)
            },
            {
                filename = "__pyalienlifegraphics3__/graphics/entity/tuuphra-plantation/a4-mask.png",
                width = 302,
                height = 64,
                line_length = 6,
                frame_count = 150,
                animation_speed = 0.4,
                shift = util.by_pixel(6, -80),
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics3__/graphics/entity/tuuphra-plantation/a5.png",
                width = 302,
                height = 64,
                line_length = 6,
                frame_count = 150,
                animation_speed = 0.4,
                shift = util.by_pixel(6, -144)
            },
            {
                filename = "__pyalienlifegraphics3__/graphics/entity/tuuphra-plantation/a5-mask.png",
                width = 302,
                height = 64,
                line_length = 6,
                frame_count = 150,
                animation_speed = 0.4,
                shift = util.by_pixel(6, -144),
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics3__/graphics/entity/tuuphra-plantation/a6.png",
                width = 302,
                height = 32,
                line_length = 6,
                frame_count = 150,
                animation_speed = 0.4,
                shift = util.by_pixel(6, -192)
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
            pipe_connections = {{flow_direction = "input", position = {3.0, -4.2}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {-3.0, -4.2}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {0.0, -4.2}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {2.0, 4.2}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-2.0, 4.2}, direction = defines.direction.south}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/tuuphra-plantation.ogg", volume = 1.5},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/tuuphra-plantation.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
