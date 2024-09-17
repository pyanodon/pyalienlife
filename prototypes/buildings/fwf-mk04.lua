local MODULE_SLOTS = 80

RECIPE {
    type = "recipe",
    name = "fwf-mk04",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "fwf-mk03", amount = 1},
        {type = "item", name = "science-coating", amount = 30},
        {type = "item", name = "wall-shield", amount = 10},
        {type = "item", name = "super-alloy", amount = 30},
        {type = "item", name = "kevlar", amount = 100},
        {type = "item", name = "control-unit", amount = 40},
    },
    results = {
        {type = "item", name = "fwf-mk04", amount = 1}
    }
}:add_unlock("botany-mk04")

ITEM {
    type = "item",
    name = "fwf-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/fwf-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-farm-buildings-mk04",
    order = "e",
    place_result = "fwf-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "fwf-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/fwf-mk04.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "fwf-mk04"},
    fast_replaceable_group = "fwf",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-7.2, -7.2}, {7.2, 7.2}},
    selection_box = {{-7.5, -7.5}, {7.5, 7.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = MODULE_SLOTS
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"fwf"},
    crafting_speed = py.farm_speed_derived(MODULE_SLOTS, "fwf-mk01"),
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = -35
        },
    },
    energy_usage = "800kW",
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/fwf/base.png",
                    width = 544,
                    height = 64,
                    line_length = 4,
                    frame_count = 135,
                    animation_speed = 0.4,
                    shift = util.by_pixel(0, 240)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/fwf/left-fill.png",
                    width = 32,
                    height = 544,
                    frame_count = 1,
                    repeat_count= 135,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-256, -64)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/fwf/right-fill.png",
                    width = 32,
                    height = 544,
                    frame_count = 1,
                    repeat_count= 135,
                    animation_speed = 0.4,
                    shift = util.by_pixel(256, -64)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/fwf/1.png",
                    width = 32,
                    height = 544,
                    line_length = 45,
                    frame_count = 135,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-224, -64)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/fwf/2.png",
                    width = 32,
                    height = 544,
                    line_length = 45,
                    frame_count = 135,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-192, -64)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/fwf/3.png",
                    width = 32,
                    height = 544,
                    line_length = 45,
                    frame_count = 135,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-160, -64)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/fwf/4.png",
                    width = 32,
                    height = 544,
                    line_length = 45,
                    frame_count = 135,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-128, -64)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/fwf/5.png",
                    width = 32,
                    height = 544,
                    line_length = 45,
                    frame_count = 135,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-96, -64)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/fwf/6.png",
                    width = 32,
                    height = 544,
                    line_length = 45,
                    frame_count = 135,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-64, -64)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/fwf/7.png",
                    width = 32,
                    height = 544,
                    line_length = 45,
                    frame_count = 135,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-32, -64)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/fwf/8.png",
                    width = 32,
                    height = 544,
                    line_length = 45,
                    frame_count = 135,
                    animation_speed = 0.4,
                    shift = util.by_pixel(0, -64)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/fwf/9.png",
                    width = 32,
                    height = 544,
                    line_length = 45,
                    frame_count = 135,
                    animation_speed = 0.4,
                    shift = util.by_pixel(32, -64)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/fwf/10.png",
                    width = 32,
                    height = 544,
                    line_length = 45,
                    frame_count = 135,
                    animation_speed = 0.4,
                    shift = util.by_pixel(64, -64)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/fwf/11.png",
                    width = 32,
                    height = 544,
                    line_length = 45,
                    frame_count = 135,
                    animation_speed = 0.4,
                    shift = util.by_pixel(96, -64)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/fwf/12.png",
                    width = 32,
                    height = 544,
                    line_length = 45,
                    frame_count = 135,
                    animation_speed = 0.4,
                    shift = util.by_pixel(128, -64)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/fwf/13.png",
                    width = 32,
                    height = 544,
                    line_length = 45,
                    frame_count = 135,
                    run_mode = "backward",
                    animation_speed = 0.4,
                    shift = util.by_pixel(160, -64)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/fwf/14.png",
                    width = 32,
                    height = 544,
                    line_length = 45,
                    frame_count = 135,
                    animation_speed = 0.4,
                    shift = util.by_pixel(192, -64)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/fwf/15.png",
                    width = 32,
                    height = 544,
                    line_length = 45,
                    frame_count = 135,
                    animation_speed = 0.4,
                    shift = util.by_pixel(224, -64)
                },
            }
        },
    },

    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {1.0, 7.2}, direction = defines.direction.south}}
        },
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {-1.0, 7.2}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {1.0, -7.2}, direction = defines.direction.north}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = '__base__/sound/car-metal-impact-1.ogg', volume = 0.65},
    working_sound = {
        fade_in_ticks = 60,
        fade_out_ticks = 60,
        sound = {filename = '__pyalienlifegraphics__/sounds/fwf.ogg', volume = 1.5},
        idle_sound = {filename = '__pyalienlifegraphics__/sounds/fwf-idle.ogg', volume = 0.5},
        audible_distance_modifier = 1,
    }
}
