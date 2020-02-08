RECIPE {
    type = "recipe",
    name = "trits-reef-mk04",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"super-steel", 50},
        {"wall-shield", 10},
        {"kevlar", 100},
        {"science-coating", 30},
        {"trits-reef-mk03", 1},
        {"control-unit", 10},
    },
    results = {
        {"trits-reef-mk04", 1}
    }
}:add_unlock("trits-mk04")

ITEM {
    type = "item",
    name = "trits-reef-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/trits-reef-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk04",
    order = "d",
    place_result = "trits-reef-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "trits-reef-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/trits-reef-mk04.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "trits-reef-mk04"},
    fast_replaceable_group = "trits-reef",
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-4.8, -4.8}, {4.8, 4.8}},
    selection_box = {{-5.0, -5.0}, {5.0, 5.0}},
    draw_entity_info_icon_background = false,
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 4
    },
    allowed_effects = {"speed"},
    crafting_categories = {"trits"},
    crafting_speed = 0.01,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 1,
    },
    energy_usage = "1100kW",
    ingredient_count = 20,
    animation = {
        layers = {
        {
        filename = "__pyalienlifegraphics2__/graphics/entity/trits-reef/off.png",
        width = 384,
        height = 512,
        frame_count = 1,
        line_length = 1,
        shift = util.by_pixel(32, -96)
        },
        {
            filename = "__pyalienlifegraphics2__/graphics/entity/trits-reef/off-mask.png",
            width = 384,
            height = 512,
            frame_count = 1,
            line_length = 1,
            shift = util.by_pixel(32, -96),
            tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
        },
        {
            filename = "__pyalienlifegraphics2__/graphics/entity/trits-reef/over.png",
            width = 384,
            height = 512,
            frame_count = 1,
            line_length = 1,
            shift = util.by_pixel(32, -96),
        },
      },
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(-120, -174),
            west_position = util.by_pixel(-0, 0),
            south_position = util.by_pixel(-0, 0),
            east_position = util.by_pixel(-0, 0),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/trits-reef/a1.png",
                frame_count = 179,
                line_length = 30,
                width = 64,
                height = 320,
                animation_speed = 0.3
            }
        },
        {
            north_position = util.by_pixel(-56, -174),
            west_position = util.by_pixel(-0, 0),
            south_position = util.by_pixel(-0, 0),
            east_position = util.by_pixel(-0, 0),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/trits-reef/a2.png",
                frame_count = 179,
                line_length = 30,
                width = 64,
                height = 320,
                animation_speed = 0.3
            }
        },
        {
            north_position = util.by_pixel(8, -174),
            west_position = util.by_pixel(-0, 0),
            south_position = util.by_pixel(-0, 0),
            east_position = util.by_pixel(-0, 0),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/trits-reef/a3.png",
                frame_count = 179,
                line_length = 30,
                width = 64,
                height = 320,
                animation_speed = 0.3
            }
        },
        {
            north_position = util.by_pixel(72, -174),
            west_position = util.by_pixel(-0, 0),
            south_position = util.by_pixel(-0, 0),
            east_position = util.by_pixel(-0, 0),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/trits-reef/a4.png",
                frame_count = 179,
                line_length = 30,
                width = 64,
                height = 320,
                animation_speed = 0.3
            }
        },
        {
            north_position = util.by_pixel(136, -174),
            west_position = util.by_pixel(-0, 0),
            south_position = util.by_pixel(-0, 0),
            east_position = util.by_pixel(-0, 0),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/trits-reef/a5.png",
                frame_count = 179,
                line_length = 30,
                width = 64,
                height = 320,
                animation_speed = 0.3
            }
        },
        --OVER
        {
            north_position = util.by_pixel(32, -96),
            west_position = util.by_pixel(32, -96),
            south_position = util.by_pixel(32, -96),
            east_position = util.by_pixel(32, -96),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/trits-reef/over.png",
                width = 384,
                height = 512,
                frame_count = 1,
                line_length = 1,
                --shift = util.by_pixel(32, -96),
            }
        },
    },

    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-1.5, 5.5}}},
            secondary_draw_orders = { north = -1 }
        },
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {1.5, 5.5}}},
            secondary_draw_orders = { north = -1 }
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = 1,
            pipe_connections = {{type = "output", position = {-1.5, -5.5}}},
            secondary_draw_orders = { north = -1 }
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = 1,
            pipe_connections = {{type = "output", position = {1.5, -5.5}}},
            secondary_draw_orders = { north = -1 }
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/trits-reef.ogg", volume = 1.0},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/trits-reef.ogg", volume = 0.65},
        apparent_volume = 0.45
    }
}
