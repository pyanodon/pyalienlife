TECHNOLOGY {
    type = "technology",
    name = "bmp",
    icon = "__pyalienlifegraphics__/graphics/technology/bmp.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"pharmagenomics"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 2},
            {"logistic-science-pack", 2},
            {'chemical-science-pack', 2},
            {'production-science-pack', 2},
            {"py-science-pack", 1},
        },
        time = 50
    }
}
