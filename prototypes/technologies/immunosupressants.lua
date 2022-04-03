TECHNOLOGY {
    type = "technology",
    name = "immunosupressants",
    icon = "__pyalienlifegraphics__/graphics/technology/immunosupressants.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"genetics-mk03"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 2},
            {"logistic-science-pack", 2},
            {"chemical-science-pack", 2},
        },
        time = 50
    }
}
