TECHNOLOGY {
    type = "technology",
    name = "food-mk01",
    icon = "__pyalienlife__/graphics/technology/food-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"zoology","biotech-mk01"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {'logistic-science-pack', 2},
        },
        time = 50
    }
}
