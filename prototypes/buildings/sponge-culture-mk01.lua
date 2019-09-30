RECIPE {
    type = "recipe",
    name = "sponge-culture-mk01",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"steel-plate", 15},
        {"glass", 100},
        {"titanium-plate", 15},
        {"duralumin", 50},
        {"iron-plate", 15},
        {"pipe", 15},
        {"electronic-circuit", 15},
        {"iron-gear-wheel", 20},
    },
    results = {
        {"sponge-culture-mk01", 1}
    }
}:add_unlock("water-invertebrates-mk01")

ITEM {
    type = "item",
    name = "sponge-culture-mk01",
    icon = "__pyalienlife__/graphics/icons/sponge-culture-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk01",
    order = "d",
    place_result = "sponge-culture-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "sponge-culture-mk01",
    icon = "__pyalienlife__/graphics/icons/sponge-culture-mk01.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "sponge-culture-mk01"},
    fast_replaceable_group = "sponge-culture",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.2, -5.2}, {5.2, 5.2}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    draw_entity_info_icon_background = false,
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 4
    },
    allowed_effects = {"speed"},
    crafting_categories = {"sponge"},
    crafting_speed = 0.01,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 1,
    },
    energy_usage = "400kW",
    ingredient_count = 10,
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
            pipe_connections = {{type = "input", position = {0.0, 6.0}}},
            secondary_draw_orders = { north = -1 }
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = 1,
            pipe_connections = {{type = "output", position = {6.0, 0.0}}},
            secondary_draw_orders = { north = -1 }
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = 1,
            pipe_connections = {{type = "output", position = {-6.0, 0.0}}},
            secondary_draw_orders = { north = -1 }
        },
        off_when_no_fluid_recipe = true
    },
    animation = {
        layers = {
            {
                filename = "__pyalienlife__/graphics/entity/sponge-culture/a1.png",
                width = 367,
                height = 96,
                line_length = 5,
                frame_count = 100,
                animation_speed = 0.4,
                shift = util.by_pixel(8, 128)
            },
            {
                filename = "__pyalienlife__/graphics/entity/sponge-culture/a1-mask.png",
                width = 367,
                height = 96,
                line_length = 5,
                frame_count = 100,
                animation_speed = 0.4,
                shift = util.by_pixel(8, 128),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyalienlife__/graphics/entity/sponge-culture/a2.png",
                width = 367,
                height = 96,
                line_length = 5,
                frame_count = 100,
                animation_speed = 0.4,
                shift = util.by_pixel(8, 32)
            },
            {
                filename = "__pyalienlife__/graphics/entity/sponge-culture/a2-mask.png",
                width = 367,
                height = 96,
                line_length = 5,
                frame_count = 100,
                animation_speed = 0.4,
                shift = util.by_pixel(8, 32),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyalienlife__/graphics/entity/sponge-culture/a3.png",
                width = 367,
                height = 96,
                line_length = 5,
                frame_count = 100,
                animation_speed = 0.4,
                shift = util.by_pixel(8, -64)
            },
            {
                filename = "__pyalienlife__/graphics/entity/sponge-culture/a3-mask.png",
                width = 367,
                height = 96,
                line_length = 5,
                frame_count = 100,
                animation_speed = 0.4,
                shift = util.by_pixel(8, -64),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyalienlife__/graphics/entity/sponge-culture/a4.png",
                width = 367,
                height = 96,
                line_length = 5,
                frame_count = 100,
                animation_speed = 0.4,
                shift = util.by_pixel(8, -160)
            },
            {
                filename = "__pyalienlife__/graphics/entity/sponge-culture/a4-mask.png",
                width = 367,
                height = 96,
                line_length = 5,
                frame_count = 100,
                animation_speed = 0.4,
                shift = util.by_pixel(8, -160),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyalienlife__/graphics/entity/sponge-culture/a5.png",
                width = 367,
                height = 32,
                line_length = 5,
                frame_count = 100,
                animation_speed = 0.4,
                shift = util.by_pixel(8, -192)
            },
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlife__/sounds/sponge-culture.ogg", volume = 1.4},
        idle_sound = {filename = "__pyalienlife__/sounds/sponge-culture.ogg", volume = 0.9},
        apparent_volume = 2.5
    }
}
