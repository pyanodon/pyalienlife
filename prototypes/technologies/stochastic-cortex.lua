TECHNOLOGY {
    type = "technology",
    name = "stochastic-cortex",
    icon = "__pyalienlifegraphics__/graphics/technology/stochastic-cortex.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"cridren-mk02"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1",       1},
            {"logistic-science-pack",   1},
            {"py-science-pack-2",       1},
            {"chemical-science-pack",   1},
            {"py-science-pack-3",       1},
            {"production-science-pack", 1},
        },
        time = 50
    }
}
