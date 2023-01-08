local FUN = require("__pycoalprocessing__/prototypes/functions/functions")
local MODULE_SLOTS = 25

RECIPE {
    type = "recipe",
    name = "mukmoux-pasture-mk04",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"mukmoux-pasture-mk03", 1},
        {"metallic-glass", 50},
        {"science-coating", 20},
        {"silver-foam", 30},
        {"control-unit", 5}
    },
    results = {
        {"mukmoux-pasture-mk04", 1}
    }
}:add_unlock("land-animals-mk04")

ITEM {
    type = "item",
    name = "mukmoux-pasture-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-pasture-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-farm-buildings-mk04",
    order = "d",
    place_result = "mukmoux-pasture-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "mukmoux-pasture-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-pasture-mk04.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "mukmoux-pasture-mk04"},
    fast_replaceable_group = "mukmoux-pasture",
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-9.7, -9.7}, {9.7, 9.7}},
    selection_box = {{-10, -10}, {10, 10}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = MODULE_SLOTS
    },
    allowed_effects = {"speed","productivity",'consumption','pollution'},
    crafting_categories = {"mukmoux"},
    crafting_speed = FUN.farm_speed_derived(MODULE_SLOTS, "mukmoux-pasture-mk01"),
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 3,
    },
    energy_usage = "4000kW",
    animation = {
        layers = {
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/raw.png",
                width = 672,
                height = 704,
                frame_count = 1,
                line_length = 1,
                shift = util.by_pixel(16, -32),
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/mask.png",
                width = 672,
                height = 704,
                frame_count = 1,
                line_length = 1,
                shift = util.by_pixel(16, -32),
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/ao.png",
                width = 736,
                height = 736,
                frame_count = 1,
                line_length = 1,
                shift = util.by_pixel(8, -23),
            },
        },
    },
    working_visualisations = {
        --ALPHA
        {
            north_position = util.by_pixel(-160, 128),
            west_position = util.by_pixel(-160, 128),
            south_position = util.by_pixel(-160, 128),
            east_position = util.by_pixel(-160, 128),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/alpha.png",
                frame_count = 150,
                line_length = 10,
                width = 224,
                height = 192,
                animation_speed = 0.4
            }
        },
        {
            north_position = util.by_pixel(-160, 128),
            west_position = util.by_pixel(-160, 128),
            south_position = util.by_pixel(-160, 128),
            east_position = util.by_pixel(-160, 128),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/alpha-ao.png",
                frame_count = 150,
                line_length = 10,
                width = 224,
                height = 192,
                animation_speed = 0.4
            }
        },
        --HAY
        {
            north_position = util.by_pixel(208, 186),
            west_position = util.by_pixel(208, 186),
            south_position = util.by_pixel(208, 186),
            east_position = util.by_pixel(208, 186),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/hay.png",
                frame_count = 160,
                line_length = 16,
                width = 128,
                height = 128,
                animation_speed = 0.4
            }
        },
        {
            north_position = util.by_pixel(208, 186),
            west_position = util.by_pixel(208, 186),
            south_position = util.by_pixel(208, 186),
            east_position = util.by_pixel(208, 186),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/hay-ao.png",
                frame_count = 160,
                line_length = 16,
                width = 128,
                height = 128,
                animation_speed = 0.4
            }
        },
        --DRINK
        {
            north_position = util.by_pixel(224, -192),
            west_position = util.by_pixel(224, -192),
            south_position = util.by_pixel(224, -192),
            east_position = util.by_pixel(224, -192),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/drink.png",
                frame_count = 120,
                line_length = 12,
                width = 128,
                height = 128,
                animation_speed = 0.4
            }
        },
        {
            north_position = util.by_pixel(224, -192),
            west_position = util.by_pixel(224, -192),
            south_position = util.by_pixel(224, -192),
            east_position = util.by_pixel(224, -192),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/drink-ao.png",
                frame_count = 120,
                line_length = 12,
                width = 128,
                height = 128,
                animation_speed = 0.4
            }
        },
        --LEFT EAT
        {
            north_position = util.by_pixel(-212, -32),
            west_position = util.by_pixel(-212, -32),
            south_position = util.by_pixel(-212, -32),
            east_position = util.by_pixel(-212, -32),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/left-eat.png",
                frame_count = 160,
                line_length = 16,
                width = 160,
                height = 128,
                animation_speed = 0.4
            }
        },
        {
            north_position = util.by_pixel(-212, -32),
            west_position = util.by_pixel(-212, -32),
            south_position = util.by_pixel(-212, -32),
            east_position = util.by_pixel(-212, -32),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/left-eat-ao.png",
                frame_count = 160,
                line_length = 16,
                width = 160,
                height = 128,
                animation_speed = 0.4
            }
        },
        --MID
        {
            north_position = util.by_pixel(-80, -64),
            west_position = util.by_pixel(-80, -64),
            south_position = util.by_pixel(-80, -64),
            east_position = util.by_pixel(-80, -64),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/mid.png",
                frame_count = 120,
                line_length = 12,
                width = 96,
                height = 96,
                animation_speed = 0.4
            }
        },
        {
            north_position = util.by_pixel(-80, -64),
            west_position = util.by_pixel(-80, -64),
            south_position = util.by_pixel(-80, -64),
            east_position = util.by_pixel(-80, -64),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/mid-ao.png",
                frame_count = 120,
                line_length = 12,
                width = 96,
                height = 96,
                animation_speed = 0.4
            }
        },
        --MID RIGHT
        {
            north_position = util.by_pixel(144, -32),
            west_position = util.by_pixel(144, -32),
            south_position = util.by_pixel(144, -32),
            east_position = util.by_pixel(144, -32),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/mid-right.png",
                frame_count = 160,
                line_length = 16,
                width = 96,
                height = 96,
                animation_speed = 0.4
            }
        },
        {
            north_position = util.by_pixel(144, -32),
            west_position = util.by_pixel(144, -32),
            south_position = util.by_pixel(144, -32),
            east_position = util.by_pixel(144, -32),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/mid-right-ao.png",
                frame_count = 160,
                line_length = 16,
                width = 96,
                height = 96,
                animation_speed = 0.4
            }
        },
        --MOTHER
        {
            north_position = util.by_pixel(128, -224),
            west_position = util.by_pixel(128, -224),
            south_position = util.by_pixel(128, -224),
            east_position = util.by_pixel(128, -224),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/mother.png",
                frame_count = 120,
                line_length = 12,
                width = 128,
                height = 128,
                animation_speed = 0.4
            }
        },
        {
            north_position = util.by_pixel(128, -224),
            west_position = util.by_pixel(128, -224),
            south_position = util.by_pixel(128, -224),
            east_position = util.by_pixel(128, -224),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/mother-ao.png",
                frame_count = 120,
                line_length = 12,
                width = 128,
                height = 128,
                animation_speed = 0.4
            }
        },
        --DRONE
        {
            north_position = util.by_pixel(-144, -320),
            west_position = util.by_pixel(-144, -320),
            south_position = util.by_pixel(-144, -320),
            east_position = util.by_pixel(-144, -320),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/1.png",
                frame_count = 200,
                line_length = 50,
                width = 32,
                height = 416,
                animation_speed = 0.5
            }
        },
        {
            north_position = util.by_pixel(-112, -320),
            west_position = util.by_pixel(-112, -320),
            south_position = util.by_pixel(-112, -320),
            east_position = util.by_pixel(-112, -320),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/2.png",
                frame_count = 200,
                line_length = 50,
                width = 32,
                height = 416,
                animation_speed = 0.5
            }
        },
        {
            north_position = util.by_pixel(-80, -320),
            west_position = util.by_pixel(-80, -320),
            south_position = util.by_pixel(-80, -320),
            east_position = util.by_pixel(-80, -320),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/3.png",
                frame_count = 200,
                line_length = 50,
                width = 32,
                height = 416,
                animation_speed = 0.5
            }
        },
        {
            north_position = util.by_pixel(-48, -320),
            west_position = util.by_pixel(-48, -320),
            south_position = util.by_pixel(-48, -320),
            east_position = util.by_pixel(-48, -320),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/4.png",
                frame_count = 200,
                line_length = 50,
                width = 32,
                height = 416,
                animation_speed = 0.5
            }
        },
        {
            north_position = util.by_pixel(-16, -320),
            west_position = util.by_pixel(-16, -320),
            south_position = util.by_pixel(-16, -320),
            east_position = util.by_pixel(-16, -320),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/5.png",
                frame_count = 200,
                line_length = 50,
                width = 32,
                height = 416,
                animation_speed = 0.5
            }
        },
        {
            north_position = util.by_pixel(16, -320),
            west_position = util.by_pixel(16, -320),
            south_position = util.by_pixel(16, -320),
            east_position = util.by_pixel(16, -320),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/6.png",
                frame_count = 200,
                line_length = 50,
                width = 32,
                height = 416,
                animation_speed = 0.5
            }
        },
        {
            north_position = util.by_pixel(48, -320),
            west_position = util.by_pixel(48, -320),
            south_position = util.by_pixel(48, -320),
            east_position = util.by_pixel(48, -320),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/7.png",
                frame_count = 200,
                line_length = 50,
                width = 32,
                height = 416,
                animation_speed = 0.5
            }
        },
        {
            north_position = util.by_pixel(80, -320),
            west_position = util.by_pixel(80, -320),
            south_position = util.by_pixel(80, -320),
            east_position = util.by_pixel(80, -320),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/8.png",
                frame_count = 200,
                line_length = 50,
                width = 32,
                height = 416,
                animation_speed = 0.5
            }
        },
        {
            north_position = util.by_pixel(112, -320),
            west_position = util.by_pixel(112, -320),
            south_position = util.by_pixel(112, -320),
            east_position = util.by_pixel(112, -320),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/9.png",
                frame_count = 200,
                line_length = 50,
                width = 32,
                height = 416,
                animation_speed = 0.5
            }
        },
        {
            north_position = util.by_pixel(144, -320),
            west_position = util.by_pixel(144, -320),
            south_position = util.by_pixel(144, -320),
            east_position = util.by_pixel(144, -320),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/10.png",
                frame_count = 200,
                line_length = 50,
                width = 32,
                height = 416,
                animation_speed = 0.5
            }
        },
        {
            north_position = util.by_pixel(176, -320),
            west_position = util.by_pixel(176, -320),
            south_position = util.by_pixel(176, -320),
            east_position = util.by_pixel(176, -320),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/11.png",
                frame_count = 200,
                line_length = 50,
                width = 32,
                height = 416,
                animation_speed = 0.5
            }
        },
        {
            north_position = util.by_pixel(208, -320),
            west_position = util.by_pixel(208, -320),
            south_position = util.by_pixel(208, -320),
            east_position = util.by_pixel(208, -320),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/12.png",
                frame_count = 200,
                line_length = 50,
                width = 32,
                height = 416,
                animation_speed = 0.5
            }
        },
        {
            north_position = util.by_pixel(240, -320),
            west_position = util.by_pixel(240, -320),
            south_position = util.by_pixel(240, -320),
            east_position = util.by_pixel(240, -320),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/13.png",
                frame_count = 200,
                line_length = 50,
                width = 32,
                height = 416,
                animation_speed = 0.5
            }
        },
        {
            north_position = util.by_pixel(272, -320),
            west_position = util.by_pixel(272, -320),
            south_position = util.by_pixel(272, -320),
            east_position = util.by_pixel(272, -320),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/14.png",
                frame_count = 200,
                line_length = 50,
                width = 32,
                height = 416,
                animation_speed = 0.5
            }
        },
        {
            north_position = util.by_pixel(304, -320),
            west_position = util.by_pixel(304, -320),
            south_position = util.by_pixel(304, -320),
            east_position = util.by_pixel(304, -320),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/15.png",
                frame_count = 200,
                line_length = 50,
                width = 32,
                height = 416,
                animation_speed = 0.5
            }
        },
        {
            north_position = util.by_pixel(336, -320),
            west_position = util.by_pixel(336, -320),
            south_position = util.by_pixel(336, -320),
            east_position = util.by_pixel(336, -320),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/16.png",
                frame_count = 200,
                line_length = 50,
                width = 32,
                height = 416,
                animation_speed = 0.5
            }
        },
        --DRONE SHADOW
        {
            north_position = util.by_pixel(64, -128),
            west_position = util.by_pixel(64, -128),
            south_position = util.by_pixel(64, -128),
            east_position = util.by_pixel(64, -128),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/s1.png",
                frame_count = 200,
                line_length = 30,
                width = 64,
                height = 288,
                tint = {a=0.4},
                animation_speed = 0.5
            }
        },
        {
            north_position = util.by_pixel(128, -128),
            west_position = util.by_pixel(128, -128),
            south_position = util.by_pixel(128, -128),
            east_position = util.by_pixel(128, -128),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/s2.png",
                frame_count = 200,
                line_length = 30,
                width = 64,
                height = 288,
                tint = {a=0.4},
                animation_speed = 0.5
            }
        },
        {
            north_position = util.by_pixel(192, -128),
            west_position = util.by_pixel(192, -128),
            south_position = util.by_pixel(192, -128),
            east_position = util.by_pixel(192, -128),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/s3.png",
                frame_count = 200,
                line_length = 30,
                width = 64,
                height = 288,
                tint = {a=0.4},
                animation_speed = 0.5
            }
        },
        {
            north_position = util.by_pixel(256, -128),
            west_position = util.by_pixel(256, -128),
            south_position = util.by_pixel(256, -128),
            east_position = util.by_pixel(256, -128),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/s4.png",
                frame_count = 200,
                line_length = 30,
                width = 64,
                height = 288,
                tint = {a=0.4},
                animation_speed = 0.5
            }
        },
        {
            north_position = util.by_pixel(320, -128),
            west_position = util.by_pixel(320, -128),
            south_position = util.by_pixel(320, -128),
            east_position = util.by_pixel(320, -128),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/s5.png",
                frame_count = 200,
                line_length = 30,
                width = 64,
                height = 288,
                tint = {a=0.4},
                animation_speed = 0.5
            }
        },
        {
            north_position = util.by_pixel(384, -128),
            west_position = util.by_pixel(384, -128),
            south_position = util.by_pixel(384, -128),
            east_position = util.by_pixel(384, -128),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/mukmoux-pasture/s6.png",
                frame_count = 200,
                line_length = 30,
                width = 64,
                height = 288,
                tint = {a=0.4},
                animation_speed = 0.5
            }
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pycoalprocessinggraphics__/sounds/mukmoux-pasture.ogg", volume = 1.3},
        idle_sound = {filename = "__pycoalprocessinggraphics__/sounds/mukmoux-pasture.ogg", volume = 0.3},
        apparent_volume = 0.35
    }
}
