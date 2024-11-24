RECIPE {
    type = "recipe",
    name = "sponge-culture-mk01",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "steel-plate",        amount = 15},
        {type = "item", name = "glass",              amount = 100},
        {type = "item", name = "titanium-plate",     amount = 15},
        {type = "item", name = "steam-engine",       amount = 2},
        {type = "item", name = "duralumin",          amount = 50},
        {type = "item", name = "iron-plate",         amount = 15},
        {type = "item", name = "pipe",               amount = 15},
        {type = "item", name = "electronic-circuit", amount = 15},
        {type = "item", name = "iron-gear-wheel",    amount = 20},
    },
    results = {
        {type = "item", name = "sponge-culture-mk01", amount = 1}
    }
}:add_unlock("water-invertebrates-mk01")

RECIPE {
    type = "recipe",
    name = "sponge-culture-mk02",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "steel-plate",         amount = 15},
        {type = "item", name = "sponge-culture-mk01", amount = 1},
        {type = "item", name = "engine-unit",         amount = 4},
        {type = "item", name = "titanium-plate",      amount = 15},
        {type = "item", name = "duralumin",           amount = 50},
        {type = "item", name = "latex",               amount = 30},
        {type = "item", name = "neuroprocessor",      amount = 20},
        {type = "item", name = "advanced-circuit",    amount = 30},
    },
    results = {
        {type = "item", name = "sponge-culture-mk02", amount = 1}
    }
}:add_unlock("water-invertebrates-mk02"):add_ingredient {type = "item", name = "small-parts-02", amount = 30}

RECIPE {
    type = "recipe",
    name = "sponge-culture-mk03",
    energy_required = 1,
    enabled = false,
    ingredients = {
        -- {type = "item", name = "ticocr-alloy", amount = 15},
        {type = "item", name = "sponge-culture-mk02",   amount = 1},
        {type = "item", name = "nbti-alloy",            amount = 25},
        {type = "item", name = "electric-engine-unit",  amount = 5},
        {type = "item", name = "low-density-structure", amount = 50},
        {type = "item", name = "processing-unit",       amount = 30},
    },
    results = {
        {type = "item", name = "sponge-culture-mk03", amount = 1}
    }
}:add_unlock("water-invertebrates-mk03"):add_ingredient {type = "item", name = "small-parts-03", amount = 50}

RECIPE {
    type = "recipe",
    name = "sponge-culture-mk04",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "kevlar",              amount = 100},
        {type = "item", name = "sponge-culture-mk03", amount = 1},
        {type = "item", name = "blanket",             amount = 5},
        {type = "item", name = "metallic-glass",      amount = 50},
        {type = "item", name = "control-unit",        amount = 10},
    },
    results = {
        {type = "item", name = "sponge-culture-mk04", amount = 1}
    }
}:add_unlock("water-invertebrates-mk04")

local FULL_CRAFTING_SPEED = 1 -- crafting speed when full of mk01 modules

