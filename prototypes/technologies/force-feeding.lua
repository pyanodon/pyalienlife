TECHNOLOGY {
    type = "technology",
    name = "force-feeding",
    icon = "__pyalienlifegraphics__/graphics/technology/force-feeding.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {},
    effects = {},
    unit = {
        count = 400,
        ingredients = {
            {"automation-science-pack", 4},
            {"logistic-science-pack",   2},
            {"chemical-science-pack",   2},
            {"py-science-pack-3",       1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "fto4",
    icon = "__pyalienlifegraphics__/graphics/technology/fto4.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"force-feeding"},
    effects = {},
    unit = {
        count = 600,
        ingredients = {
            {"automation-science-pack", 2},
            {"logistic-science-pack",   2},
            {"chemical-science-pack",   2},
            {"production-science-pack", 2},
            {"py-science-pack-4",       1},
        },
        time = 50
    }
}
