RECIPE {
    type = "recipe",
    name = "grods-swamp-mk04",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"grods-swamp-mk03", 1},
        {"low-density-structure", 25},
        {"blanket", 5},
        {"control-unit", 10},
        {"metallic-glass", 40},
        {"boron-carbide", 40},
    },
    results = {
        {"grods-swamp-mk04", 1}
    }
}:add_unlock("grod-mk04")

ITEM {
    type = "item",
    name = "grods-swamp-mk04",
    icon = "__pyalienlife__/graphics/icons/grods-swamp-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk04",
    order = "e",
    place_result = "grods-swamp-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "grods-swamp-mk04",
    icon = "__pyalienlife__/graphics/icons/grods-swamp-mk04.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "grods-swamp-mk04"},
    fast_replaceable_group = "grods-swamp",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.2, -5.2}, {5.2, 5.2}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    --draw_entity_info_icon_background = false,
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 9
    },
    allowed_effects = {"speed"},
    crafting_categories = {"grod"},
    crafting_speed = 0.01,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = -5,
    },
    energy_usage = "1000kW",
    ingredient_count = 10,
    animation = {
        layers = {
            {
                filename = "__pyalienlife__/graphics/entity/grods-swamp/off.png",
                width = 384,
                height = 384,
                line_length = 1,
                frame_count = 1,
                --animation_speed = 0.35,
                shift = util.by_pixel(16, -16)
            },
            {
                filename = "__pyalienlife__/graphics/entity/grods-swamp/off-mask.png",
                width = 384,
                height = 384,
                line_length = 1,
                frame_count = 1,
                --animation_speed = 0.35,
                shift = util.by_pixel(16, -16),
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
            },
        }
    },

    working_visualisations = {
        {
            north_position = util.by_pixel(-112, 32),
            west_position = util.by_pixel(-112, 32),
            south_position = util.by_pixel(-112, 32),
            east_position = util.by_pixel(-112, 32),
            animation = {
                filename = "__pyalienlife__/graphics/entity/grods-swamp/a.png",
                frame_count = 100,
                line_length = 12,
                width = 128,
                height = 224,
                animation_speed = 0.4
            }
        },
        {
            north_position = util.by_pixel(16, 32),
            west_position = util.by_pixel(16, 32),
            south_position = util.by_pixel(16, 32),
            east_position = util.by_pixel(16, 32),
            animation = {
                filename = "__pyalienlife__/graphics/entity/grods-swamp/b.png",
                frame_count = 100,
                line_length = 12,
                width = 128,
                height = 224,
                animation_speed = 0.4
            }
        },
        {
            north_position = util.by_pixel(128, 32),
            west_position = util.by_pixel(128, 32),
            south_position = util.by_pixel(128, 32),
            east_position = util.by_pixel(128, 32),
            animation = {
                filename = "__pyalienlife__/graphics/entity/grods-swamp/c.png",
                frame_count = 100,
                line_length = 12,
                width = 96,
                height = 224,
                animation_speed = 0.4
            }
        },
    },

    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {2.0, -6.0}}}
        },
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-2.0, -6.0}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_level = 1,
            pipe_connections = {{type = "output", position = {2.0, 6.0}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-2.0, 6.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlife__/sounds/grods-swamp.ogg", volume = 1.55},
        idle_sound = {filename = "__pyalienlife__/sounds/grods-swamp.ogg", volume = 0.95},
        apparent_volume = 1.2
    }
}
