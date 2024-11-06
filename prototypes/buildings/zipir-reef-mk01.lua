local MODULE_SLOTS = 10
local FULL_CRAFTING_SPEED = 1 -- crafting speed when full of mk01 modules

RECIPE {
    type = "recipe",
    name = "zipir-reef-mk01",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "spore-collector-mk01",   amount = 1},
        {type = "item", name = "automated-factory-mk01", amount = 2},
        {type = "item", name = "steel-plate",            amount = 100},
        {type = "item", name = "electronic-circuit",     amount = 20},
        {type = "item", name = "pipe",                   amount = 15}
    },
    results = {
        {type = "item", name = "zipir-reef-mk01", amount = 1}
    }
}:add_unlock("zipir")

ITEM {
    type = "item",
    name = "zipir-reef-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/zipir-reef-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-farm-buildings-mk01",
    order = "d",
    place_result = "zipir-reef-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "zipir-reef-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/zipir-reef-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "zipir-reef-mk01"},
    fast_replaceable_group = "zipir-reef",
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-4.2, -4.2}, {4.2, 4.2}},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
    forced_symmetry = "diagonal-pos",
    match_animation_speed_to_activity = false,
    module_slots = MODULE_SLOTS,
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
    crafting_categories = {"zipir"},
    crafting_speed = py.farm_speed(MODULE_SLOTS, FULL_CRAFTING_SPEED),
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 2
        },
    },
    energy_usage = "600kW",
    graphics_set = {
        working_visualisations = {
            {
                north_position = util.by_pixel(-112.5, -50),
                west_position = util.by_pixel(-112.5, -50),
                south_position = util.by_pixel(-112.5, -50),
                east_position = util.by_pixel(-112.5, -50),
                animation = {
                    filename = "__pyalienlifegraphics3__/graphics/entity/zipir/a.png",
                    frame_count = 255,
                    line_length = 32,
                    width = 64,
                    height = 192,
                    animation_speed = 0.5,
                    shift = util.by_pixel(0, 0)
                }
            },
            {
                north_position = util.by_pixel(-112.5, -50),
                west_position = util.by_pixel(-112.5, -50),
                south_position = util.by_pixel(-112.5, -50),
                east_position = util.by_pixel(-112.5, -50),
                animation = {
                    filename = "__pyalienlifegraphics3__/graphics/entity/zipir/b.png",
                    frame_count = 255,
                    line_length = 32,
                    width = 64,
                    height = 192,
                    animation_speed = 0.5,
                    shift = util.by_pixel(64, 0)
                }
            },
            {
                north_position = util.by_pixel(-112.5, -50),
                west_position = util.by_pixel(-112.5, -50),
                south_position = util.by_pixel(-112.5, -50),
                east_position = util.by_pixel(-112.5, -50),
                animation = {
                    filename = "__pyalienlifegraphics3__/graphics/entity/zipir/c.png",
                    frame_count = 255,
                    line_length = 32,
                    width = 64,
                    height = 192,
                    animation_speed = 0.5,
                    shift = util.by_pixel(128, 0)
                }
            },
            {
                north_position = util.by_pixel(-112.5, -50),
                west_position = util.by_pixel(-112.5, -50),
                south_position = util.by_pixel(-112.5, -50),
                east_position = util.by_pixel(-112.5, -50),
                animation = {
                    filename = "__pyalienlifegraphics3__/graphics/entity/zipir/d.png",
                    frame_count = 255,
                    line_length = 32,
                    width = 64,
                    height = 192,
                    animation_speed = 0.5,
                    shift = util.by_pixel(192, 0)
                }
            },
            {
                north_position = util.by_pixel(-112.5, -50),
                west_position = util.by_pixel(-112.5, -50),
                south_position = util.by_pixel(-112.5, -50),
                east_position = util.by_pixel(-112.5, -50),
                animation = {
                    filename = "__pyalienlifegraphics3__/graphics/entity/zipir/e.png",
                    frame_count = 255,
                    line_length = 32,
                    width = 13,
                    height = 192,
                    animation_speed = 0.5,
                    shift = util.by_pixel(230, 0)
                }
            },
        },
        animation = {
            layers = {
                {
                    filename = "__pyalienlifegraphics3__/graphics/entity/zipir/off.png",
                    width = 305,
                    height = 290,
                    frame_count = 1,
                    line_length = 1,
                    shift = util.by_pixel(8, -1),
                },
                {
                    filename = "__pyalienlifegraphics3__/graphics/entity/zipir/off-mask.png",
                    width = 305,
                    height = 290,
                    frame_count = 1,
                    line_length = 1,
                    shift = util.by_pixel(8, -1),
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
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {0.0, 4.0}, direction = defines.direction.south}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {4.0, 0.0}, direction = defines.direction.east}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {0.0, -4.0}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-4.0, 0.0}, direction = defines.direction.west}}
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/zipir.ogg", volume = 1.5},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/zipir.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
