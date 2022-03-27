TECHNOLOGY {
    type = "technology",
    name = "zootoxins",
    icon = "__pyalienlifegraphics__/graphics/technology/zootoxins.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"vonix"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            -- {'py-science-pack-2', 1},
        },
        time = 50
    }
}
