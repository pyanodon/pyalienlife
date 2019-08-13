TECHNOLOGY {
    type = "technology",
    name = "navens",
    icon = "__pyalienlife__/graphics/technology/navens.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"mycology-mk02","genetics-mk02"},
    effects = {},
    unit = {
        count = 120,
        ingredients = {
            {"automation-science-pack", 4},
            {"logistic-science-pack", 1},
            {"py-science-pack", 2},
        },
        time = 50
    }
}
