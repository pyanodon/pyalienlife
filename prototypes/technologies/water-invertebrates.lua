TECHNOLOGY {
    type = "technology",
    name = "water-invertebrates-mk01",
    icon = "__pyalienlifegraphics__/graphics/technology/water-invertebrates-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"microbiology-mk01","zoology"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {'logistic-science-pack', 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "water-invertebrates-mk02",
    icon = "__pyalienlifegraphics__/graphics/technology/water-invertebrates-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"water-invertebrates-mk01","biotech-mk01","water-animals-mk01"},
    dependencies = {"water-invertebrates-mk01"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 3},
            {'logistic-science-pack', 2},
            {'py-science-pack-2', 3},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "water-invertebrates-mk03",
    icon = "__pyalienlifegraphics__/graphics/technology/water-invertebrates-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"water-invertebrates-mk02","biotech-mk02","water-animals-mk02"},
    dependencies = {"water-invertebrates-mk02"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {'automation-science-pack', 4},
            {'logistic-science-pack', 3},
            {'py-science-pack-2', 3},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "water-invertebrates-mk04",
    icon = "__pyalienlifegraphics__/graphics/technology/water-invertebrates-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"water-invertebrates-mk03","biotech-mk04","water-animals-mk03"},
    dependencies = {"water-invertebrates-mk03"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {'automation-science-pack', 4},
            {'logistic-science-pack', 3},
            {'py-science-pack-2', 4},
        },
        time = 45
    }
}
