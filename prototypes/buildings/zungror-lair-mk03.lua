local MODULE_SLOTS = 3

RECIPE {
    type = "recipe",
    name = "zungror-lair-mk03",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"zungror-lair-mk02", 1},
        {"super-alloy", 100},
        {"super-steel", 10},
        {"metallic-glass", 50},
        {"science-coating", 50},
        {"nbfe-alloy", 25},
        {"intelligent-unit", 25},
    },
    results = {
        {"zungror-lair-mk03", 1}
    }
}:add_unlock("land-animals-mk04"):add_ingredient({type = "item", name = "superconductor-servomechanims", amount = 5}):add_ingredient({type = "item", name = "harmonic-absorber", amount = 10})

ITEM {
    type = "item",
    name = "zungror-lair-mk03",
    icon = "__pyalienlifegraphics__/graphics/icons/zungror-lair-mk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-farm-buildings-mk03",
    order = "d",
    place_result = "zungror-lair-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "zungror-lair-mk03",
    icon = "__pyalienlifegraphics__/graphics/icons/zungror-lair-mk03.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "zungror-lair-mk03"},
    fast_replaceable_group = "zungror-lair",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-8.6, -8.6}, {8.6, 8.6}},
    selection_box = {{-9.0, -9.0}, {9.0, 9.0}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = MODULE_SLOTS
    },
    allowed_effects = {'speed', 'productivity', 'consumption', 'pollution'},
    crafting_categories = {"zungror"},
    crafting_speed = py.farm_speed_derived(MODULE_SLOTS, "zungror-lair-mk01"),
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 2,
    },
    energy_usage = "4000kW",
    animation = {
        layers = {
            {
                filename = "__pyalienlifegraphics3__/graphics/entity/zungror-lair/cut-raw.png",
                width = 672,
                height = 736,
                frame_count = 1,
                repeat_count = 80,
                animation_speed = 0.25,
                shift = util.by_pixel(16, -48)
            },
            {
                filename = "__pyalienlifegraphics3__/graphics/entity/zungror-lair/ao.png",
                width = 672,
                height = 736,
                frame_count = 1,
                repeat_count = 80,
                animation_speed = 0.25,
                shift = util.by_pixel(16, -48)
            },
            {
                filename = "__pyalienlifegraphics3__/graphics/entity/zungror-lair/l.png",
                width = 672,
                height = 736,
                frame_count = 1,
                repeat_count = 80,
                draw_as_light = true,
                animation_speed = 0.25,
                shift = util.by_pixel(16, -48)
            },
            {
                filename = "__pyalienlifegraphics3__/graphics/entity/zungror-lair/l.png",
                width = 672,
                height = 736,
                frame_count = 1,
                repeat_count = 80,
                draw_as_light = true,
                animation_speed = 0.25,
                shift = util.by_pixel(16, -48)
            },
            {
                filename = "__pyalienlifegraphics3__/graphics/entity/zungror-lair/sh.png",
                width = 672,
                height = 736,
                frame_count = 1,
                repeat_count = 80,
                draw_as_shadow = true,
                animation_speed = 0.25,
                shift = util.by_pixel(16, -48)
            },
            {
                filename = "__pyalienlifegraphics3__/graphics/entity/zungror-lair/turret.png",
                frame_count = 80,
                line_length = 10,
                width = 192,
                height = 288,
                animation_speed = 0.25,
                shift = util.by_pixel(-192, 144)
            },
            {
                filename = "__pyalienlifegraphics3__/graphics/entity/zungror-lair/cam-left.png",
                frame_count = 80,
                line_length = 20,
                width = 54,
                height = 32,
                animation_speed = 0.25,
                shift = util.by_pixel(-251, -16)
            },
            {
                filename = "__pyalienlifegraphics3__/graphics/entity/zungror-lair/cam-cave.png",
                frame_count = 80,
                line_length = 20,
                width = 32,
                height = 64,
                animation_speed = 0.25,
                shift = util.by_pixel(-16, -256)
            },
            {
                filename = "__pyalienlifegraphics3__/graphics/entity/zungror-lair/cam-right-mid.png",
                frame_count = 80,
                line_length = 20,
                width = 48,
                height = 64,
                animation_speed = 0.25,
                shift = util.by_pixel(248, -0)
            },
            {
                filename = "__pyalienlifegraphics3__/graphics/entity/zungror-lair/cam-top-mid.png",
                frame_count = 80,
                line_length = 20,
                width = 64,
                height = 58,
                animation_speed = 0.25,
                shift = util.by_pixel(96, -349)
            },
            {
                filename = "__pyalienlifegraphics3__/graphics/entity/zungror-lair/cam-top-right.png",
                frame_count = 80,
                line_length = 20,
                width = 64,
                height = 64,
                animation_speed = 0.25,
                shift = util.by_pixel(224, -256)
            },
            {
                filename = "__pyalienlifegraphics3__/graphics/entity/zungror-lair/cam-door.png",
                frame_count = 80,
                line_length = 20,
                width = 64,
                height = 64,
                animation_speed = 0.25,
                shift = util.by_pixel(96, 160)
            },
            {
                filename = "__pyalienlifegraphics3__/graphics/entity/zungror-lair/beam.png",
                frame_count = 80,
                line_length = 20,
                width = 64,
                height = 64,
                animation_speed = 0.25,
                shift = util.by_pixel(224, 128)
            },
            {
                filename = "__pyalienlifegraphics3__/graphics/entity/zungror-lair/cut-raw-mask.png",
                width = 672,
                priority = "high",
                height = 736,
                frame_count = 1,
                repeat_count = 80,
                animation_speed = 0.25,
                tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0},
                shift = util.by_pixel(16, -48)
            },
        }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(-144, -128),
            west_position = util.by_pixel(-144, -128),
            south_position = util.by_pixel(-144, -128),
            east_position = util.by_pixel(-144, -128),
            animation = {
                filename = "__pyalienlifegraphics3__/graphics/entity/zungror-lair/c1.png",
                frame_count = 250,
                line_length = 21,
                width = 96,
                height = 192,
                animation_speed = 0.5
            }
        },
        {
            north_position = util.by_pixel(-48, -144),
            west_position = util.by_pixel(-48, -144),
            south_position = util.by_pixel(-48, -144),
            east_position = util.by_pixel(-48, -144),
            animation = {
                filename = "__pyalienlifegraphics3__/graphics/entity/zungror-lair/c2.png",
                frame_count = 250,
                line_length = 21,
                width = 96,
                height = 224,
                animation_speed = 0.5
            }
        },
        {
            north_position = util.by_pixel(32, -144),
            west_position = util.by_pixel(32, -144),
            south_position = util.by_pixel(32, -144),
            east_position = util.by_pixel(32, -144),
            animation = {
                filename = "__pyalienlifegraphics3__/graphics/entity/zungror-lair/c3.png",
                frame_count = 250,
                line_length = 21,
                width = 64,
                height = 224,
                animation_speed = 0.5
            }
        },

    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics3__/sounds/zungror-lair.ogg", volume = 0.6},
        idle_sound = {filename = "__pyalienlifegraphics3__/sounds/zungror-lair.ogg", volume = 0.25},
        apparent_volume = 2.5
    }
}
