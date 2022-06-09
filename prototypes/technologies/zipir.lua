TECHNOLOGY {
    type = "technology",
    name = "zipir",
    icon = "__pyalienlifegraphics__/graphics/technology/zipir.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"water-invertebrates-mk01"},
    effects = {},
    unit = {
        count = 200,
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
    name = "zipir-mk02",
    icon = "__pyalienlifegraphics__/graphics/technology/zipir-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"zipir"},
    dependencies = {"zipir"},
    effects = {},
    unit = {
        count = 250,
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
    name = "zipir-mk03",
    icon = "__pyalienlifegraphics__/graphics/technology/zipir-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"zipir-mk02"},
    dependencies = {"zipir-mk02"},
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
        },
        time = 50
    }
}


TECHNOLOGY {
    type = "technology",
    name = "zipir-mk04",
    icon = "__pyalienlifegraphics__/graphics/technology/zipir-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"zipir-mk03"},
    dependencies = {"zipir-mk03"},
    effects = {},
    unit = {
        count = 350,
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
