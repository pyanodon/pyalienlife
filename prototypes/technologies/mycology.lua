TECHNOLOGY {
    type = "technology",
    name = "mycology-mk01",
    icon = "__pyalienlifegraphics__/graphics/technology/mycology-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"coal-processing-1","xenobiology"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "mycology-mk02",
    icon = "__pyalienlifegraphics__/graphics/technology/mycology-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"mycology-mk01","separation"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
            {'logistic-science-pack', 2}
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "mycology-mk03",
    icon = "__pyalienlifegraphics__/graphics/technology/mycology-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"mycology-mk02"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {'automation-science-pack', 3},
            {'logistic-science-pack', 2},
            {'py-science-pack-2', 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "mycology-mk04",
    icon = "__pyalienlifegraphics__/graphics/technology/mycology-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"mycology-mk03"},
    effects = {},
    unit = {
        count = 250,
        ingredients = {
            {'automation-science-pack', 3},
            {'logistic-science-pack', 2},
            {'py-science-pack-2', 3},
        },
        time = 45
    }
}
