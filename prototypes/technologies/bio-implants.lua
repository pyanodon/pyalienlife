TECHNOLOGY {
    type = "technology",
    name = "bio-implants",
    icon = "__pyalienlifegraphics__/graphics/technology/bio-implants.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"biotech-mk03"},
    effects = {},
    unit = {
        count = 250,
        ingredients = {
            {"automation-science-pack", 3},
            {"logistic-science-pack", 3},
            {'py-science-pack-2', 1},
        },
        time = 50
    }
}
