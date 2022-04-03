TECHNOLOGY {
    type = "technology",
    name = "cottongut-mk01",
    icon = "__pyalienlifegraphics__/graphics/technology/cottongut.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"land-animals-mk01","biotech-mk01"},
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
    name = "cottongut-mk02",
    icon = "__pyalienlifegraphics__/graphics/technology/cottongut-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"cottongut-mk01"},
    dependencies = {"cottongut-mk01"},
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
    name = "cottongut-mk03",
    icon = "__pyalienlifegraphics__/graphics/technology/cottongut-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"cottongut-mk02"},
    dependencies = {"cottongut-mk02"},
    effects = {},
    unit = {
        count = 200,
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
    name = "cottongut-mk04",
    icon = "__pyalienlifegraphics__/graphics/technology/cottongut-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"cottongut-mk03"},
    dependencies = {"cottongut-mk03"},
    effects = {},
    unit = {
        count = 250,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
        },
        time = 50
    }
}
