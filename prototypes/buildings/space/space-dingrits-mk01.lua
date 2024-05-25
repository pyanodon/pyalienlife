---WIP---
---REDO RECIPE---
RECIPE {
    type = "recipe",
    name = "space-dingrits-mk01",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"nbti-alloy", 40},
        {"small-lamp", 20},
        {"concrete", 200},
        {"concrete-wall", 50},
        {"electronic-circuit", 50},
        {"steel-plate", 50},
    },
    results = {
        {"space-dingrits-mk01", 1}
    }
}:add_unlock("dingrits")

ITEM {
    type = "item",
    name = "space-dingrits-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/dingrits-pack-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk01",
    order = "d",
    place_result = "space-dingrits-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "space-dingrits-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/dingrits-pack-mk01.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "space-dingrits-mk01"},
    fast_replaceable_group = "dingrits-pack",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-6.8, -6.8}, {6.8, 6.8}},
    selection_box = {{-7.0, -7.0}, {7.0, 7.0}},
    collision_mask = {'ground-tile','water-tile','layer-14'},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 20
    },
    allowed_effects = {'speed', 'productivity', 'consumption', 'pollution'},
    crafting_categories = {"dingrits"},
    crafting_speed = 0.075,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 1.5,
    },
    energy_usage = "500kW",
    animation = {
        layers = {
            {
            filename = "__pyalienlifegraphics__/graphics/entity/dingrits-pack/off.png",
            width = 480,
            height = 480,
            frame_count = 1,
            line_length = 1,
            shift = util.by_pixel(16, -16)
            },
            {
            filename = "__pyalienlifegraphics__/graphics/entity/dingrits-pack/off-mask.png",
            width = 480,
            height = 480,
            frame_count = 1,
            line_length = 1,
            shift = util.by_pixel(16, -16),
            tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
      },
    },

    working_visualisations = {
        {
            north_position = util.by_pixel(-80, -144),
            west_position = util.by_pixel(-80, -144),
            south_position = util.by_pixel(-80, -144),
            east_position = util.by_pixel(-80, -144),
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/dingrits-pack/waterfall.png",
                frame_count = 80,
                line_length = 20,
                width = 96,
                height = 96,
                animation_speed = 0.4
            }
        },
        {
            north_position = util.by_pixel(-128, -176),
            west_position = util.by_pixel(-128, -176),
            south_position = util.by_pixel(-128, -176),
            east_position = util.by_pixel(-128, -176),
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/dingrits-pack/top.png",
                frame_count = 80,
                line_length = 20,
                width = 64,
                height = 64,
                animation_speed = 0.4
            }
        },
        {
            north_position = util.by_pixel(-64, -64),
            west_position = util.by_pixel(-64, -64),
            south_position = util.by_pixel(-64, -64),
            east_position = util.by_pixel(-64, -64),
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/dingrits-pack/ahhh.png",
                frame_count = 40,
                line_length = 20,
                width = 64,
                height = 96,
                animation_speed = 0.4
            }
        },
        {
            north_position = util.by_pixel(-5, -96),
            west_position = util.by_pixel(-5, -96),
            south_position = util.by_pixel(-5, -96),
            east_position = util.by_pixel(-5, -96),
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/dingrits-pack/yell.png",
                frame_count = 80,
                line_length = 20,
                width = 96,
                height = 96,
                animation_speed = 0.4
            }
        },
        {
            north_position = util.by_pixel(109, 20),
            west_position = util.by_pixel(109, 20),
            south_position = util.by_pixel(109, 20),
            east_position = util.by_pixel(109, 20),
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/dingrits-pack/eat.png",
                frame_count = 80,
                line_length = 20,
                width = 64,
                height = 96,
                animation_speed = 0.4
            }
        },
        {
            north_position = util.by_pixel(144, 19),
            west_position = util.by_pixel(144, 19),
            south_position = util.by_pixel(144, 19),
            east_position = util.by_pixel(144, 19),
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/dingrits-pack/eat-side.png",
                frame_count = 80,
                line_length = 20,
                width = 64,
                height = 96,
                animation_speed = 0.4
            }
        },
        {
            north_position = util.by_pixel(51, -9),
            west_position = util.by_pixel(51, -9),
            south_position = util.by_pixel(51, -9),
            east_position = util.by_pixel(51, -9),
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/dingrits-pack/mid.png",
                frame_count = 80,
                line_length = 20,
                width = 64,
                height = 96,
                animation_speed = 0.4
            }
        },
        {
            north_position = util.by_pixel(-18, 80),
            west_position = util.by_pixel(-18, 80),
            south_position = util.by_pixel(-18, 80),
            east_position = util.by_pixel(-18, 80),
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/dingrits-pack/pup.png",
                frame_count = 80,
                line_length = 20,
                width = 64,
                height = 64,
                animation_speed = 0.4
            }
        },
        {
            north_position = util.by_pixel(14, 104),
            west_position = util.by_pixel(14, 104),
            south_position = util.by_pixel(14, 104),
            east_position = util.by_pixel(14, 104),
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/dingrits-pack/mother.png",
                frame_count = 80,
                line_length = 20,
                width = 64,
                height = 95,
                animation_speed = 0.4
            }
        },
        {
            north_position = util.by_pixel(60, -96),
            west_position = util.by_pixel(60, -96),
            south_position = util.by_pixel(60, -96),
            east_position = util.by_pixel(60, -96),
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/dingrits-pack/sleep.png",
                frame_count = 40,
                line_length = 20,
                width = 64,
                height = 64,
                run_mode = "forward-then-backward",
                animation_speed = 0.3
            }
        },

    },

    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/dingrits-pack.ogg", volume = 0.62},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/dingrits-pack.ogg", volume = 0.3},
        apparent_volume = 1.2
    }
}
