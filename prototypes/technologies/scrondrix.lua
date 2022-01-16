TECHNOLOGY {
    type = "technology",
    name = "scrondrix",
    icon = "__pyalienlifegraphics__/graphics/technology/scrondrix.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"land-animals-mk03","genetics-mk03","genetic-design"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 4},
            {"logistic-science-pack", 2},
            {'chemical-science-pack', 2},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "scrondrix-mk02",
    icon = "__pyalienlifegraphics__/graphics/technology/scrondrix-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"scrondrix"},
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
    name = "scrondrix-mk03",
    icon = "__pyalienlifegraphics__/graphics/technology/scrondrix-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"scrondrix-mk02"},
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
    name = "scrondrix-mk04",
    icon = "__pyalienlifegraphics__/graphics/technology/scrondrix-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"scrondrix-mk03"},
    effects = {},
    unit = {
        count = 500,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {'py-science-pack-2', 1},
        },
        time = 50
    }
}
