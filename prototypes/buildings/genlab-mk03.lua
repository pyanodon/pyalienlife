RECIPE {
    type = "recipe",
    name = "genlab-mk03",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"genlab-mk02", 1},
        {"boron-carbide", 30},
        {"processing-unit", 40},
        {"sc-unit", 20},
        {"nichrome", 40},
        {"nexelit-plate", 30},
        {"ticocr-alloy", 30},
    },
    results = {
        {"genlab-mk03", 1}
    }
}:add_unlock("biotech-machines-mk03")

ITEM {
    type = "item",
    name = "genlab-mk03",
    icon = "__pyalienlifegraphics__/graphics/icons/genlab-mk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk03",
    order = "a",
    place_result = "genlab-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "genlab-mk03",
    icon = "__pyalienlifegraphics__/graphics/icons/genlab-mk03.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "genlab-mk03"},
    fast_replaceable_group = "genlab",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.1, -3.1}, {3.1, 3.1}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 3
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"genlab"},
    crafting_speed = 3,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 1,
    },
    energy_usage = "700kW",
    animation = {
        layers = {
            {
                filename = "__pyalienlifegraphics__/graphics/entity/genlab/base.png",
                width = 256,
                height = 32,
                line_length = 8,
                frame_count = 100,
                animation_speed = 0.4,
                shift = util.by_pixel(16, 96)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/genlab/a1.png",
                width = 128,
                height = 288,
                line_length = 16,
                frame_count = 100,
                animation_speed = 0.4,
                shift = util.by_pixel(-48, -64)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/genlab/a1-mask.png",
                width = 128,
                height = 288,
                line_length = 16,
                frame_count = 100,
                animation_speed = 0.4,
                shift = util.by_pixel(-48, -64),
                tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/genlab/a2.png",
                width = 128,
                height = 288,
                line_length = 16,
                frame_count = 100,
                animation_speed = 0.4,
                shift = util.by_pixel(80, -64)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/genlab/a2-mask.png",
                width = 128,
                height = 288,
                line_length = 16,
                frame_count = 100,
                animation_speed = 0.4,
                shift = util.by_pixel(80, -64),
                tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
            },
        }
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {0.0, -3.1}, direction = defines.direction.north}},
            secondary_draw_orders = { north = -1 }
        },
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {-2.0, -3.1}, direction = defines.direction.north}},
            secondary_draw_orders = { north = -1 }
        },
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {2.0, -3.1}, direction = defines.direction.north}},
            secondary_draw_orders = { north = -1 }
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = 1,
            pipe_connections = {{flow_direction = "output", position = {0.0, 3.1}, direction = defines.direction.south}},
            secondary_draw_orders = { north = -1 }
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = 1,
            pipe_connections = {{flow_direction = "output", position = {-2.0, 3.1}, direction = defines.direction.south}},
            secondary_draw_orders = { north = -1 }
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = 1,
            pipe_connections = {{flow_direction = "output", position = {2.0, 3.1}, direction = defines.direction.south}},
            secondary_draw_orders = { north = -1 }
        },
        off_when_no_fluid_recipe = true
    },

    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/genlab.ogg", volume = 1.5},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/genlab.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
