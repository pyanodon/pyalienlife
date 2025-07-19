RECIPE {
    type = "recipe",
    name = "fish-farm-mk01",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "lab",                amount = 1},
        -- {type = "item", name = "carbon-filter", amount = 1},
        {type = "item", name = "glass",              amount = 140},
        {type = "item", name = "duralumin",          amount = 30},
        {type = "item", name = "pump",               amount = 5},
        {type = "item", name = "steel-plate",        amount = 50},
        -- {type = "item", name = "nexelit-plate", amount = 15},
        {type = "item", name = "electronic-circuit", amount = 50},
        {type = "item", name = "lead-plate",         amount = 40},
    },
    results = {
        {type = "item", name = "fish-farm-mk01", amount = 1}
    }
}:add_unlock("fish-mk01")

RECIPE {
    type = "recipe",
    name = "fish-farm-mk02",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "fish-farm-mk01",   amount = 1},
        {type = "item", name = "glass",            amount = 100},
        {type = "item", name = "duralumin",        amount = 30},
        {type = "item", name = "latex",            amount = 30},
        {type = "item", name = "engine-unit",      amount = 4},
        {type = "item", name = "neuroprocessor",   amount = 10},
        {type = "item", name = "advanced-circuit", amount = 30},
        {type = "item", name = "nbti-alloy",       amount = 30},
    },
    results = {
        {type = "item", name = "fish-farm-mk02", amount = 1}
    }
}:add_unlock("water-animals-mk02"):add_ingredient {type = "item", name = "small-parts-02", amount = 30}

RECIPE {
    type = "recipe",
    name = "fish-farm-mk03",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "fish-farm-mk02",       amount = 1},
        {type = "item", name = "ticocr-alloy",         amount = 50},
        {type = "item", name = "py-heat-exchanger",    amount = 1},
        {type = "item", name = "electric-engine-unit", amount = 4},
        {type = "item", name = "sc-unit",              amount = 20},
        {type = "item", name = "neuromorphic-chip",    amount = 30},
        {type = "item", name = "processing-unit",      amount = 50},
    },
    results = {
        {type = "item", name = "fish-farm-mk03", amount = 1}
    }
}:add_unlock("water-animals-mk03"):add_ingredient {type = "item", name = "small-parts-03", amount = 30}

RECIPE {
    type = "recipe",
    name = "fish-farm-mk04",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "fish-farm-mk03", amount = 1},
        {type = "item", name = "boron-carbide",  amount = 50},
        {type = "item", name = "blanket",        amount = 1},
        {type = "item", name = "silver-foam",    amount = 20},
        {type = "item", name = "divertor",       amount = 10},
        {type = "item", name = "metallic-glass", amount = 30},
        {type = "item", name = "control-unit",   amount = 10},
    },
    results = {
        {type = "item", name = "fish-farm-mk04", amount = 1}
    }
}:add_unlock("water-animals-mk04")

local FULL_CRAFTING_SPEED = 1 -- crafting speed when full of mk01 modules

