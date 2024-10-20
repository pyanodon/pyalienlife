TECHNOLOGY {
    type = "technology",
    name = "cardial-hypopharynx",
    icon = "__pyalienlifegraphics3__/graphics/technology/cardial.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"arqad-mk02"},
    effects = {},
    unit = {
        count = 250,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   1},
            {"chemical-science-pack",   1},
            {"production-science-pack", 1},
        },
        time = 50
    }
}
