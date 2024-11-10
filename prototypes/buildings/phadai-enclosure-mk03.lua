local MODULE_SLOTS = 10

RECIPE {
    type = "recipe",
    name = "phadai-enclosure-mk03",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "phadai-enclosure-mk02", amount = 1},
        {type = "item", name = "py-heat-exchanger",     amount = 1},
        {type = "item", name = "boron-carbide",         amount = 35},
        {type = "item", name = "ticocr-alloy",          amount = 30},
        {type = "item", name = "electric-engine-unit",  amount = 4},
        {type = "item", name = "processing-unit",       amount = 50},
        {type = "item", name = "low-density-structure", amount = 50},
    },
    results = {
        {type = "item", name = "phadai-enclosure-mk03", amount = 1}
    }
}:add_unlock("land-animals-mk04"):add_ingredient {type = "item", name = "small-parts-03", amount = 100}

ITEM {
    type = "item",
    name = "phadai-enclosure-mk03",
    icon = "__pyalienlifegraphics__/graphics/icons/phadai-enclosure-mk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-farm-buildings-mk03",
    order = "d",
    place_result = "phadai-enclosure-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "phadai-enclosure-mk03",
    icon = "__pyalienlifegraphics__/graphics/icons/phadai-enclosure-mk03.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "phadai-enclosure-mk03"},
    fast_replaceable_group = "phadai-enclosure",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-6.2, -6.2}, {6.2, 6.2}},
    selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
    module_slots = MODULE_SLOTS,
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
    crafting_categories = {"phadai"},
    crafting_speed = py.farm_speed_derived(MODULE_SLOTS, "phadai-enclosure-mk01"),
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 1
        },
    },
    energy_usage = "750kW",
    graphics_set = {
        working_visualisations = {

            {
                north_position = {2, -0.0},
                west_position = {2, -0.0},
                south_position = {2, -0.0},
                east_position = {2, -0.0},
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/phadai-enclosure/dance-floor.png",
                    frame_count = 50,
                    line_length = 8,
                    width = 224,
                    height = 224,
                    animation_speed = 0.5,
                    draw_as_glow = true,
                }
            },
            {
                north_position = {3, -0.5},
                west_position = {3, -0.5},
                south_position = {3, -0.5},
                east_position = {3, -0.5},
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/phadai-enclosure/dance.png",
                    frame_count = 45,
                    line_length = 15,
                    width = 128,
                    height = 159,
                    animation_speed = 0.45
                }
            },
            {
                north_position = {3.8, 4.0},
                west_position = {3.8, 4.0},
                south_position = {3.8, 4.0},
                east_position = {3.8, 4.0},
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/phadai-enclosure/idle-bot.png",
                    frame_count = 50,
                    line_length = 5,
                    width = 128,
                    height = 64,
                    animation_speed = 0.4
                }
            },
            {
                north_position = {-3.0, 0.0},
                west_position = {-3.0, 0.0},
                south_position = {-3.0, 0.0},
                east_position = {-3.0, 0.0},
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/phadai-enclosure/patpat.png",
                    frame_count = 30,
                    line_length = 10,
                    width = 160,
                    height = 96,
                    animation_speed = 0.35
                }
            },
            {
                north_position = {-3.0, 3.0},
                west_position = {-3.0, 3.0},
                south_position = {-3.0, 3.0},
                east_position = {-3.0, 3.0},
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/phadai-enclosure/woo.png",
                    frame_count = 50,
                    line_length = 10,
                    width = 160,
                    height = 96,
                    animation_speed = 0.4
                }
            },
            {
                north_position = {-1.0, -2.0},
                west_position = {-1.0, -2.0},
                south_position = {-1.0, -2.0},
                east_position = {-1.0, -2.0},
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/phadai-enclosure/jump.png",
                    frame_count = 30,
                    line_length = 10,
                    width = 128,
                    height = 128,
                    animation_speed = 0.4
                }
            },
            {
                north_position = {3.5, -4.0},
                west_position = {3.5, -4.0},
                south_position = {3.5, -4.0},
                east_position = {3.5, -4.0},
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/phadai-enclosure/idle-up.png",
                    frame_count = 50,
                    line_length = 10,
                    width = 64,
                    height = 64,
                    animation_speed = 0.4
                }
            },
            {
                north_position = util.by_pixel(0, -144),
                west_position = util.by_pixel(0, -144),
                south_position = util.by_pixel(0, -144),
                east_position = util.by_pixel(0, -144),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/phadai-enclosure/spot-up.png",
                    frame_count = 50,
                    blend_mode = "additive",
                    line_length = 5,
                    width = 352,
                    height = 192,
                    animation_speed = 0.4,
                    draw_as_glow = true,
                }
            },
            {
                north_position = util.by_pixel(0, 48),
                west_position = util.by_pixel(0, 48),
                south_position = util.by_pixel(0, 48),
                east_position = util.by_pixel(0, 48),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/phadai-enclosure/spot-bot.png",
                    frame_count = 50,
                    blend_mode = "additive",
                    line_length = 5,
                    width = 352,
                    height = 192,
                    animation_speed = 0.4,
                    draw_as_glow = true,
                }
            },
        },
        animation = {
            layers = {
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/phadai-enclosure/off.png",
                    width = 448,
                    height = 480,
                    frame_count = 1,
                    line_length = 1,
                    shift = util.by_pixel(16, -32)
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/phadai-enclosure/off-mask.png",
                    width = 448,
                    height = 480,
                    frame_count = 1,
                    line_length = 1,
                    shift = util.by_pixel(16, -32),
                    tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
                },
            }
        },
    },

    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/phadai-enclosure.ogg", volume = 0.55},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/phadai-out.ogg", volume = 0.9},
        apparent_volume = 1.2
    }
}
