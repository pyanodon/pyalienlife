RECIPE {
    type = "recipe",
    name = "tuuphra-plantation-mk01",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"stone-brick", 30},
        {"limestone", 25},
        {"pipe", 15},
        {"electronic-circuit", 10},
        {"duralumin", 100},
        {"tin-plate", 50},
    },
    results = {
        {"tuuphra-plantation-mk01", 1}
    }
}:add_unlock("tuuphra")

ITEM {
    type = "item",
    name = "tuuphra-plantation-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/tuuphra-plantation-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk01",
    order = "e",
    place_result = "tuuphra-plantation-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "tuuphra-plantation-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/tuuphra-plantation-mk01.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "tuuphra-plantation-mk01"},
    fast_replaceable_group = "tuuphra-plantation",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-4.2, -4.2}, {4.2, 4.2}},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
    draw_entity_info_icon_background = false,
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 5
    },
    allowed_effects = {"speed","productivity",'consumption','pollution'},
    crafting_categories = {"tuuphra"},
    crafting_speed = 0.05,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = -3,
    },
    energy_usage = "250kW",
    ingredient_count = 10,
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
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
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
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
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
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
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
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
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
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
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
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {2.0, -5.0}}}
        },
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-2.0, -5.0}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_level = 1,
            pipe_connections = {{type = "output", position = {2.0, 5.0}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-2.0, 5.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/tuuphra-plantation.ogg", volume = 1.5},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/tuuphra-plantation.ogg", volume = 1.1},
        apparent_volume = 2.5
    }
}
