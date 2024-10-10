TECHNOLOGY {
    type = "technology",
    name = "antiviral",
    icon = "__pyalienlifegraphics__/graphics/technology/antiviral.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"biotech-mk04"},
    effects = {},
    unit = {
        count = 350,
        ingredients = {
            {"automation-science-pack", 3},
            {"logistic-science-pack",   2},
            {"chemical-science-pack",   1},
            {"production-science-pack", 1},
        },
        time = 50
    }
}
