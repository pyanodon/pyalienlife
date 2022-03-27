TECHNOLOGY {
    type = "technology",
    name = "pharmagenomics",
    icon = "__pyalienlifegraphics__/graphics/technology/pharmagenomics.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"biotech-mk03","dingrits","genetics-mk03"},
    effects = {},
    unit = {
        count = 400,
        ingredients = {
            {"automation-science-pack", 3},
            {"logistic-science-pack", 2},
            -- {'py-science-pack-2', 1},
        },
        time = 50
    }
}
