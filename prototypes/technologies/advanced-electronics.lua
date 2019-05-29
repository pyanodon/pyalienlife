TECHNOLOGY {
    type = "technology",
    name = "advanced-electronics",
    icon = "__pyhightech__/graphics/technology/advanced-electronics.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"basic-electronics","fuel-production","methanol-processing-2"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
			{"chemical-science-pack", 1}
        },
        time = 45
    }
}
