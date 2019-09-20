TECHNOLOGY {
    type = "technology",
    name = "phagnot",
    icon = "__pyalienlife__/graphics/technology/phagnot.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"land-animals-mk02","food-mk02","biotech-mk02"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 2},
        },
        time = 50
    }
}
