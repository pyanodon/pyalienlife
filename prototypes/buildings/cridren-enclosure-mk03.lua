local MODULE_SLOTS = 3

RECIPE {
    type = "recipe",
    name = "cridren-enclosure-mk03",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "ticocr-alloy",           amount = 30},
        {type = "item", name = "cridren-enclosure-mk02", amount = 1},
        {type = "item", name = "low-density-structure",  amount = 40},
        {type = "item", name = "py-heat-exchanger",      amount = 1},
        {type = "item", name = "stainless-steel",        amount = 30},
        {type = "item", name = "processing-unit",        amount = 30},
    },
    results = {
        {type = "item", name = "cridren-enclosure-mk03", amount = 1}
    }
}:add_unlock("cridren-mk03")

ITEM {
    type = "item",
    name = "cridren-enclosure-mk03",
    icon = "__pyalienlifegraphics__/graphics/icons/cridren-enclosure-mk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-farm-buildings-mk03",
    order = "d",
    place_result = "cridren-enclosure-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "cridren-enclosure-mk03",
    icon = "__pyalienlifegraphics__/graphics/icons/cridren-enclosure-mk03.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "cridren-enclosure-mk03"},
    fast_replaceable_group = "cridren-enclosure",
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-4.8, -4.8}, {4.8, 4.8}},
    selection_box = {{-5.0, -5.0}, {5.0, 5.0}},
    module_slots = MODULE_SLOTS,
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
    crafting_categories = {"cridren"},
    crafting_speed = py.farm_speed_derived(MODULE_SLOTS, "cridren-enclosure-mk01"),
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = -1
        },
    },
    energy_usage = "600kW",
    graphics_set = {
        working_visualisations = {
            {
                north_position = util.by_pixel(-96, -62),
                west_position = util.by_pixel(-96, -62),
                south_position = util.by_pixel(-96, -62),
                east_position = util.by_pixel(-96, -62),
                animation = {
                    filename = "__pyalienlifegraphics__/graphics/entity/cridren-enclosure/a1.png",
                    frame_count = 182,
                    line_length = 32,
                    width = 64,
                    height = 320,
                    animation_speed = 0.3
                }
            },
            {
                north_position = util.by_pixel(-32, -62),
                west_position = util.by_pixel(-32, -62),
                south_position = util.by_pixel(-32, -62),
                east_position = util.by_pixel(-32, -62),
                animation = {
                    filename = "__pyalienlifegraphics__/graphics/entity/cridren-enclosure/a2.png",
                    frame_count = 182,
                    line_length = 32,
                    width = 64,
                    height = 320,
                    animation_speed = 0.3
                }
            },
            {
                north_position = util.by_pixel(32, -62),
                west_position = util.by_pixel(32, -62),
                south_position = util.by_pixel(32, -62),
                east_position = util.by_pixel(32, -62),
                animation = {
                    filename = "__pyalienlifegraphics__/graphics/entity/cridren-enclosure/a3.png",
                    frame_count = 182,
                    line_length = 32,
                    width = 64,
                    height = 320,
                    animation_speed = 0.3
                }
            },
            {
                north_position = util.by_pixel(96, -62),
                west_position = util.by_pixel(96, -62),
                south_position = util.by_pixel(96, -62),
                east_position = util.by_pixel(96, -62),
                animation = {
                    filename = "__pyalienlifegraphics__/graphics/entity/cridren-enclosure/a4.png",
                    frame_count = 182,
                    line_length = 32,
                    width = 64,
                    height = 320,
                    animation_speed = 0.3
                }
            },
            {
                north_position = util.by_pixel(144, -62),
                west_position = util.by_pixel(144, -62),
                south_position = util.by_pixel(144, -62),
                east_position = util.by_pixel(144, -62),
                animation = {
                    filename = "__pyalienlifegraphics__/graphics/entity/cridren-enclosure/a5.png",
                    frame_count = 182,
                    line_length = 32,
                    width = 32,
                    height = 320,
                    animation_speed = 0.3
                }
            },
        },
        animation = {
            layers = {
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/cridren-enclosure/off.png",
                    width = 352,
                    height = 352,
                    frame_count = 1,
                    line_length = 1,
                    shift = util.by_pixel(16, -16)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/cridren-enclosure/off-mask.png",
                    width = 352,
                    height = 352,
                    frame_count = 1,
                    line_length = 1,
                    shift = util.by_pixel(16, -16),
                    tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
                },
            },
        },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/cridren-enclosure.ogg", volume = 1.0},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/cridren-enclosure.ogg", volume = 0.3},
        apparent_volume = 0.45
    }
}
