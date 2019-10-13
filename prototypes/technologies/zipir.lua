TECHNOLOGY {
    type = "technology",
    name = "zipir",
    icon = "__pyalienlife__/graphics/technology/zipir.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"water-animals-mk01","food-mk01"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
        },
        time = 50
    }
}