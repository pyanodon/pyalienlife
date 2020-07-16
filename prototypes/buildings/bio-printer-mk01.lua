RECIPE {
    type = "recipe",
    name = "bio-printer-mk01",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"aluminium-plate", 40},
        {"glass", 150},
        {"titanium-plate", 40},
        {"nexelit-plate", 25},
        {"duralumin", 50},
        {"electronic-circuit", 50},
        {"iron-gear-wheel", 200},
    },
    results = {
        {"bio-printer-mk01", 1}
    }
}:add_unlock("organ-printing")

ITEM {
    type = "item",
    name = "bio-printer-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/bio-printer-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk01",
    order = "a",
    place_result = "bio-printer-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "bio-printer-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/bio-printer-mk01.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "bio-printer-mk01"},
    fast_replaceable_group = "bio-printer",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-4.1, -4.1}, {4.1, 4.1}},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
    draw_entity_info_icon_background = false,
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"bio-printer"},
    crafting_speed = 3,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.5,
    },
    energy_usage = "9000kW",
    ingredient_count = 50,
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.0, -5.0}}},
            secondary_draw_orders = { north = -1 }
        },
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-2.0, -5.0}}},
            secondary_draw_orders = { north = -1 }
        },
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {2.0, -5.0}}},
            secondary_draw_orders = { north = -1 }
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = 1,
            pipe_connections = {{type = "output", position = {0.0, 5.0}}},
            secondary_draw_orders = { north = -1 }
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = 1,
            pipe_connections = {{type = "output", position = {-2.0, 5.0}}},
            secondary_draw_orders = { north = -1 }
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = 1,
            pipe_connections = {{type = "output", position = {2.0, 5.0}}},
            secondary_draw_orders = { north = -1 }
        },
        off_when_no_fluid_recipe = true
    },
    animation = {
        layers = {
            {
                filename = "__pyalienlifegraphics__/graphics/entity/bio-printer/base.png",
                priority = "high",
                width = 320,
                height = 32,
                line_length = 6,
                frame_count = 150,
                animation_speed = 0.4,
                shift = util.by_pixel(16, 128)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/bio-printer/base-mask.png",
                priority = "high",
                width = 320,
                height = 32,
                line_length = 6,
                frame_count = 150,
                animation_speed = 0.4,
                shift = util.by_pixel(16, 128),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/bio-printer/a1.png",
                priority = "high",
                width = 64,
                height = 352,
                line_length = 32,
                frame_count = 150,
                animation_speed = 0.4,
                shift = util.by_pixel(-112, -64)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/bio-printer/a1-mask.png",
                priority = "high",
                width = 64,
                height = 352,
                line_length = 32,
                frame_count = 150,
                animation_speed = 0.4,
                shift = util.by_pixel(-112, -64),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/bio-printer/a2.png",
                priority = "high",
                width = 64,
                height = 352,
                line_length = 32,
                frame_count = 150,
                animation_speed = 0.4,
                shift = util.by_pixel(-48, -64)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/bio-printer/a2-mask.png",
                priority = "high",
                width = 64,
                height = 352,
                line_length = 32,
                frame_count = 150,
                animation_speed = 0.4,
                shift = util.by_pixel(-48, -64),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/bio-printer/a3.png",
                priority = "high",
                width = 64,
                height = 352,
                line_length = 32,
                frame_count = 150,
                animation_speed = 0.4,
                shift = util.by_pixel(16, -64)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/bio-printer/a3-mask.png",
                priority = "high",
                width = 64,
                height = 352,
                line_length = 32,
                frame_count = 150,
                animation_speed = 0.4,
                shift = util.by_pixel(16, -64),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/bio-printer/a4.png",
                priority = "high",
                width = 64,
                height = 352,
                line_length = 32,
                frame_count = 150,
                animation_speed = 0.4,
                shift = util.by_pixel(80, -64)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/bio-printer/a4-mask.png",
                priority = "high",
                width = 64,
                height = 352,
                line_length = 32,
                frame_count = 150,
                animation_speed = 0.4,
                shift = util.by_pixel(80, -64),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/bio-printer/a5.png",
                priority = "high",
                width = 64,
                height = 352,
                line_length = 32,
                frame_count = 150,
                animation_speed = 0.4,
                shift = util.by_pixel(144, -64)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/bio-printer/a5-mask.png",
                priority = "high",
                width = 64,
                height = 352,
                line_length = 32,
                frame_count = 150,
                animation_speed = 0.4,
                shift = util.by_pixel(144, -64),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/bio-printer.ogg", volume = 0.9},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/bio-printer.ogg", volume = 0.55},
        apparent_volume = 2.5
    }
}
