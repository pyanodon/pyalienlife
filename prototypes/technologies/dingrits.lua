TECHNOLOGY {
    type = "technology",
    name = "dingrits",
    icon = "__pyalienlifegraphics__/graphics/technology/dingrits.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"land-animals-mk03","biotech-mk03","genetic-design"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 4},
            {"logistic-science-pack", 3},

        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "dingrits-mk02",
    icon = "__pyalienlifegraphics__/graphics/technology/dingrits-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"dingrits"},
    dependencies = {"dingrits"},
    effects = {},
    unit = {
        count = 250,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {'py-science-pack-2', 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "dingrits-mk03",
    icon = "__pyalienlifegraphics__/graphics/technology/dingrits-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"dingrits-mk02"},
    dependencies = {"dingrits-mk02"},
    effects = {},
    unit = {
        count = 300,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {'py-science-pack-2', 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "dingrits-mk04",
    icon = "__pyalienlifegraphics__/graphics/technology/dingrits-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"dingrits-mk03"},
    dependencies = {"dingrits-mk03"},
    effects = {},
    unit = {
        count = 350,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {'py-science-pack-2', 1},
        },
        time = 50
    }
}
