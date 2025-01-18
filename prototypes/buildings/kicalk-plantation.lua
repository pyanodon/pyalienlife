local pipe = {
    south = {
        filename = "__pyalienlifegraphics__/graphics/entity/kicalk-plantation/bottom.png",
        priority = "extra-high",
        width = 229,
        height = 235,
    }
}

RECIPE {
    type = "recipe",
    name = "kicalk-plantation-mk01",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "botanical-nursery", amount = 1},
        {type = "item", name = "duralumin",         amount = 40},
        {type = "item", name = "glass",             amount = 30},
        {type = "item", name = "steel-plate",       amount = 25},
    },
    results = {
        {type = "item", name = "kicalk-plantation-mk01", amount = 1}
    }
}:add_unlock("kicalk")

RECIPE {
    type = "recipe",
    name = "kicalk-plantation-mk02",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "kicalk-plantation-mk01", amount = 1},
        {type = "item", name = "advanced-circuit",       amount = 40},
        {type = "item", name = "engine-unit",            amount = 5},
        {type = "item", name = "latex",                  amount = 30},
        {type = "item", name = "titanium-plate",         amount = 35},
    },
    results = {
        {type = "item", name = "kicalk-plantation-mk02", amount = 1}
    }
}:add_unlock("botany-mk02")

RECIPE {
    type = "recipe",
    name = "kicalk-plantation-mk03",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "kicalk-plantation-mk02", amount = 1},
        {type = "item", name = "electric-engine-unit",   amount = 10},
        {type = "item", name = "processing-unit",        amount = 40},
        {type = "item", name = "neuromorphic-chip",      amount = 30},
        {type = "item", name = "nichrome",               amount = 35},
    },
    results = {
        {type = "item", name = "kicalk-plantation-mk03", amount = 1}
    }
}:add_unlock("botany-mk03")

RECIPE {
    type = "recipe",
    name = "kicalk-plantation-mk04",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "kicalk-plantation-mk03", amount = 1},
        {type = "item", name = "control-unit",           amount = 10},
        {type = "item", name = "divertor",               amount = 5},
        {type = "item", name = "wall-shield",            amount = 5},
        {type = "item", name = "nenbit-matrix",          amount = 20},
        {type = "item", name = "agzn-alloy",             amount = 35},
    },
    results = {
        {type = "item", name = "kicalk-plantation-mk04", amount = 1}
    }
}:add_unlock("botany-mk04")

local FULL_CRAFTING_SPEED = 0.5 -- crafting speed when full of mk01 modules

