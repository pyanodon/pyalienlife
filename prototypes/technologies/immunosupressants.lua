TECHNOLOGY {
    type = "technology",
    name = "immunosupressants",
    icon = "__pyalienlifegraphics__/graphics/technology/immunosupressants.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"genetics-mk04"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 2},
            {"py-science-pack-1",       1},
            {"logistic-science-pack",   2},
            {"py-science-pack-2",       1},
            {"chemical-science-pack",   2},
            {"py-science-pack-3",       1},
        },
        time = 50
    }
}
