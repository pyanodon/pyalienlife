RECIPE {
    type = "recipe",
    name = "yaedols-culture-mk01",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"concrete", 200},
        {"titanium-plate", 100},
        {"storage-tank", 1},
        {"duralumin", 50},
        {"glass", 20},
        {"electronic-circuit", 100},
        {"pump", 5},
    },
    results = {
        {"yaedols-culture-mk01", 1}
    }
}:add_unlock("yaedols")

ITEM {
    type = "item",
    name = "yaedols-culture-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/yaedols-culture-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk01",
    order = "b",
    place_result = "yaedols-culture-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "yaedols-culture-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/yaedols-culture-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "yaedols-culture-mk01"},
    fast_replaceable_group = "yaedols-culture",
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.3, -5.3}, {5.3, 5.3}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    draw_entity_info_icon_background = false,
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 3
    },
    allowed_effects = {"speed","productivity"},
    crafting_categories = {"yaedols"},
    crafting_speed = 0.02,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 3,
    },
    energy_usage = "400kW",
    ingredient_count = 20,
    animation = {
        layers = {
        {
        filename = "__pyalienlifegraphics3__/graphics/entity/yaedols-culture/off.png",
        width = 352,
        height = 384,
        frame_count = 1,
        line_length = 1,
        shift = util.by_pixel(0, -16)
        },
        {
            filename = "__pyalienlifegraphics3__/graphics/entity/yaedols-culture/off-mask.png",
            width = 351,
            height = 384,
            frame_count = 1,
            line_length = 1,
            shift = util.by_pixel(0, -16),
            tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
      },
    },

    working_visualisations = {
        {
            north_position = util.by_pixel(-144, -16),
            west_position = util.by_pixel(-144, -16),
            south_position = util.by_pixel(-144, -16),
            east_position = util.by_pixel(-144, -16),
            animation = {
                filename = "__pyalienlifegraphics3__/graphics/entity/yaedols-culture/a1.png",
                frame_count = 150,
                line_length = 30,
                width = 64,
                height = 384,
                animation_speed = 0.5
            }
        },
        {
            north_position = util.by_pixel(-80, -16),
            west_position = util.by_pixel(-80, -16),
            south_position = util.by_pixel(-80, -16),
            east_position = util.by_pixel(-80, -16),
            animation = {
                filename = "__pyalienlifegraphics3__/graphics/entity/yaedols-culture/a2.png",
                frame_count = 150,
                line_length = 30,
                width = 64,
                height = 384,
                animation_speed = 0.5
            }
        },
        {
            north_position = util.by_pixel(-16, -16),
            west_position = util.by_pixel(-16, -16),
            south_position = util.by_pixel(-16, -16),
            east_position = util.by_pixel(-16, -16),
            animation = {
                filename = "__pyalienlifegraphics3__/graphics/entity/yaedols-culture/a3.png",
                frame_count = 150,
                line_length = 30,
                width = 64,
                height = 384,
                animation_speed = 0.5
            }
        },
        {
            north_position = util.by_pixel(48, -16),
            west_position = util.by_pixel(48, -16),
            south_position = util.by_pixel(48, -16),
            east_position = util.by_pixel(48, -16),
            animation = {
                filename = "__pyalienlifegraphics3__/graphics/entity/yaedols-culture/a4.png",
                frame_count = 150,
                line_length = 30,
                width = 64,
                height = 384,
                animation_speed = 0.5
            }
        },
        {
            north_position = util.by_pixel(112, -16),
            west_position = util.by_pixel(112, -16),
            south_position = util.by_pixel(112, -16),
            east_position = util.by_pixel(112, -16),
            animation = {
                filename = "__pyalienlifegraphics3__/graphics/entity/yaedols-culture/a5.png",
                frame_count = 150,
                line_length = 30,
                width = 64,
                height = 384,
                animation_speed = 0.5
            }
        },
        {
            north_position = util.by_pixel(160, -16),
            west_position = util.by_pixel(160, -16),
            south_position = util.by_pixel(160, -16),
            east_position = util.by_pixel(160, -16),
            animation = {
                filename = "__pyalienlifegraphics3__/graphics/entity/yaedols-culture/a6.png",
                frame_count = 150,
                line_length = 30,
                width = 32,
                height = 384,
                animation_speed = 0.5
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
        sound = {filename = "__pyalienlifegraphics__/sounds/yaedols-culture.ogg", volume = 1.2},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/yaedols-culture.ogg", volume = 0.70},
        apparent_volume = 0.45
    }
}
