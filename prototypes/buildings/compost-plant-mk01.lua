RECIPE {
    type = "recipe",
    name = "compost-plant-mk01",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "titanium-plate",     amount = 80},
        {type = "item", name = "steam-engine",       amount = 10},
        {type = "item", name = "steel-plate",        amount = 100},
        {type = "item", name = "duralumin",          amount = 30},
        {type = "item", name = "electronic-circuit", amount = 40},
        {type = "item", name = "iron-gear-wheel",    amount = 50},
    },
    results = {
        {type = "item", name = "compost-plant-mk01", amount = 1}
    }
}:add_unlock("compost")

ITEM {
    type = "item",
    name = "compost-plant-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/compost-plant-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-mk01",
    order = "d",
    place_result = "compost-plant-mk01",
    stack_size = 10
}

ENTITY {
    type = "furnace",
    name = "compost-plant-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/compost-plant-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "compost-plant-mk01"},
    fast_replaceable_group = "compost-plant",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.2, -5.2}, {5.2, 5.2}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    match_animation_speed_to_activity = false,
    module_slots = 1,
    allowed_effects = {"speed", "productivity", "consumption"},
    crafting_categories = {"compost"},
    crafting_speed = 1,
    source_inventory_size = 1,
    result_inventory_size = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 1
        },
    },
    energy_usage = "500kW",
    graphics_set = {
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
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                },
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
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            }
        },
        {
            north_position = util.by_pixel(-80, -112),
            west_position = util.by_pixel(-80, -112),
            south_position = util.by_pixel(-80, -112),
            east_position = util.by_pixel(-80, -112),
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
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
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
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
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
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
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
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
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
            pipe_connections = {{flow_direction = "input", position = {0.0, -5.0}, direction = defines.direction.north}},
            secondary_draw_orders = {north = -1}
        },
        --[[
    {
        production_type = "input",
        pipe_covers = py.pipe_covers(false, true, true, true),
        pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
        volume = 1000,
        base_level = -1,
        pipe_connections = {{flow_direction = "input", position = {-2.0, -5.0}, direction = defines.direction.north}},
        secondary_draw_orders = { north = -1 }
    },
    ]]
        --off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics3__/sounds/compost-plant.ogg", volume = 1.2},
        idle_sound = {filename = "__pyalienlifegraphics3__/sounds/compost-plant.ogg", volume = 0.3},
        apparent_volume = 0.45
    }
}
