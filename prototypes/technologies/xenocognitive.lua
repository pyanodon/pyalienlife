TECHNOLOGY {
    type = "technology",
    name = "xgv",
    icon = "__pyalienlifegraphics__/graphics/technology/xgv.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"zungror-mk02"},
    effects = {},
    unit = {
        count = 600,
        ingredients = {
            {"automation-science-pack", 5},
            {"py-science-pack-1",       1},
            {"logistic-science-pack",   4},
            {"military-science-pack",   3},
            {"py-science-pack-2",       1},
            {"chemical-science-pack",   3},
            {"py-science-pack-3",       1},
            {"production-science-pack", 3},
        },
        time = 50
    }
}
