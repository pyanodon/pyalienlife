TECHNOLOGY {
    type = "technology",
    name = "antiviral",
    icon = "__pyalienlife__/graphics/technology/antiviral.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"pharmagenomics"},
    effects = {},
    unit = {
        count = 200,
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
