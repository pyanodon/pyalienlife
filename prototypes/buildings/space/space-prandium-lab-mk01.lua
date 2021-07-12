---WIP---
---REDO RECIPE---
RECIPE {
    type = "recipe",
    name = "space-prandium-lab-mk01",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"iron-plate", 100},
        {"electronic-circuit", 15},
        {"small-lamp", 8},
        {"aluminium-plate", 40},
        {"steel-plate", 40},
        {"iron-gear-wheel", 30},
        {"glass", 50},
    },
    results = {
        {"space-prandium-lab-mk01", 1}
    }
}:add_unlock("cottongut-mk01")

ITEM {
    type = "item",
    name = "space-prandium-lab-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/prandium-lab-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk01",
    order = "d",
    place_result = "space-prandium-lab-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "space-prandium-lab-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/prandium-lab-mk01.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "space-prandium-lab-mk01"},
    fast_replaceable_group = "prandium-lab",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-5.7, -5.7}, {5.7, 5.7}},
    selection_box = {{-6.0, -6.0}, {6.0, 6.0}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 20
    },
    allowed_effects = {"speed","productivity",'consumption','pollution'},
    crafting_categories = {"space-cottongut"},
    crafting_speed = 0.05,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 1,
    },
    energy_usage = "350kW",
    animation = {
        layers = {
            --TERRAIN
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/prandium-lab/off.png",
                width = 384,
                height = 448,
                frame_count = 1,
                shift = util.by_pixel(-0, -32),
                priority = "very-low",
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/prandium-lab/off-mask.png",
                width = 384,
                height = 448,
                frame_count = 1,
                shift = util.by_pixel(-0, -32),
                priority = "very-low",
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
        }
    },
    working_visualisations = {
        --critters
        {
            north_position = util.by_pixel(-128, -0),
            west_position = util.by_pixel(-128, -0),
            south_position = util.by_pixel(-128, -0),
            east_position = util.by_pixel(-128, -0),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/prandium-lab/a1.png",
                frame_count = 150,
                width = 64,
                height = 320,
                line_length = 30,
                animation_speed = 0.4,
                priority = "low"
            }
        },
        {
            north_position = util.by_pixel(-64, -0),
            west_position = util.by_pixel(-64, -0),
            south_position = util.by_pixel(-64, -0),
            east_position = util.by_pixel(-64, -0),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/prandium-lab/a2.png",
                frame_count = 150,
                width = 64,
                height = 320,
                line_length = 30,
                animation_speed = 0.4,
                priority = "low"
            }
        },
        {
            north_position = util.by_pixel(-0, -0),
            west_position = util.by_pixel(-0, -0),
            south_position = util.by_pixel(-0, -0),
            east_position = util.by_pixel(-0, -0),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/prandium-lab/a3.png",
                frame_count = 150,
                width = 64,
                height = 320,
                line_length = 30,
                animation_speed = 0.4,
                priority = "low"
            }
        },
        {
            north_position = util.by_pixel(64, -0),
            west_position = util.by_pixel(64, -0),
            south_position = util.by_pixel(64, -0),
            east_position = util.by_pixel(64, -0),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/prandium-lab/a4.png",
                frame_count = 150,
                width = 64,
                height = 320,
                line_length = 30,
                animation_speed = 0.4,
                priority = "low"
            }
        },
        {
            north_position = util.by_pixel(128, -0),
            west_position = util.by_pixel(128, -0),
            south_position = util.by_pixel(128, -0),
            east_position = util.by_pixel(128, -0),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/prandium-lab/a5.png",
                frame_count = 150,
                width = 64,
                height = 320,
                line_length = 30,
                animation_speed = 0.4,
                priority = "low"
            }
        },
        --CENTER
        {
            north_position = util.by_pixel(-0, -32),
            west_position = util.by_pixel(-0, -32),
            south_position = util.by_pixel(-0, -32),
            east_position = util.by_pixel(-0, -32),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/prandium-lab/center.png",
                width = 384,
                height = 448,
                frame_count = 1,
                shift = util.by_pixel(-0, -0),
                priority = "medium"
            }
        },
        {
            north_position = util.by_pixel(-0, -32),
            west_position = util.by_pixel(-0, -32),
            south_position = util.by_pixel(-0, -32),
            east_position = util.by_pixel(-0, -32),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/prandium-lab/center-mask.png",
                width = 384,
                height = 448,
                frame_count = 1,
                shift = util.by_pixel(-0, -0),
                priority = "medium",
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            }
        },
        --POSTE
        {
            north_position = util.by_pixel(-0, -32),
            west_position = util.by_pixel(-0, -32),
            south_position = util.by_pixel(-0, -32),
            east_position = util.by_pixel(-0, -32),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/prandium-lab/poste.png",
                width = 384,
                height = 448,
                frame_count = 1,
                util.by_pixel(-0, -0),
                priority = "medium"
            }
        },
        --FRONT
        {
            north_position = util.by_pixel(-0, -32),
            west_position = util.by_pixel(-0, -32),
            south_position = util.by_pixel(-0, -32),
            east_position = util.by_pixel(-0, -32),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/prandium-lab/front.png",
                width = 384,
                height = 448,
                frame_count = 1,
                util.by_pixel(-0, -0),
                priority = "extra-high"
            }
        },
        {
            north_position = util.by_pixel(-0, -32),
            west_position = util.by_pixel(-0, -32),
            south_position = util.by_pixel(-0, -32),
            east_position = util.by_pixel(-0, -32),
            animation = {
                filename = "__pyalienlifegraphics2__/graphics/entity/prandium-lab/front-mask.png",
                width = 384,
                height = 448,
                frame_count = 1,
                util.by_pixel(-0, -0),
                priority = "extra-high",
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            }
        },

    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/prandium-lab.ogg", volume = 1.4},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/prandium-lab.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
