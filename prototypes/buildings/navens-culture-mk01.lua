RECIPE {
    type = "recipe",
    name = "navens-culture-mk01",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"gasifier", 2},
        {"glass", 30},
        {"nexelit-plate", 20},
        {"duralumin", 35},
        {"steel-plate", 50},
        {"advanced-circuit", 15},
        {"tin-plate", 50},
    },
    results = {
        {"navens-culture-mk01", 1}
    }
}:add_unlock("navens"):add_ingredient({type = "item", name = "small-parts-01", amount = 30})

ITEM {
    type = "item",
    name = "navens-culture-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/navens-culture-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk01",
    order = "b",
    place_result = "navens-culture-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "navens-culture-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/navens-culture-mk01.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "navens-culture-mk01"},
    fast_replaceable_group = "navens-culture",
    max_health = 50,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-4.8, -4.8}, {4.8, 4.8}},
    selection_box = {{-5.0, -5.0}, {5.0, 5.0}},
    draw_entity_info_icon_background = false,
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 4
    },
    allowed_effects = {"speed"},
    crafting_categories = {"navens"},
    crafting_speed = 0.01,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = -1,
    },
    energy_usage = "400kW",
    ingredient_count = 10,
    animation = {
        layers = {
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/navens-culture/a1.png",
                width = 352,
                height = 64,
                line_length = 5,
                frame_count = 120,
                animation_speed = 0.4,
                shift = util.by_pixel(16, 128)
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/navens-culture/a1-mask.png",
                width = 352,
                height = 64,
                line_length = 5,
                frame_count = 120,
                animation_speed = 0.4,
                shift = util.by_pixel(16, 128),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/navens-culture/a2.png",
                width = 352,
                height = 64,
                line_length = 5,
                frame_count = 120,
                animation_speed = 0.4,
                shift = util.by_pixel(16, 64)
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/navens-culture/a2-mask.png",
                width = 352,
                height = 64,
                line_length = 5,
                frame_count = 120,
                animation_speed = 0.4,
                shift = util.by_pixel(16, 64),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/navens-culture/a3.png",
                width = 352,
                height = 64,
                line_length = 5,
                frame_count = 120,
                animation_speed = 0.4,
                shift = util.by_pixel(16, 0)
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/navens-culture/a3-mask.png",
                width = 352,
                height = 64,
                line_length = 5,
                frame_count = 120,
                animation_speed = 0.4,
                shift = util.by_pixel(16, 0),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/navens-culture/a4.png",
                width = 352,
                height = 64,
                line_length = 5,
                frame_count = 120,
                animation_speed = 0.4,
                shift = util.by_pixel(16, -64)
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/navens-culture/a4-mask.png",
                width = 352,
                height = 64,
                line_length = 5,
                frame_count = 120,
                animation_speed = 0.4,
                shift = util.by_pixel(16, -64),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/navens-culture/a5.png",
                width = 352,
                height = 64,
                line_length = 5,
                frame_count = 120,
                animation_speed = 0.4,
                shift = util.by_pixel(16, -128)
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/navens-culture/a5-mask.png",
                width = 352,
                height = 64,
                line_length = 5,
                frame_count = 120,
                animation_speed = 0.4,
                shift = util.by_pixel(16, -128),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/navens-culture/a6.png",
                width = 352,
                height = 32,
                line_length = 5,
                frame_count = 120,
                animation_speed = 0.4,
                shift = util.by_pixel(16, -176)
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
            pipe_connections = {{type = "input", position = {1.5, -5.5}}}
        },
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-1.5, -5.5}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_level = 1,
            pipe_connections = {{type = "output", position = {1.5, 5.5}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-1.5, 5.5}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/navens-culture.ogg", volume = 1.8},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/navens-culture.ogg", volume = 1.3},
        apparent_volume = 2.5
    }
}
