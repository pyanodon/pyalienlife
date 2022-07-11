TECHNOLOGY {
    type = "technology",
    name = "defective-collagen",
    icon = "__pyalienlifegraphics__/graphics/technology/collagen.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"genetic-design"},
    effects = {},
    unit = {
        count = 400,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1", 1},
            {"logistic-science-pack", 3},
            {"py-science-pack-2", 1},
            {"chemical-science-pack", 1},
            {"py-science-pack-3", 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "double-skin",
    icon = "__pyalienlifegraphics__/graphics/technology/double-skin.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"defective-collagen","reca"},
    dependencies = {"defective-collagen"},
    effects = {},
    unit = {
        count = 600,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1", 1},
            {"logistic-science-pack", 3},
            {"py-science-pack-2", 1},
            {"chemical-science-pack", 1},
            {"py-science-pack-3", 1},
            {"production-science-pack", 1},
            {"py-science-pack-4", 1},
        },
        time = 50
    }
}
