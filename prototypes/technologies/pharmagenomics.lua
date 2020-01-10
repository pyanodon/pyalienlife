TECHNOLOGY {
    type = "technology",
    name = "pharmagenomics",
    icon = "__pyalienlife__/graphics/technology/pharmagenomics.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"biotech-mk04","genetics-mk04"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 3},
            {"logistic-science-pack", 2},
            {'chemical-science-pack', 1},
            {"py-science-pack", 2},
        },
        time = 50
    }
}
