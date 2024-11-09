RECIPE {
    type = "recipe",
    name = "micro-mine-mk02",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "micro-mine-mk01",  amount = 1},
        {type = "item", name = "duralumin",        amount = 20},
        {type = "item", name = "advanced-circuit", amount = 15},
        {type = "item", name = "engine-unit",      amount = 10},
        {type = "item", name = "latex",            amount = 30},
    },
    results = {
        {type = "item", name = "micro-mine-mk02", amount = 1}
    }
}:add_unlock("biotech-machines-mk02"):add_ingredient {type = "item", name = "small-parts-02", amount = 30}

ITEM {
    type = "item",
    name = "micro-mine-mk02",
    icon = "__pyalienlifegraphics__/graphics/icons/micro-mine-mk02.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk02",
    order = "a",
    place_result = "micro-mine-mk02",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "micro-mine-mk02",
    icon = "__pyalienlifegraphics__/graphics/icons/micro-mine-mk02.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "micro-mine-mk02"},
    fast_replaceable_group = "micro-mine",
    max_health = 100,
    fixed_recipe = "petri-dish-bacteria",
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_slots = 2,
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
    crafting_categories = {"micro-mine"},
    crafting_speed = 2,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 2
        },
    },
    energy_usage = "350kW",
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
                    tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
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
                    tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
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
                    tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
                },
            }
        },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/micro-mine.ogg", volume = 1.5},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/micro-mine.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
