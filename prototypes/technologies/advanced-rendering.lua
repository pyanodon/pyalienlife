TECHNOLOGY {
    type = "technology",
    name = "advanced-rendering",
    icon = "__pyalienlife__/graphics/technology/adv-rendering.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"biotech-mk02","rendering"},
    effects = {},
    unit = {
        count = 160,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
        },
        time = 45
    }
}
