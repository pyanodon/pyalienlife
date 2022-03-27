TECHNOLOGY {
    type = "technology",
    name = "rennea",
    icon = "__pyalienlifegraphics__/graphics/technology/rennea.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"botany-mk02"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 3},
            {"logistic-science-pack", 2},
            -- {'py-science-pack-2', 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "rennea-mk02",
    icon = "__pyalienlifegraphics__/graphics/technology/rennea-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"rennea"},
    dependencies = {"rennea"},
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

TECHNOLOGY {
    type = "technology",
    name = "rennea-mk03",
    icon = "__pyalienlifegraphics__/graphics/technology/rennea-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"rennea-mk02"},
    dependencies = {"rennea-mk02"},
    effects = {},
    unit = {
        count = 250,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            -- {'py-science-pack-2', 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "rennea-mk04",
    icon = "__pyalienlifegraphics__/graphics/technology/rennea-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"rennea-mk03"},
    dependencies = {"rennea-mk03"},
    effects = {},
    unit = {
        count = 300,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            -- {'py-science-pack-2', 1},
        },
        time = 50
    }
}
