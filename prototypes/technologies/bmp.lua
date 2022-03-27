TECHNOLOGY {
    type = "technology",
    name = "bmp",
    icon = "__pyalienlifegraphics__/graphics/technology/bmp.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"biotech-mk04"},
    effects = {},
    unit = {
        count = 350,
        ingredients = {
            {"automation-science-pack", 2},
            {"logistic-science-pack", 2},
            -- {'py-science-pack-2', 1},
        },
        time = 50
    }
}
