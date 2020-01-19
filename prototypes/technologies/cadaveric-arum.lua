TECHNOLOGY {
    type = "technology",
    name = "cadaveric-arum",
    icon = "__pyalienlifegraphics__/graphics/technology/cadaveric-arum.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"botany-mk02"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {'logistic-science-pack', 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "cadaveric-arum-mk02",
    icon = "__pyalienlifegraphics__/graphics/technology/cadaveric-arum-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"cadaveric-arum"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
            {'logistic-science-pack', 1},
            {'py-science-pack', 1}
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "cadaveric-arum-mk03",
    icon = "__pyalienlifegraphics__/graphics/technology/cadaveric-arum-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"cadaveric-arum-mk02"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {'logistic-science-pack', 1},
            {'py-science-pack', 1},
            {'chemical-science-pack', 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "cadaveric-arum-mk04",
    icon = "__pyalienlifegraphics__/graphics/technology/cadaveric-arum-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"cadaveric-arum-mk03"},
    effects = {},
    unit = {
        count = 250,
        ingredients = {
            {"automation-science-pack", 1},
            {'logistic-science-pack', 1},
            {'py-science-pack', 1},
            {'chemical-science-pack', 1},
            {'production-science-pack', 1},
        },
        time = 50
    }
}