for i = 1, 4 do
    local name = "kicalk-plantation-mk0" .. i
    local icon = "__pyalienlifegraphics__/graphics/icons/kicalk-plantation-mk0" .. i .. ".png"
    local icon_size = 64
    local MODULE_SLOTS = 20 * i

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
        fast_replaceable_group = "kicalk-plantation",
        max_health = 200 * i,
        corpse = "big-remnants",
        dying_explosion = "big-explosion",
        collision_box = {{-6.2, -6.2}, {6.2, 6.2}},
        selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
        forced_symmetry = "diagonal-pos",
        module_slots = MODULE_SLOTS,
        allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
        crafting_categories = {"kicalk"},
        crafting_speed = (i == 1) and py.farm_speed(MODULE_SLOTS, FULL_CRAFTING_SPEED) or py.farm_speed_derived(MODULE_SLOTS, "kicalk-plantation-mk01"),
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = {
                pollution = -15 * i
            },
        },
        energy_usage = (900 * i) .. "kW",
        graphics_set = {
            animation = {
                layers = {
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/kicalk-plantation/left.png",
                        priority = "extra-high",
                        width = 128,
                        height = 448,
                        line_length = 16,
                        frame_count = 50,
                        animation_speed = 0.4,
                        shift = util.by_pixel(-144, -5),
                    },
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/kicalk-plantation/mid.png",
                        priority = "extra-high",
                        width = 128,
                        height = 448,
                        line_length = 16,
                        frame_count = 50,
                        animation_speed = 0.4,
                        shift = util.by_pixel(-16, -5),
                    },
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/kicalk-plantation/mid-mask.png",
                        priority = "extra-high",
                        width = 128,
                        height = 448,
                        line_length = 16,
                        frame_count = 50,
                        animation_speed = 0.4,
                        shift = util.by_pixel(-16, -5),
                        tint = py.tints[i]
                    },
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/kicalk-plantation/right.png",
                        priority = "extra-high",
                        width = 128,
                        height = 448,
                        line_length = 16,
                        frame_count = 50,
                        animation_speed = 0.4,
                        shift = util.by_pixel(112, -5),
                    },
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/kicalk-plantation/right-mask.png",
                        priority = "extra-high",
                        width = 128,
                        height = 448,
                        line_length = 16,
                        frame_count = 50,
                        animation_speed = 0.4,
                        shift = util.by_pixel(112, -5),
                        tint = py.tints[i]
                    },
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/kicalk-plantation/far-right.png",
                        priority = "extra-high",
                        width = 32,
                        height = 448,
                        repeat_count = 50,
                        frame_count = 1,
                        line_length = 1,
                        animation_speed = 0.4,
                        shift = util.by_pixel(192, -5),
                    },
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/kicalk-plantation/glow.png",
                        priority = "extra-high",
                        width = 416,
                        height = 448,
                        repeat_count = 50,
                        frame_count = 1,
                        line_length = 1,
                        animation_speed = 0.4,
                        shift = util.by_pixel(0, -5),
                        --draw_as_glow = true,
                        draw_as_light = true,
                    },
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/kicalk-plantation/glow.png",
                        priority = "extra-high",
                        width = 416,
                        height = 448,
                        repeat_count = 50,
                        frame_count = 1,
                        line_length = 1,
                        animation_speed = 0.4,
                        shift = util.by_pixel(0, -5),
                        draw_as_glow = true,
                        --draw_as_light = true,
                    },
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/kicalk-plantation/sh.png",
                        priority = "extra-high",
                        width = 512,
                        height = 480,
                        repeat_count = 50,
                        frame_count = 1,
                        line_length = 1,
                        animation_speed = 0.4,
                        shift = util.by_pixel(16, 11),
                        draw_as_shadow = true,
                    }
                }
            },
        },
        fluid_boxes_off_when_no_fluid_recipe = true,
        fluid_boxes = {
            --1
            {
                production_type = "input",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.1, -4.1}, nil, nil, pipe),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {0.0, 6.0}, direction = defines.direction.south}}
            },
            {
                production_type = "input",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.1, -4.1}, nil, nil, pipe),
                pipe_covers = py.pipe_covers(false, true, true, true),
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {0.0, -6.0}, direction = defines.direction.north}}
            },
            {
                production_type = "output",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.1, -4.1}, nil, nil, pipe),
                pipe_covers = py.pipe_covers(false, false, true, true),
                volume = 100,
                pipe_connections = {{flow_direction = "output", position = {-6.0, 0.0}, direction = defines.direction.west}}
            },
            {
                production_type = "output",
                pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.1, -4.1}, nil, nil, pipe),
                pipe_covers = py.pipe_covers(false, false, true, true),
                volume = 100,
                pipe_connections = {{flow_direction = "output", position = {6.0, 0.0}, direction = defines.direction.east}}
            },
        },
        impact_category = "metal-large",
        working_sound = {
            sound = {filename = "__pyalienlifegraphics__/sounds/kicalk-plantation.ogg", volume = 1.5},
            idle_sound = {filename = "__pyalienlifegraphics__/sounds/kicalk-plantation.ogg", volume = 0.3},
            apparent_volume = 2.5
        }
    }
    
    -- Swap to niobium pipes
    for _, fluid_box in pairs(data.raw["assembling-machine"][name].fluid_boxes) do
        -- Yeah let's just throw a boolean value in the list of fluid boxes - someone at Wube, probably
        if type(fluid_box) == "boolean" then
            break
        end
        if fluid_box.pipe_covers.south.layers then
            fluid_box.pipe_covers.south.layers[1].filename = "__pyindustry__/graphics/entity/niobium-pipe/pipe-cover-south.png"
            fluid_box.pipe_covers.south.layers[2].filename = "__pyindustry__/graphics/entity/niobium-pipe/pipe-cover-south-shadow.png"
        end
        -- Move cover up to compensate
        fluid_box.pipe_picture.south.scale = 0.5
        fluid_box.pipe_picture.south.shift = {0, -2.33}
    end
end