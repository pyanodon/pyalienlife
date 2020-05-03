RECIPE {
    type = "recipe",
    name = "slaughterhouse-mk02",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"duralumin", 50},
        {"niobium-pipe", 20},
        {"lead-plate", 40},
        {"electric-engine-unit", 20},
        {"advanced-circuit", 30},
        {"slaughterhouse-mk01", 1},
        {"latex", 25},
    },
    results = {
        {"slaughterhouse-mk02", 1}
    }
}:add_unlock("advanced-rendering")

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
    draw_entity_info_icon_background = false,
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"slaughterhouse","slaughterhouse-auog","slaughterhouse-ulric","slaughterhouse-mukmoux","slaughterhouse-arthurian","slaughterhouse-dhilmos","slaughterhouse-scrondrix","slaughterhouse-phadai","slaughterhouse-fish","slaughterhouse-phagnot","slaughterhouse-kmauts","slaughterhouse-dingrits","slaughterhouse-xeno","slaughterhouse-cridren","slaughterhouse-antelope","slaughterhouse-zipir","slaughterhouse-trits","slaughterhouse-vonix","slaughterhouse-vrauks","slaughterhouse-xyhiphoe","slaughterhouse-korlex","slaughterhouse-cottongut","slaughterhouse-arqad"},
    crafting_speed = 2,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 10,
    },
    energy_usage = "500kW",
    ingredient_count = 10,
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

    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-2.0, 6.0}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_level = 1,
            pipe_connections = {{type = "output", position = {0.0, -6.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/slaughterhouse.ogg", volume = 1.15},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/slaughterhouse.ogg", volume = 0.75},
        apparent_volume = 2.5
    }
}
