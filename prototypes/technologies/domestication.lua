TECHNOLOGY {
    type = "technology",
    name = "domestication",
    icon = "__pyalienlifegraphics__/graphics/technology/domestication-1.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"auog", "land-animals-mk01"},
    dependencies = {},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1",       1}
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
    prerequisites = {"domestication", "biotech-mk02"},
    dependencies = {"domestication"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 6},
            {"py-science-pack-1",       3},
            {"logistic-science-pack",   2},
            {"py-science-pack-2",       1},
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
    prerequisites = {"domestication-mk02"},
    dependencies = {"domestication-mk02"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 4},
            {"py-science-pack-1",       1},
            {"logistic-science-pack",   3},
            {"py-science-pack-2",       2},
            {"chemical-science-pack",   3},
            {"military-science-pack",   1}
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "domestication-mk04",
    icon = "__pyalienlifegraphics__/graphics/technology/domestication-4.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"domestication-mk03", "dingrits", "chitin"},
    dependencies = {"domestication-mk03"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 4},
            {"py-science-pack-1",       1},
            {"logistic-science-pack",   3},
            {"py-science-pack-2",       2},
            {"chemical-science-pack",   3},
            {"py-science-pack-3",       2},
            {"military-science-pack",   1}
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "domestication-mk05",
    icon = "__pyalienlifegraphics__/graphics/technology/domestication-5.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"domestication-mk04"},
    dependencies = {"domestication-mk04"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 4},
            {"logistic-science-pack",   3},
            {"military-science-pack",   3},
            {"chemical-science-pack",   3},
            {"production-science-pack", 3},
            {"utility-science-pack",    3},
        },
        time = 50
    }
}
