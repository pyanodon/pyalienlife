local MODULE_SLOTS = 7
local FULL_CRAFTING_SPEED = 1 -- crafting speed when full of mk01 modules

RECIPE {
    type = "recipe",
    name = "grods-swamp-mk01",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"stone-brick", 200},
        {"pump", 5},
        {"steam-engine", 5},
        {"treated-wood", 50},
        {"pipe", 40},
        {"electronic-circuit", 20},
        {"titanium-plate", 50},
        {"steel-plate", 50},
        {"glass", 40},
    },
    results = {
        {"grods-swamp-mk01", 1}
    }
}:add_unlock("grod")

ITEM {
    type = "item",
    name = "grods-swamp-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/grods-swamp-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-farm-buildings-mk01",
    order = "e",
    place_result = "grods-swamp-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "grods-swamp-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/grods-swamp-mk01.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "grods-swamp-mk01"},
    fast_replaceable_group = "grods-swamp",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.2, -5.2}, {5.2, 5.2}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = MODULE_SLOTS
    },
    allowed_effects = {'speed', 'productivity', 'consumption', 'pollution'},
    crafting_categories = {"grod"},
    crafting_speed = py.farm_speed(MODULE_SLOTS, FULL_CRAFTING_SPEED),
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = -5,
    },
    energy_usage = "1000kW",
    animation = {
        layers = {
            {
                filename = "__pyalienlifegraphics__/graphics/entity/grods-swamp/off.png",
                width = 384,
                height = 384,
                line_length = 1,
                frame_count = 1,
                shift = util.by_pixel(16, -16)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/grods-swamp/off-mask.png",
                width = 384,
                height = 384,
                line_length = 1,
                frame_count = 1,
                shift = util.by_pixel(16, -16),
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
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
                filename = "__pyalienlifegraphics__/graphics/entity/grods-swamp/a.png",
                frame_count = 100,
                line_length = 12,
                width = 128,
                height = 224,
                animation_speed = 0.4,
            }
        },
        {
            north_position = util.by_pixel(16, 32),
            west_position = util.by_pixel(16, 32),
            south_position = util.by_pixel(16, 32),
            east_position = util.by_pixel(16, 32),
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/grods-swamp/b.png",
                frame_count = 100,
                line_length = 12,
                width = 128,
                height = 224,
                animation_speed = 0.4,
            }
        },
        {
            north_position = util.by_pixel(128, 32),
            west_position = util.by_pixel(128, 32),
            south_position = util.by_pixel(128, 32),
            east_position = util.by_pixel(128, 32),
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/grods-swamp/c.png",
                frame_count = 100,
                line_length = 12,
                width = 96,
                height = 224,
                animation_speed = 0.4,
            }
        },
    },

    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {2.0, -6.0}}}
        },
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-2.0, -6.0}}}
        },
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0, -6.0}}}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_level = 1,
            pipe_connections = {{type = "output", position = {2.0, 6.0}}}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-2.0, 6.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/grods-swamp.ogg", volume = 1.55},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/grods-swamp.ogg", volume = 0.3},
        apparent_volume = 1.2
    }
}
