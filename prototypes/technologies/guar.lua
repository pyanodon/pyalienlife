TECHNOLOGY {
    type = "technology",
    name = "guar",
    icon = "__pyalienlifegraphics__/graphics/technology/guar-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"botany-mk02"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 3},
            {"logistic-science-pack", 2},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "guar-mk02",
    icon = "__pyalienlifegraphics__/graphics/technology/guar-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"guar"},
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
    name = "guar-mk03",
    icon = "__pyalienlifegraphics__/graphics/technology/guar-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"guar-mk02"},
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


TECHNOLOGY {
    type = "technology",
    name = "guar-mk04",
    icon = "__pyalienlifegraphics__/graphics/technology/guar-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"guar-mk03"},
    effects = {},
    unit = {
        count = 350,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {'py-science-pack-2', 1},
        },
        time = 50
    }
}
