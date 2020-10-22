RECIPE {
    type = "recipe",
    name = "vonix-den-mk03",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"control-unit", 10},
        {"super-steel", 100},
        {"low-density-structure", 100},
        {"vonix-den-mk02", 1},
        {"metallic-glass", 100},
        {"processing-unit", 50},
    },
    results = {
        {"vonix-den-mk03", 1}
    }
}:add_unlock("vonix-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 100}):replace_ingredient("processing-unit", "intelligent-unit")

ITEM {
    type = "item",
    name = "vonix-den-mk03",
    icon = "__pyalienlifegraphics__/graphics/icons/vonix-den-mk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk03",
    order = "f",
    place_result = "vonix-den-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "vonix-den-mk03",
    icon = "__pyalienlifegraphics__/graphics/icons/vonix-den-mk03.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "vonix-den-mk03"},
    fast_replaceable_group = "vonix-den",
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-4.8, -4.8}, {4.8, 4.8}},
    selection_box = {{-5.0, -5.0}, {5.0, 5.0}},
    draw_entity_info_icon_background = false,
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 3
    },
    allowed_effects = {"speed","productivity",'consumption','pollution'},
    crafting_categories = {"vonix"},
    crafting_speed = 0.02,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 3,
    },
    energy_usage = "900kW",
    animation = {
        layers = {
        {
        filename = "__pyalienlifegraphics3__/graphics/entity/vonix-den/off.png",
        width = 352,
        height = 352,
        frame_count = 1,
        line_length = 1,
        shift = util.by_pixel(16, -16)
        },
        {
            filename = "__pyalienlifegraphics3__/graphics/entity/vonix-den/off-mask.png",
            width = 352,
            height = 352,
            frame_count = 1,
            line_length = 1,
            shift = util.by_pixel(16, -16),
            tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
            },
      },
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(191, 64),
            west_position = util.by_pixel(191, 64),
            south_position = util.by_pixel(191, 64),
            east_position = util.by_pixel(191, 64),
            animation = {
                filename = "__pyalienlifegraphics3__/graphics/entity/vonix-den/sh.png",
                frame_count = 150,
                line_length = 10,
                width = 64,
                height = 128,
                animation_speed = 0.4
            }
        },
        {
            north_position = util.by_pixel(-0, 128),
            west_position = util.by_pixel(-0, 128),
            south_position = util.by_pixel(-0, 128),
            east_position = util.by_pixel(-0, 128),
            animation = {
                filename = "__pyalienlifegraphics3__/graphics/entity/vonix-den/a1.png",
                frame_count = 150,
                line_length = 6,
                width = 320,
                height = 64,
                animation_speed = 0.4
            }
        },
        {
            north_position = util.by_pixel(-0, 64),
            west_position = util.by_pixel(-0, 64),
            south_position = util.by_pixel(-0, 64),
            east_position = util.by_pixel(-0, 64),
            animation = {
                filename = "__pyalienlifegraphics3__/graphics/entity/vonix-den/a2.png",
                frame_count = 150,
                line_length = 6,
                width = 320,
                height = 64,
                animation_speed = 0.4
            }
        },
        {
            north_position = util.by_pixel(-0, 0),
            west_position = util.by_pixel(-0, 0),
            south_position = util.by_pixel(-0, 0),
            east_position = util.by_pixel(-0, 0),
            animation = {
                filename = "__pyalienlifegraphics3__/graphics/entity/vonix-den/a3.png",
                frame_count = 150,
                line_length = 6,
                width = 320,
                height = 64,
                animation_speed = 0.4
            }
        },
        {
            north_position = util.by_pixel(-0, -64),
            west_position = util.by_pixel(-0, -64),
            south_position = util.by_pixel(-0, -64),
            east_position = util.by_pixel(-0, -64),
            animation = {
                filename = "__pyalienlifegraphics3__/graphics/entity/vonix-den/a4.png",
                frame_count = 150,
                line_length = 6,
                width = 320,
                height = 64,
                animation_speed = 0.4
            }
        },
        {
            north_position = util.by_pixel(-0, -128),
            west_position = util.by_pixel(-0, -128),
            south_position = util.by_pixel(-0, -128),
            east_position = util.by_pixel(-0, -128),
            animation = {
                filename = "__pyalienlifegraphics3__/graphics/entity/vonix-den/a5.png",
                frame_count = 150,
                line_length = 6,
                width = 320,
                height = 64,
                animation_speed = 0.4
            }
        },
        {
            north_position = util.by_pixel(-0, -192),
            west_position = util.by_pixel(-0, -192),
            south_position = util.by_pixel(-0, -192),
            east_position = util.by_pixel(-0, -192),
            animation = {
                filename = "__pyalienlifegraphics3__/graphics/entity/vonix-den/a6.png",
                frame_count = 150,
                line_length = 6,
                width = 320,
                height = 64,
                animation_speed = 0.4
            }
        },
        {
            north_position = util.by_pixel(-0, -256),
            west_position = util.by_pixel(-0, -256),
            south_position = util.by_pixel(-0, -256),
            east_position = util.by_pixel(-0, -256),
            animation = {
                filename = "__pyalienlifegraphics3__/graphics/entity/vonix-den/a7.png",
                frame_count = 150,
                line_length = 6,
                width = 320,
                height = 64,
                animation_speed = 0.4
            }
        },

    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/vonix-den.ogg", volume = 0.8},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/vonix-den.ogg", volume = 0.50},
        apparent_volume = 0.45
    }
}
