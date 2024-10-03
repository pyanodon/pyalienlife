---WIP---
---REDO RECIPE---
RECIPE {
    type = "recipe",
    name = "space-rennea-plantation-mk01",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "soil", amount = 900},
        {type = "item", name = "pump", amount = 5},
        {type = "item", name = "engine-unit", amount = 5},
        {type = "item", name = "treated-wood", amount = 50},
        {type = "item", name = "pipe", amount = 30},
        {type = "item", name = "electronic-circuit", amount = 50},
        {type = "item", name = "tin-plate", amount = 50},
        {type = "item", name = "steel-plate", amount = 50},
        {type = "item", name = "storage-tank", amount = 4},
    },
    results = {
        {type = "item", name = "space-rennea-plantation-mk01", amount = 1}
    }
}:add_unlock("rennea")

ITEM {
    type = "item",
    name = "space-rennea-plantation-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/rennea-plantation-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk01",
    order = "e",
    place_result = "space-rennea-plantation-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "space-rennea-plantation-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/rennea-plantation-mk01.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "space-rennea-plantation-mk01"},
    fast_replaceable_group = "rennea-plantation",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-6.2, -6.2}, {6.2, 6.2}},
    selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
    match_animation_speed_to_activity = false,
    module_slots = 30,
    allowed_effects = {'speed', 'productivity', 'consumption', 'pollution'},
    crafting_categories = {"rennea"},
    crafting_speed = 0.1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = -5
        },
    },
    energy_usage = "450kW",
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/rennea-plantation/s1.png",
                    width = 448,
                    height = 96,
                    line_length = 4,
                    frame_count = 75,
                    animation_speed = 0.35,
                    shift = util.by_pixel(16, 160)
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/rennea-plantation/s1-mask.png",
                    width = 448,
                    height = 96,
                    line_length = 4,
                    frame_count = 75,
                    animation_speed = 0.35,
                    shift = util.by_pixel(16, 160),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/rennea-plantation/s2.png",
                    width = 448,
                    height = 96,
                    line_length = 4,
                    frame_count = 75,
                    animation_speed = 0.35,
                    shift = util.by_pixel(16, 64)
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/rennea-plantation/s2-mask.png",
                    width = 448,
                    height = 96,
                    line_length = 4,
                    frame_count = 75,
                    animation_speed = 0.35,
                    shift = util.by_pixel(16, 64),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/rennea-plantation/s3.png",
                    width = 448,
                    height = 96,
                    line_length = 4,
                    frame_count = 75,
                    animation_speed = 0.35,
                    shift = util.by_pixel(16, -32)
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/rennea-plantation/s3-mask.png",
                    width = 448,
                    height = 96,
                    line_length = 4,
                    frame_count = 75,
                    animation_speed = 0.35,
                    shift = util.by_pixel(16, -32),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/rennea-plantation/s4.png",
                    width = 448,
                    height = 96,
                    line_length = 4,
                    frame_count = 75,
                    animation_speed = 0.35,
                    shift = util.by_pixel(16, -128)
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/rennea-plantation/s4-mask.png",
                    width = 448,
                    height = 96,
                    line_length = 4,
                    frame_count = 75,
                    animation_speed = 0.35,
                    shift = util.by_pixel(16, -128),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/rennea-plantation/s5.png",
                    width = 448,
                    height = 96,
                    line_length = 4,
                    frame_count = 75,
                    animation_speed = 0.35,
                    shift = util.by_pixel(16, -224)
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/rennea-plantation/s5-mask.png",
                    width = 448,
                    height = 96,
                    line_length = 4,
                    frame_count = 75,
                    animation_speed = 0.35,
                    shift = util.by_pixel(16, -224),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
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
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {2.0, -6.2}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {-2.0, -6.2}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {2.0, 6.2}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-2.0, 6.2}, direction = defines.direction.south}}
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pycoalprocessinggraphics__/sounds/fawogae-plantation.ogg"},
        idle_sound = {filename = "__pycoalprocessinggraphics__/sounds/fawogae-plantation.ogg", volume = 0.3},
        apparent_volume = 1.2
    }
}
