TECHNOLOGY {
    type = "technology",
    name = "dhilmos",
    icon = "__pyalienlifegraphics__/graphics/technology/dhilmos.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"water-invertebrates-mk03","genetics-mk04","genetic-design"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 4},
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
    name = "dhilmos-mk02",
    icon = "__pyalienlifegraphics__/graphics/technology/dhilmos-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"dhilmos"},
    dependencies = {"dhilmos"},
    effects = {},
    unit = {
        count = 150,
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

TECHNOLOGY {
    type = "technology",
    name = "dhilmos-mk03",
    icon = "__pyalienlifegraphics__/graphics/technology/dhilmos-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"dhilmos-mk02"},
    dependencies = {"dhilmos-mk02"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1", 1},
            {"logistic-science-pack", 1},
            {"py-science-pack-2", 1},
            {"chemical-science-pack", 1},
            {"py-science-pack-3", 1},
            {"production-science-pack", 1},
            {"py-science-pack-4", 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "dhilmos-mk04",
    icon = "__pyalienlifegraphics__/graphics/technology/dhilmos-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"dhilmos-mk03"},
    dependencies = {"dhilmos-mk03"},
    effects = {},
    unit = {
        count = 250,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1", 1},
            {"logistic-science-pack", 1},
            {"military-science-pack", 1},
            {"py-science-pack-2", 1},
            {"chemical-science-pack", 1},
            {"py-science-pack-3", 1},
            {"production-science-pack", 1},
            {"py-science-pack-4", 1},
            {"utility-science-pack", 1},
        },
        time = 50
    }
}
