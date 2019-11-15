TECHNOLOGY {
    type = "technology",
    name = "vonix",
    icon = "__pyalienlife__/graphics/technology/vonix.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"land-animals-mk04","biotech-mk04"},
    effects = {},
    unit = {
        count = 250,
        ingredients = {
            {"automation-science-pack", 5},
            {"logistic-science-pack", 4},
            {'chemical-science-pack', 3},
            {"py-science-pack", 3},
            {'production-science-pack', 2},
        },
        time = 50
    }
}
