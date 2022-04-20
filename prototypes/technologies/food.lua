TECHNOLOGY {
    type = "technology",
    name = "food-mk01",
    icon = "__pyalienlifegraphics__/graphics/technology/food-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"zoology","biotech-mk01"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "food-mk02",
    icon = "__pyalienlifegraphics__/graphics/technology/food-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"food-mk01"},
    dependencies = {"food-mk01"},
    effects = {},
    unit = {
        count = 400,
        ingredients = {
            {"automation-science-pack", 1},
            {'logistic-science-pack', 2},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "food-mk03",
    icon = "__pyalienlifegraphics__/graphics/technology/food-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"food-mk02","biotech-mk03"},
    dependencies = {"food-mk02"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 3},
            {'logistic-science-pack', 2},
            -- {'py-science-pack-3', 1},
        },
        time = 50
    }
}
