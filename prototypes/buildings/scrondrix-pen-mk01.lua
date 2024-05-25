local MODULE_SLOTS = 6
local FULL_CRAFTING_SPEED = 1.2 -- crafting speed when full of mk01 modules

RECIPE {
    type = "recipe",
    name = "scrondrix-pen-mk01",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"steel-plate", 100},
        {"niobium-plate", 50},
        {"niobium-pipe", 20},
        {"electronic-circuit", 100},
        {"plastic-bar", 60},
        {"iron-plate", 4},
    },
    results = {
        {"scrondrix-pen-mk01", 1}
    }
}:add_unlock("scrondrix")

ITEM {
    type = "item",
    name = "scrondrix-pen-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/scrondrix-pen-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-farm-buildings-mk01",
    order = "d",
    place_result = "scrondrix-pen-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "scrondrix-pen-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/scrondrix-pen-mk01.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "scrondrix-pen-mk01"},
    fast_replaceable_group = "scrondrix-pen",
    max_health = 50,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.2, -5.2}, {5.2, 5.2}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = MODULE_SLOTS
    },
    allowed_effects = {'speed', 'productivity', 'consumption', 'pollution'},
    crafting_categories = {"scrondrix"},
    crafting_speed = py.farm_speed(MODULE_SLOTS, FULL_CRAFTING_SPEED),
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 3,
    },
    energy_usage = "300kW",
    animation = {
        layers = {
            {
            filename = "__pyalienlifegraphics2__/graphics/entity/scrondrix-pen/raw.png",
            width = 384,
            height = 427,
            frame_count = 1,
            line_length = 1,
            shift = util.by_pixel(16, -34)
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/scrondrix-pen/raw-mask.png",
                width = 384,
                height = 427,
                frame_count = 1,
                line_length = 1,
                shift = util.by_pixel(16, -34),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                },
        }
    },
    working_visualisations = {
        {
            north_position = {-1.0, -3.0},
            west_position = {-1.0, -3.0},
            south_position = {-1.0, -3.0},
            east_position = {-1.0, -3.0},
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/scrondrix-pen/s1.png",
                frame_count = 75,
                line_length = 15,
                width = 128,
                height = 128,
                animation_speed = 0.32
            }
        },
        {
            north_position = {-3.1, -1.0},
            west_position = {-3.1, -1.0},
            south_position = {-3.1, -1.0},
            east_position = {-3.1, -1.0},
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/scrondrix-pen/s2.png",
                frame_count = 75,
                line_length = 15,
                width = 128,
                height = 128,
                animation_speed = 0.32
            }
        },
        {
            north_position = {3.4, -2.2},
            west_position = {3.4, -2.2},
            south_position = {3.4, -2.2},
            east_position = {3.4, -2.2},
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/scrondrix-pen/s3.png",
                frame_count = 75,
                line_length = 10,
                width = 160,
                height = 128,
                animation_speed = 0.32
            }
        },
        {
            north_position = {1.8, -1.0},
            west_position = {1.8, -1.0},
            south_position = {1.8, -1.0},
            east_position = {1.8, -1.0},
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/scrondrix-pen/s4.png",
                frame_count = 50,
                line_length = 10,
                width = 64,
                height = 96,
                animation_speed = 0.32
            }
        },
        {
            north_position = {0.0, -0.1},
            west_position = {0.0, -0.1},
            south_position = {0.0, -0.1},
            east_position = {0.0, -0.1},
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/scrondrix-pen/s5.png",
                frame_count = 75,
                line_length = 15,
                width = 96,
                height = 64,
                animation_speed = 0.32
            }
        },
        {
            north_position = {-2.2, 1.1},
            west_position = {-2.2, 1.1},
            south_position = {-2.2, 1.1},
            east_position = {-2.2, 1.1},
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/scrondrix-pen/s6.png",
                frame_count = 75,
                line_length = 15,
                width = 96,
                height = 96,
                animation_speed = 0.32
            }
        },
        {
            north_position = {1.1, 1.8},
            west_position = {1.1, 1.8},
            south_position = {1.1, 1.8},
            east_position = {1.1, 1.8},
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/scrondrix-pen/s7.png",
                frame_count = 50,
                line_length = 10,
                width = 96,
                height = 64,
                animation_speed = 0.32
            }
        },
        {
            north_position = {-3.9, 2.3},
            west_position = {-3.9, 2.3},
            south_position = {-3.9, 2.3},
            east_position = {-3.9, 2.3},
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/scrondrix-pen/s8.png",
                scale = 0.82,
                frame_count = 50,
                line_length = 10,
                width = 64,
                height = 128,
                animation_speed = 0.32
            }
        },
        {
            north_position = util.by_pixel(16, -34),
            west_position = util.by_pixel(16, -34),
            south_position = util.by_pixel(16, -34),
            east_position = util.by_pixel(16, -34),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/scrondrix-pen/tree.png",
                frame_count = 1,
                line_length = 1,
                width = 384,
                height = 427,
                --animation_speed = 0.5
            }
        },
    },

    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/scrondrix-pen.ogg", volume = 0.75},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/scrondrix-pen.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
