TECHNOLOGY {
    type = "technology",
    name = "grod",
    icon = "__pyalienlife__/graphics/technology/grod.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"botany-mk02"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 2},
            {'logistic-science-pack', 2},
            {'py-science-pack', 1},
        },
        time = 50
    }
}
