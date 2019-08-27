TECHNOLOGY {
    type = "technology",
    name = "rennea",
    icon = "__pyalienlife__/graphics/technology/rennea.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"botany-mk03"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 3},
            {"logistic-science-pack", 2},
            {'chemical-science-pack', 1},
            {"py-science-pack", 2},
        },
        time = 50
    }
}
