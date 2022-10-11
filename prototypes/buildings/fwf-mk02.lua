RECIPE {
    type = "recipe",
    name = "fwf-mk02",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"fwf-mk01", 1},
        {"titanium-plate", 30},
        {"duralumin", 30},
        {"latex", 30},
        {"plastic-bar", 50},
        {"engine-unit", 5},
        {"advanced-circuit", 20},
    },
    results = {
        {"fwf-mk02", 1}
    }
}:add_unlock("botany-mk02"):add_ingredient({type = "item", name = "small-parts-02", amount = 30})

ITEM {
    type = "item",
    name = "fwf-mk02",
    icon = "__pyalienlifegraphics__/graphics/icons/fwf-mk02.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk02",
    order = "e",
    place_result = "fwf-mk02",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "fwf-mk02",
    icon = "__pyalienlifegraphics__/graphics/icons/fwf-mk02.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "fwf-mk02"},
    fast_replaceable_group = "fwf",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-7.2, -7.2}, {7.2, 7.2}},
    selection_box = {{-7.5, -8.5}, {7.5, 7.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 50
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"fwf"},
    crafting_speed = 0.1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = -35,
    },
    energy_usage = "500kW",
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
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {1.0, 8.0}}}
        },
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-1.0, 8.0}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_level = 1,
            pipe_connections = {{type = "output", position = {1.0, -8.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/fwf.ogg", volume = 0.75},
        audible_distance_modifier = 0.32,
    }
}
