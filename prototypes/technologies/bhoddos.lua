TECHNOLOGY {
    type = "technology",
    name = "bhoddos",
    icon = "__pyalienlifegraphics__/graphics/technology/bhoddos.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"mycology-mk01","genetics-mk01", "uranium-mk02"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "bhoddos-mk02",
    icon = "__pyalienlifegraphics__/graphics/technology/bhoddos-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"bhoddos"},
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
    name = "bhoddos-mk03",
    icon = "__pyalienlifegraphics__/graphics/technology/bhoddos-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"bhoddos-mk02"},
    effects = {},
    unit = {
        count = 250,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {'py-science-pack-2', 1},
            {'chemical-science-pack', 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "bhoddos-mk04",
    icon = "__pyalienlifegraphics__/graphics/technology/bhoddos-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"bhoddos-mk03"},
    effects = {},
    unit = {
        count = 300,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {'py-science-pack-2', 1},
            {'chemical-science-pack', 1},
            {'production-science-pack', 1},
        },
        time = 50
    }
}
