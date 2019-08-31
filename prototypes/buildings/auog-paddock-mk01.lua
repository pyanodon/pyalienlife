RECIPE {
    type = "recipe",
    name = "auog-paddock-mk01",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"stone", 100},
        {"soil", 300},
        {"iron-plate", 80},
    },
    results = {
        {"auog-paddock-mk01", 1}
    }
}:add_unlock("auog"):add_ingredient({type = "item", name = "bolts", amount = 50})

ITEM {
    type = "item",
    name = "auog-paddock-mk01",
    icon = "__pyalienlife__/graphics/icons/auog-paddock-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk01",
    order = "c",
    place_result = "auog-paddock-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "auog-paddock-mk01",
    icon = "__pyalienlife__/graphics/icons/auog-paddock-mk01.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "auog-paddock-mk01"},
    fast_replaceable_group = "auog-paddock",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.6, -3.6}, {3.6, 3.6}},
    selection_box = {{-4.0, -4.0}, {4.0, 4.0}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 2
    },
    allowed_effects = {"speed"},
    crafting_categories = {"auog"},
    crafting_speed = 0.01,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 2,
    },
    energy_usage = "50kW",
    ingredient_count = 10,
    animation = {
        layers = {
            {
                filename = "__pyalienlife__/graphics/entity/auog-paddock/left.png",
                width = 128,
                height = 256,
                line_length = 16,
                frame_count = 128,
                animation_speed = 0.35,
                shift = util.by_pixel(-64, 0)
            },
            {
                filename = "__pyalienlife__/graphics/entity/auog-paddock/left-mask.png",
                width = 128,
                height = 256,
                line_length = 16,
                frame_count = 128,
                animation_speed = 0.35,
                shift = util.by_pixel(-64, 0),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyalienlife__/graphics/entity/auog-paddock/right.png",
                width = 128,
                height = 256,
                line_length = 16,
                frame_count = 128,
                animation_speed = 0.35,
                shift = util.by_pixel(64, 0)
            },
            {
                filename = "__pyalienlife__/graphics/entity/auog-paddock/right-mask.png",
                width = 128,
                height = 256,
                line_length = 16,
                frame_count = 128,
                animation_speed = 0.35,
                shift = util.by_pixel(64, 0),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlife__/sounds/auog-paddock.ogg", volume = 1.5},
        idle_sound = {filename = "__pyalienlife__/sounds/auog-paddock.ogg", volume = 1.1},
        apparent_volume = 2.5
    }
}