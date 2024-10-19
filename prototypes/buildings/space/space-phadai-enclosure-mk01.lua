---WIP---
---REDO RECIPE---
RECIPE {
    type = "recipe",
    name = "space-phadai-enclosure-mk01",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "concrete",         amount = 20},
        {type = "item", name = "nbti-alloy",       amount = 40},
        {type = "item", name = "iron-stick",       amount = 500},
        {type = "item", name = "latex",            amount = 30},
        {type = "item", name = "advanced-circuit", amount = 50},
        {type = "item", name = "super-steel",      amount = 50},
    },
    results = {
        {type = "item", name = "space-phadai-enclosure-mk01", amount = 1}
    }
}:add_unlock("phadai")

ITEM {
    type = "item",
    name = "space-phadai-enclosure-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/phadai-enclosure-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk01",
    order = "d",
    place_result = "space-phadai-enclosure-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "space-phadai-enclosure-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/phadai-enclosure-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "space-phadai-enclosure-mk01"},
    fast_replaceable_group = "phadai-enclosure",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-6.2, -6.2}, {6.2, 6.2}},
    selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
    match_animation_speed_to_activity = false,
    module_slots = 5,
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
    crafting_categories = {"phadai"},
    crafting_speed = 0.04,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 1
        },
    },
    energy_usage = "450kW",
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
                    animation_speed = 0.5
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
                    animation_speed = 0.4
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
                    animation_speed = 0.4
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
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                },
            }
        },
    },

    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/phadai-enclosure.ogg", volume = 0.55},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/phadai-out.ogg", volume = 0.3},
        apparent_volume = 1.2
    }
}
