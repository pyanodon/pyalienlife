RECIPE {
    type = "recipe",
    name = "phagnot-corral-mk01",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"stone-brick", 50},
        {"titanium-plate", 50},
        {"steel-plate", 100},
        {"duralumin", 50},
        {"glass", 80},
        {"electronic-circuit", 35},
    },
    results = {
        {"phagnot-corral-mk01", 1}
    }
}:add_unlock("phagnot")

ITEM {
    type = "item",
    name = "phagnot-corral-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/phagnot-corral-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk01",
    order = "d",
    place_result = "phagnot-corral-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "phagnot-corral-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/phagnot-corral-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "phagnot-corral-mk01"},
    fast_replaceable_group = "phagnot-corral",
    max_health = 70,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.8, -5.8}, {5.8, 5.8}},
    selection_box = {{-6.0, -6.0}, {6.0, 6.0}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 10
    },
    allowed_effects = {"speed","productivity",'consumption','pollution'},
    crafting_categories = {"phagnot"},
    crafting_speed = 0.1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 3,
    },
    energy_usage = "300kW",
    animation = {
        layers = {
        {
        filename = "__pyalienlifegraphics2__/graphics/entity/phagnot-corral/off.png",
        width = 416,
        height = 448,
        frame_count = 1,
        line_length = 1,
        shift = util.by_pixel(16, -32)
        },
        {
            filename = "__pyalienlifegraphics2__/graphics/entity/phagnot-corral/off-mask.png",
            width = 416,
            height = 448,
            frame_count = 1,
            line_length = 1,
            shift = util.by_pixel(16, -32),
            tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
      },
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(136, -63),
            west_position = util.by_pixel(0, -0),
            south_position = util.by_pixel(0, -0),
            east_position = util.by_pixel(0, -0),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/phagnot-corral/mom.png",
                frame_count = 68,
                line_length = 10,
                width = 96,
                height = 128,
                animation_speed = 0.5
            }
        },
        {
            north_position = util.by_pixel(-56, -121),
            west_position = util.by_pixel(0, -0),
            south_position = util.by_pixel(0, -0),
            east_position = util.by_pixel(0, -0),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/phagnot-corral/porta.png",
                frame_count = 68,
                line_length = 10,
                width = 64,
                height = 96,
                animation_speed = 0.5
            }
        },
        {
            north_position = util.by_pixel(143, -28),
            west_position = util.by_pixel(0, -0),
            south_position = util.by_pixel(0, -0),
            east_position = util.by_pixel(0, -0),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/phagnot-corral/pup.png",
                frame_count = 68,
                line_length = 10,
                width = 64,
                height = 96,
                animation_speed = 0.5
            }
        },
        {
            north_position = util.by_pixel(-98, -27),
            west_position = util.by_pixel(0, -0),
            south_position = util.by_pixel(0, -0),
            east_position = util.by_pixel(0, -0),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/phagnot-corral/sit.png",
                frame_count = 68,
                line_length = 10,
                width = 64,
                height = 96,
                animation_speed = 0.3
            }
        },
        {
            north_position = util.by_pixel(-16, 17),
            west_position = util.by_pixel(0, -0),
            south_position = util.by_pixel(0, -0),
            east_position = util.by_pixel(0, -0),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/phagnot-corral/walk-01.png",
                frame_count = 130,
                line_length = 16,
                width = 128,
                height = 205,
                animation_speed = 0.3
            }
        },
        {
            north_position = util.by_pixel(100, 17),
            west_position = util.by_pixel(0, -0),
            south_position = util.by_pixel(0, -0),
            east_position = util.by_pixel(0, -0),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/phagnot-corral/walk-02.png",
                frame_count = 130,
                line_length = 16,
                width = 105,
                height = 205,
                animation_speed = 0.3
            }
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/phagnot-corral.ogg", volume = 1.0},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/phagnot-corral.ogg", volume = 0.3},
        apparent_volume = 0.45
    }
}
