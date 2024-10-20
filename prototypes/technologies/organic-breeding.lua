TECHNOLOGY {
    type = "technology",
    name = "organic-breeding",
    icon = "__pyalienlifegraphics__/graphics/technology/organic-breeding.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"water-animals-mk01", "biotech-mk02", "land-animals-mk01"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   2}
        },
        time = 50
    }
}
