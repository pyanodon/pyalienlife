RECIPE {
    type = "recipe",
    name = "fwf-mk01",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "stone-brick",        amount = 50},
        {type = "item", name = "steel-plate",        amount = 10},
        {type = "item", name = "steam-engine",       amount = 5},
        {type = "item", name = "electronic-circuit", amount = 10},
        {type = "item", name = "iron-gear-wheel",    amount = 20},
    },
    results = {
        {type = "item", name = "fwf-mk01", amount = 1}
    }
}:add_unlock("wood-processing")

RECIPE {
    type = "recipe",
    name = "fwf-mk02",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "fwf-mk01",         amount = 1},
        {type = "item", name = "titanium-plate",   amount = 30},
        {type = "item", name = "duralumin",        amount = 30},
        {type = "item", name = "latex",            amount = 30},
        {type = "item", name = "plastic-bar",      amount = 50},
        {type = "item", name = "engine-unit",      amount = 5},
        {type = "item", name = "advanced-circuit", amount = 20},
    },
    results = {
        {type = "item", name = "fwf-mk02", amount = 1}
    }
}:add_unlock("botany-mk02"):add_ingredient {type = "item", name = "small-parts-02", amount = 30}

RECIPE {
    type = "recipe",
    name = "fwf-mk03",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "fwf-mk02",              amount = 1},
        {type = "item", name = "nexelit-plate",         amount = 30},
        {type = "item", name = "molybdenum-plate",      amount = 30},
        {type = "item", name = "low-density-structure", amount = 30},
        {type = "item", name = "boron-carbide",         amount = 50},
        {type = "item", name = "electric-engine-unit",  amount = 10},
        {type = "item", name = "processing-unit",       amount = 40},
    },
    results = {
        {type = "item", name = "fwf-mk03", amount = 1}
    }
}:add_unlock("botany-mk03"):add_ingredient {type = "item", name = "small-parts-03", amount = 50}

RECIPE {
    type = "recipe",
    name = "fwf-mk04",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "fwf-mk03",        amount = 1},
        {type = "item", name = "science-coating", amount = 30},
        {type = "item", name = "wall-shield",     amount = 10},
        {type = "item", name = "super-alloy",     amount = 30},
        {type = "item", name = "kevlar",          amount = 100},
        {type = "item", name = "control-unit",    amount = 40},
    },
    results = {
        {type = "item", name = "fwf-mk04", amount = 1}
    }
}:add_unlock("botany-mk04")

local function working_visualizations()
    local working_visualizations = {
        {
            filename = "__pyalienlifegraphics__/graphics/entity/fwf/base.png",
            width = 544,
            height = 64,
            line_length = 4,
            frame_count = 135,
            shift = util.by_pixel(0, 240)
        },
        {
            filename = "__pyalienlifegraphics__/graphics/entity/fwf/left-fill.png",
            width = 32,
            height = 544,
            frame_count = 1,
            repeat_count = 135,
            shift = util.by_pixel(-256, -64)
        },
        {
            filename = "__pyalienlifegraphics__/graphics/entity/fwf/right-fill.png",
            width = 32,
            height = 544,
            frame_count = 1,
            repeat_count = 135,
            shift = util.by_pixel(256, -64)
        },
        {
            filename = "__pyalienlifegraphics__/graphics/entity/fwf/1.png",
            width = 32,
            height = 544,
            line_length = 45,
            frame_count = 135,
            shift = util.by_pixel(-224, -64)
        },
        {
            filename = "__pyalienlifegraphics__/graphics/entity/fwf/2.png",
            width = 32,
            height = 544,
            line_length = 45,
            frame_count = 135,
            shift = util.by_pixel(-192, -64)
        },
        {
            filename = "__pyalienlifegraphics__/graphics/entity/fwf/3.png",
            width = 32,
            height = 544,
            line_length = 45,
            frame_count = 135,
            shift = util.by_pixel(-160, -64)
        },
        {
            filename = "__pyalienlifegraphics__/graphics/entity/fwf/4.png",
            width = 32,
            height = 544,
            line_length = 45,
            frame_count = 135,
            shift = util.by_pixel(-128, -64)
        },
        {
            filename = "__pyalienlifegraphics__/graphics/entity/fwf/5.png",
            width = 32,
            height = 544,
            line_length = 45,
            frame_count = 135,
            shift = util.by_pixel(-96, -64)
        },
        {
            filename = "__pyalienlifegraphics__/graphics/entity/fwf/6.png",
            width = 32,
            height = 544,
            line_length = 45,
            frame_count = 135,
            shift = util.by_pixel(-64, -64)
        },
        {
            filename = "__pyalienlifegraphics__/graphics/entity/fwf/7.png",
            width = 32,
            height = 544,
            line_length = 45,
            frame_count = 135,
            shift = util.by_pixel(-32, -64)
        },
        {
            filename = "__pyalienlifegraphics__/graphics/entity/fwf/8.png",
            width = 32,
            height = 544,
            line_length = 45,
            frame_count = 135,
            shift = util.by_pixel(0, -64)
        },
        {
            filename = "__pyalienlifegraphics__/graphics/entity/fwf/9.png",
            width = 32,
            height = 544,
            line_length = 45,
            frame_count = 135,
            shift = util.by_pixel(32, -64)
        },
        {
            filename = "__pyalienlifegraphics__/graphics/entity/fwf/10.png",
            width = 32,
            height = 544,
            line_length = 45,
            frame_count = 135,
            shift = util.by_pixel(64, -64)
        },
        {
            filename = "__pyalienlifegraphics__/graphics/entity/fwf/11.png",
            width = 32,
            height = 544,
            line_length = 45,
            frame_count = 135,
            shift = util.by_pixel(96, -64)
        },
        {
            filename = "__pyalienlifegraphics__/graphics/entity/fwf/12.png",
            width = 32,
            height = 544,
            line_length = 45,
            frame_count = 135,
            shift = util.by_pixel(128, -64)
        },
        {
            filename = "__pyalienlifegraphics__/graphics/entity/fwf/13.png",
            width = 32,
            height = 544,
            line_length = 45,
            frame_count = 135,
            run_mode = "backward",
            shift = util.by_pixel(160, -64)
        },
        {
            filename = "__pyalienlifegraphics__/graphics/entity/fwf/14.png",
            width = 32,
            height = 544,
            line_length = 45,
            frame_count = 135,
            shift = util.by_pixel(192, -64)
        },
        {
            filename = "__pyalienlifegraphics__/graphics/entity/fwf/15.png",
            width = 32,
            height = 544,
            line_length = 45,
            frame_count = 135,
            shift = util.by_pixel(224, -64)
        }
    }
    return {{animation = {layers = working_visualizations}}}
