local MODULE_SLOTS = 1
local FULL_CRAFTING_SPEED = 1 -- crafting speed when full of mk01 modules

RECIPE {
    type = "recipe",
    name = "xyhiphoe-pool-mk01",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "ralesia-plantation-mk01", amount = 1},
        {type = "item", name = "pump", amount = 4},
        {type = "item", name = "electronic-circuit", amount = 20},
        {type = "item", name = "steel-plate", amount = 40},
        {type = "item", name = "steam-engine", amount = 4},
        {type = "item", name = "pipe", amount = 10},
        {type = "item", name = "glass", amount = 100}
    },
    results = {
        {type = "item", name = "xyhiphoe-pool-mk01", amount = 1}
    }
}:add_unlock("water-invertebrates-mk01")

ITEM {
    type = "item",
    name = "xyhiphoe-pool-mk01",
    icon = "__pyfusionenergygraphics__/graphics/icons/xyhiphoe-pool-mk01.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-farm-buildings-mk01",
    order = "d",
    place_result = "xyhiphoe-pool-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "xyhiphoe-pool-mk01",
    icon = "__pyfusionenergygraphics__/graphics/icons/xyhiphoe-pool-mk01.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "xyhiphoe-pool-mk01"},
    fast_replaceable_group = "xyhiphoe-pool",
    max_health = 700,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.8, -3.8}, {3.8, 3.8}},
    selection_box = {{-4.0, -4.0}, {4.0, 4.0}},
    match_animation_speed_to_activity = false,
    module_slots = MODULE_SLOTS,
    allowed_effects = {'speed', 'productivity', 'consumption', 'pollution'},
    crafting_categories = {"xyhiphoe"},
    crafting_speed = py.farm_speed(MODULE_SLOTS, FULL_CRAFTING_SPEED),
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = -5
        },
    },
    energy_usage = "500kW",
    graphics_set = {
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
    				tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
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
    				tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
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
    				tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                }
            }
        },
    },
    fluid_boxes = {
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.90}, {0.5, 0.0}, {-0.5, 0.0}),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {
                {flow_direction = "output", position = {-1.5, 3.8}, direction = defines.direction.south}
            }
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.90}, {0.5, 0.0}, {-0.5, 0.0}),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {
                {flow_direction = "output", position = {1.5, 3.8}, direction = defines.direction.south}
            }
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.90}, {0.5, 0.0}, {-0.5, 0.0}),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {
                {flow_direction = "input", position = {-1.5, -3.8}, direction = defines.direction.north}
            }
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.90}, {0.5, 0.0}, {-0.5, 0.0}),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {
                {flow_direction = "input", position = {1.5, -3.8}, direction = defines.direction.north}
            }
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/xyhiphoe-pool.ogg", volume = 1.3},
        idle_sound = {filename = "__pyfusionenergygraphics__/sounds/xyhiphoe-pool.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
