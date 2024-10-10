RECIPE {
    type = "recipe",
    name = "micro-mine-mk01",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "stone-brick",           amount = 50},
        {type = "item", name = "electric-mining-drill", amount = 1},
        {type = "item", name = "glass",                 amount = 12},
        {type = "item", name = "inserter",              amount = 5},
        {type = "item", name = "electronic-circuit",    amount = 10},
        {type = "item", name = "iron-gear-wheel",       amount = 20},
    },
    results = {
        {type = "item", name = "micro-mine-mk01", amount = 1}
    }
}:add_unlock("basic-substrate")

ITEM {
    type = "item",
    name = "micro-mine-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/micro-mine-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk01",
    order = "a",
    place_result = "micro-mine-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "micro-mine-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/micro-mine-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "micro-mine-mk01"},
    fast_replaceable_group = "micro-mine",
    max_health = 100,

    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_slots = 1,
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"micro-mine"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 2
        },
    },
    energy_usage = "150kW",
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/micro-mine/a1.png",
                    width = 96,
                    height = 320,
                    line_length = 21,
                    frame_count = 125,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-64, -46)
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/micro-mine/a1-mask.png",
                    width = 96,
                    height = 320,
                    line_length = 21,
                    frame_count = 125,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-64, -46),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/micro-mine/a2.png",
                    width = 96,
                    height = 320,
                    line_length = 21,
                    frame_count = 125,
                    animation_speed = 0.4,
                    shift = util.by_pixel(32, -46)
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/micro-mine/a2-mask.png",
                    width = 96,
                    height = 320,
                    line_length = 21,
                    frame_count = 125,
                    animation_speed = 0.4,
                    shift = util.by_pixel(32, -46),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/micro-mine/a3.png",
                    width = 64,
                    height = 320,
                    line_length = 21,
                    frame_count = 125,
                    animation_speed = 0.4,
                    shift = util.by_pixel(112, -46)
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/micro-mine/a3-mask.png",
                    width = 64,
                    height = 320,
                    line_length = 21,
                    frame_count = 125,
                    animation_speed = 0.4,
                    shift = util.by_pixel(112, -46),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                },
            }
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/micro-mine.ogg", volume = 1.5},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/micro-mine.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