for i = 1, 4 do
    local name = "sponge-culture-mk0" .. i
    local icon = "__pyalienlifegraphics__/graphics/icons/" .. name .. ".png"
    local icon_size = 64
    local MODULE_SLOTS = 8 * i

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
        fast_replaceable_group = "sponge-culture",
        max_health = 300 * i,
        corpse = "medium-remnants",
        dying_explosion = "big-explosion",
        collision_box = {{-5.2, -5.2}, {5.2, 5.2}},
        selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
        forced_symmetry = "diagonal-pos",
        module_slots = MODULE_SLOTS,
        allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
        crafting_categories = {"sponge"},
        crafting_speed = (i == 1) and py.farm_speed(MODULE_SLOTS, FULL_CRAFTING_SPEED) or py.farm_speed_derived(MODULE_SLOTS, "sponge-culture-mk01"),
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = {
                pollution = 1 * i
            },
        },
        energy_usage = (400 * i) .. "kW",
        fluid_boxes_off_when_no_fluid_recipe = true,
        fluid_boxes = {
            --1
            {
                production_type = "input",
                pipe_covers = py.pipe_covers(false, true, true, true),
                pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {0.0, -5.0}, direction = defines.direction.north}},
                secondary_draw_orders = {north = -1}
            },
            {
                production_type = "input",
                pipe_covers = py.pipe_covers(false, true, true, true),
                pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {0.0, 5.0}, direction = defines.direction.south}},
                secondary_draw_orders = {north = -1}
            },
            {
                production_type = "output",
                pipe_covers = py.pipe_covers(false, true, true, true),
                pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
                volume = 1000,
                pipe_connections = {{flow_direction = "output", position = {5.0, 0.0}, direction = defines.direction.east}},
                secondary_draw_orders = {north = -1}
            },
            {
                production_type = "output",
                pipe_covers = py.pipe_covers(false, true, true, true),
                pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
                volume = 1000,
                pipe_connections = {{flow_direction = "output", position = {-5.0, 0.0}, direction = defines.direction.west}},
                secondary_draw_orders = {north = -1}
            },
        },
        graphics_set = {
            animation = {
                layers = {
                    {
                        filename = "__pyalienlifegraphics2__/graphics/entity/sponge-culture/a1.png",
                        width = 367,
                        height = 96,
                        line_length = 5,
                        frame_count = 100,
                        animation_speed = 0.4,
                        shift = util.by_pixel(8, 128)
                    },
                    {
                        filename = "__pyalienlifegraphics2__/graphics/entity/sponge-culture/a1-mask.png",
                        width = 367,
                        height = 96,
                        line_length = 5,
                        frame_count = 100,
                        animation_speed = 0.4,
                        shift = util.by_pixel(8, 128),
                        tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                    },
                    {
                        filename = "__pyalienlifegraphics2__/graphics/entity/sponge-culture/a2.png",
                        width = 367,
                        height = 96,
                        line_length = 5,
                        frame_count = 100,
                        animation_speed = 0.4,
                        shift = util.by_pixel(8, 32)
                    },
                    {
                        filename = "__pyalienlifegraphics2__/graphics/entity/sponge-culture/a2-mask.png",
                        width = 367,
                        height = 96,
                        line_length = 5,
                        frame_count = 100,
                        animation_speed = 0.4,
                        shift = util.by_pixel(8, 32),
                        tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                    },
                    {
                        filename = "__pyalienlifegraphics2__/graphics/entity/sponge-culture/a3.png",
                        width = 367,
                        height = 96,
                        line_length = 5,
                        frame_count = 100,
                        animation_speed = 0.4,
                        shift = util.by_pixel(8, -64)
                    },
                    {
                        filename = "__pyalienlifegraphics2__/graphics/entity/sponge-culture/a3-mask.png",
                        width = 367,
                        height = 96,
                        line_length = 5,
                        frame_count = 100,
                        animation_speed = 0.4,
                        shift = util.by_pixel(8, -64),
                        tint = py.tints[i],
                    },
                    {
                        filename = "__pyalienlifegraphics2__/graphics/entity/sponge-culture/a4.png",
                        width = 367,
                        height = 96,
                        line_length = 5,
                        frame_count = 100,
                        animation_speed = 0.4,
                        shift = util.by_pixel(8, -160)
                    },
                    {
                        filename = "__pyalienlifegraphics2__/graphics/entity/sponge-culture/a4-mask.png",
                        width = 367,
                        height = 96,
                        line_length = 5,
                        frame_count = 100,
                        animation_speed = 0.4,
                        shift = util.by_pixel(8, -160),
                        tint = py.tints[i],
                    },
                    {
                        filename = "__pyalienlifegraphics2__/graphics/entity/sponge-culture/a5.png",
                        width = 367,
                        height = 32,
                        line_length = 5,
                        frame_count = 100,
                        animation_speed = 0.4,
                        shift = util.by_pixel(8, -192)
                    },
                }
            },
        },
        impact_category = "metal-large",
        working_sound = {
            sound = {filename = "__pyalienlifegraphics__/sounds/sponge-culture.ogg", volume = 1.4},
            idle_sound = {filename = "__pyalienlifegraphics__/sounds/sponge-culture.ogg", volume = 0.3},
            apparent_volume = 2.5
        }
    }
end