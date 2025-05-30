local MODULE_SLOTS = 40

RECIPE {
    type = "recipe",
    name = "vrauks-paddock-mk04",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "vrauks-paddock-mk03",   amount = 1},
        {type = "item", name = "silver-foam",           amount = 20},
        {type = "item", name = "control-unit",          amount = 10},
        {type = "item", name = "agzn-alloy",            amount = 30},
        {type = "item", name = "low-density-structure", amount = 30},
        {type = "item", name = "nenbit-matrix",         amount = 40},
    },
    results = {
        {type = "item", name = "vrauks-paddock-mk04", amount = 1}
    }
}:add_unlock("land-animals-mk04")

ITEM {
    type = "item",
    name = "vrauks-paddock-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/vrauks-paddock-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-farm-buildings-mk04",
    order = "d",
    place_result = "vrauks-paddock-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "vrauks-paddock-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/vrauks-paddock-mk04.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "vrauks-paddock-mk04"},
    fast_replaceable_group = "vrauks-paddock",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-6.1, -6.1}, {6.1, 6.1}},
    selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
    module_slots = MODULE_SLOTS,
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
    crafting_categories = {"vrauks"},
    crafting_speed = py.farm_speed_derived(MODULE_SLOTS, "vrauks-paddock-mk01"),
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
                north_position = {-2.0, -2.0},
                west_position = {-2.0, -2.0},
                south_position = {-2.0, -2.0},
                east_position = {-2.0, -2.0},
                animation = {
                    filename = "__pyalienlifegraphics3__/graphics/entity/vrauks-paddock/alpha.png",
                    frame_count = 90,
                    line_length = 9,
                    width = 128,
                    height = 160,
                    animation_speed = 0.4
                }
            },
            {
                north_position = {3.0, -3.0},
                west_position = {3.0, -3.0},
                south_position = {3.0, -3.0},
                east_position = {3.0, -3.0},
                animation = {
                    filename = "__pyalienlifegraphics3__/graphics/entity/vrauks-paddock/beta.png",
                    frame_count = 90,
                    line_length = 9,
                    width = 128,
                    height = 128,
                    animation_speed = 0.4
                }
            },
            {
                north_position = {0.0, 3.1},
                west_position = {0.0, 3.1},
                south_position = {0.0, 3.1},
                east_position = {0.0, 3.1},
                animation = {
                    filename = "__pyalienlifegraphics3__/graphics/entity/vrauks-paddock/midbottom.png",
                    frame_count = 90,
                    line_length = 9,
                    width = 160,
                    height = 128,
                    animation_speed = 0.4
                }
            },
            {
                north_position = {2.2, 0.7},
                west_position = {2.2, 0.7},
                south_position = {2.2, 0.7},
                east_position = {2.2, 0.7},
                animation = {
                    filename = "__pyalienlifegraphics3__/graphics/entity/vrauks-paddock/right.png",
                    frame_count = 90,
                    line_length = 10,
                    width = 128,
                    height = 128,
                    animation_speed = 0.4
                }
            },
            {
                north_position = {-4.0, 1.7},
                west_position = {-4.0, 1.7},
                south_position = {-4.0, 1.7},
                east_position = {-4.0, 1.7},
                animation = {
                    filename = "__pyalienlifegraphics3__/graphics/entity/vrauks-paddock/small-01.png",
                    frame_count = 90,
                    line_length = 10,
                    width = 96,
                    height = 64,
                    animation_speed = 0.4
                }
            },
            {
                north_position = {-2.5, 1.6},
                west_position = {-2.5, 1.6},
                south_position = {-2.5, 1.6},
                east_position = {-2.5, 1.6},
                animation = {
                    filename = "__pyalienlifegraphics3__/graphics/entity/vrauks-paddock/small-02.png",
                    frame_count = 180,
                    line_length = 18,
                    width = 64,
                    height = 96,
                    animation_speed = 0.4
                }
            },
        },
        animation = {
            layers = {
                {
                    filename = "__pyalienlifegraphics3__/graphics/entity/vrauks-paddock/vrauks-paddock-mk04.png",
                    width = 448,
                    height = 448,
                    frame_count = 1,
                    shift = util.by_pixel(16, -16)
                },
            }
        },
    },

    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/vrauks-paddock.ogg", volume = 0.8},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/vrauks-paddock.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