for i = 1, 4 do
    local name = "fish-farm-mk0" .. i
    local icon = "__pyalienlifegraphics__/graphics/icons/fish-farm-mk0" .. i .. ".png"
    local icon_size = 64
    local MODULE_SLOTS = 7 * i

    ITEM {
        type = "item",
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {},
        subgroup = "py-alienlife-farm-buildings-mk0" .. i,
        order = "d",
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
        fast_replaceable_group = "fish-farm",
        max_health = 500 * i,
        corpse = "medium-remnants",
        dying_explosion = "big-explosion",
        collision_box = {{-5.1, -5.1}, {5.1, 5.1}},
        selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
        forced_symmetry = "diagonal-pos",
        module_slots = MODULE_SLOTS,
        allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
        crafting_categories = {"fish-farm"},
        crafting_speed = (i == 1) and py.farm_speed(MODULE_SLOTS, FULL_CRAFTING_SPEED) or py.farm_speed_derived(MODULE_SLOTS, "fish-farm-mk01"),
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = {
                pollution = 3
            },
        },
        energy_usage = i .. "MW",
        graphics_set = {
            working_visualisations = {
                {
                    north_position = util.by_pixel(-128, -16),
                    west_position = util.by_pixel(-128, -16),
                    south_position = util.by_pixel(-128, -16),
                    east_position = util.by_pixel(-128, -16),
                    animation = {
                        filename = "__pyalienlifegraphics__/graphics/entity/fish-farm/a1.png",
                        frame_count = 150,
                        line_length = 21,
                        width = 96,
                        height = 256,
                        animation_speed = 0.35,
                        draw_as_glow = true,
                    }
                },
                {
                    north_position = util.by_pixel(-32, -16),
                    west_position = util.by_pixel(-32, -16),
                    south_position = util.by_pixel(-32, -16),
                    east_position = util.by_pixel(-32, -16),
                    animation = {
                        filename = "__pyalienlifegraphics__/graphics/entity/fish-farm/a2.png",
                        frame_count = 150,
                        line_length = 21,
                        width = 96,
                        height = 256,
                        animation_speed = 0.35,
                        draw_as_glow = true,
                    }
                },
                {
                    north_position = util.by_pixel(64, -16),
                    west_position = util.by_pixel(64, -16),
                    south_position = util.by_pixel(64, -16),
                    east_position = util.by_pixel(64, -16),
                    animation = {
                        filename = "__pyalienlifegraphics__/graphics/entity/fish-farm/a3.png",
                        frame_count = 150,
                        line_length = 21,
                        width = 96,
                        height = 256,
                        animation_speed = 0.35,
                        draw_as_glow = true,
                    }
                },
                {
                    north_position = util.by_pixel(144, -16),
                    west_position = util.by_pixel(144, -16),
                    south_position = util.by_pixel(144, -16),
                    east_position = util.by_pixel(144, -16),
                    animation = {
                        filename = "__pyalienlifegraphics__/graphics/entity/fish-farm/a4.png",
                        frame_count = 150,
                        line_length = 21,
                        width = 64,
                        height = 256,
                        animation_speed = 0.35,
                        draw_as_glow = true,
                    }
                },
            },
            animation = {
                layers = {
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/fish-farm/off.png",
                        width = 384,
                        height = 384,
                        frame_count = 1,
                        line_length = 1,
                        shift = util.by_pixel(16, -16)
                    },
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/fish-farm/off-mask.png",
                        width = 384,
                        height = 384,
                        frame_count = 1,
                        line_length = 1,
                        shift = util.by_pixel(16, -16),
                        tint = py.tints[i]
                    },
                }
            },
        },
        fluid_boxes_off_when_no_fluid_recipe = true,
        fluid_boxes = {
            --1
            {
                production_type = "input",
                pipe_covers = py.pipe_covers(true, true, true, true),
                pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {0.0, -5.0}, direction = defines.direction.north}},
                secondary_draw_orders = {north = -1}
            },
            {
                production_type = "input",
                pipe_covers = py.pipe_covers(true, true, true, true),
                pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {0.0, 5.0}, direction = defines.direction.south}},
                secondary_draw_orders = {north = -1}
            },
            {
                production_type = "output",
                pipe_covers = py.pipe_covers(true, true, true, true),
                pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
                volume = 1000,
                pipe_connections = {{flow_direction = "input-output", position = {5.0, 0.0}, direction = defines.direction.east}},
                secondary_draw_orders = {north = -1}
            },
            {
                production_type = "output",
                pipe_covers = py.pipe_covers(true, true, true, true),
                pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
                volume = 1000,
                pipe_connections = {{flow_direction = "input-output", position = {-5.0, 0.0}, direction = defines.direction.west}},
                secondary_draw_orders = {north = -1}
            },
        },
        impact_category = "metal-large",
        working_sound = {
            sound = {filename = "__pyalienlifegraphics__/sounds/fish-farm.ogg", volume = 0.65},
            idle_sound = {filename = "__pyalienlifegraphics__/sounds/fish-farm.ogg", volume = 0.3},
            apparent_volume = 2.5
        }
    }
end
