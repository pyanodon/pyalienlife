RECIPE({
    type = "recipe",
    name = "auog-paddock-mk01",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        { type = "item", name = "stone",      amount = 100 },
        { type = "item", name = "soil",       amount = 300 },
        { type = "item", name = "iron-plate", amount = 80 },
        { type = "item", name = "bolts",      amount = 50 }
    },
    results = {
        { type = "item", name = "auog-paddock-mk01", amount = 1 }
    }
}):add_unlock("auog")

RECIPE({
    type = "recipe",
    name = "auog-paddock-mk02",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        { type = "item", name = "auog-paddock-mk01",  amount = 1 },
        { type = "item", name = "titanium-plate",     amount = 35 },
        { type = "item", name = "electronic-circuit", amount = 10 },
        { type = "item", name = "duralumin",          amount = 50 },
        { type = "item", name = "small-parts-02",     amount = 30 }
    },
    results = {
        { type = "item", name = "auog-paddock-mk02", amount = 1 }
    }
}):add_unlock("land-animals-mk02")

RECIPE({
    type = "recipe",
    name = "auog-paddock-mk03",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        { type = "item", name = "auog-paddock-mk02", amount = 1 },
        { type = "item", name = "nbti-alloy",        amount = 25 },
        { type = "item", name = "advanced-circuit",  amount = 20 },
        { type = "item", name = "neuromorphic-chip", amount = 30 },
        { type = "item", name = "py-heat-exchanger", amount = 1 },
        { type = "item", name = "small-parts-03",    amount = 30 }
    },
    results = {
        { type = "item", name = "auog-paddock-mk03", amount = 1 }
    }
}):add_unlock("land-animals-mk03")

RECIPE({
    type = "recipe",
    name = "auog-paddock-mk04",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        { type = "item", name = "auog-paddock-mk03",     amount = 1 },
        { type = "item", name = "science-coating",       amount = 15 },
        { type = "item", name = "processing-unit",       amount = 30 },
        { type = "item", name = "low-density-structure", amount = 30 },
        { type = "item", name = "metallic-glass",        amount = 10 },
    },
    results = {
        { type = "item", name = "auog-paddock-mk04", amount = 1 }
    }
}):add_unlock("land-animals-mk04")

local base_craft_speed = 2 -- crafting speed for mk01 full of mk01 modules
local module_slots_per_tier = 2
local module_slots_base = 2
local base_name = "auog-paddock-mk0"
local base_subgroup = "py-alienlife-farm-buildings-mk0"
local energy_tiers = { "500kW", "200kW", "300kW", "500kW" }

for tier = 1, 4 do
    local name = base_name .. tier
    local module_slots = module_slots_base + module_slots_per_tier * tier

    ITEM({
        type = "item",
        name = name,
        icon = "__pyalienlifegraphics__/graphics/icons/" .. name .. ".png",
        icon_size = 64,
        flags = {},
        subgroup = base_subgroup .. tier,
        order = "d",
        place_result = name,
        stack_size = 10
    })

    ENTITY({
        type = "assembling-machine",
        name = name,
        icon = "__pyalienlifegraphics__/graphics/icons/" .. name .. ".png",
        icon_size = 64,
        flags = { "placeable-neutral", "player-creation" },
        minable = { mining_time = 0.5, result = name },
        fast_replaceable_group = "auog-paddock",
        max_health = 100,
        corpse = "medium-remnants",
        dying_explosion = "big-explosion",
        collision_box = { { -6.6, -6.6 }, { 6.6, 6.6 } },
        selection_box = { { -7.0, -7.0 }, { 7.0, 7.0 } },
        module_slots = module_slots,
        allowed_effects = { "speed", "productivity", "consumption", "pollution", "quality" },
        crafting_categories = { "auog" },
        crafting_speed = (tier == 1) and py.farm_speed(module_slots, base_craft_speed) or py.farm_speed_derived(module_slots, base_name .. 1, 1, tier),
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = {
                pollution = 2
            },
        },
        energy_usage = energy_tiers[ tier ],
        graphics_set = {
            working_visualisations = {
                {
                    north_position = util.by_pixel(-78, 63),
                    west_position = util.by_pixel(-78, 63),
                    south_position = util.by_pixel(-78, 63),
                    east_position = util.by_pixel(-78, 63),
                    animation = {
                        filename = "__pyalienlifegraphics__/graphics/entity/auog-paddock/left.png",
                        frame_count = 96,
                        line_length = 12,
                        width = 160,
                        height = 256,
                        animation_speed = 0.3
                    }
                },
                {
                    north_position = util.by_pixel(82, 63),
                    west_position = util.by_pixel(82, 63),
                    south_position = util.by_pixel(82, 63),
                    east_position = util.by_pixel(82, 63),
                    animation = {
                        filename = "__pyalienlifegraphics__/graphics/entity/auog-paddock/right.png",
                        frame_count = 96,
                        line_length = 12,
                        width = 160,
                        height = 256,
                        animation_speed = 0.3
                    }
                },
            },
            animation = {
                layers = {
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/auog-paddock/off.png",
                        width = 448,
                        height = 448,
                        frame_count = 1,
                        shift = util.by_pixel(2, -1)
                    },
                    {
                        filename = "__pyalienlifegraphics__/graphics/entity/auog-paddock/off-mask.png",
                        width = 448,
                        height = 448,
                        frame_count = 1,
                        shift = util.by_pixel(2, -1),
                        tint = py.tints[ tier ]
                    },
                }
            },
        },

        impact_category = "metal-large",
        working_sound = {
            sound = { filename = "__pyalienlifegraphics__/sounds/auog-paddock.ogg", volume = 1.5 },
            idle_sound = { filename = "__pyalienlifegraphics__/sounds/auog-paddock.ogg", volume = 0.3 },
            apparent_volume = 2.5
        }
    })
end
