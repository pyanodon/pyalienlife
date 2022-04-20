TECHNOLOGY {
    type = "technology",
    name = "compost",
    icon = "__pyalienlifegraphics__/graphics/technology/compost.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"biotech-mk01"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1", 1}
        },
        time = 45
    }
}
