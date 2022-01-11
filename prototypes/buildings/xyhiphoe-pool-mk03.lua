RECIPE {
    type = "recipe",
    name = "xyhiphoe-pool-mk03",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
                {'xyhiphoe-pool-mk02', 1},
                {'titanium-plate', 50},
                {"sc-unit", 15},
                {"nbti-alloy", 20},
                {'stainless-steel', 20},
                {"electric-engine-unit", 8},
                {"molybdenum-plate", 20},
                {"boron-carbide", 15},
                {'processing-unit', 10}
            },
    results = {
        {"xyhiphoe-pool-mk03", 1}
    }
}:add_unlock("water-invertebrates-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 50})

ITEM {
    type = "item",
    name = "xyhiphoe-pool-mk03",
    icon = "__pyfusionenergygraphics__/graphics/icons/xyhiphoe-pool-mk03.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk03",
    order = "d",
    place_result = "xyhiphoe-pool-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "xyhiphoe-pool-mk03",
    icon = "__pyfusionenergygraphics__/graphics/icons/xyhiphoe-pool-mk03.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "xyhiphoe-pool-mk03"},
    fast_replaceable_group = "xyhiphoe-pool",
    max_health = 700,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.8, -3.8}, {3.8, 3.8}},
    selection_box = {{-4.0, -4.0}, {4.0, 4.0}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 3
    },
    allowed_effects = {"speed","productivity",'consumption','pollution'},
    crafting_categories = {"xyhiphoe"},
    crafting_speed = 0.1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = -5,
    },
    energy_usage = "800kW",
    animation = {
        layers = {
            {
                filename = "__pyfusionenergygraphics__/graphics/entity/xyhiphoe-pool/left.png",
                width = 96,
                height = 318,
                line_length = 21,
                frame_count = 100,
                animation_speed = 0.5,
                shift = {-2.532, -0.966}
            },
			{
                filename = "__pyfusionenergygraphics__/graphics/entity/xyhiphoe-pool/left-mask.png",
                width = 96,
                height = 318,
                line_length = 21,
                frame_count = 100,
                animation_speed = 0.5,
                shift = {-2.532, -0.966},
				tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
            },
            {
                filename = "__pyfusionenergygraphics__/graphics/entity/xyhiphoe-pool/mid.png",
                width = 96,
                height = 318,
                line_length = 21,
                frame_count = 100,
                animation_speed = 0.5,
                shift = {0.468, -0.966}
            },
			{
                filename = "__pyfusionenergygraphics__/graphics/entity/xyhiphoe-pool/mid-mask.png",
                width = 96,
                height = 318,
                line_length = 21,
                frame_count = 100,
                animation_speed = 0.5,
                shift = {0.468, -0.966},
				tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
            },
            {
                filename = "__pyfusionenergygraphics__/graphics/entity/xyhiphoe-pool/right.png",
                width = 82,
                height = 318,
                line_length = 21,
                frame_count = 100,
                animation_speed = 0.5,
                shift = {3.250, -0.966}
            },
			{
                filename = "__pyfusionenergygraphics__/graphics/entity/xyhiphoe-pool/right-mask.png",
                width = 82,
                height = 318,
                line_length = 21,
                frame_count = 100,
                animation_speed = 0.5,
                shift = {3.250, -0.966},
				tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
            }
        }
    },
    fluid_boxes = {
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.90}, {0.5, 0.0}, {-0.5, 0.0}),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {
                {type = "output", position = {-1.5, 4.5}}
            }
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.90}, {0.5, 0.0}, {-0.5, 0.0}),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {
                {type = "output", position = {1.5, 4.5}}
            }
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.90}, {0.5, 0.0}, {-0.5, 0.0}),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {
                {type = "input", position = {-1.5, -4.5}}
            }
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.90}, {0.5, 0.0}, {-0.5, 0.0}),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {
                {type = "input", position = {1.5, -4.5}}
            }
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/xyhiphoe-pool.ogg", volume = 1.3},
        idle_sound = {filename = "__pyfusionenergygraphics__/sounds/xyhiphoe-pool.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
