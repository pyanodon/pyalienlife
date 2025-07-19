RECIPE {
    type = "recipe",
    name = "generator-2",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "stainless-steel",  amount = 15},
        {type = "item", name = "niobium-pipe",     amount = 10},
        {type = "item", name = "nexelit-plate",    amount = 25},
        {type = "item", name = "advanced-circuit", amount = 10},
        {type = "item", name = "dingrits",         amount = 1},
        {type = "item", name = "engine-unit",      amount = 5},
        {type = "item", name = "nbfe-alloy",       amount = 20},
        {type = "item", name = "iron-gear-wheel",  amount = 40}
    },
    results = {
        {type = "item", name = "generator-2", amount = 1}
    }
}:add_unlock("domestication-mk03")

ITEM {
    type = "item",
    name = "generator-2",
    icon = "__pyalienlifegraphics__/graphics/icons/generator-2.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-others",
    order = "a",
    place_result = "generator-2",
    stack_size = 10
}

ENTITY {
    type = "burner-generator",
    name = "generator-2",
    icon = "__pyalienlifegraphics__/graphics/icons/generator-2.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "generator-2"},
    max_health = 100,
    corpse = "big-remnants",
    resistances = {
        {
            type = "fire",
            percent = 70
        }
    },
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    energy_source = {
        type = "electric",
        usage_priority = "secondary-output",
    },
    burner = {
        type = "burner",
        fuel_categories = {"dingrits"},
        effectivity = 3,
        fuel_inventory_size = 1,
        burnt_inventory_size = 1,
        emissions_per_minute = {
            pollution = 0
        },
    },
    effectivity = 2,
    max_power_output = "60MW",
    animation = {
        layers = {
            {
                filename = "__pyalienlifegraphics__/graphics/entity/generator-2/a1.png",
                width = 128,
                height = 256,
                line_length = 16,
                frame_count = 85,
                animation_speed = 0.4,
                shift = util.by_pixel(-48, -16)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/generator-2/a2.png",
                width = 128,
                height = 256,
                line_length = 16,
                frame_count = 85,
                animation_speed = 0.4,
                shift = util.by_pixel(80, -16)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/generator-2/a1.png",
                width = 128,
                height = 256,
                line_length = 16,
                frame_count = 85,
                animation_speed = 0.4,
                shift = util.by_pixel(-48, -16)
            },
            {
                filename = "__pyalienlifegraphics__/graphics/entity/generator-2/a2.png",
                width = 128,
                height = 256,
                line_length = 16,
                frame_count = 85,
                animation_speed = 0.4,
                shift = util.by_pixel(80, -16)
            },
        },
    },

    min_perceived_performance = 0.1,
    performance_to_sound_speedup = 0.0,
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pyalienlifegraphics__/sounds/generator-2.ogg", volume = 0.9},
        idle_sound = {filename = "__pyalienlifegraphics__/sounds/generator-2.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
