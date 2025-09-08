TECHNOLOGY {
    type = "technology",
    name = "yotoi",
    icon = "__pyalienlifegraphics__/graphics/technology/yotoi.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"botany-mk02", "genetics-mk03"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 4},
            {"py-science-pack-1",       1},
            {"logistic-science-pack",   1},
            {"py-science-pack-2",       1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "yotoi-mk02",
    icon = "__pyalienlifegraphics__/graphics/technology/yotoi-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"yotoi"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1",       1},
            {"logistic-science-pack",   1},
            {"py-science-pack-2",       1},
            {"chemical-science-pack",   1},
            {"py-science-pack-3",       1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "yotoi-mk03",
    icon = "__pyalienlifegraphics__/graphics/technology/yotoi-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"yotoi-mk02"},
    effects = {},
    unit = {
        count = 250,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1",       1},
            {"logistic-science-pack",   1},
            {"py-science-pack-2",       1},
            {"chemical-science-pack",   1},
            {"py-science-pack-3",       1},
            {"production-science-pack", 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "yotoi-mk04",
    icon = "__pyalienlifegraphics__/graphics/technology/yotoi-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"yotoi-mk03"},
    effects = {},
    unit = {
        count = 300,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1",       1},
            {"logistic-science-pack",   1},
            {"py-science-pack-2",       1},
            {"chemical-science-pack",   1},
            {"py-science-pack-3",       1},
            {"production-science-pack", 1},
            {"py-science-pack-4",       1},
        },
        time = 50
    }
}
