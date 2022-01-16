TECHNOLOGY {
    type = "technology",
    name = "growth-hormone",
    icon = "__pyalienlifegraphics__/graphics/technology/growth-hormone.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"biotech-mk04"},
    effects = {},
    unit = {
        count = 350,
        ingredients = {
            {"automation-science-pack", 3},
            {"logistic-science-pack", 2},
            {'py-science-pack-2', 1},
        },
        time = 50
    }
}
