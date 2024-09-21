local MODULE_SLOTS = 12

RECIPE {
    type = "recipe",
    name = "yaedols-culture-mk04",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "py-heat-exchanger", amount = 1},
        {type = "item", name = "nenbit-matrix", amount = 50},
        {type = "item", name = "super-steel", amount = 100},
        {type = "item", name = "control-unit", amount = 10},
        {type = "item", name = "yaedols-culture-mk03", amount = 1},
        {type = "item", name = "metallic-glass", amount = 50},
        {type = "item", name = "science-coating", amount = 20},
    },
    results = {
        {type = "item", name = "yaedols-culture-mk04", amount = 1}
    }
}:add_unlock("mycology-mk05")

ITEM {
    type = "item",
    name = "yaedols-culture-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/yaedols-culture-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-farm-buildings-mk04",
    order = "b",
    place_result = "yaedols-culture-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "yaedols-culture-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/yaedols-culture-mk04.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "yaedols-culture-mk04"},
    fast_replaceable_group = "yaedols-culture",
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.3, -5.3}, {5.3, 5.3}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    match_animation_speed_to_activity = false,
    module_slots = MODULE_SLOTS,
    allowed_effects = {'speed', 'productivity', 'consumption', 'pollution'},
    crafting_categories = {"yaedols"},
    crafting_speed = py.farm_speed_derived(MODULE_SLOTS, "yaedols-culture-mk01"),
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 3
        },
    },
    energy_usage = "900kW",
    graphics_set = {
        working_visualisations = {
            {
                north_position = util.by_pixel(-144, -16),
                west_position = util.by_pixel(-144, -16),
                south_position = util.by_pixel(-144, -16),
                east_position = util.by_pixel(-144, -16),
                animation = {
                    filename = "__pyalienlifegraphics3__/graphics/entity/yaedols-culture/a1.png",
                    frame_count = 150,
                    line_length = 30,
                    width = 64,
                    height = 384,
                    animation_speed = 0.5
                }
            },
            {
                north_position = util.by_pixel(-80, -16),
                west_position = util.by_pixel(-80, -16),
                south_position = util.by_pixel(-80, -16),
                east_position = util.by_pixel(-80, -16),
                animation = {
                    filename = "__pyalienlifegraphics3__/graphics/entity/yaedols-culture/a2.png",
                    frame_count = 150,
                    line_length = 30,
                    width = 64,
                    height = 384,
                    animation_speed = 0.5
                }
            },
            {
                north_position = util.by_pixel(-16, -16),
                west_position = util.by_pixel(-16, -16),
                south_position = util.by_pixel(-16, -16),
                east_position = util.by_pixel(-16, -16),
                animation = {
                    filename = "__pyalienlifegraphics3__/graphics/entity/yaedols-culture/a3.png",
                    frame_count = 150,
                    line_length = 30,
                    width = 64,
                    height = 384,
                    animation_speed = 0.5
                }
            },
            {
                north_position = util.by_pixel(48, -16),
                west_position = util.by_pixel(48, -16),
                south_position = util.by_pixel(48, -16),
                east_position = util.by_pixel(48, -16),
                animation = {
                    filename = "__pyalienlifegraphics3__/graphics/entity/yaedols-culture/a4.png",
                    frame_count = 150,
                    line_length = 30,
                    width = 64,
                    height = 384,
                    animation_speed = 0.5
                }
            },
            {
                north_position = util.by_pixel(112, -16),
                west_position = util.by_pixel(112, -16),
                south_position = util.by_pixel(112, -16),
                east_position = util.by_pixel(112, -16),
                animation = {
                    filename = "__pyalienlifegraphics3__/graphics/entity/yaedols-culture/a5.png",
                    frame_count = 150,
                    line_length = 30,
                    width = 64,
                    height = 384,
                    animation_speed = 0.5
                }
            },
            {
                north_position = util.by_pixel(160, -16),
                west_position = util.by_pixel(160, -16),
                south_position = util.by_pixel(160, -16),
                east_position = util.by_pixel(160, -16),
                animation = {
                    filename = "__pyalienlifegraphics3__/graphics/entity/yaedols-culture/a6.png",
                    frame_count = 150,
                    line_length = 30,
                    width = 32,
                    height = 384,
                    animation_speed = 0.5
                }
            },
        },
        animation = {
            layers = {
            {
            filename = "__pyalienlifegraphics3__/graphics/entity/yaedols-culture/off.png",
            width = 352,
            height = 384,
            frame_count = 1,
            line_length = 1,
            shift = util.by_pixel(0, -16)
            },
            {
                filename = "__pyalienlifegraphics3__/graphics/entity/yaedols-culture/off-mask.png",
                width = 351,
                height = 384,
                frame_count = 1,
                line_length = 1,
                shift = util.by_pixel(0, -16),
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
                },
          },
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
            pipe_connections = {{flow_direction = "input", position = {1.0, -5.3}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {-1.0, -5.3}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {1.0, 5.3}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-1.0, 5.3}, direction = defines.direction.south}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/yaedols-culture.ogg", volume = 1.2},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/yaedols-culture.ogg", volume = 0.3},
        apparent_volume = 0.45
    }
}
