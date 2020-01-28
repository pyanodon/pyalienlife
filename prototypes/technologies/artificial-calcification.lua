TECHNOLOGY {
    type = "technology",
    name = "artificial-calcification",
    icon = "__pyalienlifegraphics__/graphics/technology/artificial-calcification.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"water-animals-mk02"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
            {'logistic-science-pack', 2},
            {'chemical-science-pack', 1},
        },
        time = 45
    }
}