TECHNOLOGY {
    type = "technology",
    name = "land-animals-mk01",
    icon = "__pyalienlifegraphics__/graphics/technology/land-animals-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"coal-processing-1"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "land-animals-mk02",
    icon = "__pyalienlifegraphics__/graphics/technology/land-animals-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"land-animals-mk01","botany-mk02","biotech-mk02"},
    dependencies = {"land-animals-mk01"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 3},
            {"py-science-pack-1", 1},
            {"logistic-science-pack", 1},
            {"py-science-pack-2", 1},
            {'chemical-science-pack', 2},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "land-animals-mk03",
    icon = "__pyalienlifegraphics__/graphics/technology/land-animals-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"land-animals-mk02","botany-mk03"},
    dependencies = {"land-animals-mk02"},
    effects = {},
    unit = {
        count = 250,
        ingredients = {
            {'automation-science-pack', 4},
            {"py-science-pack-1", 1},
            {"logistic-science-pack", 1},
            {"py-science-pack-2", 1},
            {'chemical-science-pack', 2},
            {'production-science-pack', 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "land-animals-mk04",
    icon = "__pyalienlifegraphics__/graphics/technology/land-animals-mk04.png",
    icon_size = 128,
    order = "c-a",
    dependencies = {"land-animals-mk03"},
    effects = {},
    unit = {
        count = 250,
        ingredients = {
            {'automation-science-pack', 4},
            {"py-science-pack-1", 1},
            {"logistic-science-pack", 1},
            {"py-science-pack-2", 1},
            {'military-science-pack', 3},
            {'chemical-science-pack', 2},
            {'production-science-pack', 1},
            {'utility-science-pack', 1},
        },
        time = 45
    }
}
