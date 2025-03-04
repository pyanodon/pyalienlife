RECIPE {
    type = "recipe",
    name = "pyphoon-bay",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "steel-plate",        amount = 50},
        {type = "item", name = "sand",               amount = 100},
        {type = "item", name = "iron-plate",         amount = 50},
        {type = "item", name = "duralumin",          amount = 50},
        {type = "item", name = "wood",               amount = 50},
        {type = "item", name = "electronic-circuit", amount = 10},
        {type = "item", name = "iron-gear-wheel",    amount = 50},
    },
    results = {
        {type = "item", name = "pyphoon-bay", amount = 1}
    }
}:add_unlock("domestication")

ITEM {
    type = "item",
    name = "pyphoon-bay",
    icon = "__pyalienlifegraphics__/graphics/icons/pyphoon-bay.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-others",
    order = "z",
    place_result = "pyphoon-bay",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "pyphoon-bay",
    icon = "__pyalienlifegraphics__/graphics/icons/pyphoon-bay.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "pyphoon-bay"},
    fast_replaceable_group = "pyphoon-bay",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-4.8, -4.8}, {4.8, 4.8}},
    selection_box = {{-5.0, -5.0}, {5.0, 5.0}},
    forced_symmetry = "diagonal-pos",
    module_slots = 4,
    allowed_effects = {"speed", "consumption"},
    crafting_categories = {"bay"},
    crafting_speed = 2.5,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = -0.1
        },
    },
    energy_usage = "100kW",
    graphics_set = {
        working_visualisations = {

            {
                north_position = util.by_pixel(-128, -16),
                west_position = util.by_pixel(-128, -16),
                south_position = util.by_pixel(-128, -16),
                east_position = util.by_pixel(-128, -16),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/pyphoon-bay/a1.png",
                    frame_count = 150,
                    line_length = 32,
                    width = 64,
                    height = 349,
                    animation_speed = 0.5
                }
            },
            {
                north_position = util.by_pixel(-64, -16),
                west_position = util.by_pixel(-64, -16),
                south_position = util.by_pixel(-64, -16),
                east_position = util.by_pixel(-64, -16),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/pyphoon-bay/a2.png",
                    frame_count = 150,
                    line_length = 32,
                    width = 64,
                    height = 349,
                    animation_speed = 0.5
                }
            },
            {
                north_position = util.by_pixel(-0, -16),
                west_position = util.by_pixel(-0, -16),
                south_position = util.by_pixel(-0, -16),
                east_position = util.by_pixel(-0, -16),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/pyphoon-bay/a3.png",
                    frame_count = 150,
                    line_length = 32,
                    width = 64,
                    height = 349,
                    animation_speed = 0.5
                }
            },
            {
                north_position = util.by_pixel(64, -16),
                west_position = util.by_pixel(64, -16),
                south_position = util.by_pixel(64, -16),
                east_position = util.by_pixel(64, -16),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/pyphoon-bay/a4.png",
                    frame_count = 150,
                    line_length = 32,
                    width = 64,
                    height = 349,
                    animation_speed = 0.5
                }
            },
            {
                north_position = util.by_pixel(128, -16),
                west_position = util.by_pixel(128, -16),
                south_position = util.by_pixel(128, -16),
                east_position = util.by_pixel(128, -16),
                animation = {
                    filename = "__pyalienlifegraphics2__/graphics/entity/pyphoon-bay/a5.png",
                    frame_count = 150,
                    line_length = 32,
                    width = 64,
                    height = 349,
                    animation_speed = 0.5
                }
            },
        },
        animation = {
            layers = {
                --off
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/pyphoon-bay/off.png",
                    width = 320,
                    height = 349,
                    frame_count = 1,
                    shift = util.by_pixel(-0, -16)
                },
            }
        },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/pyphoon-bay.ogg", volume = 2.5},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/pyphoon-bay.ogg", volume = 0.3},
        apparent_volume = 2.5
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    fluid_boxes = {
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {
                {flow_direction = "output", position = {1.5, -4.5}, direction = defines.direction.north}
            },
            secondary_draw_orders = {north = -1}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            pipe_connections = {
                {flow_direction = "output", position = {-1.5, -4.5}, direction = defines.direction.north}
            },
            secondary_draw_orders = {north = -1}
        },
    },
}
