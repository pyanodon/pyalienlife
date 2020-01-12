RECIPE {
    type = "recipe",
    name = "micro-mine-mk04",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"micro-mine-mk03", 1},
        {"science-coating", 30},
        {"divertor", 5},
        {"control-unit", 30},
        {"metallic-glass", 20},
        {"boron-carbide", 30},
    },
    results = {
        {"micro-mine-mk04", 1}
    }
}:add_unlock("biotech-mk04")

ITEM {
    type = "item",
    name = "micro-mine-mk04",
    icon = "__pyalienlife__/graphics/icons/micro-mine-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk04",
    order = "a",
    place_result = "micro-mine-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "micro-mine-mk04",
    icon = "__pyalienlife__/graphics/icons/micro-mine-mk04.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "micro-mine-mk04"},
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
        module_slots = 4
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"micro-mine"},
    crafting_speed = 4,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 2,
    },
    energy_usage = "750kW",
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
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
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
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
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
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
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
