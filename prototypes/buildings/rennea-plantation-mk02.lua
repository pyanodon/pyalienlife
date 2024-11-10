RECIPE {
    type = "recipe",
    name = "rennea-plantation-mk02",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "rennea-plantation-mk01", amount = 1},
        {type = "item", name = "engine-unit",            amount = 10},
        {type = "item", name = "treated-wood",           amount = 20},
        {type = "item", name = "niobium-pipe",           amount = 20},
        {type = "item", name = "advanced-circuit",       amount = 50},
        {type = "item", name = "lead-plate",             amount = 30},
        {type = "item", name = "storage-tank",           amount = 4},
    },
    results = {
        {type = "item", name = "rennea-plantation-mk02", amount = 1}
    }
}:add_unlock("botany-mk02")

ITEM {
    type = "item",
    name = "rennea-plantation-mk02",
    icon = "__pyalienlifegraphics__/graphics/icons/rennea-plantation-mk02.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-farm-buildings-mk02",
    order = "e",
    place_result = "rennea-plantation-mk02",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "rennea-plantation-mk02",
    icon = "__pyalienlifegraphics__/graphics/icons/rennea-plantation-mk02.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "rennea-plantation-mk02"},
    fast_replaceable_group = "rennea-plantation",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-6.2, -6.2}, {6.2, 6.2}},
    selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
    forced_symmetry = "diagonal-pos",
    module_slots = 60,
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
    crafting_categories = {"rennea"},
    crafting_speed = 0.2,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = -5
        },
    },
    energy_usage = "1000kW",
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
                    tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
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
                    tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
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
                    tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
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
                    tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
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
                    tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
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
            pipe_connections = {{flow_direction = "input", position = {3.0, -6.0}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {-3.0, -6.0}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {0.0, -6.0}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {2.0, 6.0}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-2.0, 6.0}, direction = defines.direction.south}}
        },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pycoalprocessinggraphics__/sounds/fawogae-plantation.ogg"},
        idle_sound = {filename = "__pycoalprocessinggraphics__/sounds/fawogae-plantation.ogg", volume = 0.3},
        apparent_volume = 1.2
    }
}
