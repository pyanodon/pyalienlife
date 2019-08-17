TECHNOLOGY {
    type = "technology",
    name = "yotoi",
    icon = "__pyalienlife__/graphics/technology/yotoi.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"botany-mk02","genetics-mk02"},
    effects = {},
    unit = {
        count = 120,
        ingredients = {
            {"automation-science-pack", 4},
            {"logistic-science-pack", 2},
            {"py-science-pack", 1},
        },
        time = 50
    }
}
