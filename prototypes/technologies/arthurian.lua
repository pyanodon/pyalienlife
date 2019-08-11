TECHNOLOGY {
    type = "technology",
    name = "arthurian",
    icon = "__pyalienlife__/graphics/technology/arthurian.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"land-animals-mk02","biotech-mk02","genetics-mk02","organic-breeding"},
    effects = {},
    unit = {
        count = 120,
        ingredients = {
            {"automation-science-pack", 4},
            {"logistic-science-pack", 1},
            {"py-science-pack", 2},
        },
        time = 50
    }
}
