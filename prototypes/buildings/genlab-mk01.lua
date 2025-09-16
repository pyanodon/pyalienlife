RECIPE {
    type = "recipe",
    name = "genlab-mk01",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "biofactory-mk01",    amount = 1},
        {type = "item", name = "plastic-bar",        amount = 20},
        {type = "item", name = "py-tank-15000",       amount = 2},
        {type = "item", name = "steel-plate",        amount = 15},
        {type = "item", name = "electronic-circuit", amount = 15},
        {type = "item", name = "glass",              amount = 50},
        {type = "item", name = "duralumin",          amount = 20},
        {type = "item", name = "titanium-plate",     amount = 40},
    },
    results = {
        {type = "item", name = "genlab-mk01", amount = 1}
    }
}:add_unlock("genetics-mk01")

ITEM {
    type = "item",
    name = "genlab-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/genlab-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk01",
    order = "a",
    place_result = "genlab-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "genlab-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/genlab-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "genlab-mk01"},
    fast_replaceable_group = "genlab",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.1, -3.1}, {3.1, 3.1}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    forced_symmetry = "diagonal-pos",
    module_slots = 1,
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
    crafting_categories = {"genlab"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 1
        },
    },
    energy_usage = "400kW",
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/genlab/base.png",
                    width = 256,
                    height = 32,
                    line_length = 8,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(16, 96)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/genlab/a1.png",
                    width = 128,
                    height = 288,
                    line_length = 16,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-48, -64)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/genlab/a1-mask.png",
                    width = 128,
                    height = 288,
                    line_length = 16,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(-48, -64),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/genlab/a2.png",
                    width = 128,
                    height = 288,
                    line_length = 16,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(80, -64)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/genlab/a2-mask.png",
                    width = 128,
                    height = 288,
                    line_length = 16,
                    frame_count = 100,
                    animation_speed = 0.4,
                    shift = util.by_pixel(80, -64),
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
            pipe_connections = {{flow_direction = "input", position = {0.0, -3.0}, direction = defines.direction.north}},
            secondary_draw_orders = {north = -1}
        },
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {-2.0, -3.0}, direction = defines.direction.north}},
            secondary_draw_orders = {north = -1}
        },
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {2.0, -3.0}, direction = defines.direction.north}},
            secondary_draw_orders = {north = -1}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {{flow_direction = "output", position = {0.0, 3.0}, direction = defines.direction.south}},
            secondary_draw_orders = {north = -1}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {{flow_direction = "output", position = {-2.0, 3.0}, direction = defines.direction.south}},
            secondary_draw_orders = {north = -1}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {{flow_direction = "output", position = {2.0, 3.0}, direction = defines.direction.south}},
            secondary_draw_orders = {north = -1}
        },
    },

    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/genlab.ogg", volume = 1.5},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/genlab.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
