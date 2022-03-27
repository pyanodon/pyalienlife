RECIPE {
    type = "recipe",
    name = "rennea-plantation-mk04",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"rennea-plantation-mk03", 1},
        {"science-coating", 15},
        {"agzn-alloy", 20},
        {"control-unit", 10},
        {"nbfe-alloy", 100},
        {"wall-shield", 10},
    },
    results = {
        {"rennea-plantation-mk04", 1}
    }
}:add_unlock("botany-mk04")

ITEM {
    type = "item",
    name = "rennea-plantation-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/rennea-plantation-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk04",
    order = "e",
    place_result = "rennea-plantation-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "rennea-plantation-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/rennea-plantation-mk04.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "rennea-plantation-mk04"},
    fast_replaceable_group = "rennea-plantation",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-6.2, -6.2}, {6.2, 6.2}},
    selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 120
    },
    allowed_effects = {"speed","productivity",'consumption','pollution'},
    crafting_categories = {"rennea"},
    crafting_speed = 0.2,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = -5,
    },
    energy_usage = "1500kW",
    animation = {
        layers = {
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/rennea-plantation/s1.png",
                width = 448,
                height = 96,
                line_length = 4,
                frame_count = 75,
                animation_speed = 0.35,
                shift = util.by_pixel(16, 160)
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/rennea-plantation/s1-mask.png",
                width = 448,
                height = 96,
                line_length = 4,
                frame_count = 75,
                animation_speed = 0.35,
                shift = util.by_pixel(16, 160),
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/rennea-plantation/s2.png",
                width = 448,
                height = 96,
                line_length = 4,
                frame_count = 75,
                animation_speed = 0.35,
                shift = util.by_pixel(16, 64)
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/rennea-plantation/s2-mask.png",
                width = 448,
                height = 96,
                line_length = 4,
                frame_count = 75,
                animation_speed = 0.35,
                shift = util.by_pixel(16, 64),
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/rennea-plantation/s3.png",
                width = 448,
                height = 96,
                line_length = 4,
                frame_count = 75,
                animation_speed = 0.35,
                shift = util.by_pixel(16, -32)
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/rennea-plantation/s3-mask.png",
                width = 448,
                height = 96,
                line_length = 4,
                frame_count = 75,
                animation_speed = 0.35,
                shift = util.by_pixel(16, -32),
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/rennea-plantation/s4.png",
                width = 448,
                height = 96,
                line_length = 4,
                frame_count = 75,
                animation_speed = 0.35,
                shift = util.by_pixel(16, -128)
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/rennea-plantation/s4-mask.png",
                width = 448,
                height = 96,
                line_length = 4,
                frame_count = 75,
                animation_speed = 0.35,
                shift = util.by_pixel(16, -128),
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/rennea-plantation/s5.png",
                width = 448,
                height = 96,
                line_length = 4,
                frame_count = 75,
                animation_speed = 0.35,
                shift = util.by_pixel(16, -224)
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/rennea-plantation/s5-mask.png",
                width = 448,
                height = 96,
                line_length = 4,
                frame_count = 75,
                animation_speed = 0.35,
                shift = util.by_pixel(16, -224),
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
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
            pipe_connections = {{type = "input", position = {3.0, -7.0}}}
        },
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-3.0, -7.0}}}
        },
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-0.0, -7.0}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_level = 1,
            pipe_connections = {{type = "output", position = {2.0, 7.0}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-2.0, 7.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pycoalprocessinggraphics__/sounds/fawogae-plantation.ogg"},
        idle_sound = {filename = "__pycoalprocessinggraphics__/sounds/fawogae-plantation.ogg", volume = 0.3},
        apparent_volume = 1.2
    }
}
