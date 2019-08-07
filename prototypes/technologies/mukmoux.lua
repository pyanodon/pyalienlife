TECHNOLOGY {
    type = "technology",
    name = "mukmoux",
    icon = "__pyalienlife__/graphics/technology/mukmoux.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"land-animals-mk02","biotech-mk02","organic-breeding"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 2},
            {"py-science-pack", 3},
        },
        time = 50
    }
}
