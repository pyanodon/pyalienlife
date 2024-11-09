RECIPE {
    type = "recipe",
    name = "bio-printer-mk01",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "aluminium-plate",    amount = 40},
        {type = "item", name = "steam-engine",       amount = 5},
        {type = "item", name = "glass",              amount = 150},
        {type = "item", name = "titanium-plate",     amount = 40},
        {type = "item", name = "nexelit-plate",      amount = 25},
        {type = "item", name = "duralumin",          amount = 50},
        {type = "item", name = "electronic-circuit", amount = 50},
        {type = "item", name = "iron-gear-wheel",    amount = 200},
    },
    results = {
        {type = "item", name = "bio-printer-mk01", amount = 1}
    }
}:add_unlock("organ-printing")

RECIPE {
    type = "recipe",
    name = "bio-printer-mk02",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "bio-printer-mk01", amount = 1},
        {type = "item", name = "stainless-steel",  amount = 60},
        {type = "item", name = "glass",            amount = 40},
        {type = "item", name = "advanced-circuit", amount = 20},
        {type = "item", name = "engine-unit",      amount = 20},
        {type = "item", name = "titanium-plate",   amount = 20},
        {type = "item", name = "latex",            amount = 30},
        {type = "item", name = "neuroprocessor",   amount = 20},
    },
    results = {
        {type = "item", name = "bio-printer-mk02", amount = 1}
    }
}:add_unlock("organ-printing-mk02")

RECIPE {
    type = "recipe",
    name = "bio-printer-mk03",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "bio-printer-mk02",     amount = 1},
        {type = "item", name = "nichrome",             amount = 20},
        {type = "item", name = "sc-unit",              amount = 10},
        {type = "item", name = "neuromorphic-chip",    amount = 40},
        {type = "item", name = "electric-engine-unit", amount = 20},
        {type = "item", name = "super-steel",          amount = 40},
        {type = "item", name = "molybdenum-plate",     amount = 20},
    },
    results = {
        {type = "item", name = "bio-printer-mk03", amount = 1}
    }
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "bio-printer-mk04",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "bio-printer-mk03", amount = 1},
        {type = "item", name = "control-unit",     amount = 10},
        {type = "item", name = "wall-shield",      amount = 15},
        {type = "item", name = "nbfe-alloy",       amount = 40},
        {type = "item", name = "silver-foam",      amount = 20},
        {type = "item", name = "divertor",         amount = 10},
    },
    results = {
        {type = "item", name = "bio-printer-mk04", amount = 1}
    }
}:add_unlock("mass-production")

data:extend {{
    name = "bioprinting",
    type = "module-category",
}}

