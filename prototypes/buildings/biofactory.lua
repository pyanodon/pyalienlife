RECIPE {
    type = "recipe",
    name = "biofactory-mk03",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "biofactory-mk02",      amount = 1},
        {type = "item", name = "neuromorphic-chip",    amount = 30},
        {type = "item", name = "boron-carbide",        amount = 15},
        {type = "item", name = "ticocr-alloy",         amount = 40},
        {type = "item", name = "electric-engine-unit", amount = 15},
        {type = "item", name = "processing-unit",      amount = 30},
        {type = "item", name = "nichrome",             amount = 25},
    },
    results = {
        {type = "item", name = "biofactory-mk03", amount = 1}
    }
}:add_unlock("biotech-machines-mk03"):add_ingredient {type = "item", name = "small-parts-03", amount = 50}

ITEM {
    type = "item",
    name = "biofactory-mk03",
    icon = "__pyalienlifegraphics__/graphics/icons/biofactory-mk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk03",
    order = "a",
    place_result = "biofactory-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "biofactory-mk03",
    icon = "__pyalienlifegraphics__/graphics/icons/biofactory-mk03.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "biofactory-mk03"},
    fast_replaceable_group = "biofactory",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.1, -3.1}, {3.1, 3.1}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    forced_symmetry = "diagonal-pos",
    module_slots = 3,
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
    crafting_categories = {"biofactory"},
    crafting_speed = 3,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 2
        },
    },
    energy_usage = "600kW",
    fluid_boxes_off_when_no_fluid_recipe = true,
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {0.0, -3.0}, direction = defines.direction.north}},
            secondary_draw_orders = {north = -1}
        },
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {-2.0, -3.0}, direction = defines.direction.north}},
            secondary_draw_orders = {north = -1}
        },
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {2.0, -3.0}, direction = defines.direction.north}},
            secondary_draw_orders = {north = -1}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {{flow_direction = "output", position = {0.0, 3.0}, direction = defines.direction.south}},
            secondary_draw_orders = {north = -1}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {{flow_direction = "output", position = {-2.0, 3.0}, direction = defines.direction.south}},
            secondary_draw_orders = {north = -1}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {{flow_direction = "output", position = {2.0, 3.0}, direction = defines.direction.south}},
            secondary_draw_orders = {north = -1}
        },
    },
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/biofactory/base.png",
                    priority = "high",
                    width = 256,
                    height = 32,
                    line_length = 8,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(16, 96)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/biofactory/a1.png",
                    priority = "high",
                    width = 128,
                    height = 227,
                    line_length = 15,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-48, -31)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/biofactory/a1-mask.png",
                    priority = "high",
                    width = 128,
                    height = 227,
                    line_length = 15,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-48, -31),
                    tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/biofactory/a2.png",
                    priority = "high",
                    width = 128,
                    height = 227,
                    line_length = 15,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(80, -31)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/biofactory/a2-mask.png",
                    priority = "high",
                    width = 128,
                    height = 227,
                    line_length = 15,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(80, -31),
                    tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
                },
            }
        },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/biofactory.ogg", volume = 1.3},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/biofactory.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
