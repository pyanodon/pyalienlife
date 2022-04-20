TECHNOLOGY {
    type = "technology",
    name = "water-gmo-mk01",
    icon = "__pyalienlifegraphics__/graphics/technology/water-gmo-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"water-animals-mk01","genetics-mk01"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {'logistic-science-pack', 2}
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "water-gmo-mk02",
    icon = "__pyalienlifegraphics__/graphics/technology/water-gmo-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"water-gmo-mk01","genetics-mk03"},
    dependencies = {"water-gmo-mk01"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 3},
            {'logistic-science-pack', 2},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "water-gmo-mk03",
    icon = "__pyalienlifegraphics__/graphics/technology/water-gmo-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"water-gmo-mk02","genetics-mk04"},
    dependencies = {"water-gmo-mk02"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {'automation-science-pack', 4},
            {'logistic-science-pack', 3},
            -- {'py-science-pack-3', 3},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "water-gmo-mk04",
    icon = "__pyalienlifegraphics__/graphics/technology/water-gmo-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"water-gmo-mk03","genetics-mk05"},
    dependencies = {"water-gmo-mk03"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {'automation-science-pack', 4},
            {'logistic-science-pack', 3},
            -- {'py-science-pack-3', 3},
        },
        time = 45
    }
}
