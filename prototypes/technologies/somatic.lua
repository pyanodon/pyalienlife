TECHNOLOGY {
    type = "technology",
    name = "somatic",
    icon = "__pyalienlifegraphics__/graphics/technology/somatic.png",
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
    name = "transgenes",
    icon = "__pyalienlifegraphics__/graphics/technology/transgenes.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"somatic","recombinant-ery"},
    dependencies = {"somatic"},
    effects = {},
    unit = {
        count = 600,
        ingredients = {
            {"automation-science-pack", 3},
            {"logistic-science-pack", 3},
            {"chemical-science-pack", 2},
            {"production-science-pack", 2},
            {'py-science-pack-4', 1},
        },
        time = 50
    }
}
