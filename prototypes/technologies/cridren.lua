TECHNOLOGY {
    type = "technology",
    name = "cridren",
    icon = "__pyalienlifegraphics__/graphics/technology/cridren.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"botany-mk02"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 2},
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
    name = "cridren-mk02",
    icon = "__pyalienlifegraphics__/graphics/technology/cridren-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"cridren"},
    dependencies = {"cridren"},
    effects = {},
    unit = {
        count = 250,
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
    name = "cridren-mk03",
    icon = "__pyalienlifegraphics__/graphics/technology/cridren-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"cridren-mk02"},
    dependencies = {"cridren-mk02"},
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
            {"production-science-pack", 1},
            {"py-science-pack-4", 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "cridren-mk04",
    icon = "__pyalienlifegraphics__/graphics/technology/cridren-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"cridren-mk03"},
    dependencies = {"cridren-mk03"},
    effects = {},
    unit = {
        count = 350,
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
