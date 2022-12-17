local FUN = require("__pycoalprocessing__/prototypes/functions/functions")
local MODULE_SLOTS = 1
local FULL_CRAFTING_SPEED = .5 -- crafting speed when full of mk01 modules

RECIPE {
    type = "recipe",
    name = "zungror-lair-mk01",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"stone", 300},
        {"concrete", 200},
        {"iron-plate", 200},
        {"glass", 50},
        {"gun-turret", 1},
        {"laser-turret", 1},
        {"automated-factory-mk01", 1},
        {"stainless-steel", 100},
        {"titanium-plate", 50},
        {"latex", 100},
        {"advanced-circuit", 200},
    },
    results = {
        {"zungror-lair-mk01", 1}
    }
}:add_unlock("zungror")

ITEM {
    type = "item",
    name = "zungror-lair-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/zungror-lair-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk01",
    order = "d",
    place_result = "zungror-lair-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "zungror-lair-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/zungror-lair-mk01.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "zungror-lair-mk01"},
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
    allowed_effects = {"speed","productivity",'consumption','pollution'},
    crafting_categories = {"zungror"},
    crafting_speed = FUN.farm_speed(MODULE_SLOTS, FULL_CRAFTING_SPEED),
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 2,
    },
    energy_usage = "2000kW",
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
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0},
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
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics3__/sounds/zungror-lair.ogg", volume = 0.6},
        idle_sound = {filename = "__pyalienlifegraphics3__/sounds/zungror-lair.ogg", volume = 0.25},
        apparent_volume = 2.5
    }
}
