RECIPE {
    type = "recipe",
    name = "data-array",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"steel-plate", 50},
        {"glass", 40},
        {"titanium-plate", 100},
        {"electronic-circuit", 30},
        {"iron-gear-wheel", 50},
    },
    results = {
        {"data-array", 1}
    }
}:add_unlock("xenobiology")

ITEM {
    type = "item",
    name = "data-array",
    icon = "__pyalienlife__/graphics/icons/data-array.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-others",
    order = "c",
    place_result = "data-array",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "data-array",
    icon = "__pyalienlife__/graphics/icons/data-array.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "data-array"},
    fast_replaceable_group = "data-array",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.1, -5.1}, {5.1, 5.1}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    module_specification = {
        module_slots = 0
    },
    allowed_effects = {"speed"},
    crafting_categories = {"data-array"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 2,
    },
    energy_usage = "1200kW",
    ingredient_count = 10,
    animation = {
        layers = {
            {
                filename = "__pyalienlife__/graphics/entity/data-array/a1.png",
                width = 64,
                height = 416,
                line_length = 32,
                frame_count = 110,
                animation_speed = 0.3,
                shift = util.by_pixel(-144, -22)
            },
            {
                filename = "__pyalienlife__/graphics/entity/data-array/a2.png",
                width = 64,
                height = 416,
                line_length = 32,
                frame_count = 110,
                animation_speed = 0.3,
                shift = util.by_pixel(-80, -22)
            },
            {
                filename = "__pyalienlife__/graphics/entity/data-array/a3.png",
                width = 64,
                height = 416,
                line_length = 32,
                frame_count = 110,
                animation_speed = 0.3,
                shift = util.by_pixel(-16, -22)
            },
            {
                filename = "__pyalienlife__/graphics/entity/data-array/a4.png",
                width = 64,
                height = 416,
                line_length = 32,
                frame_count = 110,
                animation_speed = 0.3,
                shift = util.by_pixel(48, -22)
            },
            {
                filename = "__pyalienlife__/graphics/entity/data-array/a5.png",
                width = 64,
                height = 416,
                line_length = 32,
                frame_count = 110,
                animation_speed = 0.3,
                shift = util.by_pixel(112, -22)
            },
            {
                filename = "__pyalienlife__/graphics/entity/data-array/a6.png",
                width = 32,
                height = 416,
                line_length = 32,
                frame_count = 110,
                animation_speed = 0.3,
                shift = util.by_pixel(160, -22)
            },
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlife__/sounds/data-array.ogg", volume = 0.9},
        idle_sound = {filename = "__pyalienlife__/sounds/data-array.ogg", volume = 0.55},
        apparent_volume = 2.5
    }
}
