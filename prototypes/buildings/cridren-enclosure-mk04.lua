local MODULE_SLOTS = 4

RECIPE {
    type = "recipe",
    name = "cridren-enclosure-mk04",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "science-coating",        amount = 30},
        {type = "item", name = "cridren-enclosure-mk03", amount = 1},
        {type = "item", name = "nenbit-matrix",          amount = 40},
        {type = "item", name = "metallic-glass",         amount = 35},
        {type = "item", name = "super-steel",            amount = 30},
        {type = "item", name = "control-unit",           amount = 20},
    },
    results = {
        {type = "item", name = "cridren-enclosure-mk04", amount = 1}
    }
}:add_unlock("cridren-mk04")

ITEM {
    type = "item",
    name = "cridren-enclosure-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/cridren-enclosure-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-farm-buildings-mk04",
    order = "d",
    place_result = "cridren-enclosure-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "cridren-enclosure-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/cridren-enclosure-mk04.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "cridren-enclosure-mk04"},
    fast_replaceable_group = "cridren-enclosure",
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-4.8, -4.8}, {4.8, 4.8}},
    selection_box = {{-5.0, -5.0}, {5.0, 5.0}},
    match_animation_speed_to_activity = false,
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
    energy_usage = "800kW",
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
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
                },
            },
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/cridren-enclosure.ogg", volume = 1.0},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/cridren-enclosure.ogg", volume = 0.3},
        apparent_volume = 0.45
    }
}