for i = 1, 4 do
    local name = "bio-printer-mk0" .. i
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
        fast_replaceable_group = "bio-printer",
        max_health = 600 * i,
        corpse = "medium-remnants",
        dying_explosion = "big-explosion",
        collision_box = {{-4.1, -4.1}, {4.1, 4.1}},
        selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
        forced_symmetry = "diagonal-pos",
        match_animation_speed_to_activity = false,
        module_slots = i,
        allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
        allowed_module_categories = {"speed", "productivity", "efficiency", "bioprinting"},
        crafting_categories = {"bio-printer"},
        crafting_speed = i,
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = {
                pollution = 3 * i
            },
        },
        energy_usage = (9000 * 2^(i-1)) .. "kW",
        fluid_boxes_off_when_no_fluid_recipe = true,
        fluid_boxes = {
            --1
            {
                production_type = "input",
                pipe_covers = py.pipe_covers(false, true, true, true),
                pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {0.0, -4.0}, direction = defines.direction.north}},
                secondary_draw_orders = {north = -1}
            },
            {
                production_type = "input",
                pipe_covers = py.pipe_covers(false, true, true, true),
                pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {-2.0, -4.0}, direction = defines.direction.north}},
                secondary_draw_orders = {north = -1}
            },
            {
                production_type = "input",
                pipe_covers = py.pipe_covers(false, true, true, true),
                pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {2.0, -4.0}, direction = defines.direction.north}},
                secondary_draw_orders = {north = -1}
            },
            {
                production_type = "output",
                pipe_covers = py.pipe_covers(false, true, true, true),
                pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
                volume = 1000,
                pipe_connections = {{flow_direction = "output", position = {0.0, 4.0}, direction = defines.direction.south}},
                secondary_draw_orders = {north = -1}
            },
            {
                production_type = "output",
                pipe_covers = py.pipe_covers(false, true, true, true),
                pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
                volume = 1000,
                pipe_connections = {{flow_direction = "output", position = {-2.0, 4.0}, direction = defines.direction.south}},
                secondary_draw_orders = {north = -1}
            },
            {
                production_type = "output",
                pipe_covers = py.pipe_covers(false, true, true, true),
                pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
                volume = 1000,
                pipe_connections = {{flow_direction = "output", position = {2.0, 4.0}, direction = defines.direction.south}},
                secondary_draw_orders = {north = -1}
            },
        },
        graphics_set = {
            animation = {
                layers = {
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/bio-printer/base.png",
                        priority = "high",
                        width = 320,
                        height = 32,
                        line_length = 6,
                        frame_count = 150,
                        animation_speed = 0.4,
                        shift = util.by_pixel(16, 128)
                    },
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/bio-printer/base-mask.png",
                        priority = "high",
                        width = 320,
                        height = 32,
                        line_length = 6,
                        frame_count = 150,
                        animation_speed = 0.4,
                        shift = util.by_pixel(16, 128),
                        tint = py.tints[i]
                    },
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/bio-printer/a1.png",
                        priority = "high",
                        width = 64,
                        height = 352,
                        line_length = 32,
                        frame_count = 150,
                        animation_speed = 0.4,
                        shift = util.by_pixel(-112, -64)
                    },
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/bio-printer/a1-mask.png",
                        priority = "high",
                        width = 64,
                        height = 352,
                        line_length = 32,
                        frame_count = 150,
                        animation_speed = 0.4,
                        shift = util.by_pixel(-112, -64),
                        tint = py.tints[i]
                    },
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/bio-printer/a2.png",
                        priority = "high",
                        width = 64,
                        height = 352,
                        line_length = 32,
                        frame_count = 150,
                        animation_speed = 0.4,
                        shift = util.by_pixel(-48, -64)
                    },
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/bio-printer/a2-mask.png",
                        priority = "high",
                        width = 64,
                        height = 352,
                        line_length = 32,
                        frame_count = 150,
                        animation_speed = 0.4,
                        shift = util.by_pixel(-48, -64),
                        tint = py.tints[i]
                    },
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/bio-printer/a3.png",
                        priority = "high",
                        width = 64,
                        height = 352,
                        line_length = 32,
                        frame_count = 150,
                        animation_speed = 0.4,
                        shift = util.by_pixel(16, -64)
                    },
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/bio-printer/a3-mask.png",
                        priority = "high",
                        width = 64,
                        height = 352,
                        line_length = 32,
                        frame_count = 150,
                        animation_speed = 0.4,
                        shift = util.by_pixel(16, -64),
                        tint = py.tints[i]
                    },
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/bio-printer/a4.png",
                        priority = "high",
                        width = 64,
                        height = 352,
                        line_length = 32,
                        frame_count = 150,
                        animation_speed = 0.4,
                        shift = util.by_pixel(80, -64)
                    },
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/bio-printer/a4-mask.png",
                        priority = "high",
                        width = 64,
                        height = 352,
                        line_length = 32,
                        frame_count = 150,
                        animation_speed = 0.4,
                        shift = util.by_pixel(80, -64),
                        tint = py.tints[i]
                    },
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/bio-printer/a5.png",
                        priority = "high",
                        width = 64,
                        height = 352,
                        line_length = 32,
                        frame_count = 150,
                        animation_speed = 0.4,
                        shift = util.by_pixel(144, -64)
                    },
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/bio-printer/a5-mask.png",
                        priority = "high",
                        width = 64,
                        height = 352,
                        line_length = 32,
                        frame_count = 150,
                        animation_speed = 0.4,
                        shift = util.by_pixel(144, -64),
                        tint = py.tints[i]
                    },
                }
            },
        },
        vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
        working_sound = {
            sound = {filename = "__pyalienlifegraphics__/sounds/bio-printer.ogg", volume = 0.9},
            idle_sound = {filename = "__pyalienlifegraphics__/sounds/bio-printer.ogg", volume = 0.3},
            apparent_volume = 2.5
        }
    }
end
