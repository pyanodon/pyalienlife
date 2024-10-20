TECHNOLOGY {
    type = "technology",
    name = "reca",
    icon = "__pyalienlifegraphics__/graphics/technology/reca.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"bio-implants"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1",       1},
            {"logistic-science-pack",   2},
            {"py-science-pack-2",       1},
            {"chemical-science-pack",   1},
            {"py-science-pack-3",       1},
            {"production-science-pack", 1},
            {"military-science-pack",   1},
        },
        time = 50
    }
}
