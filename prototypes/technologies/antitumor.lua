TECHNOLOGY {
    type = "technology",
    name = "antitumor",
    icon = "__pyalienlifegraphics__/graphics/technology/antitumor.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"biotech-mk04"},
    effects = {},
    unit = {
        count = 350,
        ingredients = {
            {"automation-science-pack", 4},
            {"py-science-pack-1",       1},
            {"logistic-science-pack",   2},
            {"py-science-pack-2",       1},
            {"chemical-science-pack",   1},
            {"production-science-pack", 1},
        },
        time = 50
    }
}
