RECIPE {
    type = "recipe",
    name = "data-array",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"steel-plate", 50},
        {"glass", 40},
        {"titanium-plate", 100},
        {"duralumin", 50},
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
    icon = "__pyalienlifegraphics__/graphics/icons/data-array.png",
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
    icon = "__pyalienlifegraphics__/graphics/icons/data-array.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "data-array"},
    fast_replaceable_group = "data-array",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-4.8, -4.8}, {4.8, 4.8}},
    selection_box = {{-5.0, -5.0}, {5.0, 5.0}},
    --draw_entity_info_icon_background = false,
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 5
    },
    allowed_effects = {"speed","productivity",'consumption','pollution'},
    crafting_categories = {"data-array"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 2,
    },
    energy_usage = "1200kW",
    animation = {
        layers = {
            {
                filename = "__pyalienlifegraphics__/graphics/entity/data-array/a1.png",
                width = 64,
                height = 416,
                line_length = 32,
                frame_count = 110,
                animation_speed = 0.3,
                shift = util.by_pixel(-128, -37)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/data-array/a2.png",
                width = 64,
                height = 416,
                line_length = 32,
                frame_count = 110,
                animation_speed = 0.3,
                shift = util.by_pixel(-64, -37)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/data-array/a3.png",
                width = 64,
                height = 416,
                line_length = 32,
                frame_count = 110,
                animation_speed = 0.3,
                shift = util.by_pixel(-0, -37)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/data-array/a4.png",
                width = 64,
                height = 416,
                line_length = 32,
                frame_count = 110,
                animation_speed = 0.3,
                shift = util.by_pixel(64, -37)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/data-array/a5.png",
                width = 64,
                height = 416,
                line_length = 32,
                frame_count = 110,
                animation_speed = 0.3,
                shift = util.by_pixel(128, -37)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/data-array/a6.png",
                width = 32,
                height = 416,
                line_length = 32,
                frame_count = 110,
                animation_speed = 0.3,
                shift = util.by_pixel(176, -37)
            },
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/data-array.ogg", volume = 0.9},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/data-array.ogg", volume = 0.55},
        apparent_volume = 2.5
    }
}
