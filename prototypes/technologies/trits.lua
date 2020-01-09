TECHNOLOGY {
    type = "technology",
    name = "trits",
    icon = "__pyalienlife__/graphics/technology/trits.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"water-animals-mk02","biotech-mk02"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 4},
            {"logistic-science-pack", 3},
            {'chemical-science-pack', 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "trits-mk02",
    icon = "__pyalienlife__/graphics/technology/trits-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"trits"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {'chemical-science-pack', 1},
            {"py-science-pack", 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "trits-mk03",
    icon = "__pyalienlife__/graphics/technology/trits-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"trits-mk02"},
    effects = {},
    unit = {
        count = 250,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {'chemical-science-pack', 1},
            {"py-science-pack", 1},
            {'production-science-pack', 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "trits-mk04",
    icon = "__pyalienlife__/graphics/technology/trits-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"trits-mk03"},
    effects = {},
    unit = {
        count = 300,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {'chemical-science-pack', 1},
            {"py-science-pack", 1},
            {'production-science-pack', 1},
            {'utility-science-pack', 1},
        },
        time = 50
    }
}