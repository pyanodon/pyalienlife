TECHNOLOGY {
    type = "technology",
    name = "kmauts",
    icon = "__pyalienlifegraphics__/graphics/technology/kmauts.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"land-animals-mk02"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 3},
            {"py-science-pack-1",       1},
            {"logistic-science-pack",   1},
            {"py-science-pack-2",       1},
            {"chemical-science-pack",   1},
            {"py-science-pack-3",       1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "kmauts-mk02",
    icon = "__pyalienlifegraphics__/graphics/technology/kmauts-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"kmauts"},
    dependencies = {"kmauts"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 3},
            {"py-science-pack-1",       1},
            {"logistic-science-pack",   1},
            {"py-science-pack-2",       1},
            {"chemical-science-pack",   1},
            {"py-science-pack-3",       1},
            {"production-science-pack", 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "kmauts-mk03",
    icon = "__pyalienlifegraphics__/graphics/technology/kmauts-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"kmauts-mk02"},
    dependencies = {"kmauts-mk02"},
    effects = {},
    unit = {
        count = 250,
        ingredients = {
            {"automation-science-pack", 3},
            {"py-science-pack-1",       1},
            {"logistic-science-pack",   1},
            {"py-science-pack-2",       1},
            {"chemical-science-pack",   1},
            {"py-science-pack-3",       1},
            {"production-science-pack", 1},
            {"py-science-pack-4",       1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "kmauts-mk04",
    icon = "__pyalienlifegraphics__/graphics/technology/kmauts-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"kmauts-mk03"},
    dependencies = {"kmauts-mk03"},
    effects = {},
    unit = {
        count = 300,
        ingredients = {
            {"automation-science-pack", 3},
            {"py-science-pack-1",       1},
            {"logistic-science-pack",   1},
            {"military-science-pack",   1},
            {"py-science-pack-2",       1},
            {"chemical-science-pack",   1},
            {"py-science-pack-3",       1},
            {"production-science-pack", 1},
            {"py-science-pack-4",       1},
            {"utility-science-pack",    1},
        },
        time = 50
    }
}
