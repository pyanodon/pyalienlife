local MODULE_SLOTS = 4

ITEM {
    type = "item",
    name = "vonix-den-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/vonix-den-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-farm-buildings-mk04",
    order = "f",
    place_result = "vonix-den-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "vonix-den-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/vonix-den-mk04.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "vonix-den-mk04"},
    fast_replaceable_group = "vonix-den",
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-4.8, -4.8}, {4.8, 4.8}},
    selection_box = {{-5.0, -5.0}, {5.0, 5.0}},
    match_animation_speed_to_activity = false,
    module_slots = MODULE_SLOTS,
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
    crafting_categories = {"vonix"},
    crafting_speed = py.farm_speed_derived(MODULE_SLOTS, "vonix-den-mk01"),
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 3
        },
    },
    energy_usage = "4000kW",
    graphics_set = {
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
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0},
                },
            },
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/vonix-den.ogg", volume = 0.8},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/vonix-den.ogg", volume = 0.3},
        apparent_volume = 0.45
    }
}
