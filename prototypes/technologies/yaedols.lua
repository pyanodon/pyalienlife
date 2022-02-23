TECHNOLOGY {
    type = "technology",
    name = "yaedols",
    icon = "__pyalienlifegraphics__/graphics/technology/yaedols.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"mycology-mk02"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 4},
            {"logistic-science-pack", 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "yaedols-mk02",
    icon = "__pyalienlifegraphics__/graphics/technology/yaedols-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"yaedols"},
    dependencies = {"yaedols"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {'py-science-pack-2', 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "yaedols-mk03",
    icon = "__pyalienlifegraphics__/graphics/technology/yaedols-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"yaedols-mk02"},
    dependencies = {"yaedols-mk02"},
    effects = {},
    unit = {
        count = 250,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {'py-science-pack-2', 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "yaedols-mk04",
    icon = "__pyalienlifegraphics__/graphics/technology/yaedols-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"yaedols-mk03"},
    dependencies = {"yaedols-mk03"},
    effects = {},
    unit = {
        count = 300,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {'py-science-pack-2', 1},
        },
        time = 50
    }
}
