TECHNOLOGY {
    type = "technology",
    name = "tuuphra",
    icon = "__pyalienlife__/graphics/technology/tuuphra.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"botany-mk02"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 3},
            {"logistic-science-pack", 2},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "tuuphra-mk02",
    icon = "__pyalienlife__/graphics/technology/tuuphra-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"tuuphra"},
    effects = {},
    unit = {
        count = 250,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"py-science-pack", 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "tuuphra-mk03",
    icon = "__pyalienlife__/graphics/technology/tuuphra-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"tuuphra-mk02"},
    effects = {},
    unit = {
        count = 300,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"py-science-pack", 1},
            {'chemical-science-pack', 1},
        },
        time = 50
    }
}


TECHNOLOGY {
    type = "technology",
    name = "tuuphra-mk04",
    icon = "__pyalienlife__/graphics/technology/tuuphra-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"tuuphra-mk03"},
    effects = {},
    unit = {
        count = 350,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"py-science-pack", 1},
            {'chemical-science-pack', 1},
            {'production-science-pack', 1},
        },
        time = 50
    }
}