RECIPE {
    type = "recipe",
    name = "biofactory-mk01",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "steel-plate",        amount = 15},
        {type = "item", name = "steam-engine",       amount = 5},
        {type = "item", name = "glass",              amount = 50},
        {type = "item", name = "titanium-plate",     amount = 15},
        {type = "item", name = "duralumin",          amount = 50},
        {type = "item", name = "electronic-circuit", amount = 15},
        {type = "item", name = "iron-gear-wheel",    amount = 20},
    },
    results = {
        {type = "item", name = "biofactory-mk01", amount = 1}
    }
}:add_unlock("plastics")

RECIPE {
    type = "recipe",
    name = "biofactory-mk02",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "biofactory-mk01",  amount = 1},
        {type = "item", name = "glass",            amount = 30},
        {type = "item", name = "nexelit-plate",    amount = 15},
        {type = "item", name = "duralumin",        amount = 50},
        {type = "item", name = "advanced-circuit", amount = 20},
        {type = "item", name = "engine-unit",      amount = 10},
        {type = "item", name = "latex",            amount = 25},
        {type = "item", name = "neuroprocessor",   amount = 10},
    },
    results = {
        {type = "item", name = "biofactory-mk02", amount = 1}
    }
}:add_unlock("biotech-machines-mk02"):add_ingredient {type = "item", name = "small-parts-02", amount = 50}

RECIPE {
    type = "recipe",
    name = "biofactory-mk03",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "biofactory-mk02",      amount = 1},
        {type = "item", name = "neuromorphic-chip",    amount = 30},
        {type = "item", name = "boron-carbide",        amount = 15},
        {type = "item", name = "ticocr-alloy",         amount = 40},
        {type = "item", name = "electric-engine-unit", amount = 15},
        {type = "item", name = "processing-unit",      amount = 30},
        {type = "item", name = "nichrome",             amount = 25},
    },
    results = {
        {type = "item", name = "biofactory-mk03", amount = 1}
    }
}:add_unlock("biotech-machines-mk03"):add_ingredient {type = "item", name = "small-parts-03", amount = 50}

RECIPE {
    type = "recipe",
    name = "biofactory-mk04",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "biofactory-mk03", amount = 1},
        {type = "item", name = "nbfe-alloy",      amount = 30},
        {type = "item", name = "nenbit-matrix",   amount = 25},
        {type = "item", name = "boron-carbide",   amount = 40},
        {type = "item", name = "control-unit",    amount = 10},
        {type = "item", name = "super-steel",     amount = 100},
    },
    results = {
        {type = "item", name = "biofactory-mk04", amount = 1}
    }
}:add_unlock("biotech-machines-mk04")

local base_craft_speed = 1
local module_slots_per_tier = 1
local base_name = "biofactory-mk0"
local base_subgroup = "py-alienlife-buildings-mk0"
local energy_tiers = {"400kW", "400kW", "600kW", "800kW"}

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
        fast_replaceable_group = "biofactory",
        max_health = 100,
        corpse = "medium-remnants",
        dying_explosion = "big-explosion",
        collision_box = {{-3.1, -3.1}, {3.1, 3.1}},
        selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
        forced_symmetry = "diagonal-pos",
        module_slots = module_slots,
        allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
        crafting_categories = {"biofactory"},
        crafting_speed = craft_speed,
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = {
                pollution = 2
            },
        },
        energy_usage = energy_tiers[tier],
        fluid_boxes_off_when_no_fluid_recipe = true,
        fluid_boxes = {
            --1
            {
                production_type = "input",
                pipe_covers = py.pipe_covers(false, true, true, true),
                pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {0.0, -3.0}, direction = defines.direction.north}},
                secondary_draw_orders = {north = -1}
            },
            {
                production_type = "input",
                pipe_covers = py.pipe_covers(false, true, true, true),
                pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {-2.0, -3.0}, direction = defines.direction.north}},
                secondary_draw_orders = {north = -1}
            },
            {
                production_type = "input",
                pipe_covers = py.pipe_covers(false, true, true, true),
                pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {2.0, -3.0}, direction = defines.direction.north}},
                secondary_draw_orders = {north = -1}
            },
            {
                production_type = "output",
                pipe_covers = py.pipe_covers(false, true, true, true),
                pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
                volume = 1000,
                pipe_connections = {{flow_direction = "output", position = {0.0, 3.0}, direction = defines.direction.south}},
                secondary_draw_orders = {north = -1}
            },
            {
                production_type = "output",
                pipe_covers = py.pipe_covers(false, true, true, true),
                pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
                volume = 1000,
                pipe_connections = {{flow_direction = "output", position = {-2.0, 3.0}, direction = defines.direction.south}},
                secondary_draw_orders = {north = -1}
            },
            {
                production_type = "output",
                pipe_covers = py.pipe_covers(false, true, true, true),
                pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.88}, nil, nil),
                volume = 1000,
                pipe_connections = {{flow_direction = "output", position = {2.0, 3.0}, direction = defines.direction.south}},
                secondary_draw_orders = {north = -1}
            },
        },
        graphics_set = {
            animation = {
                layers = {
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/biofactory/base.png",
                        priority = "high",
                        width = 256,
                        height = 32,
                        line_length = 8,
                        frame_count = 100,
                        animation_speed = 0.4,
                        shift = util.by_pixel(16, 96)
                    },
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/biofactory/a1.png",
                        priority = "high",
                        width = 128,
                        height = 227,
                        line_length = 15,
                        frame_count = 100,
                        animation_speed = 0.4,
                        shift = util.by_pixel(-48, -31)
                    },
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/biofactory/a1-mask.png",
                        priority = "high",
                        width = 128,
                        height = 227,
                        line_length = 15,
                        frame_count = 100,
                        animation_speed = 0.4,
                        shift = util.by_pixel(-48, -31),
                        tint = py.tints[tier]
                    },
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/biofactory/a2.png",
                        priority = "high",
                        width = 128,
                        height = 227,
                        line_length = 15,
                        frame_count = 100,
                        animation_speed = 0.4,
                        shift = util.by_pixel(80, -31)
                    },
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/biofactory/a2-mask.png",
                        priority = "high",
                        width = 128,
                        height = 227,
                        line_length = 15,
                        frame_count = 100,
                        animation_speed = 0.4,
                        shift = util.by_pixel(80, -31),
                        tint = py.tints[tier]
                    },
                }
            },
        },
        impact_category = "metal-large",
        working_sound = {
            sound = {filename = "__pyalienlifegraphics__/sounds/biofactory.ogg", volume = 1.3},
            idle_sound = {filename = "__pyalienlifegraphics__/sounds/biofactory.ogg", volume = 0.3},
            apparent_volume = 2.5
        }
    }
end
