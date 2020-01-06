TECHNOLOGY {
    type = "technology",
    name = "phadai",
    icon = "__pyalienlife__/graphics/technology/phadai.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"land-animals-mk03"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 3},
            {"logistic-science-pack", 2},
            {'chemical-science-pack', 1},
            {"py-science-pack", 2},
        },
        time = 50
    }
}
