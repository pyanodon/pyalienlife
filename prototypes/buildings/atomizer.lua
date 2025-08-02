RECIPE {
    type = "recipe",
    name = "atomizer-mk01",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "duralumin",          amount = 10},
        {type = "item", name = "washer",             amount = 1},
        {type = "item", name = "titanium-plate",     amount = 35},
        {type = "item", name = "electronic-circuit", amount = 10},
        {type = "item", name = "steam-engine",       amount = 5},
        {type = "item", name = "glass",              amount = 50},
        {type = "item", name = "nickel-plate",       amount = 25},
    },
    results = {
        {type = "item", name = "atomizer-mk01", amount = 1}
    }
}:add_unlock("molecular-decohesion")

RECIPE {
    type = "recipe",
    name = "atomizer-mk02",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "atomizer-mk01",    amount = 1},
        {type = "item", name = "advanced-circuit", amount = 10},
        {type = "item", name = "engine-unit",      amount = 6},
        {type = "item", name = "lead-plate",       amount = 20},
        {type = "item", name = "latex",            amount = 30},
        {type = "item", name = "neuroprocessor",   amount = 20},
        {type = "item", name = "small-parts-02",   amount = 30}
    },
    results = {
        {type = "item", name = "atomizer-mk02", amount = 1}
    }
}:add_unlock("biotech-machines-mk02")

RECIPE {
    type = "recipe",
    name = "atomizer-mk03",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "atomizer-mk02",        amount = 1},
        {type = "item", name = "processing-unit",      amount = 30},
        {type = "item", name = "stainless-steel",      amount = 30},
        {type = "item", name = "electric-engine-unit", amount = 10},
        {type = "item", name = "molybdenum-plate",     amount = 30},
        {type = "item", name = "ticocr-alloy",         amount = 20},
        {type = "item", name = "small-parts-03",       amount = 30}
    },
    results = {
        {type = "item", name = "atomizer-mk03", amount = 1}
    }
}:add_unlock("biotech-machines-mk03")

RECIPE {
    type = "recipe",
    name = "atomizer-mk04",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "atomizer-mk03", amount = 1},
        {type = "item", name = "control-unit",  amount = 10},
        {type = "item", name = "super-steel",   amount = 40},
        {type = "item", name = "super-alloy",   amount = 30},
    },
    results = {
        {type = "item", name = "atomizer-mk04", amount = 1}
    }
}:add_unlock("biotech-machines-mk04"):replace_ingredient("control-unit", "intelligent-unit")

local base_craft_speed = 1
local module_slots_per_tier = 1
local base_name = "atomizer-mk0"
local base_subgroup = "py-alienlife-buildings-mk0"
local energy_tiers = {"800kW","900kW", "1100kW", "1300kW"}

for tier = 1, 4 do
    local name = base_name .. tier
    local module_slots = module_slots_per_tier * tier
    local craft_speed = base_craft_speed * tier

    ITEM {
        type = "item",
        name = name,
        icon = "__pyalienlifegraphics__/graphics/icons/" .. name .. ".png",
        icon_size = 64,
        flags = {},
        subgroup = base_subgroup .. tier,
        order = "a",
        place_result = name,
        stack_size = 10
    }

    ENTITY {
        type = "assembling-machine",
        name = name,
        icon = "__pyalienlifegraphics__/graphics/icons/" .. name .. ".png",
        icon_size = 64,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.5, result = name},
        fast_replaceable_group = "atomizer",
        max_health = 100,
        corpse = "medium-remnants",
        dying_explosion = "big-explosion",
        collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
        selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
        forced_symmetry = "diagonal-pos",
        module_slots = module_slots,
        allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
        crafting_categories = {"atomizer"},
        crafting_speed = craft_speed,
        energy_source =
        {
            type = "burner",
            fuel_categories = tier == 1 and {"chemical", "biomass"} or {"chemical", "biomass", "jerry"},--ADD JERRY FOR MK234,
            effectivity = 1,
            fuel_inventory_size = 1,
            burnt_inventory_size = 1,
            emissions_per_minute = {
                pollution = 0.06
            },
        },
        energy_usage = energy_tiers[tier],
        graphics_set = {
            working_visualisations = {
                {
                    north_position = util.by_pixel(0, -16),
                    west_position = util.by_pixel(0, -16),
                    south_position = util.by_pixel(0, -16),
                    east_position = util.by_pixel(0, -16),
                    animation = {
                        filename = "__pyalienlifegraphics__/graphics/entity/atomizer/on.png",
                        priority = "high",
                        frame_count = 90,
                        line_length = 9,
                        width = 224,
                        height = 192,
                        animation_speed = 0.5,
                        draw_as_glow = true,
                    }
                },
            },
            animation = {
                layers = {
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/atomizer/off.png",
                        width = 256,
                        height = 256,
                        frame_count = 1,
                        shift = util.by_pixel(16, -16)
                    },
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/atomizer/off-mask.png",
                        width = 256,
                        height = 256,
                        frame_count = 1,
                        shift = util.by_pixel(16, -16),
                        tint = py.tints[tier]
                    },
                }
            },
        },
        fluid_boxes_off_when_no_fluid_recipe = true,
        fluid_boxes = {
            --1
            {
                production_type = "input",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {1.0, -3.0}, direction = defines.direction.north}}
            },
            {
                production_type = "input",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {-1.0, -3.0}, direction = defines.direction.north}}
            },
            {
                production_type = "output",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 100,
                pipe_connections = {{flow_direction = "output", position = {1.0, 3.0}, direction = defines.direction.south}}
            },
            {
                production_type = "output",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 100,
                pipe_connections = {{flow_direction = "output", position = {-1.0, 3.0}, direction = defines.direction.south}}
            },
        },
        impact_category = "metal-large",
        working_sound = {
            sound = {filename = "__pyalienlifegraphics__/sounds/atomizer.ogg", volume = 1.0},
            idle_sound = {filename = "__pyalienlifegraphics__/sounds/atomizer.ogg", volume = 0.3},
            apparent_volume = 2.5
        }
    }
end