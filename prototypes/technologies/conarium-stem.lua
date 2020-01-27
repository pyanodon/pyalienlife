TECHNOLOGY {
    type = "technology",
    name = "conarium-stem",
    icon = "__pyalienlifegraphics__/graphics/technology/conarium-stem.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"scrondrix-mk02"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {'chemical-science-pack', 1},
            {'py-science-pack', 1},
            {'production-science-pack', 1},
        },
        time = 50
    }
}