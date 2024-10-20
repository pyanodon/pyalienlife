RECIPE {
    type = "recipe",
    name = "bio-reactor-mk01",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "mixer-mk01",    amount = 1},
        {type = "item", name = "tailings-pond", amount = 1},
        {type = "item", name = "steel-plate",   amount = 40},
        --{type = "item", name = "glass", amount = 35}
    },
    results = {
        {type = "item", name = "bio-reactor-mk01", amount = 1}
    }
}:add_unlock("cottongut-science-mk01")

RECIPE {
    type = "recipe",
    name = "bio-reactor-mk02",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "bio-reactor-mk01", amount = 1},
        {type = "item", name = "steel-plate",      amount = 50},
        {type = "item", name = "glass",            amount = 50},
        {type = "item", name = "advanced-circuit", amount = 10},
        {type = "item", name = "titanium-plate",   amount = 20},
        {type = "item", name = "latex",            amount = 30},
        {type = "item", name = "engine-unit",      amount = 5},
        {type = "item", name = "neuroprocessor",   amount = 20},
    },
    results = {
        {type = "item", name = "bio-reactor-mk02", amount = 1}
    }
}:add_unlock("biotech-machines-mk02")

RECIPE {
    type = "recipe",
    name = "bio-reactor-mk03",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "bio-reactor-mk02",     amount = 1},
        {type = "item", name = "nbti-alloy",           amount = 20},
        {type = "item", name = "super-alloy",          amount = 30},
        {type = "item", name = "stainless-steel",      amount = 50},
        {type = "item", name = "electric-engine-unit", amount = 15},
        {type = "item", name = "processing-unit",      amount = 30},
        {type = "item", name = "ticocr-alloy",         amount = 20},
    },
    results = {
        {type = "item", name = "bio-reactor-mk03", amount = 1}
    }
}:add_unlock("biotech-machines-mk03"):add_ingredient {type = "item", name = "small-parts-03", amount = 30}

RECIPE {
    type = "recipe",
    name = "bio-reactor-mk04",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "bio-reactor-mk03", amount = 1},
        {type = "item", name = "kevlar",           amount = 50},
        {type = "item", name = "super-alloy",      amount = 30},
        {type = "item", name = "super-steel",      amount = 60},
        {type = "item", name = "control-unit",     amount = 10},
        {type = "item", name = "blanket",          amount = 1},
    },
    results = {
        {type = "item", name = "bio-reactor-mk04", amount = 1}
    }
}:add_unlock("biotech-machines-mk04")

for i = 1, 4 do
    local name = "bio-reactor-mk0" .. i
    local icon = "__pyalienlifegraphics__/graphics/icons/" .. name .. ".png"
    local icon_size = 64

    ITEM {
        type = "item",
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {},
        subgroup = "py-alienlife-buildings-mk0" .. i,
        order = "a",
        place_result = name,
        stack_size = 10
    }

    ENTITY {
        type = "assembling-machine",
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.5, result = name},
        fast_replaceable_group = "bio-reactor",
        max_health = 400 * i,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
        selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
        match_animation_speed_to_activity = false,
        module_slots = i,
        allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
        allowed_module_categories = {"speed", "productivity", "efficiency", "bio-reactor"},
        crafting_categories = {"bio-reactor"},
        crafting_speed = i,
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = {
                pollution = 2 * i
            },
        },
        energy_usage = (400 * i) .. "kW",
        graphics_set = {
            working_visualisations = {
                {
                    north_position = {0.312, -0.218},
                    west_position = {0.312, -0.218},
                    south_position = {0.312, -0.218},
                    east_position = {0.312, -0.218},
                    animation = {
                        filename = "__pyalienlifegraphics__/graphics/entity/bio-reactor/on.png",
                        frame_count = 50,
                        width = 246,
                        height = 236,
                        line_length = 8,
                        animation_speed = 0.3,
                        priority = "medium"
                    }
                },
                {
                    north_position = {0.312, -0.218},
                    west_position = {0.312, -0.218},
                    south_position = {0.312, -0.218},
                    east_position = {0.312, -0.218},
                    animation = {
                        filename = "__pyalienlifegraphics__/graphics/entity/bio-reactor/on-mask.png",
                        frame_count = 50,
                        width = 246,
                        height = 236,
                        line_length = 8,
                        animation_speed = 0.3,
                        tint = py.tints[i],
                        priority = "medium"
                    }
                },
            },
            animation = {
                layers = {
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/bio-reactor/off.png",
                        width = 246,
                        height = 236,
                        frame_count = 1,
                        shift = {0.312, -0.218},
                    },
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/bio-reactor/off-mask.png",
                        width = 246,
                        height = 236,
                        frame_count = 1,
                        shift = {0.312, -0.218},
                        tint = py.tints[i]
                    },
                },
            },
        },
        fluid_boxes_off_when_no_fluid_recipe = true,
        fluid_boxes = {
            --North
            {
                production_type = "output",
                pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.0, -0.95}, nil, nil),
                pipe_covers = py.pipe_covers(true, true, true, true),
                volume = 100,
                pipe_connections = {{flow_direction = "output", position = {1.0, -3.0}, direction = defines.direction.north}},
                priority = "extra-high"
            },
            --North2
            {
                production_type = "output",
                pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.0, -0.95}, nil, nil),
                pipe_covers = py.pipe_covers(true, true, true, true),
                volume = 100,
                pipe_connections = {{flow_direction = "output", position = {-1.0, -3.0}, direction = defines.direction.north}},
                priority = "extra-high"
            },
            --South
            {
                production_type = "input",
                pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
                pipe_covers = py.pipe_covers(true, true, true, true),
                volume = 1000,
                base_level = -1,
                pipe_connections = {{flow_direction = "input", position = {2.0, 3.0}, direction = defines.direction.south}},
                priority = "extra-high"
            },
            {
                production_type = "input",
                pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
                pipe_covers = py.pipe_covers(true, true, true, true),
                volume = 1000,
                base_level = -1,
                pipe_connections = {{flow_direction = "input", position = {0.0, 3.0}, direction = defines.direction.south}},
                priority = "extra-high"
            },
            --South2
            {
                production_type = "input",
                pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
                pipe_covers = py.pipe_covers(true, true, true, true),
                volume = 1000,
                base_level = -1,
                pipe_connections = {{flow_direction = "input", position = {-2.0, 3.0}, direction = defines.direction.south}},
                priority = "extra-high"
            },
        },
        vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
        working_sound = {
            sound = {filename = "__pyfusionenergygraphics__/sounds/bio-reactor.ogg", volume = 1.2},
            idle_sound = {filename = "__pyfusionenergygraphics__/sounds/bio-reactor.ogg", volume = 0.3},
            apparent_volume = 2.5
        }
    }
end
