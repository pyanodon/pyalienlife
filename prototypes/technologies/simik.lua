TECHNOLOGY {
    type = "technology",
    name = "simik-mk01",
    icon = "__pyalienlifegraphics__/graphics/technology/simik-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"land-animals-mk02"},
    effects = {},
    unit = {
        count = 100,
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
    name = "simik-mk02",
    icon = "__pyalienlifegraphics__/graphics/technology/simik-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"simik-mk01"},
    dependencies = {"simik-mk01"},
    effects = {},
    unit = {
        count = 200,
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
    name = "simik-mk03",
    icon = "__pyalienlifegraphics__/graphics/technology/simik-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"simik-mk02"},
    dependencies = {"simik-mk02"},
    effects = {},
    unit = {
        count = 300,
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

TECHNOLOGY {
    type = "technology",
    name = "simik-mk04",
    icon = "__pyalienlifegraphics__/graphics/technology/simik-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"simik-mk03"},
    dependencies = {"simik-mk03"},
    effects = {},
    unit = {
        count = 400,
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
