RECIPE {
    type = "recipe",
    name = "spore-collector-mk04",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "science-coating",      amount = 50},
        {type = "item", name = "spore-collector-mk03", amount = 1},
        {type = "item", name = "super-alloy",          amount = 10},
        {type = "item", name = "nenbit-matrix",        amount = 60},
        {type = "item", name = "control-unit",         amount = 15},
    },
    results = {
        {type = "item", name = "spore-collector-mk04", amount = 1}
    }
}:add_unlock("mycology-mk05")

ITEM {
    type = "item",
    name = "spore-collector-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/spore-collector-mk04.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-alienlife-buildings-mk04",
    order = "a",
    place_result = "spore-collector-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "spore-collector-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/spore-collector-mk04.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "spore-collector-mk04"},
    fast_replaceable_group = "spore-collector",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    forced_symmetry = "diagonal-pos",
    module_slots = 4,
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
    crafting_categories = {"spore"},
    crafting_speed = 4,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 1
        },
    },
    energy_usage = "750kW",
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/spore-collector/base.png",
                    width = 243,
                    height = 32,
                    line_length = 6,
                    frame_count = 40,
                    animation_speed = 0.4,
                    shift = util.by_pixel(10, 96)
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/spore-collector/up.png",
                    width = 243,
                    height = 320,
                    line_length = 8,
                    frame_count = 40,
                    animation_speed = 0.4,
                    shift = util.by_pixel(10, -80)
                },

                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/spore-collector/mask.png",
                    width = 243,
                    height = 320,
                    line_length = 8,
                    frame_count = 40,
                    animation_speed = 0.4,
                    shift = util.by_pixel(10, -80),
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
                },
            }
        },
    },

    fluid_boxes_off_when_no_fluid_recipe = true,
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {0.0, -3.0}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {0.0, 3.0}, direction = defines.direction.south}}
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/spore-collector.ogg", volume = 1.5},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/spore-collector.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
