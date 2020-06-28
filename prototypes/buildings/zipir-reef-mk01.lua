RECIPE {
    type = "recipe",
    name = "zipir-reef-mk01",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"spore-collector-mk01", 1},
        {"automated-factory-mk01", 2},
        {"steel-plate", 100},
        {"electronic-circuit", 20},
        {"pipe", 15}
    },
    results = {
        {"zipir-reef-mk01", 1}
    }
}:add_unlock("zipir")

ITEM {
    type = "item",
    name = "zipir-reef-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/zipir-reef-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk01",
    order = "d",
    place_result = "zipir-reef-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "zipir-reef-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/zipir-reef-mk01.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "zipir-reef-mk01"},
    fast_replaceable_group = "zipir-reef",
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-4.2, -4.2}, {4.2, 4.2}},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 10
    },
    allowed_effects = {"speed","productivity",'consumption','pollution'},
    crafting_categories = {"zipir"},
    crafting_speed = 0.05,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 2,
    },
    energy_usage = "600kW",
    ingredient_count = 20,
    animation = {
        layers = {
        {
        filename = "__pyalienlifegraphics3__/graphics/entity/zipir/off.png",
        width = 305,
        height = 290,
        frame_count = 1,
        line_length = 1,
        shift = util.by_pixel(8,-1),
        },
        {
            filename = "__pyalienlifegraphics3__/graphics/entity/zipir/off-mask.png",
            width = 305,
            height = 290,
            frame_count = 1,
            line_length = 1,
            shift = util.by_pixel(8,-1),
            tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
    }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(-112.5, -50),
            west_position = util.by_pixel(-112.5, -50),
            south_position = util.by_pixel(-112.5, -50),
            east_position = util.by_pixel(-112.5, -50),
            animation = {
                filename = "__pyalienlifegraphics3__/graphics/entity/zipir/a.png",
                frame_count = 255,
                line_length = 32,
                width = 64,
                height = 192,
                animation_speed = 0.5,
                shift = util.by_pixel(0,0)
            }
        },
        {
            north_position = util.by_pixel(-112.5, -50),
            west_position = util.by_pixel(-112.5, -50),
            south_position = util.by_pixel(-112.5, -50),
            east_position = util.by_pixel(-112.5, -50),
            animation = {
                filename = "__pyalienlifegraphics3__/graphics/entity/zipir/b.png",
                frame_count = 255,
                line_length = 32,
                width = 64,
                height = 192,
                animation_speed = 0.5,
                shift = util.by_pixel(64,0)
            }
        },
        {
            north_position = util.by_pixel(-112.5, -50),
            west_position = util.by_pixel(-112.5, -50),
            south_position = util.by_pixel(-112.5, -50),
            east_position = util.by_pixel(-112.5, -50),
            animation = {
                filename = "__pyalienlifegraphics3__/graphics/entity/zipir/c.png",
                frame_count = 255,
                line_length = 32,
                width = 64,
                height = 192,
                animation_speed = 0.5,
                shift = util.by_pixel(128,0)
            }
        },
        {
            north_position = util.by_pixel(-112.5, -50),
            west_position = util.by_pixel(-112.5, -50),
            south_position = util.by_pixel(-112.5, -50),
            east_position = util.by_pixel(-112.5, -50),
            animation = {
                filename = "__pyalienlifegraphics3__/graphics/entity/zipir/d.png",
                frame_count = 255,
                line_length = 32,
                width = 64,
                height = 192,
                animation_speed = 0.5,
                shift = util.by_pixel(192,0)
            }
        },
        {
            north_position = util.by_pixel(-112.5, -50),
            west_position = util.by_pixel(-112.5, -50),
            south_position = util.by_pixel(-112.5, -50),
            east_position = util.by_pixel(-112.5, -50),
            animation = {
                filename = "__pyalienlifegraphics3__/graphics/entity/zipir/e.png",
                frame_count = 255,
                line_length = 32,
                width = 13,
                height = 192,
                animation_speed = 0.5,
                shift = util.by_pixel(230,0)
            }
        },
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.0, 5.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {5.0, 0.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {0.0, -5.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-5.0, 0.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/zipir.ogg", volume = 1.5},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/zipir.ogg", volume = 0.9},
        apparent_volume = 2.5
    }
}
