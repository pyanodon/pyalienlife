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
            {"automation-science-pack", 4},
            {"logistic-science-pack", 2},
            -- {'py-science-pack-2', 1},
        },
        time = 50
    }
}
