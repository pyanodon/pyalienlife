---WIP---
---REDO RECIPE---
RECIPE {
    type = "recipe",
    name = "space-seaweed-crop-mk01",
    energy_required = 1,
    enabled = true,
    ingredients = {
        {type = "item", name = "stone-brick",        amount = 30},
        {type = "item", name = "limestone",          amount = 25},
        {type = "item", name = "pipe",               amount = 15},
        {type = "item", name = "electronic-circuit", amount = 10},
        {type = "item", name = "tin-plate",          amount = 50},
    },
    results = {
        {type = "item", name = "space-seaweed-crop-mk01", amount = 1}
    }
}

ITEM {
    type = "item",
    name = "space-seaweed-crop-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/seaweed-crop-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk01",
    order = "e",
    place_result = "space-seaweed-crop-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "space-seaweed-crop-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/seaweed-crop-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "space-seaweed-crop-mk01"},
    fast_replaceable_group = "seaweed-crop",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-6.2, -6.2}, {6.2, 6.2}},
    selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
    module_slots = 10,
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
    crafting_categories = {"seaweed"},
    crafting_speed = 0.1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = -35
        },
    },
    energy_usage = "450kW",
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/seaweed-crop/base.png",
                    width = 416,
                    height = 50,
                    line_length = 4,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(0, 183)
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/seaweed-crop/base-mask.png",
                    width = 416,
                    height = 50,
                    line_length = 4,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(0, 183),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/seaweed-crop/a1.png",
                    width = 64,
                    height = 384,
                    line_length = 25,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-176, -34)
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/seaweed-crop/a1-mask.png",
                    width = 64,
                    height = 384,
                    line_length = 25,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-176, -34),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/seaweed-crop/a2.png",
                    width = 64,
                    height = 384,
                    line_length = 25,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-112, -34)
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/seaweed-crop/a2-mask.png",
                    width = 64,
                    height = 384,
                    line_length = 25,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-112, -34),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/seaweed-crop/a3.png",
                    width = 64,
                    height = 384,
                    line_length = 25,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-48, -34)
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/seaweed-crop/a3-mask.png",
                    width = 64,
                    height = 384,
                    line_length = 25,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-48, -34),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/seaweed-crop/a4.png",
                    width = 64,
                    height = 384,
                    line_length = 25,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(16, -34)
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/seaweed-crop/a4-mask.png",
                    width = 64,
                    height = 384,
                    line_length = 25,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(16, -34),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/seaweed-crop/a5.png",
                    width = 64,
                    height = 384,
                    line_length = 25,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(80, -34)
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/seaweed-crop/a5-mask.png",
                    width = 64,
                    height = 384,
                    line_length = 25,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(80, -34),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/seaweed-crop/a6.png",
                    width = 64,
                    height = 384,
                    line_length = 25,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(144, -34)
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/seaweed-crop/a6-mask.png",
                    width = 64,
                    height = 384,
                    line_length = 25,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(144, -34),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/seaweed-crop/a7.png",
                    width = 32,
                    height = 384,
                    line_length = 25,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(192, -34)
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/seaweed-crop/a7-mask.png",
                    width = 32,
                    height = 384,
                    line_length = 25,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(192, -34),
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
            pipe_connections = {{flow_direction = "input", position = {2.0, -6.0}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {-2.0, -6.0}, direction = defines.direction.north}}
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
        sound = {filename = "__pyalienlifegraphics__/sounds/seaweed-crop.ogg", volume = 1.5},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/seaweed-crop.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
