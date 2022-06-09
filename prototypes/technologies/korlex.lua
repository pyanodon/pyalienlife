TECHNOLOGY {
    type = "technology",
    name = "korlex",
    icon = "__pyalienlifegraphics__/graphics/technology/korlex.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"tuuphra","biotech-mk02","mukmoux"},
    effects = {},
    unit = {
        count = 230,
        ingredients = {
            {"automation-science-pack", 1},
            --{"logistic-science-pack", 1},
            {"py-science-pack-1", 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "korlex-mk02",
    icon = "__pyalienlifegraphics__/graphics/technology/korlex-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"korlex"},
    dependencies = {"korlex"},
    effects = {},
    unit = {
        count = 280,
        ingredients = {
            {"automation-science-pack", 1},
            --{"logistic-science-pack", 1},
            {"py-science-pack-1", 1},
            --{"chemical-science-pack", 1},
            {"py-science-pack-2", 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "korlex-mk03",
    icon = "__pyalienlifegraphics__/graphics/technology/korlex-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"korlex-mk02"},
    dependencies = {"korlex-mk02"},
    effects = {},
    unit = {
        count = 330,
        ingredients = {
            {"automation-science-pack", 1},
            --{"logistic-science-pack", 1},
            {"py-science-pack-1", 1},
            --{"chemical-science-pack", 1},
            {"py-science-pack-2", 1},
            {"py-science-pack-3", 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "korlex-mk04",
    icon = "__pyalienlifegraphics__/graphics/technology/korlex-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"korlex-mk03"},
    dependencies = {"korlex-mk03"},
    effects = {},
    unit = {
        count = 380,
        ingredients = {
            {"automation-science-pack", 1},
            --{"logistic-science-pack", 1},
            {"py-science-pack-1", 1},
            --{"chemical-science-pack", 1},
            {"py-science-pack-2", 1},
            {"py-science-pack-3", 1},
            {"py-science-pack-4", 1},
        },
        time = 50
    }
}
