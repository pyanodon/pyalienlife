RECIPE {
    type = "recipe",
    name = "spore-collector-mk03",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "molybdenum-plate", amount = 50},
        {type = "item", name = "spore-collector-mk02", amount = 1},
        {type = "item", name = "electric-engine-unit", amount = 15},
        {type = "item", name = "sc-unit", amount = 10},
        {type = "item", name = "super-steel", amount = 80},
        {type = "item", name = "processing-unit", amount = 40},
    },
    results = {
        {type = "item", name = "spore-collector-mk03", amount = 1}
    }
}:add_unlock("mycology-mk04"):add_ingredient({type = "item", name = "small-parts-03", amount = 50})

ITEM {
    type = "item",
    name = "spore-collector-mk03",
    icon = "__pyalienlifegraphics__/graphics/icons/spore-collector-mk03.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-alienlife-buildings-mk03",
    order = "a",
    place_result = "spore-collector-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "spore-collector-mk03",
    icon = "__pyalienlifegraphics__/graphics/icons/spore-collector-mk03.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "spore-collector-mk03"},
    fast_replaceable_group = "spore-collector",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification = {
        module_slots = 3
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"spore"},
    crafting_speed = 3,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 1
        },
    },
    energy_usage = "550kW",
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
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {0.0, -3.2}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {0.0, 3.2}, direction = defines.direction.south}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/spore-collector.ogg", volume = 1.5},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/spore-collector.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
