TECHNOLOGY {
    type = "technology",
    name = "antitumor",
    icon = "__pyalienlifegraphics__/graphics/technology/antitumor.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"pharmagenomics"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 4},
            {"logistic-science-pack", 2},
            {'chemical-science-pack', 3},
            {'production-science-pack', 2},
            {"py-science-pack", 1},
        },
        time = 50
    }
}
