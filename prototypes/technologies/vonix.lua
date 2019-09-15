TECHNOLOGY {
    type = "technology",
    name = "vonix",
    icon = "__pyalienlife__/graphics/technology/vonix.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"land-animals-mk04","biotech-mk04"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 5},
            {"logistic-science-pack", 4},
            {'chemical-science-pack', 3},
            {"py-science-pack", 3},
            {'utility-science-pack', 2},
            {'production-science-pack', 1},
        },
        time = 50
    }
}
