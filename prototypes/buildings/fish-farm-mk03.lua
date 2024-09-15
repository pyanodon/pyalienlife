local MODULE_SLOTS = 20

RECIPE {
    type = "recipe",
    name = "fish-farm-mk03",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"fish-farm-mk02", 1},
        {"ticocr-alloy", 50},
        {"py-heat-exchanger", 1},
        {"electric-engine-unit", 4},
        {"sc-unit", 20},
        {"neuromorphic-chip", 30},
        {"processing-unit", 50},
    },
    results = {
        {"fish-farm-mk03", 1}
    }
}:add_unlock("water-animals-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 30})

ITEM {
    type = "item",
    name = "fish-farm-mk03",
    icon = "__pyalienlifegraphics__/graphics/icons/fish-farm-mk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-farm-buildings-mk03",
    order = "d",
    place_result = "fish-farm-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "fish-farm-mk03",
    icon = "__pyalienlifegraphics__/graphics/icons/fish-farm-mk03.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "fish-farm-mk03"},
    fast_replaceable_group = "fish-farm",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.1, -5.1}, {5.1, 5.1}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = MODULE_SLOTS
    },
    allowed_effects = {'speed', 'productivity', 'consumption', 'pollution'},
    crafting_categories = {"fish-farm"},
    crafting_speed = py.farm_speed_derived(MODULE_SLOTS, "fish-farm-mk01"),
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.5,
    },
    energy_usage = "2000kW",
    animation = {
        layers = {
            {
                filename = "__pyalienlifegraphics__/graphics/entity/fish-farm/off.png",
                width = 384,
                height = 384,
                frame_count = 1,
                line_length = 1,
                shift = util.by_pixel(16, -16)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/fish-farm/off-mask.png",
                width = 384,
                height = 384,
                frame_count = 1,
                line_length = 1,
                shift = util.by_pixel(16, -16),
                tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
            },
        }
    },
    working_visualisations = {
        {
            north_position = util.by_pixel(-128, -16),
            west_position = util.by_pixel(-128, -16),
            south_position = util.by_pixel(-128, -16),
            east_position = util.by_pixel(-128, -16),
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/fish-farm/a1.png",
                frame_count = 150,
                line_length = 21,
                width = 96,
                height = 256,
                animation_speed = 0.35,
                draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(-32, -16),
            west_position = util.by_pixel(-32, -16),
            south_position = util.by_pixel(-32, -16),
            east_position = util.by_pixel(-32, -16),
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/fish-farm/a2.png",
                frame_count = 150,
                line_length = 21,
                width = 96,
                height = 256,
                animation_speed = 0.35,
                draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(64, -16),
            west_position = util.by_pixel(64, -16),
            south_position = util.by_pixel(64, -16),
            east_position = util.by_pixel(64, -16),
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/fish-farm/a3.png",
                frame_count = 150,
                line_length = 21,
                width = 96,
                height = 256,
                animation_speed = 0.35,
                draw_as_glow = true,
            }
        },
        {
            north_position = util.by_pixel(144, -16),
            west_position = util.by_pixel(144, -16),
            south_position = util.by_pixel(144, -16),
            east_position = util.by_pixel(144, -16),
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/fish-farm/a4.png",
                frame_count = 150,
                line_length = 21,
                width = 64,
                height = 256,
                animation_speed = 0.35,
                draw_as_glow = true,
            }
        },
    },

    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(true, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {0.0, -5.1}, direction = defines.direction.north}},
            secondary_draw_orders = { north = -1 }
        },
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(true, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {0.0, 5.1}, direction = defines.direction.south}},
            secondary_draw_orders = { north = -1 }
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(true, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {5.1, 0.0}, direction = defines.direction.east}},
            secondary_draw_orders = { north = -1 }
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(true, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-5.1, 0.0}, direction = defines.direction.west}},
            secondary_draw_orders = { north = -1 }
        },
        off_when_no_fluid_recipe = true
    },

    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/fish-farm.ogg", volume = 0.65},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/fish-farm.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
