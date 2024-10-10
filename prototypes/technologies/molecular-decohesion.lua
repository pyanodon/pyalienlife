TECHNOLOGY {
    type = "technology",
    name = "molecular-decohesion",
    icon = "__pyalienlifegraphics__/graphics/technology/molecular-decohesion.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"biotech-mk01"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 4},
            {"py-science-pack-1",       1}
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "molecular-decohesion-mk02",
    icon = "__pyalienlifegraphics__/graphics/technology/molecular-decohesion-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"molecular-decohesion"},
    dependencies = {"molecular-decohesion"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 2},
            {"py-science-pack-1",       1},
            {"logistic-science-pack",   2},
            {"py-science-pack-2",       1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "molecular-decohesion-mk03",
    icon = "__pyalienlifegraphics__/graphics/technology/molecular-decohesion-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"molecular-decohesion-mk02"},
    dependencies = {"molecular-decohesion-mk02"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
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
    name = "molecular-decohesion-mk04",
    icon = "__pyalienlifegraphics__/graphics/technology/molecular-decohesion-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"molecular-decohesion-mk03"},
    dependencies = {"molecular-decohesion-mk03"},
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
            {"py-science-pack-4",       1},
        },
        time = 50
    }
}
