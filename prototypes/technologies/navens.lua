TECHNOLOGY {
    type = "technology",
    name = "navens",
    icon = "__pyalienlifegraphics__/graphics/technology/navens.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"mycology-mk02","genetics-mk03"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 4},
            {"logistic-science-pack", 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "navens-mk02",
    icon = "__pyalienlifegraphics__/graphics/technology/navens-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"navens"},
    dependencies = {"navens"},
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
    name = "navens-mk03",
    icon = "__pyalienlifegraphics__/graphics/technology/navens-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"navens-mk02"},
    dependencies = {"navens-mk02"},
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
    name = "navens-mk04",
    icon = "__pyalienlifegraphics__/graphics/technology/navens-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"navens-mk03"},
    dependencies = {"navens-mk03"},
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
