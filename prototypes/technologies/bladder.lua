TECHNOLOGY {
    type = "technology",
    name = "bladder",
    icon = "__pyalienlifegraphics__/graphics/technology/bladder.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"phagnot"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 4},
            {"logistic-science-pack", 2},
            -- {'py-science-pack-3', 1},
        },
        time = 50
    }
}
