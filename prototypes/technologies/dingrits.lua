TECHNOLOGY {
    type = "technology",
    name = "dingrits",
    icon = "__pyalienlife__/graphics/technology/dingrits.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"land-animals-mk03","biotech-mk03","genetic-design"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 4},
            {"logistic-science-pack", 3},
            {'chemical-science-pack', 2},
            {"py-science-pack", 1},

        },
        time = 50
    }
}
