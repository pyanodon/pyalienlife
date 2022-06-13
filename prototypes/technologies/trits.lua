TECHNOLOGY {
    type = "technology",
    name = "trits",
    icon = "__pyalienlifegraphics__/graphics/technology/trits.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"water-animals-mk02","biotech-mk02"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 4},
            {"logistic-science-pack", 3},
             {"py-science-pack-1", 3},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "trits-mk02",
    icon = "__pyalienlifegraphics__/graphics/technology/trits-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"trits"},
    dependencies = {"trits"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"py-science-pack-1", 1},
            {"py-science-pack-2", 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "trits-mk03",
    icon = "__pyalienlifegraphics__/graphics/technology/trits-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"trits-mk02"},
    dependencies = {"trits-mk02"},
    effects = {},
    unit = {
        count = 250,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"py-science-pack-1", 1},
            {"py-science-pack-2", 1},
            {"py-science-pack-3", 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "trits-mk04",
    icon = "__pyalienlifegraphics__/graphics/technology/trits-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"trits-mk03"},
    dependencies = {"trits-mk03"},
    effects = {},
    unit = {
        count = 300,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"py-science-pack-1", 1},
            {"py-science-pack-2", 1},
            {"py-science-pack-3", 1},
            {"py-science-pack-4", 1},
        },
        time = 50
    }
}
