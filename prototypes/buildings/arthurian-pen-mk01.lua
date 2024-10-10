local MODULE_SLOTS = 8
local FULL_CRAFTING_SPEED = 1 -- crafting speed when full of mk01 modules

RECIPE {
    type = "recipe",
    name = "arthurian-pen-mk01",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "concrete",         amount = 200},
        {type = "item", name = "titanium-plate",   amount = 100},
        {type = "item", name = "steel-plate",      amount = 100},
        {type = "item", name = "duralumin",        amount = 50},
        {type = "item", name = "glass",            amount = 20},
        {type = "item", name = "advanced-circuit", amount = 35},
    },
    results = {
        {type = "item", name = "arthurian-pen-mk01", amount = 1}
    }
}:add_unlock("arthurian")

ITEM {
    type = "item",
    name = "arthurian-pen-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/arthurian-pen-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-farm-buildings-mk01",
    order = "d",
    place_result = "arthurian-pen-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "arthurian-pen-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/arthurian-pen-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "arthurian-pen-mk01"},
    fast_replaceable_group = "arthurian-pen",
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-4.8, -4.8}, {4.8, 4.8}},
    selection_box = {{-5.0, -5.0}, {5.0, 5.0}},
    match_animation_speed_to_activity = false,
    module_slots = MODULE_SLOTS,
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    crafting_categories = {"arthurian"},
    crafting_speed = py.farm_speed(MODULE_SLOTS, FULL_CRAFTING_SPEED),
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 3
        },
    },
    energy_usage = "200kW",
    graphics_set = {
        working_visualisations = {
            {
                north_position = {-2.5, -3.5},
                west_position = {-2.5, -3.5},
                south_position = {-2.5, -3.5},
                east_position = {-2.5, -3.5},
                animation = {
                    filename = "__pyalienlifegraphics__/graphics/entity/arthurian-pen/mother.png",
                    frame_count = 40,
                    scale = 1.2,
                    line_length = 20,
                    width = 65,
                    height = 64,
                    animation_speed = 0.5
                }
            },
            {
                north_position = {3.3, -0.5},
                west_position = {3.3, -0.5},
                south_position = {3.3, -0.5},
                east_position = {3.3, -0.5},
                animation = {
                    filename = "__pyalienlifegraphics__/graphics/entity/arthurian-pen/right.png",
                    frame_count = 40,
                    line_length = 20,
                    width = 64,
                    height = 64,
                    animation_speed = 0.5
                }
            },
            {
                north_position = {3.5, 0.5},
                west_position = {3.5, 0.5},
                south_position = {3.5, 0.5},
                east_position = {3.5, 0.5},
                animation = {
                    filename = "__pyalienlifegraphics__/graphics/entity/arthurian-pen/cub.png",
                    frame_count = 40,
                    line_length = 20,
                    width = 47,
                    height = 38,
                    animation_speed = 0.5
                }
            },
            {
                north_position = {-0.8, 1.7},
                west_position = {-0.8, 1.7},
                south_position = {-0.8, 1.7},
                east_position = {-0.8, 1.7},
                animation = {
                    filename = "__pyalienlifegraphics__/graphics/entity/arthurian-pen/eatside.png",
                    frame_count = 200,
                    line_length = 20,
                    width = 96,
                    height = 64,
                    animation_speed = 0.5
                }
            },
            {
                north_position = {-2.5, 0.8},
                west_position = {-2.5, 0.8},
                south_position = {-2.5, 0.8},
                east_position = {-2.5, 0.8},
                animation = {
                    filename = "__pyalienlifegraphics__/graphics/entity/arthurian-pen/eatup.png",
                    frame_count = 200,
                    line_length = 20,
                    width = 64,
                    height = 64,
                    animation_speed = 0.5
                }
            },
            {
                north_position = {0.0, -1.0},
                west_position = {0.0, -1.0},
                south_position = {-0.0, -1.0},
                east_position = {-0.0, -1.0},
                animation = {
                    filename = "__pyalienlifegraphics__/graphics/entity/arthurian-pen/rot.png",
                    frame_count = 120,
                    line_length = 20,
                    run_mode = "forward-then-backward",
                    width = 80,
                    height = 64,
                    animation_speed = 0.5
                }
            },
        },
        animation = {
            layers = {
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/arthurian-pen/a1.png",
                    width = 328,
                    height = 346,
                    frame_count = 1,
                    line_length = 1,
                    shift = util.by_pixel(4, -12)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/arthurian-pen/a1-mask.png",
                    width = 328,
                    height = 346,
                    frame_count = 1,
                    line_length = 1,
                    shift = util.by_pixel(4, -12),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                },
            },
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/arthurian-pen.ogg", volume = 1.0},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/arthurian-pen.ogg", volume = 0.3},
        apparent_volume = 0.45
    }
}
