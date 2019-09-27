TECHNOLOGY {
    type = "technology",
    name = "bio-implants",
    icon = "__pyalienlife__/graphics/technology/bio-implants.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"pharmagenomics","biotech-mk03"},
    effects = {},
    unit = {
        count = 120,
        ingredients = {
            {"automation-science-pack", 3},
            {"logistic-science-pack", 3},
            {'chemical-science-pack', 2},
            {'production-science-pack', 1},
            {"py-science-pack", 2},
        },
        time = 50
    }
}
