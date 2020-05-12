RECIPE {
    type = "recipe",
    name = "vrauks-paddock-mk04",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"vrauks-paddock-mk03", 1},
        {"silver-foam", 20},
        {"control-unit", 10},
        {"agzn-alloy", 30},
        {"low-density-structure", 30},
        {"nenbit-matrix", 40},
    },
    results = {
        {"vrauks-paddock-mk04", 1}
    }
}:add_unlock("vrauks-mk04")

ITEM {
    type = "item",
    name = "vrauks-paddock-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/vrauks-paddock-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk04",
    order = "d",
    place_result = "vrauks-paddock-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "vrauks-paddock-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/vrauks-paddock-mk04.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "vrauks-paddock-mk04"},
    fast_replaceable_group = "vrauks-paddock",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-6.1, -6.1}, {6.1, 6.1}},
    selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
    draw_entity_info_icon_background = false,
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 270
    },
    allowed_effects = {"speed","productivity"},
    crafting_categories = {"vrauks"},
    crafting_speed = 0.1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 1,
    },
    energy_usage = "750kW",
    ingredient_count = 20,
    animation = {
        layers = {
            {
                filename = "__pyalienlifegraphics3__/graphics/entity/vrauks-paddock/vrauks-paddock-mk04.png",
                width = 448,
                height = 448,
                --line_length = 5,
                frame_count = 1,
                --animation_speed = 0.3,
                shift = util.by_pixel(16, -16)
            },
        }
    },
    working_visualisations = {
        {
            north_position = {-2.0, -2.0},
            west_position = {-2.0, -2.0},
            south_position = {-2.0, -2.0},
            east_position = {-2.0, -2.0},
            animation = {
                filename = "__pyalienlifegraphics3__/graphics/entity/vrauks-paddock/alpha.png",
                frame_count = 90,
                line_length = 9,
                width = 128,
                height = 160,
                animation_speed = 0.4
            }
        },
        {
            north_position = {3.0, -3.0},
            west_position = {3.0, -3.0},
            south_position = {3.0, -3.0},
            east_position = {3.0, -3.0},
            animation = {
                filename = "__pyalienlifegraphics3__/graphics/entity/vrauks-paddock/beta.png",
                frame_count = 90,
                line_length = 9,
                width = 128,
                height = 128,
                animation_speed = 0.4
            }
        },
        {
            north_position = {0.0, 3.1},
            west_position = {0.0, 3.1},
            south_position = {0.0, 3.1},
            east_position = {0.0, 3.1},
            animation = {
                filename = "__pyalienlifegraphics3__/graphics/entity/vrauks-paddock/midbottom.png",
                frame_count = 90,
                line_length = 9,
                width = 160,
                height = 128,
                animation_speed = 0.4
            }
        },
        {
            north_position = {2.2, 0.7},
            west_position = {2.2, 0.7},
            south_position = {2.2, 0.7},
            east_position = {2.2, 0.7},
            animation = {
                filename = "__pyalienlifegraphics3__/graphics/entity/vrauks-paddock/right.png",
                frame_count = 90,
                line_length = 10,
                width = 128,
                height = 128,
                animation_speed = 0.4
            }
        },
        {
            north_position = {-4.0, 1.7},
            west_position = {-4.0, 1.7},
            south_position = {-4.0, 1.7},
            east_position = {-4.0, 1.7},
            animation = {
                filename = "__pyalienlifegraphics3__/graphics/entity/vrauks-paddock/small-01.png",
                frame_count = 90,
                line_length = 10,
                width = 96,
                height = 64,
                animation_speed = 0.4
            }
        },
        {
            north_position = {-2.5, 1.6},
            west_position = {-2.5, 1.6},
            south_position = {-2.5, 1.6},
            east_position = {-2.5, 1.6},
            animation = {
                filename = "__pyalienlifegraphics3__/graphics/entity/vrauks-paddock/small-02.png",
                frame_count = 180,
                line_length = 18,
                width = 64,
                height = 96,
                animation_speed = 0.4
            }
        },
    },

    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/vrauks-paddock.ogg", volume = 0.8},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/vrauks-paddock.ogg", volume = 0.37},
        apparent_volume = 2.5
    }
}
