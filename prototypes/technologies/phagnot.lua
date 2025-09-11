TECHNOLOGY {
    type = "technology",
    name = "phagnot",
    icon = "__pyalienlifegraphics__/graphics/technology/phagnot.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"land-animals-mk01", "biotech-mk02"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1",       1},
            {"logistic-science-pack",   1},
            {"py-science-pack-2",       1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "phagnot-mk02",
    icon = "__pyalienlifegraphics__/graphics/technology/phagnot-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"phagnot"},
    effects = {},
    unit = {
        count = 250,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1",       1},
            {"logistic-science-pack",   1},
            {"py-science-pack-2",       1},
            {"chemical-science-pack",   1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "phagnot-mk03",
    icon = "__pyalienlifegraphics__/graphics/technology/phagnot-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"phagnot-mk02"},
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
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "phagnot-mk04",
    icon = "__pyalienlifegraphics__/graphics/technology/phagnot-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"phagnot-mk03"},
    effects = {},
    unit = {
        count = 350,
        ingredients = {
            {"automation-science-pack", 1},
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
