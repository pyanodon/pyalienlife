RECIPE {
    type = "recipe",
    name = "ez-ranch-mk04",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"ez-ranch-mk03", 1},
        {"kevlar", 50},
        {"super-alloy", 30},
        {"super-steel", 60},
        {"control-unit", 10},
        {"blanket", 1},
    },
    results = {
        {"ez-ranch-mk04", 1}
    }
}:add_unlock("korlex-mk04")

ITEM {
    type = "item",
    name = "ez-ranch-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/ez-ranch-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk04",
    order = "d",
    place_result = "ez-ranch-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "ez-ranch-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/ez-ranch-mk04.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "ez-ranch-mk04"},
    fast_replaceable_group = "ez-ranch",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-4.8, -4.8}, {4.8, 4.8}},
    selection_box = {{-5.0, -5.0}, {5.0, 5.0}},
    draw_entity_info_icon_background = false,
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 13
    },
    allowed_effects = {"speed"},
    crafting_categories = {"korlex"},
    crafting_speed = 0.01,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.5,
    },
    energy_usage = "1250kW",
    ingredient_count = 10,
    animation = {
        layers = {
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/ez-ranch/off.png",
                width = 352,
                height = 352,
                --line_length = 5,
                frame_count = 1,
                --animation_speed = 0.3,
                shift = util.by_pixel(16, -16)
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/ez-ranch/off-mask.png",
                width = 352,
                height = 352,
                --line_length = 5,
                frame_count = 1,
                --animation_speed = 0.3,
                shift = util.by_pixel(16, -16),
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
            },
        }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(48, 80),
            west_position = util.by_pixel(48, 80),
            south_position = util.by_pixel(48, 80),
            east_position = util.by_pixel(48, 80),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/ez-ranch/jump.png",
                frame_count = 100,
                line_length = 9,
                width = 224,
                height = 160,
                animation_speed = 0.55
            }
        },
        {
            north_position = util.by_pixel(0, -64.5),
            west_position = util.by_pixel(0, -64.5),
            south_position = util.by_pixel(0, -64.5),
            east_position = util.by_pixel(0, -64.5),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/ez-ranch/rotor.png",
                frame_count = 20,
                line_length = 5,
                width = 64,
                height = 64,
                animation_speed = 0.4
            }
        },
        {
            north_position = util.by_pixel(112, -32),
            west_position = util.by_pixel(112, -32),
            south_position = util.by_pixel(112, -32),
            east_position = util.by_pixel(112, -32),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/ez-ranch/milk.png",
                frame_count = 70,
                line_length = 10,
                width = 96,
                height = 64,
                animation_speed = 0.4
            }
        },
        {
            north_position = util.by_pixel(-96, 48),
            west_position = util.by_pixel(-96, 48),
            south_position = util.by_pixel(-96, 48),
            east_position = util.by_pixel(-96, 48),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/ez-ranch/mother.png",
                frame_count = 100,
                line_length = 25,
                width = 64,
                height = 96,
                animation_speed = 0.4
            }
        },
        {
            north_position = util.by_pixel(-128, -32),
            west_position = util.by_pixel(112, -32),
            south_position = util.by_pixel(112, -32),
            east_position = util.by_pixel(112, -32),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/ez-ranch/snow-01.png",
                frame_count = 100,
                line_length = 32,
                width = 64,
                height = 320,
                animation_speed = 0.4
            }
        },
        {
            north_position = util.by_pixel(-64, -32),
            west_position = util.by_pixel(112, -32),
            south_position = util.by_pixel(112, -32),
            east_position = util.by_pixel(112, -32),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/ez-ranch/snow-02.png",
                frame_count = 100,
                line_length = 32,
                width = 64,
                height = 320,
                animation_speed = 0.4
            }
        },
        {
            north_position = util.by_pixel(-0, -32),
            west_position = util.by_pixel(112, -32),
            south_position = util.by_pixel(112, -32),
            east_position = util.by_pixel(112, -32),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/ez-ranch/snow-03.png",
                frame_count = 100,
                line_length = 32,
                width = 64,
                height = 320,
                animation_speed = 0.4
            }
        },
        {
            north_position = util.by_pixel(64, -32),
            west_position = util.by_pixel(112, -32),
            south_position = util.by_pixel(112, -32),
            east_position = util.by_pixel(112, -32),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/ez-ranch/snow-04.png",
                frame_count = 100,
                line_length = 32,
                width = 64,
                height = 320,
                animation_speed = 0.4
            }
        },
        {
            north_position = util.by_pixel(128, -32),
            west_position = util.by_pixel(112, -32),
            south_position = util.by_pixel(112, -32),
            east_position = util.by_pixel(112, -32),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/ez-ranch/snow-05.png",
                frame_count = 100,
                line_length = 32,
                width = 64,
                height = 320,
                animation_speed = 0.4
            }
        },
    },

    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/ez-ranch.ogg", volume = 0.9},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/ez-ranch.ogg", volume = 0.58},
        apparent_volume = 2.5
    }
}

--47.87%