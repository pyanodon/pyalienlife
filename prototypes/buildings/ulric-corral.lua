RECIPE {
    type = "recipe",
    name = "ulric-corral-mk01",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "steel-plate",        amount = 20},
        {type = "item", name = "titanium-plate",     amount = 20},
        {type = "item", name = "iron-gear-wheel",    amount = 20},
        {type = "item", name = "iron-plate",         amount = 10},
        {type = "item", name = "electronic-circuit", amount = 10}
    },
    results = {
        {type = "item", name = "ulric-corral-mk01", amount = 1}
    }
}:add_unlock("ulric")

RECIPE {
    type = "recipe",
    name = "ulric-corral-mk02",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "latex",             amount = 25},
        {type = "item", name = "titanium-plate",    amount = 20},
        {type = "item", name = "ulric-corral-mk01", amount = 1},
        {type = "item", name = "duralumin",         amount = 15},
        {type = "item", name = "advanced-circuit",  amount = 15},
        {type = "item", name = "neuroprocessor",    amount = 15},
    },
    results = {
        {type = "item", name = "ulric-corral-mk02", amount = 1}
    }
}:add_unlock("land-animals-mk02"):add_ingredient {type = "item", name = "small-parts-02", amount = 25}

RECIPE {
    type = "recipe",
    name = "ulric-corral-mk03",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "sc-unit",           amount = 15},
        {type = "item", name = "nbti-alloy",        amount = 20},
        {type = "item", name = "ulric-corral-mk02", amount = 1},
        {type = "item", name = "nichrome",          amount = 15},
        {type = "item", name = "processing-unit",   amount = 15},
        {type = "item", name = "boron-carbide",     amount = 15},
    },
    results = {
        {type = "item", name = "ulric-corral-mk03", amount = 1}
    }
}:add_unlock("land-animals-mk03"):add_ingredient {type = "item", name = "small-parts-03", amount = 25}

RECIPE {
    type = "recipe",
    name = "ulric-corral-mk04",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "agzn-alloy",            amount = 20},
        {type = "item", name = "metallic-glass",        amount = 20},
        {type = "item", name = "ulric-corral-mk03",     amount = 1},
        {type = "item", name = "nenbit-matrix",         amount = 50},
        {type = "item", name = "control-unit",          amount = 15},
        {type = "item", name = "low-density-structure", amount = 15},
    },
    results = {
        {type = "item", name = "ulric-corral-mk04", amount = 1}
    }
}:add_unlock("land-animals-mk04")

local FULL_CRAFTING_SPEED = 2 -- crafting speed when full of mk01 modules

for i = 1, 4 do
    local name = "ulric-corral-mk0" .. i
    local icon = "__pyalienlifegraphics__/graphics/icons/ulric-corral-mk0" .. i .. ".png"
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
        fast_replaceable_group = "ulric-corral",
        max_health = 250 * i,
        corpse = "big-remnants",
        dying_explosion = "big-explosion",
        collision_box = {{-5.8, -5.8}, {5.8, 5.8}},
        selection_box = {{-6.0, -6.0}, {6.0, 6.0}},
        module_slots = MODULE_SLOTS,
        allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
        crafting_categories = {"ulric"},
        crafting_speed = (i == 1) and py.farm_speed(MODULE_SLOTS, FULL_CRAFTING_SPEED) or py.farm_speed_derived(MODULE_SLOTS, "ulric-corral-mk01"),
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
                    animation = {
                        filename = "__pyalienlifegraphics2__/graphics/entity/ulric-corral/alpha.png",
                        frame_count = 100,
                        line_length = 10,
                        width = 128,
                        height = 128,
                        animation_speed = 0.3,
                        shift = util.by_pixel(114, -37)
                    },
                    fadeout = true,
                    constant_speed = true,
                },
                {
                    animation = {
                        filename = "__pyalienlifegraphics2__/graphics/entity/ulric-corral/leftdown.png",
                        frame_count = 100,
                        line_length = 10,
                        width = 96,
                        height = 96,
                        animation_speed = 0.3,
                        shift = util.by_pixel(-128, 136),
                    },
                    fadeout = true,
                    constant_speed = true,
                },
                {
                    animation = {
                        filename = "__pyalienlifegraphics2__/graphics/entity/ulric-corral/left.png",
                        frame_count = 100,
                        line_length = 10,
                        width = 96,
                        height = 96,
                        animation_speed = 0.3,
                        shift = util.by_pixel(-82, -9),
                    },
                    fadeout = true,
                    constant_speed = true,
                },
                {
                    animation = {
                        filename = "__pyalienlifegraphics2__/graphics/entity/ulric-corral/mid.png",
                        frame_count = 100,
                        line_length = 20,
                        width = 64,
                        height = 96,
                        animation_speed = 0.3,
                        shift = util.by_pixel(5, -11),
                    },
                    fadeout = true,
                    constant_speed = true,
                },
                {
                    animation = {
                        filename = "__pyalienlifegraphics2__/graphics/entity/ulric-corral/mom.png",
                        frame_count = 100,
                        line_length = 10,
                        width = 96,
                        height = 128,
                        animation_speed = 0.3,
                        shift = util.by_pixel(63, 112),
                    },
                    fadeout = true,
                    constant_speed = true,
                },
            },
            animation = {
                layers = {
                    {
                        filename = "__pyalienlifegraphics2__/graphics/entity/ulric-corral/off.png",
                        width = 383,
                        height = 448,
                        frame_count = 1,
                        shift = util.by_pixel(0, -32),
                    },
                    {
                        filename = "__pyalienlifegraphics2__/graphics/entity/ulric-corral/off-mask.png",
                        width = 383,
                        height = 448,
                        frame_count = 1,
                        shift = util.by_pixel(0, -32),
                        tint = py.tints[i]
                    },
                }
            },
        },
        impact_category = "metal-large",
        working_sound = {
            sound = {filename = "__pycoalprocessinggraphics__/sounds/ulric-corral.ogg", volume = 0.5},
            apparent_volume = 0.45
        }
    }
end
