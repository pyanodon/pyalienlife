RECIPE {
    type = "recipe",
    name = "bhoddos-culture-mk02",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"bhoddos-culture-mk01", 1},
        {"titanium-plate", 40},
        {"lead-plate", 50},
        {"latex", 40},
        {"neuroprocessor", 20},
        {"advanced-circuit", 15},
        {"tin-plate", 50},
    },
    results = {
        {"bhoddos-culture-mk02", 1}
    }
}:add_unlock("mycology-mk02")

ITEM {
    type = "item",
    name = "bhoddos-culture-mk02",
    icon = "__pyalienlifegraphics__/graphics/icons/bhoddos-culture-mk02.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk02",
    order = "c",
    place_result = "bhoddos-culture-mk02",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "bhoddos-culture-mk02",
    icon = "__pyalienlifegraphics__/graphics/icons/bhoddos-culture-mk02.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "bhoddos-culture-mk02"},
    fast_replaceable_group = "bhoddos-culture",
    max_health = 50,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.3, -5.3}, {5.3, 5.3}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    draw_entity_info_icon_background = false,
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 2
    },
    allowed_effects = {"speed","productivity",'consumption','pollution'},
    crafting_categories = {"bhoddos"},
    crafting_speed = 0.02,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 1,
    },
    energy_usage = "600kW",
    ingredient_count = 10,
    animation = {
        layers = {
            {
                filename = "__pyalienlifegraphics__/graphics/entity/bhoddos-culture/off.png",
                width = 384,
                height = 416,
                --line_length = 5,
                frame_count = 1,
                --animation_speed = 0.4,
                shift = util.by_pixel(16, -32)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/bhoddos-culture/off-mask.png",
                width = 384,
                height = 416,
                --line_length = 5,
                frame_count = 1,
                --animation_speed = 0.4,
                shift = util.by_pixel(16, -32),
                tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
            },
        }
    },

    working_visualisations = {
        {
            north_position = util.by_pixel(-128, -48),
            west_position = util.by_pixel(-128, -48),
            south_position = util.by_pixel(-128, -48),
            east_position = util.by_pixel(-128, -48),
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/bhoddos-culture/a1.png",
                frame_count = 100,
                line_length = 20,
                width = 96,
                height = 384,
                animation_speed = 0.4
            }
        },
        {
            north_position = util.by_pixel(-32, -48),
            west_position = util.by_pixel(-32, -48),
            south_position = util.by_pixel(-32, -48),
            east_position = util.by_pixel(-32, -48),
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/bhoddos-culture/a2.png",
                frame_count = 100,
                line_length = 20,
                width = 96,
                height = 384,
                animation_speed = 0.4
            }
        },
        {
            north_position = util.by_pixel(64, -48),
            west_position = util.by_pixel(64, -48),
            south_position = util.by_pixel(64, -48),
            east_position = util.by_pixel(64, -48),
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/bhoddos-culture/a3.png",
                frame_count = 100,
                line_length = 20,
                width = 96,
                height = 384,
                animation_speed = 0.4
            }
        },
        {
            north_position = util.by_pixel(160, -48),
            west_position = util.by_pixel(160, -48),
            south_position = util.by_pixel(160, -48),
            east_position = util.by_pixel(160, -48),
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/bhoddos-culture/a4.png",
                frame_count = 100,
                line_length = 20,
                width = 96,
                height = 384,
                animation_speed = 0.4
            }
        },
    },

    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {1.0, -6.0}}}
        },
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-1.0, -6.0}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_level = 1,
            pipe_connections = {{type = "output", position = {1.0, 6.0}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-1.0, 6.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/bhoddos-culture.ogg", volume = 2.0},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/bhoddos-culture.ogg", volume = 1.6},
        apparent_volume = 2.5
    }
}
