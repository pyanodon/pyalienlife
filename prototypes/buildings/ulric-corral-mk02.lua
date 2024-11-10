local MODULE_SLOTS = 16

RECIPE {
    type = "recipe",
    name = "ulric-corral-mk02",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "latex",             amount = 25},
        {type = "item", name = "titanium-plate",    amount = 20},
        {type = "item", name = "ulric-corral-mk01", amount = 1},
        {type = "item", name = "duralumin",         amount = 15},
        {type = "item", name = "advanced-circuit",  amount = 15},
        {type = "item", name = "neuroprocessor",    amount = 15},
    },
    results = {
        {type = "item", name = "ulric-corral-mk02", amount = 1}
    }
}:add_unlock("land-animals-mk02"):add_ingredient {type = "item", name = "small-parts-02", amount = 25}

ITEM {
    type = "item",
    name = "ulric-corral-mk02",
    icon = "__pyalienlifegraphics__/graphics/icons/ulric-corral-mk02.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-farm-buildings-mk02",
    order = "d",
    place_result = "ulric-corral-mk02",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "ulric-corral-mk02",
    icon = "__pyalienlifegraphics__/graphics/icons/ulric-corral-mk02.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "ulric-corral-mk02"},
    fast_replaceable_group = "ulric-corral",
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.8, -5.8}, {5.8, 5.8}},
    selection_box = {{-6.0, -6.0}, {6.0, 6.0}},
    module_slots = MODULE_SLOTS,
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
    crafting_categories = {"ulric"},
    crafting_speed = py.farm_speed_derived(MODULE_SLOTS, "ulric-corral-mk01"),
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 2
        },
    },
    energy_usage = "350kW",
    graphics_set = {
        working_visualisations = {
            {
                north_position = util.by_pixel(114, -37),
                west_position = util.by_pixel(114, -37),
                south_position = util.by_pixel(114, -37),
                east_position = util.by_pixel(114, -37),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/ulric-corral/alpha.png",
                    frame_count = 100,
                    line_length = 10,
                    width = 128,
                    height = 128,
                    animation_speed = 0.3
                }
            },
            {
                north_position = util.by_pixel(-128, 136),
                west_position = util.by_pixel(-128, 136),
                south_position = util.by_pixel(-128, 136),
                east_position = util.by_pixel(-128, 136),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/ulric-corral/leftdown.png",
                    frame_count = 100,
                    line_length = 10,
                    width = 96,
                    height = 96,
                    animation_speed = 0.3
                }
            },
            {
                north_position = util.by_pixel(-82, -9),
                west_position = util.by_pixel(-82, -9),
                south_position = util.by_pixel(-82, -9),
                east_position = util.by_pixel(-82, -9),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/ulric-corral/left.png",
                    frame_count = 100,
                    line_length = 10,
                    width = 96,
                    height = 96,
                    animation_speed = 0.3
                }
            },
            {
                north_position = util.by_pixel(5, -11),
                west_position = util.by_pixel(5, -11),
                south_position = util.by_pixel(5, -11),
                east_position = util.by_pixel(5, -11),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/ulric-corral/mid.png",
                    frame_count = 100,
                    line_length = 20,
                    width = 64,
                    height = 96,
                    animation_speed = 0.3
                }
            },
            {
                north_position = util.by_pixel(63, 112),
                west_position = util.by_pixel(63, 112),
                south_position = util.by_pixel(63, 112),
                east_position = util.by_pixel(63, 112),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/ulric-corral/mom.png",
                    frame_count = 100,
                    line_length = 10,
                    width = 96,
                    height = 128,
                    animation_speed = 0.3
                }
            },
        },
        animation = {
            layers = {
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/ulric-corral/off.png",
                    width = 383,
                    height = 448,
                    frame_count = 1,
                    shift = util.by_pixel(0, -32),
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/ulric-corral/off-mask.png",
                    width = 383,
                    height = 448,
                    frame_count = 1,
                    shift = util.by_pixel(0, -32),
                    tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
                },
            }
        },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pycoalprocessinggraphics__/sounds/ulric-corral.ogg", volume = 0.55},
        idle_sound = {filename = "__pycoalprocessinggraphics__/sounds/ulric-corral.ogg", volume = 0.3},
        apparent_volume = 0.45
    }
}
