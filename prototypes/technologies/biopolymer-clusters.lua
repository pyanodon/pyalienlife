TECHNOLOGY {
    type = "technology",
    name = "biopolymer-clusters",
    icon = "__pyalienlifegraphics__/graphics/technology/biopolymer-clusters.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"korlex-mk02"},
    effects = {},
    unit = {
        count = 250,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {'chemical-science-pack', 1},
        },
        time = 50
    }
}