end

local FULL_CRAFTING_SPEED = 1 -- crafting speed when full of mk01 modules

for i = 1, 4 do
    local name = "fwf-mk0" .. i
    local icon = "__pyalienlifegraphics__/graphics/icons/fwf-mk0" .. i .. ".png"
    local icon_size = 64
    local MODULE_SLOTS = 10 * i

    ITEM {
        type = "item",
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {},
        subgroup = "py-alienlife-farm-buildings-mk0" .. i,
        order = "e",
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
        fast_replaceable_group = "fwf",
        max_health = 500 * i,
        corpse = "medium-remnants",
        dying_explosion = "big-explosion",
        collision_box = {{-7.2, -7.2}, {7.2, 7.2}},
        selection_box = {{-7.5, -7.5}, {7.5, 7.5}},
        forced_symmetry = "diagonal-pos",
        module_slots = MODULE_SLOTS,
        allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
        crafting_categories = {"fwf"},
        crafting_speed = (i == 1) and py.farm_speed(MODULE_SLOTS, FULL_CRAFTING_SPEED) or py.farm_speed_derived(MODULE_SLOTS, "fwf-mk01"),
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = {
                pollution = -35 * i
            },
        },
        energy_usage = (i == 1) and "450kW" or (i .. "MW"),
        graphics_set = py.finite_state_machine_working_visualisations {
            states = {
                {
                    name = "idle",
                    next_active = "active-1",
                    next_inactive = "idle",
                    frame_sequence = {120},
                },
                {
                    name = "active-1",
                    next_active = "active-2",
                    next_inactive = "active-2",
                    frame_sequence = py.range(121, 135),
                    speed = 0.8
                },
                {
                    name = "active-2",
                    next_active = "active-3",
                    next_inactive = "active-3",
                    frame_sequence = py.range(1, 49),
                    speed = 0.8
                },
                {
                    name = "active-3",
                    next_active = "idle",
                    next_inactive = "idle",
                    frame_sequence = py.range(50, 119),
                    speed = 0.8
                },
            },
            working_visualisations = working_visualizations(),
        },
        fluid_boxes_off_when_no_fluid_recipe = true,
        fluid_boxes = {
            --1
            {
                production_type = "input",
                pipe_covers = py.pipe_covers(false, true, true, true),
                pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {1.0, 7.0}, direction = defines.direction.south}}
            },
            {
                production_type = "input",
                pipe_covers = py.pipe_covers(false, true, true, true),
                pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {-1.0, 7.0}, direction = defines.direction.south}}
            },
            {
                production_type = "output",
                pipe_covers = py.pipe_covers(false, true, true, true),
                pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
                volume = 100,
                pipe_connections = {{flow_direction = "output", position = {1.0, -7.0}, direction = defines.direction.north}}
            },
        },
        impact_category = "metal-large",
        working_sound = {
            fade_in_ticks = 60,
            fade_out_ticks = 60,
            sound = {filename = "__pyalienlifegraphics__/sounds/fwf.ogg", volume = 1.5},
            idle_sound = {filename = "__pyalienlifegraphics__/sounds/fwf-idle.ogg", volume = 0.5},
            audible_distance_modifier = 1,
        }
    }
end
