local MODULE_SLOTS = 50

RECIPE {
    type = "recipe",
    name = "kmauts-enclosure-mk01",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "pipe",                   amount = 10},
        {type = "item", name = "automated-factory-mk02", amount = 2},
        {type = "item", name = "gasifier",               amount = 2},
        {type = "item", name = "nexelit-plate",          amount = 30},
        {type = "item", name = "super-steel",            amount = 40},
        {type = "item", name = "iron-gear-wheel",        amount = 30},
        {type = "item", name = "glass",                  amount = 50},
    },
    results = {
        {type = "item", name = "kmauts-enclosure-mk01", amount = 1}
    }
}:add_unlock("kmauts")

ITEM {
    type = "item",
    name = "kmauts-enclosure-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/kmauts-enclosure-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-farm-buildings-mk01",
    order = "d",
    place_result = "kmauts-enclosure-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "kmauts-enclosure-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/kmauts-enclosure-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "kmauts-enclosure-mk01"},
    fast_replaceable_group = "kmauts-enclosure",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-4.6, -4.6}, {4.6, 4.6}},
    selection_box = {{-5.0, -5.0}, {5.0, 5.0}},
    module_slots = MODULE_SLOTS,
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
    crafting_categories = {"kmauts"},
    crafting_speed = py.farm_speed(MODULE_SLOTS, .85, .25),
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 2
        },
    },
    energy_usage = "900kW",
    graphics_set = {
        working_visualisations = {
            --PASTA1
            {
                north_position = {0.002, 0.749},
                west_position = {0.002, 0.749},
                south_position = {0.002, 0.749},
                east_position = {0.002, 0.749},
                animation = {
                    filename = "__pyfusionenergygraphics__/graphics/entity/kmauts-enclosure/pasta1.png",
                    frame_count = 200,
                    width = 62,
                    height = 80,
                    line_length = 32,
                    animation_speed = 0.4,
                    priority = "medium"
                }
            },
            --UNDER TREE
            {
                north_position = {-1.127, -2.747},
                west_position = {-1.127, -2.747},
                south_position = {-1.127, -2.747},
                east_position = {-1.127, -2.747},
                animation = {
                    filename = "__pyfusionenergygraphics__/graphics/entity/kmauts-enclosure/undertree.png",
                    frame_count = 180,
                    width = 66,
                    height = 45,
                    line_length = 31,
                    animation_speed = 0.4,
                    priority = "medium"
                }
            },
            --PASTA2
            {
                north_position = {2.56, -1.403},
                west_position = {2.56, -1.403},
                south_position = {2.56, -1.403},
                east_position = {2.56, -1.403},
                animation = {
                    filename = "__pyfusionenergygraphics__/graphics/entity/kmauts-enclosure/pasta2.png",
                    frame_count = 200,
                    width = 64,
                    height = 96,
                    line_length = 32,
                    animation_speed = 0.4,
                    priority = "medium"
                }
            },
            --SENTA
            {
                north_position = {2.123, 0.284},
                west_position = {2.123, 0.284},
                south_position = {2.123, 0.284},
                east_position = {2.123, 0.284},
                animation = {
                    filename = "__pyfusionenergygraphics__/graphics/entity/kmauts-enclosure/senta.png",
                    frame_count = 200,
                    width = 64,
                    height = 96,
                    line_length = 32,
                    animation_speed = 0.4,
                    priority = "medium"
                }
            },
            --PUP
            {
                north_position = {1.279, 0.877},
                west_position = {1.279, 0.877},
                south_position = {1.279, 0.877},
                east_position = {1.279, 0.877},
                animation = {
                    filename = "__pyfusionenergygraphics__/graphics/entity/kmauts-enclosure/pup.png",
                    frame_count = 180,
                    width = 64,
                    height = 64,
                    line_length = 32,
                    animation_speed = 0.4,
                    priority = "medium"
                }
            },
            --TOP
            {
                north_position = {-0.877, -0.966},
                west_position = {-0.877, -0.966},
                south_position = {-0.877, -0.966},
                east_position = {-0.877, -0.966},
                animation = {
                    filename = "__pyfusionenergygraphics__/graphics/entity/kmauts-enclosure/top.png",
                    frame_count = 180,
                    width = 75,
                    height = 86,
                    line_length = 27,
                    animation_speed = 0.4,
                    priority = "medium"
                }
            },
            --BOT
            {
                north_position = {2.81, 2.252},
                west_position = {2.81, 2.252},
                south_position = {2.81, 2.252},
                east_position = {2.81, 2.252},
                animation = {
                    filename = "__pyfusionenergygraphics__/graphics/entity/kmauts-enclosure/bot.png",
                    frame_count = 180,
                    width = 64,
                    height = 64,
                    line_length = 32,
                    animation_speed = 0.4,
                    priority = "medium"
                }
            },
            --TREE
            {
                north_position = {0.248, -0.591},
                west_position = {0.248, -0.591},
                south_position = {0.248, -0.591},
                east_position = {0.248, -0.591},
                animation = {
                    filename = "__pyfusionenergygraphics__/graphics/entity/kmauts-enclosure/overlayer.png",
                    frame_count = 1,
                    width = 338,
                    height = 357,
                    priority = "extra-high"
                }
            }
        },
        animation = {
            layers = {
                --TERRAIN
                {
                    filename = "__pyfusionenergygraphics__/graphics/entity/kmauts-enclosure/layer-1.png",
                    width = 338,
                    height = 357,
                    frame_count = 1,
                    shift = {0.248, -0.591},
                    priority = "low"
                },
                --WALLS
                {
                    filename = "__pyfusionenergygraphics__/graphics/entity/kmauts-enclosure/layer-2.png",
                    width = 338,
                    height = 357,
                    frame_count = 1,
                    shift = {0.248, -0.591},
                    priority = "low"
                },
                {
                    filename = "__pyfusionenergygraphics__/graphics/entity/kmauts-enclosure/layer-2-mask.png",
                    width = 338,
                    height = 357,
                    frame_count = 1,
                    shift = {0.248, -0.591},
                    priority = "low",
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                },
                --TREE
                {
                    filename = "__pyfusionenergygraphics__/graphics/entity/kmauts-enclosure/layer-3.png",
                    width = 338,
                    height = 357,
                    frame_count = 1,
                    shift = {0.248, -0.591},
                    priority = "extra-high"
                }
            }
        },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/kmauts-enclosure.ogg", volume = 1.2},
        idle_sound = {filename = "__pyfusionenergygraphics__/sounds/kmauts-enclosure.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
