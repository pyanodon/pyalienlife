local MODULE_SLOTS = 21

RECIPE {
    type = "recipe",
    name = "arqad-hive-mk04",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "arqad-hive-mk03",       amount = 1},
        {type = "item", name = "science-coating",       amount = 15},
        {type = "item", name = "processing-unit",       amount = 30},
        {type = "item", name = "low-density-structure", amount = 30},
        {type = "item", name = "metallic-glass",        amount = 10},
    },
    results = {
        {type = "item", name = "arqad-hive-mk04", amount = 1}
    }
}:add_unlock("land-animals-mk04")

ITEM {
    type = "item",
    name = "arqad-hive-mk04",
    icon = "__pyalienlifegraphics3__/graphics/icons/arqad-hive-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-farm-buildings-mk04",
    order = "d",
    place_result = "arqad-hive-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "arqad-hive-mk04",
    icon = "__pyalienlifegraphics3__/graphics/icons/arqad-hive-mk04.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "arqad-hive-mk04"},
    fast_replaceable_group = "arqad-hive",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-5.6, -5.6}, {5.6, 5.6}},
    selection_box = {{-6.0, -6.0}, {6.0, 6.0}},
    match_animation_speed_to_activity = false,
    module_slots = MODULE_SLOTS,
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    crafting_categories = {"arqad"},
    crafting_speed = py.farm_speed_derived(MODULE_SLOTS, "arqad-hive-mk01"),
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 0.5
        },
    },
    energy_usage = "950kW",
    graphics_set = {
        working_visualisations = {
            --TANQUE
            {
                north_position = util.by_pixel(-80, -128),
                west_position = util.by_pixel(-80, -128),
                south_position = util.by_pixel(-80, -128),
                east_position = util.by_pixel(-80, -128),
                animation = {
                    filename = "__pyalienlifegraphics3__/graphics/entity/arqad-hive/tank.png",
                    frame_count = 130,
                    width = 160,
                    height = 128,
                    line_length = 12,
                    animation_speed = 0.3,
                    priority = "medium"
                }
            },
            --PULSE
            {
                north_position = util.by_pixel(-16, 64),
                west_position = util.by_pixel(-16, 64),
                south_position = util.by_pixel(-16, 64),
                east_position = util.by_pixel(-16, 64),
                animation = {
                    filename = "__pyalienlifegraphics3__/graphics/entity/arqad-hive/pulse.png",
                    frame_count = 50,
                    width = 224,
                    height = 192,
                    line_length = 5,
                    animation_speed = 0.25,
                    priority = "medium"
                }
            },
            --BEES
            {
                north_position = util.by_pixel(-176, -64),
                west_position = util.by_pixel(-16, 64),
                south_position = util.by_pixel(-16, 64),
                east_position = util.by_pixel(-16, 64),
                animation = {
                    filename = "__pyalienlifegraphics3__/graphics/entity/arqad-hive/a1.png",
                    frame_count = 175,
                    width = 32,
                    height = 512,
                    line_length = 64,
                    animation_speed = 0.4,
                    priority = "medium"
                }
            },
            {
                north_position = util.by_pixel(-144, -64),
                west_position = util.by_pixel(-16, 64),
                south_position = util.by_pixel(-16, 64),
                east_position = util.by_pixel(-16, 64),
                animation = {
                    filename = "__pyalienlifegraphics3__/graphics/entity/arqad-hive/a2.png",
                    frame_count = 175,
                    width = 32,
                    height = 512,
                    line_length = 64,
                    animation_speed = 0.4,
                    priority = "medium"
                }
            },
            {
                north_position = util.by_pixel(-112, -64),
                west_position = util.by_pixel(-16, 64),
                south_position = util.by_pixel(-16, 64),
                east_position = util.by_pixel(-16, 64),
                animation = {
                    filename = "__pyalienlifegraphics3__/graphics/entity/arqad-hive/a3.png",
                    frame_count = 175,
                    width = 32,
                    height = 512,
                    line_length = 64,
                    animation_speed = 0.4,
                    priority = "medium"
                }
            },
            {
                north_position = util.by_pixel(-80, -64),
                west_position = util.by_pixel(-16, 64),
                south_position = util.by_pixel(-16, 64),
                east_position = util.by_pixel(-16, 64),
                animation = {
                    filename = "__pyalienlifegraphics3__/graphics/entity/arqad-hive/a4.png",
                    frame_count = 175,
                    width = 32,
                    height = 512,
                    line_length = 64,
                    animation_speed = 0.4,
                    priority = "medium"
                }
            },
            {
                north_position = util.by_pixel(-48, -64),
                west_position = util.by_pixel(-16, 64),
                south_position = util.by_pixel(-16, 64),
                east_position = util.by_pixel(-16, 64),
                animation = {
                    filename = "__pyalienlifegraphics3__/graphics/entity/arqad-hive/a5.png",
                    frame_count = 175,
                    width = 32,
                    height = 512,
                    line_length = 64,
                    animation_speed = 0.4,
                    priority = "medium"
                }
            },
            {
                north_position = util.by_pixel(-16, -64),
                west_position = util.by_pixel(-16, 64),
                south_position = util.by_pixel(-16, 64),
                east_position = util.by_pixel(-16, 64),
                animation = {
                    filename = "__pyalienlifegraphics3__/graphics/entity/arqad-hive/a6.png",
                    frame_count = 175,
                    width = 32,
                    height = 512,
                    line_length = 64,
                    animation_speed = 0.4,
                    priority = "medium"
                }
            },
            {
                north_position = util.by_pixel(16, -64),
                west_position = util.by_pixel(-16, 64),
                south_position = util.by_pixel(-16, 64),
                east_position = util.by_pixel(-16, 64),
                animation = {
                    filename = "__pyalienlifegraphics3__/graphics/entity/arqad-hive/a7.png",
                    frame_count = 175,
                    width = 32,
                    height = 512,
                    line_length = 64,
                    animation_speed = 0.4,
                    priority = "medium"
                }
            },
            {
                north_position = util.by_pixel(48, -64),
                west_position = util.by_pixel(-16, 64),
                south_position = util.by_pixel(-16, 64),
                east_position = util.by_pixel(-16, 64),
                animation = {
                    filename = "__pyalienlifegraphics3__/graphics/entity/arqad-hive/a8.png",
                    frame_count = 175,
                    width = 32,
                    height = 512,
                    line_length = 64,
                    animation_speed = 0.4,
                    priority = "medium"
                }
            },
            {
                north_position = util.by_pixel(80, -64),
                west_position = util.by_pixel(-16, 64),
                south_position = util.by_pixel(-16, 64),
                east_position = util.by_pixel(-16, 64),
                animation = {
                    filename = "__pyalienlifegraphics3__/graphics/entity/arqad-hive/a9.png",
                    frame_count = 175,
                    width = 32,
                    height = 512,
                    line_length = 64,
                    animation_speed = 0.4,
                    priority = "medium"
                }
            },
            {
                north_position = util.by_pixel(112, -64),
                west_position = util.by_pixel(-16, 64),
                south_position = util.by_pixel(-16, 64),
                east_position = util.by_pixel(-16, 64),
                animation = {
                    filename = "__pyalienlifegraphics3__/graphics/entity/arqad-hive/a10.png",
                    frame_count = 175,
                    width = 32,
                    height = 512,
                    line_length = 64,
                    animation_speed = 0.4,
                    priority = "medium"
                }
            },
            {
                north_position = util.by_pixel(144, -64),
                west_position = util.by_pixel(-16, 64),
                south_position = util.by_pixel(-16, 64),
                east_position = util.by_pixel(-16, 64),
                animation = {
                    filename = "__pyalienlifegraphics3__/graphics/entity/arqad-hive/a11.png",
                    frame_count = 175,
                    width = 32,
                    height = 512,
                    line_length = 64,
                    animation_speed = 0.4,
                    priority = "medium"
                }
            },
            {
                north_position = util.by_pixel(176, -64),
                west_position = util.by_pixel(-16, 64),
                south_position = util.by_pixel(-16, 64),
                east_position = util.by_pixel(-16, 64),
                animation = {
                    filename = "__pyalienlifegraphics3__/graphics/entity/arqad-hive/a12.png",
                    frame_count = 175,
                    width = 32,
                    height = 512,
                    line_length = 64,
                    animation_speed = 0.4,
                    priority = "medium"
                }
            },
            --DOMO
            {
                north_position = util.by_pixel(-0, -64),
                west_position = util.by_pixel(-0, -64),
                south_position = util.by_pixel(-0, -64),
                east_position = util.by_pixel(-0, -64),
                animation = {
                    filename = "__pyalienlifegraphics3__/graphics/entity/arqad-hive/dome-overlay.png",
                    frame_count = 1,
                    width = 384,
                    height = 480,
                    priority = "extra-high"
                }
            }
        },
        animation = {
            layers = {
                --TERRAIN
                {
                    filename = "__pyalienlifegraphics3__/graphics/entity/arqad-hive/off.png",
                    width = 384,
                    height = 448,
                    frame_count = 1,
                    shift = util.by_pixel(0, -32),
                    priority = "low",
                },
                {
                    filename = "__pyalienlifegraphics3__/graphics/entity/arqad-hive/off-mask.png",
                    width = 384,
                    height = 448,
                    frame_count = 1,
                    shift = util.by_pixel(0, -32),
                    priority = "low",
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
                },
                --DOME
                {
                    filename = "__pyalienlifegraphics3__/graphics/entity/arqad-hive/dome-base.png",
                    frame_count = 1,
                    width = 384,
                    height = 480,
                    shift = util.by_pixel(0, -64),
                    priority = "low",
                },
            }
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics3__/sounds/arqad-hive.ogg", volume = 0.85},
        idle_sound = {filename = "__pyalienlifegraphics3__/sounds/arqad-hive.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
