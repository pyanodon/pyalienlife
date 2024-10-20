TECHNOLOGY {
    type = "technology",
    name = "pheromone-transition",
    icon = "__pyalienlifegraphics3__/graphics/technology/pheromone-transition.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"arqad-mk03"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1",       1},
            {"logistic-science-pack",   1},
            {"py-science-pack-2",       1},
            {"chemical-science-pack",   1},
            {"py-science-pack-3",       1}
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
    prerequisites = {"arqad-mk04", "pheromone-transition"},
    dependencies = {"pheromone-transition"},
    effects = {},
    unit = {
        count = 300,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1",       1},
            {"logistic-science-pack",   1},
            {"py-science-pack-2",       1},
            {"chemical-science-pack",   1},
            {"py-science-pack-3",       1},
            {"production-science-pack", 1},
            {"py-science-pack-4",       1}
        },
        time = 50
    }
}
