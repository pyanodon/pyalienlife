TECHNOLOGY {
    type = "technology",
    name = "growth-hormone",
    icon = "__pyalienlife__/graphics/technology/growth-hormone.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"pharmagenomics"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 3},
            {"logistic-science-pack", 2},
            {'chemical-science-pack', 1},
            {'production-science-pack', 1},
            {"py-science-pack", 2},
        },
        time = 50
    }
}
