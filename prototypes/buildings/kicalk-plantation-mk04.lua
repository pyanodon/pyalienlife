local pipe = {
    south = {
        filename = "__pyalienlifegraphics__/graphics/entity/kicalk-plantation/bottom.png",
        priority = "extra-high",
        width = 229,
        height = 235,
    }
}

RECIPE {
    type = "recipe",
    name = "kicalk-plantation-mk04",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"kicalk-plantation-mk03", 1},
        {"control-unit", 10},
        {"divertor", 5},
        {"wall-shield", 5},
        {"nenbit-matrix", 20},
        {"agzn-alloy", 35},
    },
    results = {
        {"kicalk-plantation-mk04", 1}
    }
}:add_unlock('kicalk-mk04')

ITEM {
    type = "item",
    name = "kicalk-plantation-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/kicalk-plantation-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk04",
    order = "e",
    place_result = "kicalk-plantation-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "kicalk-plantation-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/kicalk-plantation-mk04.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "kicalk-plantation-mk04"},
    fast_replaceable_group = "kicalk-plantation",
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-6.2, -6.2}, {6.2, 6.2}},
    selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 100
    },
    allowed_effects = {"speed","productivity",'consumption','pollution'},
    crafting_categories = {"kicalk"},
    crafting_speed = 0.08,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = -35,
    },
    energy_usage = "2000kW",
    animation = {
        layers = {
            {
                filename = "__pyalienlifegraphics__/graphics/entity/kicalk-plantation/left.png",
				priority = "extra-high",
                width = 128,
                height = 448,
                line_length = 16,
                frame_count = 50,
                animation_speed = 0.4,
                shift = util.by_pixel(-144, -5),
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/kicalk-plantation/mid.png",
				priority = "extra-high",
                width = 128,
                height = 448,
                line_length = 16,
                frame_count = 50,
                animation_speed = 0.4,
                shift = util.by_pixel(-16, -5),
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/kicalk-plantation/mid-mask.png",
				priority = "extra-high",
                width = 128,
                height = 448,
                line_length = 16,
                frame_count = 50,
                animation_speed = 0.4,
                shift = util.by_pixel(-16, -5),
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/kicalk-plantation/right.png",
				priority = "extra-high",
                width = 128,
                height = 448,
                line_length = 16,
                frame_count = 50,
                animation_speed = 0.4,
                shift = util.by_pixel(112, -5),
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/kicalk-plantation/right-mask.png",
				priority = "extra-high",
                width = 128,
                height = 448,
                line_length = 16,
                frame_count = 50,
                animation_speed = 0.4,
                shift = util.by_pixel(112, -5),
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/kicalk-plantation/far-right.png",
				priority = "extra-high",
                width = 32,
                height = 448,
                repeat_count = 50,
                frame_count = 1,
                line_length = 1,
                animation_speed = 0.4,
                shift = util.by_pixel(192, -5),
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/kicalk-plantation/glow.png",
				priority = "extra-high",
                width = 416,
                height = 448,
                repeat_count = 50,
                frame_count = 1,
                line_length = 1,
                animation_speed = 0.4,
                shift = util.by_pixel(0, -5),
                --draw_as_glow = true,
                draw_as_light = true,
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/kicalk-plantation/glow.png",
				priority = "extra-high",
                width = 416,
                height = 448,
                repeat_count = 50,
                frame_count = 1,
                line_length = 1,
                animation_speed = 0.4,
                shift = util.by_pixel(0, -5),
                draw_as_glow = true,
                --draw_as_light = true,
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/kicalk-plantation/sh.png",
				priority = "extra-high",
                width = 512,
                height = 480,
                repeat_count = 50,
                frame_count = 1,
                line_length = 1,
                animation_speed = 0.4,
                shift = util.by_pixel(16, 11),
                draw_as_shadow = true,
            }
        }
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.1, -4.1}, nil, nil, pipe),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.0, 7.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.1, -4.1}, nil, nil, pipe),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.0, -7.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.1, -4.1}, nil, nil, pipe),
            pipe_covers = DATA.Pipes.covers(false, false, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-7.0, 0.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.1, -4.1}, nil, nil, pipe),
            pipe_covers = DATA.Pipes.covers(false, false, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {7.0, 0.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/kicalk-plantation.ogg", volume = 1.5},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/kicalk-plantation.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
