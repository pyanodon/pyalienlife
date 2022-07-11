TECHNOLOGY {
    type = "technology",
    name = "exercises",
    icon = "__pyalienlifegraphics__/graphics/technology/exercises.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"genetic-design"},
    effects = {},
    unit = {
        count = 400,
        ingredients = {
            {"automation-science-pack", 4},
            {"logistic-science-pack", 2},
            {"chemical-science-pack", 2},
            {'py-science-pack-3', 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "myostatin",
    icon = "__pyalienlifegraphics__/graphics/technology/myostatin.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"exercises","anabolic-rna"},
    dependencies = {"exercises"},
    effects = {},
    unit = {
        count = 600,
        ingredients = {
            {"automation-science-pack", 2},
            {"logistic-science-pack", 2},
            {"chemical-science-pack", 2},
            {"production-science-pack", 2},
            {'py-science-pack-4', 1},
        },
        time = 50
    }
}
