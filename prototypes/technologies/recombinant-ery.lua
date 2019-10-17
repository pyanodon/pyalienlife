TECHNOLOGY {
    type = "technology",
    name = "recombinant-ery",
    icon = "__pyalienlife__/graphics/technology/recombinant-ery.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"pharmagenomics"},
    effects = {},
    unit = {
        count = 400,
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
