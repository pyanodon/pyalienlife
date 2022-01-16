TECHNOLOGY {
    type = "technology",
    name = "vonix",
    icon = "__pyalienlifegraphics__/graphics/technology/vonix.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"land-animals-mk03","biotech-mk03"},
    effects = {},
    unit = {
        count = 250,
        ingredients = {
            {"automation-science-pack", 5},
            {"logistic-science-pack", 4},
            {'py-science-pack-2', 3},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "vonix-mk02",
    icon = "__pyalienlifegraphics__/graphics/technology/vonix-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"vonix"},
    effects = {},
    unit = {
        count = 300,
        ingredients = {
            {"automation-science-pack", 5},
            {"logistic-science-pack", 4},
            {'py-science-pack-2', 3},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "vonix-mk03",
    icon = "__pyalienlifegraphics__/graphics/technology/vonix-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"vonix-mk02"},
    effects = {},
    unit = {
        count = 350,
        ingredients = {
            {"automation-science-pack", 5},
            {"logistic-science-pack", 4},
            {'py-science-pack-2', 3},
        },
        time = 50
    }
}
