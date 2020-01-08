RECIPE {
    type = "recipe",
    name = "micro-mine-mk02",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"micro-mine-mk01", 1},
        {"duralumin", 20},
        {"advanced-circuit", 15},
        {"engine-unit", 10},
        {"latex", 30},
    },
    results = {
        {"micro-mine-mk02", 1}
    }
}:add_unlock("microbiology-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 30})

ITEM {
    type = "item",
    name = "micro-mine-mk02",
    icon = "__pyalienlife__/graphics/icons/micro-mine-mk02.png",
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
    icon = "__pyalienlife__/graphics/icons/micro-mine-mk02.png",
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
    draw_entity_info_icon_background = false,
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"micro-mine"},
    crafting_speed = 2,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 2,
    },
    energy_usage = "350kW",
    ingredient_count = 10,
    animation = {
        layers = {
            {
                filename = "__pyalienlife__/graphics/entity/micro-mine/a1.png",
                width = 96,
                height = 320,
                line_length = 21,
                frame_count = 125,
                animation_speed = 0.4,
                shift = util.by_pixel(-64, -46)
            },
            {
                filename = "__pyalienlife__/graphics/entity/micro-mine/a1-mask.png",
                width = 96,
                height = 320,
                line_length = 21,
                frame_count = 125,
                animation_speed = 0.4,
                shift = util.by_pixel(-64, -46),
                tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyalienlife__/graphics/entity/micro-mine/a2.png",
                width = 96,
                height = 320,
                line_length = 21,
                frame_count = 125,
                animation_speed = 0.4,
                shift = util.by_pixel(32, -46)
            },
            {
                filename = "__pyalienlife__/graphics/entity/micro-mine/a2-mask.png",
                width = 96,
                height = 320,
                line_length = 21,
                frame_count = 125,
                animation_speed = 0.4,
                shift = util.by_pixel(32, -46),
                tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyalienlife__/graphics/entity/micro-mine/a3.png",
                width = 64,
                height = 320,
                line_length = 21,
                frame_count = 125,
                animation_speed = 0.4,
                shift = util.by_pixel(112, -46)
            },
            {
                filename = "__pyalienlife__/graphics/entity/micro-mine/a3-mask.png",
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
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlife__/sounds/micro-mine.ogg", volume = 1.5},
        idle_sound = {filename = "__pyalienlife__/sounds/micro-mine.ogg", volume = 1.1},
        apparent_volume = 2.5
    }
}
