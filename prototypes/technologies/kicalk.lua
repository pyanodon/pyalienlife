TECHNOLOGY {
    type = "technology",
    name = "kicalk",
    icon = "__pyalienlife__/graphics/technology/kicalk.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"botany-mk01"},
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
    name = "kicalk-mk02",
    icon = "__pyalienlife__/graphics/technology/kicalk-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"kicalk"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
            {'logistic-science-pack', 1},
            {'py-science-pack', 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "kicalk-mk03",
    icon = "__pyalienlife__/graphics/technology/kicalk-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"kicalk-mk02"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {'logistic-science-pack', 1},
            {'py-science-pack', 1},
            {'chemical-science-pack', 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "kicalk-mk04",
    icon = "__pyalienlife__/graphics/technology/kicalk-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"kicalk-mk03"},
    effects = {},
    unit = {
        count = 250,
        ingredients = {
            {"automation-science-pack", 1},
            {'logistic-science-pack', 1},
            {'py-science-pack', 1},
            {'chemical-science-pack', 1},
            {'production-science-pack', 1},
        },
        time = 50
    }
}