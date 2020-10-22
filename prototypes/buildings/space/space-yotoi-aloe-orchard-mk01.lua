---WIP---
---REDO RECIPE---
RECIPE {
    type = "recipe",
    name = "space-yotoi-aloe-orchard-mk01",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"glass", 35},
        {"steel-plate", 50},
        {"duralumin", 50},
        {"pipe", 15},
        {"electronic-circuit", 20},
        {"plastic-bar", 40},
    },
    results = {
        {"space-yotoi-aloe-orchard-mk01", 1}
    }
}:add_unlock("yotoi")

ITEM {
    type = "item",
    name = "space-yotoi-aloe-orchard-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/yotoi-aloe-orchard-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk01",
    order = "e",
    place_result = "space-yotoi-aloe-orchard-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "space-yotoi-aloe-orchard-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/yotoi-aloe-orchard-mk01.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "space-yotoi-aloe-orchard-mk01"},
    fast_replaceable_group = "yotoi-aloe-orchard",
    max_health = 50,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.2, -5.2}, {5.2, 5.2}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    draw_entity_info_icon_background = false,
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 33
    },
    allowed_effects = {"speed","productivity",'consumption','pollution'},
    crafting_categories = {"yotoi"},
    crafting_speed = 0.06,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = -3,
    },
    energy_usage = "600kW",
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
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
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
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
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
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
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
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
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
            pipe_connections = {{type = "input", position = {-6.0, 0.0}}}
        },
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {6.0, 0.0}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_level = 1,
            pipe_connections = {{type = "output", position = {0.0, -6.0}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_level = 1,
            pipe_connections = {{type = "output", position = {0.0, 6.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/yotoi-aloe-orchard.ogg", volume = 1.9},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/yotoi-aloe-orchard.ogg", volume = 1.3},
        apparent_volume = 2.5
    }
}
