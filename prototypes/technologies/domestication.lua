TECHNOLOGY {
    type = "technology",
    name = "domestication",
    icon = "__pyalienlifegraphics__/graphics/technology/domestication-1.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"auog","land-animals-mk01","food-mk01"},
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
    name = "domestication-mk02",
    icon = "__pyalienlifegraphics__/graphics/technology/domestication-2.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"domestication","biotech-mk02","land-animals-mk02"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 4},
            {"logistic-science-pack", 3},
            {'py-science-pack-2', 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "domestication-mk03",
    icon = "__pyalienlifegraphics__/graphics/technology/domestication-3.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"domestication-mk02","dingrits","chitin"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 4},
            {"logistic-science-pack", 3},
            {'py-science-pack-2', 1},
        },
        time = 50
    }
}
