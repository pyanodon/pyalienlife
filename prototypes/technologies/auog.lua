TECHNOLOGY {
    type = "technology",
    name = "auog",
    icon = "__pyalienlifegraphics__/graphics/technology/auog.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"land-animals-mk01","biotech-mk01"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1", 1}
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "auog-mk02",
    icon = "__pyalienlifegraphics__/graphics/technology/auog-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"auog"},
    dependencies = {"auog"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1", 1},
            {"logistic-science-pack", 1},
            {"py-science-pack-2", 1}
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "auog-mk03",
    icon = "__pyalienlifegraphics__/graphics/technology/auog-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"auog-mk02"},
    dependencies = {"auog-mk02"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1", 1},
            {"logistic-science-pack", 1},
            {"py-science-pack-2", 1},
            {"chemical-science-pack", 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "auog-mk04",
    icon = "__pyalienlifegraphics__/graphics/technology/auog-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"auog-mk03"},
    dependencies = {"auog-mk03"},
    effects = {},
    unit = {
        count = 300,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1", 1},
            {"logistic-science-pack", 1},
            {"py-science-pack-2", 1},
            {"chemical-science-pack", 1},
            {"py-science-pack-3", 1},
        },
        time = 50
    }
}
