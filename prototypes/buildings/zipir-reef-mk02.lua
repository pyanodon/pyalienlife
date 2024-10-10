local MODULE_SLOTS = 20

RECIPE {
    type = "recipe",
    name = "zipir-reef-mk02",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "zipir-reef-mk01",        amount = 1},
        {type = "item", name = "automated-factory-mk02", amount = 2},
        {type = "item", name = "titanium-plate",         amount = 100},
        {type = "item", name = "advanced-circuit",       amount = 20},
        {type = "item", name = "niobium-pipe",           amount = 35},
        {type = "item", name = "latex",                  amount = 30},
        {type = "item", name = "engine-unit",            amount = 4},
        {type = "item", name = "neuroprocessor",         amount = 20},
    },
    results = {
        {type = "item", name = "zipir-reef-mk02", amount = 1}
    }
}:add_unlock("water-animals-mk02")

ITEM {
    type = "item",
    name = "zipir-reef-mk02",
    icon = "__pyalienlifegraphics__/graphics/icons/zipir-reef-mk02.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-farm-buildings-mk02",
    order = "d",
    place_result = "zipir-reef-mk02",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "zipir-reef-mk02",
    icon = "__pyalienlifegraphics__/graphics/icons/zipir-reef-mk02.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "zipir-reef-mk02"},
    fast_replaceable_group = "zipir-reef",
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-4.2, -4.2}, {4.2, 4.2}},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
    match_animation_speed_to_activity = false,
    module_slots = MODULE_SLOTS,
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    crafting_categories = {"zipir"},
    crafting_speed = py.farm_speed_derived(MODULE_SLOTS, "zipir-reef-mk01"),
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 2
        },
    },
    energy_usage = "800kW",
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
