TECHNOLOGY {
    type = "technology",
    name = "arqad",
    icon = "__pyalienlifegraphics__/graphics/technology/arqad.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"land-animals-mk01","biotech-mk01"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "arqad-mk02",
    icon = "__pyalienlifegraphics__/graphics/technology/arqad-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"arqad"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 2},
            {'py-science-pack-2', 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "arqad-mk03",
    icon = "__pyalienlifegraphics__/graphics/technology/arqad-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"arqad-mk02"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {'chemical-science-pack', 1},
            {'production-science-pack', 1},
            {'py-science-pack-2', 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "arqad-mk04",
    icon = "__pyalienlifegraphics__/graphics/technology/arqad-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"arqad-mk03"},
    effects = {},
    unit = {
        count = 300,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {'chemical-science-pack', 1},
            {'production-science-pack', 1},
            {'utility-science-pack', 1},
            {'py-science-pack-2', 1},
        },
        time = 50
    }
}
