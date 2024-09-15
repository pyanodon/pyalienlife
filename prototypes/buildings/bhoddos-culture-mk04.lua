local MODULE_SLOTS = 4

RECIPE {
    type = "recipe",
    name = "bhoddos-culture-mk04",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"bhoddos-culture-mk03", 1},
        {"control-unit", 10},
        {"wall-shield", 15},
        {"nbfe-alloy", 40},
        {"silver-foam", 20},
        {"divertor", 10},
    },
    results = {
        {"bhoddos-culture-mk04", 1}
    }
}:add_unlock("mycology-mk05")

ITEM {
    type = "item",
    name = "bhoddos-culture-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/bhoddos-culture-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-farm-buildings-mk04",
    order = "c",
    place_result = "bhoddos-culture-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "bhoddos-culture-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/bhoddos-culture-mk04.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "bhoddos-culture-mk04"},
    fast_replaceable_group = "bhoddos-culture",
    max_health = 50,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.3, -5.3}, {5.3, 5.3}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = MODULE_SLOTS
    },
    allowed_effects = {'speed', 'productivity', 'consumption', 'pollution'},
    crafting_categories = {"bhoddos"},
    crafting_speed = py.farm_speed_derived(MODULE_SLOTS, "bhoddos-culture-mk01"),
    energy_source = {
        type = "burner",
        fuel_category = "fuelrod",
        effectivity = 1,
        fuel_inventory_size = 1,
        burnt_inventory_size = 1,
        emissions_per_minute = 0,
    },
    energy_usage = "4MW",
    animation = {
        layers = {
            {
                filename = "__pyalienlifegraphics__/graphics/entity/bhoddos-culture/off.png",
                width = 384,
                height = 416,
                frame_count = 1,
                shift = util.by_pixel(16, -32)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/bhoddos-culture/off-mask.png",
                width = 384,
                height = 416,
                frame_count = 1,
                shift = util.by_pixel(16, -32),
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
            },
        }
    },

    working_visualisations = {
        {
            north_position = util.by_pixel(-128, -48),
            west_position = util.by_pixel(-128, -48),
            south_position = util.by_pixel(-128, -48),
            east_position = util.by_pixel(-128, -48),
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/bhoddos-culture/a1.png",
                frame_count = 100,
                line_length = 20,
                width = 96,
                height = 384,
                animation_speed = 0.4
            }
        },
        {
            north_position = util.by_pixel(-32, -48),
            west_position = util.by_pixel(-32, -48),
            south_position = util.by_pixel(-32, -48),
            east_position = util.by_pixel(-32, -48),
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/bhoddos-culture/a2.png",
                frame_count = 100,
                line_length = 20,
                width = 96,
                height = 384,
                animation_speed = 0.4
            }
        },
        {
            north_position = util.by_pixel(64, -48),
            west_position = util.by_pixel(64, -48),
            south_position = util.by_pixel(64, -48),
            east_position = util.by_pixel(64, -48),
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/bhoddos-culture/a3.png",
                frame_count = 100,
                line_length = 20,
                width = 96,
                height = 384,
                animation_speed = 0.4
            }
        },
        {
            north_position = util.by_pixel(160, -48),
            west_position = util.by_pixel(160, -48),
            south_position = util.by_pixel(160, -48),
            east_position = util.by_pixel(160, -48),
            animation = {
                filename = "__pyalienlifegraphics__/graphics/entity/bhoddos-culture/a4.png",
                frame_count = 100,
                line_length = 20,
                width = 96,
                height = 384,
                animation_speed = 0.4
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
            pipe_connections = {{flow_direction = "input", position = {1.0, -5.3}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {-1.0, -5.3}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {1.0, 5.3}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-1.0, 5.3}, direction = defines.direction.south}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/bhoddos-culture.ogg", volume = 2.0},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/bhoddos-culture.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
