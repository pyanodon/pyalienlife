TECHNOLOGY {
    type = "technology",
    name = "py-science-pack-mk01",
    icon = "__pycoalprocessinggraphics__/graphics/missing_icon.png",
    icon_size = 128,
    order = "c-a",
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "py-science-pack-mk02",
    icon = "__pycoalprocessinggraphics__/graphics/missing_icon.png",
    icon_size = 128,
    order = "c-a",
    dependencies = {"py-science-pack-mk01"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "py-science-pack-mk03",
    icon = "__pycoalprocessinggraphics__/graphics/missing_icon.png",
    icon_size = 128,
    order = "c-a",
    dependencies = {"py-science-pack-mk02"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
        },
        time = 50
    }
}
