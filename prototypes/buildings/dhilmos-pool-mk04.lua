local MODULE_SLOTS = 20

RECIPE {
    type = "recipe",
    name = "dhilmos-pool-mk04",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "metallic-glass",    amount = 20},
        {type = "item", name = "dhilmos-pool-mk03", amount = 1},
        {type = "item", name = "super-alloy",       amount = 100},
        {type = "item", name = "boron-carbide",     amount = 50},
        {type = "item", name = "control-unit",      amount = 10},
    },
    results = {
        {type = "item", name = "dhilmos-pool-mk04", amount = 1}
    }
}:add_unlock("water-animals-mk04")

ITEM {
    type = "item",
    name = "dhilmos-pool-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/dhilmos-pool-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-farm-buildings-mk04",
    order = "d",
    place_result = "dhilmos-pool-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "dhilmos-pool-mk04",
    icon = "__pyalienlifegraphics__/graphics/icons/dhilmos-pool-mk04.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "dhilmos-pool-mk04"},
    fast_replaceable_group = "dhilmos-pool",
    max_health = 50,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-5.2, -5.2}, {5.2, 5.2}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    forced_symmetry = "diagonal-pos",
    module_slots = MODULE_SLOTS,
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
    crafting_categories = {"dhilmos"},
    crafting_speed = py.farm_speed_derived(MODULE_SLOTS, "dhilmos-pool-mk01"),
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = -1
        },
    },
    energy_usage = "1000kW",
    graphics_set = {
        working_visualisations = {
            {
                north_position = {-4.5, 0.0},
                west_position = {-4.5, 0.0},
                south_position = {-4.5, 0.0},
                east_position = {-4.5, 0.0},
                animation = {
                    filename = "__pyalienlifegraphics__/graphics/entity/dhilmos-pool/a1.png",
                    frame_count = 150,
                    line_length = 30,
                    width = 64,
                    height = 352,
                    animation_speed = 0.3
                }
            },
            {
                north_position = {-2.5, 0.0},
                west_position = {-2.5, 0.0},
                south_position = {-2.5, 0.0},
                east_position = {-2.5, 0.0},
                animation = {
                    filename = "__pyalienlifegraphics__/graphics/entity/dhilmos-pool/a2.png",
                    frame_count = 150,
                    line_length = 30,
                    width = 64,
                    height = 352,
                    animation_speed = 0.3
                }
            },
            {
                north_position = {-0.5, 0.0},
                west_position = {-0.5, 0.0},
                south_position = {-0.5, 0.0},
                east_position = {-0.5, 0.0},
                animation = {
                    filename = "__pyalienlifegraphics__/graphics/entity/dhilmos-pool/a3.png",
                    frame_count = 150,
                    line_length = 30,
                    width = 64,
                    height = 352,
                    animation_speed = 0.3
                }
            },
            {
                north_position = {1.5, 0.0},
                west_position = {1.5, 0.0},
                south_position = {1.5, 0.0},
                east_position = {1.5, 0.0},
                animation = {
                    filename = "__pyalienlifegraphics__/graphics/entity/dhilmos-pool/a4.png",
                    frame_count = 150,
                    line_length = 30,
                    width = 64,
                    height = 352,
                    animation_speed = 0.3
                }
            },
            {
                north_position = {3.5, 0.0},
                west_position = {3.5, 0.0},
                south_position = {3.5, 0.0},
                east_position = {3.5, 0.0},
                animation = {
                    filename = "__pyalienlifegraphics__/graphics/entity/dhilmos-pool/a5.png",
                    frame_count = 150,
                    line_length = 30,
                    width = 64,
                    height = 352,
                    animation_speed = 0.3
                }
            },
        },
        animation = {
            layers = {
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/dhilmos-pool/off.png",
                    width = 352,
                    height = 384,
                    frame_count = 1,
                    shift = util.by_pixel(0, -16)
                },
                {
                    filename = "__pyalienlifegraphics__/graphics/entity/dhilmos-pool/off-mask.png",
                    width = 352,
                    height = 384,
                    frame_count = 1,
                    shift = util.by_pixel(0, -16),
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
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
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, {0.70, 0.0}, {-0.78, 0.0}),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {2.0, -5.0}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, {0.70, 0.0}, {-0.78, 0.0}),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {-2.0, -5.0}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, {0.70, 0.0}, {-0.78, 0.0}),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {2.0, 5.0}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, {0.70, 0.0}, {-0.78, 0.0}),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-2.0, 5.0}, direction = defines.direction.south}}
        },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/dhilmos-pool.ogg", volume = 1.2},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/dhilmos-pool.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
