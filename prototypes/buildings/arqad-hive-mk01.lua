RECIPE {
    type = "recipe",
    name = "arqad-hive-mk01",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"glass", 50},
        {"automated-factory-mk01", 1},
        {"gasifier", 1},
        {"aluminium-plate", 30},
        {"steel-plate", 40},
        {"iron-gear-wheel", 50},
        {"pipe", 20},
    },
    results = {
        {"arqad-hive-mk01", 1}
    }
}:add_unlock("arqad")

ITEM {
    type = "item",
    name = "arqad-hive-mk01",
    icon = "__pyalienlifegraphics3__/graphics/icons/arqad-hive-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk01",
    order = "d",
    place_result = "arqad-hive-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "arqad-hive-mk01",
    icon = "__pyalienlifegraphics3__/graphics/icons/arqad-hive-mk01.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "arqad-hive-mk01"},
    fast_replaceable_group = "arqad-hive",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-5.6, -5.6}, {5.6, 5.6}},
    selection_box = {{-6.0, -6.0}, {6.0, 6.0}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 10
    },
    allowed_effects = {"speed","productivity"},
    crafting_categories = {"kmauts"},
    crafting_speed = 0.01,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.5,
    },
    energy_usage = "350kW",
    ingredient_count = 10,
    animation = {
        layers = {
            --TERRAIN
            {
                filename = "__pyalienlifegraphics3__/graphics/entity/arqad-hive/off.png",
                width = 384,
                height = 448,
                --line_length = 9,
                frame_count = 1,
                shift = util.by_pixel(0, -0),
                priority = "low"
                --animation_speed = 0.75,
            },
			{
                filename = "__pyalienlifegraphics3__/graphics/entity/arqad-hive/off-mask.png",
                width = 384,
                height = 448,
                --line_length = 9,
                frame_count = 1,
                shift = util.by_pixel(0, -0),
                priority = "low",
                --animation_speed = 0.75,
				tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
        }
    },
    working_visualisations = {
        --TANQUE
        {
            north_position = util.by_pixel(-0, -0),
            west_position = util.by_pixel(-0, -0),
            south_position = util.by_pixel(-0, -0),
            east_position = util.by_pixel(-0, -0),
            animation = {
                filename = "__pyalienlifegraphics3__/graphics/entity/arqad-hive/tank.png",
                frame_count = 130,
                width = 160,
                height = 128,
                line_length = 12,
                animation_speed = 0.25,
                priority = "medium"
            }
        },
        --DOMO
        {
            north_position = util.by_pixel(-0, -0),
            west_position = util.by_pixel(-0, -0),
            south_position = util.by_pixel(-0, -0),
            east_position = util.by_pixel(-0, -0),
            animation = {
                filename = "__pyalienlifegraphics3__/graphics/entity/arqad-hive/dome.png",
                frame_count = 1,
                width = 384,
                height = 480,
                --line_length = 31,
                --animation_speed = 0.4,
                priority = "extra-high"
            }
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics3__/sounds/arqad-hive.ogg", volume = 0.8},
        idle_sound = {filename = "__pyalienlifegraphics3__/sounds/arqad-hive.ogg", volume = 0.5},
        apparent_volume = 2.5
    }
}