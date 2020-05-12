RECIPE {
    type = "recipe",
    name = "dhilmos-pool-mk02",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"nbti-alloy", 40},
        {"dhilmos-pool-mk01", 1},
        {"nexelit-plate", 20},
        {"plastic-bar", 25},
        {"neuroprocessor", 50},
        {"neuromorphic-chip", 30},
        {"advanced-circuit", 50},
        {"tin-plate", 50},
    },
    results = {
        {"dhilmos-pool-mk02", 1}
    }
}:add_unlock("dhilmos-mk02")

ITEM {
    type = "item",
    name = "dhilmos-pool-mk02",
    icon = "__pyalienlifegraphics__/graphics/icons/dhilmos-pool-mk02.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk02",
    order = "d",
    place_result = "dhilmos-pool-mk02",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "dhilmos-pool-mk02",
    icon = "__pyalienlifegraphics__/graphics/icons/dhilmos-pool-mk02.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "dhilmos-pool-mk02"},
    fast_replaceable_group = "dhilmos-pool",
    max_health = 50,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.2, -5.2}, {5.2, 5.2}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    draw_entity_info_icon_background = false,
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 10
    },
    allowed_effects = {"speed","productivity"},
    crafting_categories = {"dhilmos"},
    crafting_speed = 0.02,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = -1,
    },
    energy_usage = "600kW",
    ingredient_count = 10,
    animation = {
        layers = {
            {
                filename = "__pyalienlifegraphics__/graphics/entity/dhilmos-pool/off.png",
                width = 352,
                height = 384,
                --line_length = 5,
                frame_count = 1,
                --animation_speed = 0.3,
                shift = util.by_pixel(0, -16)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/dhilmos-pool/off-mask.png",
                width = 352,
                height = 384,
                --line_length = 5,
                frame_count = 1,
                --animation_speed = 0.3,
                shift = util.by_pixel(0, -16),
                tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
            },
        }
    },
    working_visualisations = {
        {
            north_position = {-4.5, 0.0},
            west_position = {-4.5, 0.0},
            south_position = {-4.5, 0.0},
            east_position = {-4.5, 0.0},
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/dhilmos-pool/a1.png",
                frame_count = 150,
                line_length = 30,
                width = 64,
                height = 352,
                animation_speed = 0.3
            }
        },
        {
            north_position = {-2.5, 0.0},
            west_position = {-2.5, 0.0},
            south_position = {-2.5, 0.0},
            east_position = {-2.5, 0.0},
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/dhilmos-pool/a2.png",
                frame_count = 150,
                line_length = 30,
                width = 64,
                height = 352,
                animation_speed = 0.3
            }
        },
        {
            north_position = {-0.5, 0.0},
            west_position = {-0.5, 0.0},
            south_position = {-0.5, 0.0},
            east_position = {-0.5, 0.0},
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/dhilmos-pool/a3.png",
                frame_count = 150,
                line_length = 30,
                width = 64,
                height = 352,
                animation_speed = 0.3
            }
        },
        {
            north_position = {1.5, 0.0},
            west_position = {1.5, 0.0},
            south_position = {1.5, 0.0},
            east_position = {1.5, 0.0},
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/dhilmos-pool/a4.png",
                frame_count = 150,
                line_length = 30,
                width = 64,
                height = 352,
                animation_speed = 0.3
            }
        },
        {
            north_position = {3.5, 0.0},
            west_position = {3.5, 0.0},
            south_position = {3.5, 0.0},
            east_position = {3.5, 0.0},
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/dhilmos-pool/a5.png",
                frame_count = 150,
                line_length = 30,
                width = 64,
                height = 352,
                animation_speed = 0.3
            }
        },
    },

    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, {0.70, 0.0}, {-0.78, 0.0}),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {2.0, -6.0}}}
        },
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, {0.70, 0.0}, {-0.78, 0.0}),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-2.0, -6.0}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, {0.70, 0.0}, {-0.78, 0.0}),
            base_level = 1,
            pipe_connections = {{type = "output", position = {2.0, 6.0}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, {0.70, 0.0}, {-0.78, 0.0}),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-2.0, 6.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/dhilmos-pool.ogg", volume = 1.2},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/dhilmos-pool.ogg", volume = 0.85},
        apparent_volume = 2.5
    }
}
