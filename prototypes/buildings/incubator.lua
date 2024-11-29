RECIPE {
    type = "recipe",
    name = "incubator-mk01",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "glass",           amount = 50},
        {type = "item", name = "steam-engine",    amount = 2},
        {type = "item", name = "gasifier",        amount = 1},
        {type = "item", name = "titanium-plate",  amount = 30},
        --{type = "item", name = "plastic-bar", amount = 30},
        {type = "item", name = "iron-gear-wheel", amount = 30},
        {type = "item", name = "duralumin",       amount = 15},
    },
    results = {
        {type = "item", name = "incubator-mk01", amount = 1}
    }
}:add_unlock("biotech-mk01")

RECIPE {
    type = "recipe",
    name = "incubator-mk02",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "glass",            amount = 50},
        {type = "item", name = "incubator-mk01",   amount = 1},
        {type = "item", name = "advanced-circuit", amount = 30},
        {type = "item", name = "nexelit-plate",    amount = 20},
        {type = "item", name = "engine-unit",      amount = 3},
        {type = "item", name = "plastic-bar",      amount = 10},
        {type = "item", name = "duralumin",        amount = 20},
        {type = "item", name = "latex",            amount = 50},
        {type = "item", name = "neuroprocessor",   amount = 15},
    },
    results = {
        {type = "item", name = "incubator-mk02", amount = 1}
    }
}:add_unlock("biotech-machines-mk02"):add_ingredient {type = "item", name = "small-parts-02", amount = 30}

RECIPE {
    type = "recipe",
    name = "incubator-mk03",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "molybdenum-plate",      amount = 50},
        {type = "item", name = "incubator-mk02",        amount = 1},
        {type = "item", name = "processing-unit",       amount = 30},
        {type = "item", name = "low-density-structure", amount = 20},
        {type = "item", name = "electric-engine-unit",  amount = 5},
        {type = "item", name = "nbti-alloy",            amount = 10},
        {type = "item", name = "ticocr-alloy",          amount = 20},
        {type = "item", name = "sc-unit",               amount = 15},
    },
    results = {
        {type = "item", name = "incubator-mk03", amount = 1}
    }
}:add_unlock("biotech-machines-mk03"):add_ingredient {type = "item", name = "small-parts-03", amount = 30}

RECIPE {
    type = "recipe",
    name = "incubator-mk04",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "wall-shield",    amount = 30},
        {type = "item", name = "incubator-mk03", amount = 1},
        {type = "item", name = "control-unit",   amount = 10},
        {type = "item", name = "boron-carbide",  amount = 20},
        {type = "item", name = "super-alloy",    amount = 20},
        {type = "item", name = "blanket",        amount = 5},
        {type = "item", name = "nbfe-alloy",     amount = 50},
    },
    results = {
        {type = "item", name = "incubator-mk04", amount = 1}
    }
}:add_unlock("biotech-machines-mk04")

local function working_visualizations()
    return {{animation = {
        filename = "__pyalienlifegraphics__/graphics/entity/incubator/main.png",
        frame_count = 100,
        width = 140,
        height = 163,
        line_length = 14,
        animation_speed = 0.3,
        shift = {-0.25, -1.624}
    }}}
end

for i = 1, 4 do
    local name = "incubator-mk0" .. i
    local icon = "__pyalienlifegraphics__/graphics/icons/incubator-mk0" .. i .. ".png"
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
        fast_replaceable_group = "incubator",
        max_health = 400 * i,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
        selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
        forced_symmetry = "diagonal-pos",
        module_slots = i,
        allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
        crafting_categories = {"incubator"},
        crafting_speed = i,
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = {
                pollution = i
            },
        },
        energy_usage = (600 * i) .. "kW",
        graphics_set = py.finite_state_machine_working_visualisations {
            states = {
                {
                    name = "idle",
                    next_active = "idle-2",
                    next_inactive = "idle",
                    frame_sequence = {22},
                },
                {
                    name = "idle-2",
                    next_active = "active-1",
                    next_inactive = "idle",
                    frame_sequence = {22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22},
                },
                {
                    name = "active-1",
                    next_active = "lowering",
                    next_inactive = "lowering",
                    frame_sequence = py.range(23, 99)
                },
                {
                    name = "lowering",
                    next_active = "idle",
                    next_inactive = "idle",
                    frame_sequence = py.range(99, 23)
                },
            },
            working_visualisations = working_visualizations(),
            shadow = {
                layers = {
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/incubator/off.png",
                        width = 224,
                        height = 257,
                        frame_count = 1,
                        shift = {-0.00, -0.15}
                    },
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/incubator/off-mask.png",
                        width = 224,
                        height = 257,
                        frame_count = 1,
                        shift = {-0.00, -0.15},
                        tint = py.tints[i]
                    },
                }
            }
        },
        fluid_boxes_off_when_no_fluid_recipe = true,
        fluid_boxes = {
            {
                production_type = "output",
                volume = 100,
                pipe_connections = {{flow_direction = "output", position = {-2.0, -3.0}, direction = defines.direction.north}},
                priority = "extra-high"
            },
            {
                production_type = "input",
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {2.0, 3.0}, direction = defines.direction.south}},
                priority = "extra-high"
            },
            {
                production_type = "input",
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {3.0, -2.0}, direction = defines.direction.east}},
                priority = "extra-high"
            },
        },
        impact_category = "metal-large",
        --[[working_sound = { -- disabled for now, this is annoying
            sound = {filename = "__pyalienlifegraphics__/sounds/incubator.ogg", volume = 0.7},
            idle_sound = {filename = "__pyalienlifegraphics__/sounds/incubator.ogg", volume = 0.3},
            apparent_volume = 2.5
        }--]]
    }

    table.insert(data.raw["assembling-machine"][name].graphics_set.working_visualisations, {
        animation = {
            filename = "__pyalienlifegraphics__/graphics/entity/incubator/cooler.png",
            frame_count = 80,
            width = 224,
            height = 64,
            line_length = 9,
            animation_speed = 0.5,
            shift = {-0.0, -3.156},
            priority = "high",
        },
        always_draw = true,
        constant_speed = true,
    })

    table.insert(data.raw["assembling-machine"][name].graphics_set.working_visualisations, {
        animation = {
            filename = "__pyalienlifegraphics__/graphics/entity/incubator/smoke.png",
            frame_count = 50,
            width = 96,
            height = 96,
            line_length = 20,
            animation_speed = 0.5,
            shift = {2.0, -0.556},
            priority = "high"
        },
        fadeout = true,
        constant_speed = true,
    })
end