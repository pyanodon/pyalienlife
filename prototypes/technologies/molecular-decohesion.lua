TECHNOLOGY {
    type = "technology",
    name = "molecular-decohesion",
    icon = "__pyalienlife__/graphics/technology/molecular-decohesion.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"biotech-mk02"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 4},
            {"logistic-science-pack", 3},
            {"py-science-pack", 1},
        },
        time = 50
    }
}
