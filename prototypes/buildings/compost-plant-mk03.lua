RECIPE {
    type = "recipe",
    name = "compost-plant-mk03",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"compost-plant-mk02", 1},
        {"super-alloy", 40},
        {"py-heat-exchanger", 1},
        {"stainless-steel", 30},
        {"processing-unit", 30},
        {"electric-engine-unit", 20},
        {"ticocr-alloy", 20},
    },
    results = {
        {"compost-plant-mk03", 1}
    }
}:add_unlock("biotech-machines-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 30})

ITEM {
    type = "item",
    name = "compost-plant-mk03",
    icon = "__pyalienlifegraphics__/graphics/icons/compost-plant-mk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk03",
    order = "d",
    place_result = "compost-plant-mk03",
    stack_size = 10
}

ENTITY {
    type = "furnace",
    name = "compost-plant-mk03",
    icon = "__pyalienlifegraphics__/graphics/icons/compost-plant-mk03.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "compost-plant-mk03"},
    fast_replaceable_group = "compost-plant",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.2, -5.2}, {5.2, 5.2}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 3
    },
    allowed_effects = {"speed","productivity",'consumption','pollution'},
    crafting_categories = {"compost"},
    crafting_speed = 3,
    source_inventory_size = 1,
    result_inventory_size = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 1,
    },
    energy_usage = "600kW",
    animation = {
        layers = {
        {
        filename = "__pyalienlifegraphics2__/graphics/entity/compost-plant/bottom.png",
        width = 384,
        height = 32,
        frame_count = 1,
        line_length = 1,
        shift = util.by_pixel(16, 160)
        },
        {
            filename = "__pyalienlifegraphics2__/graphics/entity/compost-plant/off.png",
            width = 384,
            height = 512,
            frame_count = 1,
            line_length = 1,
            shift = util.by_pixel(16, -112)
        },
        {
            filename = "__pyalienlifegraphics2__/graphics/entity/compost-plant/off-mask.png",
            width = 384,
            height = 512,
            frame_count = 1,
            line_length = 1,
            shift = util.by_pixel(16, -112),
            tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
        },
    },
},
working_visualisations = {
    {
        north_position = util.by_pixel(-144, -112),
        west_position = util.by_pixel(-144, -112),
        south_position = util.by_pixel(-144, -112),
        east_position = util.by_pixel(-144, -112),
        animation = {
            filename = "__pyalienlifegraphics2__/graphics/entity/compost-plant/a1.png",
            frame_count = 100,
            line_length = 32,
            width = 64,
            height = 512,
            animation_speed = 0.4
        }
    },
    {
        north_position = util.by_pixel(-144, -112),
        west_position = util.by_pixel(-144, -112),
        south_position = util.by_pixel(-144, -112),
        east_position = util.by_pixel(-144, -112),
        animation = {
            filename = "__pyalienlifegraphics2__/graphics/entity/compost-plant/a1-mask.png",
            frame_count = 100,
            line_length = 32,
            width = 64,
            height = 512,
            animation_speed = 0.4,
            tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
        }
    },
    {
        north_position = util.by_pixel(-80, -112),
        west_position = util.by_pixel(0, -0),
        south_position = util.by_pixel(0, -0),
        east_position = util.by_pixel(0, -0),
        animation = {
            filename = "__pyalienlifegraphics2__/graphics/entity/compost-plant/a2.png",
            frame_count = 100,
            line_length = 32,
            width = 64,
            height = 512,
            animation_speed = 0.4
        }
    },
    {
        north_position = util.by_pixel(-80, -112),
        west_position = util.by_pixel(-80, -112),
        south_position = util.by_pixel(-80, -112),
        east_position = util.by_pixel(-80, -112),
        animation = {
            filename = "__pyalienlifegraphics2__/graphics/entity/compost-plant/a2-mask.png",
            frame_count = 100,
            line_length = 32,
            width = 64,
            height = 512,
            animation_speed = 0.4,
            tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
        }
    },
    {
        north_position = util.by_pixel(-16, -112),
        west_position = util.by_pixel(-16, -112),
        south_position = util.by_pixel(-16, -112),
        east_position = util.by_pixel(-16, -112),
        animation = {
            filename = "__pyalienlifegraphics2__/graphics/entity/compost-plant/a3.png",
            frame_count = 100,
            line_length = 32,
            width = 64,
            height = 512,
            animation_speed = 0.4
        }
    },
    {
        north_position = util.by_pixel(-16, -112),
        west_position = util.by_pixel(-16, -112),
        south_position = util.by_pixel(-16, -112),
        east_position = util.by_pixel(-16, -112),
        animation = {
            filename = "__pyalienlifegraphics2__/graphics/entity/compost-plant/a3-mask.png",
            frame_count = 100,
            line_length = 32,
            width = 64,
            height = 512,
            animation_speed = 0.4,
            tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
        }
    },
    {
        north_position = util.by_pixel(48, -112),
        west_position = util.by_pixel(48, -112),
        south_position = util.by_pixel(48, -112),
        east_position = util.by_pixel(48, -112),
        animation = {
            filename = "__pyalienlifegraphics2__/graphics/entity/compost-plant/a4.png",
            frame_count = 100,
            line_length = 32,
            width = 64,
            height = 512,
            animation_speed = 0.4
        }
    },
    {
        north_position = util.by_pixel(48, -112),
        west_position = util.by_pixel(48, -112),
        south_position = util.by_pixel(48, -112),
        east_position = util.by_pixel(48, -112),
        animation = {
            filename = "__pyalienlifegraphics2__/graphics/entity/compost-plant/a4-mask.png",
            frame_count = 100,
            line_length = 32,
            width = 64,
            height = 512,
            animation_speed = 0.4,
            tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
        }
    },
    {
        north_position = util.by_pixel(112, -112),
        west_position = util.by_pixel(112, -112),
        south_position = util.by_pixel(112, -112),
        east_position = util.by_pixel(112, -112),
        animation = {
            filename = "__pyalienlifegraphics2__/graphics/entity/compost-plant/a5.png",
            frame_count = 100,
            line_length = 32,
            width = 64,
            height = 512,
            animation_speed = 0.4
        }
    },
    {
        north_position = util.by_pixel(112, -112),
        west_position = util.by_pixel(112, -112),
        south_position = util.by_pixel(112, -112),
        east_position = util.by_pixel(112, -112),
        animation = {
            filename = "__pyalienlifegraphics2__/graphics/entity/compost-plant/a5-mask.png",
            frame_count = 100,
            line_length = 32,
            width = 64,
            height = 512,
            animation_speed = 0.4,
            tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
        }
    },
},
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.0, -6.0}}},
            secondary_draw_orders = { north = -1 }
        },
        --[[
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-2.0, -6.0}}},
            secondary_draw_orders = { north = -1 }
        },
        ]]
        --off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics3__/sounds/compost-plant.ogg", volume = 1.2},
        idle_sound = {filename = "__pyalienlifegraphics3__/sounds/compost-plant.ogg", volume = 0.3},
        apparent_volume = 0.45
    }
}
