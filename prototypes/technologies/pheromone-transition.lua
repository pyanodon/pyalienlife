TECHNOLOGY {
    type = "technology",
    name = "pheromone-transition",
    icon = "__pyalienlifegraphics3__/graphics/technology/pheromone-transition.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"arqad-mk02"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 4},
            {"logistic-science-pack", 2},
            {'chemical-science-pack', 2},
            {'production-science-pack', 1},
            {'py-science-pack-2', 2},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "diversified-mycoaccretion",
    icon = "__pyalienlifegraphics3__/graphics/technology/diversified-mycoaccretion.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"arqad-mk03","pheromone-transition"},
    effects = {},
    unit = {
        count = 300,
        ingredients = {
            {"automation-science-pack", 3},
            {"logistic-science-pack", 3},
            {'chemical-science-pack', 2},
            {'py-science-pack-2', 2},
            {'production-science-pack', 1},
            {'utility-science-pack', 1},
        },
        time = 50
    }
}
