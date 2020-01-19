TECHNOLOGY {
    type = "technology",
    name = "water-animals-mk01",
    icon = "__pyalienlifegraphics__/graphics/technology/water-animals-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"coal-processing-2","zoology"},
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
    name = "water-animals-mk02",
    icon = "__pyalienlifegraphics__/graphics/technology/water-animals-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"water-animals-mk01","botany-mk02"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 3},
            {'logistic-science-pack', 2},
            {'chemical-science-pack', 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "water-animals-mk03",
    icon = "__pyalienlifegraphics__/graphics/technology/water-animals-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"water-animals-mk02","botany-mk03"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {'automation-science-pack', 4},
            {'logistic-science-pack', 3},
            {'chemical-science-pack', 2},
            {'production-science-pack', 1},
            {'py-science-pack', 3},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "water-animals-mk04",
    icon = "__pyalienlifegraphics__/graphics/technology/water-animals-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"water-animals-mk03"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {'automation-science-pack', 4},
            {'logistic-science-pack', 3},
            {'chemical-science-pack', 2},
            {'utility-science-pack', 1},
            {'production-science-pack', 1},
            {'py-science-pack', 4},
        },
        time = 45
    }
}