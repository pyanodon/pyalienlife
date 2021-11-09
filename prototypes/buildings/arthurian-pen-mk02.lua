RECIPE {
    type = "recipe",
    name = "arthurian-pen-mk02",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"arthurian-pen-mk01", 1},
        {"concrete", 20},
        {"titanium-plate", 30},
        {"lead-plate", 50},
        {"latex", 40},
        {"neuroprocessor", 20},
    },
    results = {
        {"arthurian-pen-mk02", 1}
    }
}:add_unlock("arthurian-mk02")

ITEM {
    type = "item",
    name = "arthurian-pen-mk02",
    icon = "__pyalienlifegraphics__/graphics/icons/arthurian-pen-mk02.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk02",
    order = "d",
    place_result = "arthurian-pen-mk02",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "arthurian-pen-mk02",
    icon = "__pyalienlifegraphics__/graphics/icons/arthurian-pen-mk02.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "arthurian-pen-mk02"},
    fast_replaceable_group = "arthurian-pen",
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-4.8, -4.8}, {4.8, 4.8}},
    selection_box = {{-5.0, -5.0}, {5.0, 5.0}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 16
    },
    allowed_effects = {"speed","productivity",'consumption','pollution'},
    crafting_categories = {"arthurian"},
    crafting_speed = 0.1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 2,
    },
    energy_usage = "300kW",
    animation = {
        layers = {
        {
        filename = "__pyalienlifegraphics__/graphics/entity/arthurian-pen/a1.png",
        width = 328,
        height = 346,
        frame_count = 1,
        line_length = 1,
        shift = util.by_pixel(4, -12)
        },
        {
            filename = "__pyalienlifegraphics__/graphics/entity/arthurian-pen/a1-mask.png",
            width = 328,
            height = 346,
            frame_count = 1,
            line_length = 1,
            shift = util.by_pixel(4, -12),
            tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
            },
      },
    },
    working_visualisations = {
        {
            north_position = {-2.5, -3.5},
            west_position = {-2.5, -3.5},
            south_position = {-2.5, -3.5},
            east_position = {-2.5, -3.5},
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/arthurian-pen/mother.png",
                frame_count = 40,
                scale= 1.2,
                line_length = 20,
                width = 65,
                height = 64,
                animation_speed = 0.5
            }
        },
        {
            north_position = {3.3, -0.5},
            west_position = {3.3, -0.5},
            south_position = {3.3, -0.5},
            east_position = {3.3, -0.5},
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/arthurian-pen/right.png",
                frame_count = 40,
                line_length = 20,
                width = 64,
                height = 64,
                animation_speed = 0.5
            }
        },
        {
            north_position = {3.5, 0.5},
            west_position = {3.5, 0.5},
            south_position = {3.5, 0.5},
            east_position = {3.5, 0.5},
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/arthurian-pen/cub.png",
                frame_count = 40,
                line_length = 20,
                width = 47,
                height = 38,
                animation_speed = 0.5
            }
        },
        {
            north_position = {-0.8, 1.7},
            west_position = {-0.8, 1.7},
            south_position = {-0.8, 1.7},
            east_position = {-0.8, 1.7},
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/arthurian-pen/eatside.png",
                frame_count = 200,
                line_length = 20,
                width = 96,
                height = 64,
                animation_speed = 0.5
            }
        },
        {
            north_position = {-2.5, 0.8},
            west_position = {-2.5, 0.8},
            south_position = {-2.5, 0.8},
            east_position = {-2.5, 0.8},
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/arthurian-pen/eatup.png",
                frame_count = 200,
                line_length = 20,
                width = 64,
                height = 64,
                animation_speed = 0.5
            }
        },
        {
            north_position = {0.0, -1.0},
            west_position = {0.0, -1.0},
            south_position = {-0.0, -1.0},
            east_position = {-0.0, -1.0},
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/arthurian-pen/rot.png",
                frame_count = 120,
                line_length = 20,
                run_mode = "forward-then-backward",
                width = 80,
                height = 64,
                animation_speed = 0.5
            }
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/arthurian-pen.ogg", volume = 1.0},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/arthurian-pen.ogg", volume = 0.3},
        apparent_volume = 0.45
    }
}
