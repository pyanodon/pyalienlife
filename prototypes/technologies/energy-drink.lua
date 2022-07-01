TECHNOLOGY {
    type = "technology",
    name = "energy-drink",
    icon = "__pyalienlifegraphics__/graphics/technology/energy-drink.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"land-animals-mk02","botany-mk02"},
    effects = {},
    unit = {
        count = 300,
        ingredients = {
            {"automation-science-pack", 3},
            {'py-science-pack-1', 1},
            {"logistic-science-pack", 2},
            {'py-science-pack-2', 1},
        },
        time = 50
    }
}
