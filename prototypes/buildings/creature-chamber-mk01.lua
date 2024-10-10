RECIPE {
    type = "recipe",
    name = "creature-chamber-mk01",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "genlab-mk01",        amount = 1},
        {type = "item", name = "plastic-bar",        amount = 20},
        {type = "item", name = "duralumin",          amount = 30},
        {type = "item", name = "steel-plate",        amount = 40},
        {type = "item", name = "lead-plate",         amount = 15},
        {type = "item", name = "electronic-circuit", amount = 30},
        {type = "item", name = "glass",              amount = 50},
        {type = "item", name = "titanium-plate",     amount = 40},
    },
    results = {
        {type = "item", name = "creature-chamber-mk01", amount = 1}
    }
}:add_unlock("biotech-machines-mk01")

ITEM {
    type = "item",
    name = "creature-chamber-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/creature-chamber-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk01",
    order = "a",
    place_result = "creature-chamber-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "creature-chamber-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/creature-chamber-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "creature-chamber-mk01"},
    fast_replaceable_group = "creature-chamber",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.1, -5.1}, {5.1, 5.1}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    match_animation_speed_to_activity = false,
    module_slots = 1,
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    crafting_categories = {"creature-chamber"},
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
                    filename = "__pyalienlifegraphics__/graphics/entity/creature-chamber/base.png",
                    width = 384,
                    height = 32,
                    line_length = 5,
                    frame_count = 80,
                    animation_speed = 0.3,
                    shift = util.by_pixel(16, 160)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/creature-chamber/a1.png",
                    width = 128,
                    height = 320,
                    line_length = 16,
                    frame_count = 80,
                    animation_speed = 0.3,
                    shift = util.by_pixel(-112, -16)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/creature-chamber/a1-mask.png",
                    width = 128,
                    height = 320,
                    line_length = 16,
                    frame_count = 80,
                    animation_speed = 0.3,
                    shift = util.by_pixel(-112, -16),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/creature-chamber/a2.png",
                    width = 128,
                    height = 320,
                    line_length = 16,
                    frame_count = 80,
                    animation_speed = 0.3,
                    shift = util.by_pixel(16, -16)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/creature-chamber/a2-mask.png",
                    width = 128,
                    height = 320,
                    line_length = 16,
                    frame_count = 80,
                    animation_speed = 0.3,
                    shift = util.by_pixel(16, -16),
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/creature-chamber/a3.png",
                    width = 128,
                    height = 320,
                    line_length = 16,
                    frame_count = 80,
                    animation_speed = 0.3,
                    shift = util.by_pixel(144, -16)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/creature-chamber/a3-mask.png",
                    width = 128,
                    height = 320,
                    line_length = 16,
                    frame_count = 80,
                    animation_speed = 0.3,
                    shift = util.by_pixel(144, -16),
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
            pipe_connections = {{flow_direction = "input", position = {0.0, -5.0}, direction = defines.direction.north}},
            secondary_draw_orders = {north = -1}
        },
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {-2.0, -5.0}, direction = defines.direction.north}},
            secondary_draw_orders = {north = -1}
        },
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {2.0, -5.0}, direction = defines.direction.north}},
            secondary_draw_orders = {north = -1}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {{flow_direction = "output", position = {0.0, 5.0}, direction = defines.direction.south}},
            secondary_draw_orders = {north = -1}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {{flow_direction = "output", position = {-2.0, 5.0}, direction = defines.direction.south}},
            secondary_draw_orders = {north = -1}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {{flow_direction = "output", position = {2.0, 5.0}, direction = defines.direction.south}},
            secondary_draw_orders = {north = -1}
        },
    },

    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/creature-chamber.ogg", volume = 0.7},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/creature-chamber.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
