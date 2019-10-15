TECHNOLOGY {
    type = "technology",
    name = "trits",
    icon = "__pyalienlife__/graphics/technology/trits.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"water-animals-mk02","biotech-mk02"},
    effects = {},
    unit = {
        count = 130,
        ingredients = {
            {"automation-science-pack", 4},
            {"logistic-science-pack", 3},
            {'chemical-science-pack', 1},
            {"py-science-pack", 2},
        },
        time = 50
    }
}
