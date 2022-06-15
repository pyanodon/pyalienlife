TECHNOLOGY {
    type = "technology",
    name = "pharmagenomics",
    icon = "__pyalienlifegraphics__/graphics/technology/pharmagenomics.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"biotech-mk03","dingrits","genetics-mk04"},
    effects = {},
    unit = {
        count = 400,
        ingredients = {
            {"automation-science-pack", 3},
            {"py-science-pack-1", 1},
            {"logistic-science-pack", 2},
            {"py-science-pack-2", 1},
            {"chemical-science-pack", 1},
            {"py-science-pack-3", 1},
        },
        time = 50
    }
}
