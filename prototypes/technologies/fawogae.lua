TECHNOLOGY {
    type = "technology",
    name = "fawogae-mk01",
    icon = "__pyalienlifegraphics__/graphics/technology/fawogae-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"mycology-mk01"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 2},
            {"py-science-pack-1", 1}
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "fawogae-mk02",
    icon = "__pyalienlifegraphics__/graphics/technology/fawogae-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {},
    dependencies = {"fawogae-mk01"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 2},
            {"py-science-pack-1", 1},
            {"py-science-pack-2", 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "fawogae-mk03",
    icon = "__pyalienlifegraphics__/graphics/technology/fawogae-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {},
    dependencies = {"fawogae-mk02"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 2},
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
    name = "fawogae-mk04",
    icon = "__pyalienlifegraphics__/graphics/technology/fawogae-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {},
    dependencies = {"fawogae-mk03"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 2},
            --{"logistic-science-pack", 1},
            {"py-science-pack-1", 1},
            --{"chemical-science-pack", 1},
            {"py-science-pack-2", 1},
            --{"production-science-pack", 1},
            {"py-science-pack-3", 1},
            {"py-science-pack-4", 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "fawogae-mk05",
    icon = "__pyalienlifegraphics__/graphics/technology/fawogae-mk05.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {},
    dependencies = {"fawogae-mk04"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 2},
            --{"logistic-science-pack", 1},
            {"py-science-pack-1", 1},
            --{"chemical-science-pack", 1},
            {"py-science-pack-2", 1},
            --{"production-science-pack", 1},
            {"py-science-pack-3", 1},
            {"py-science-pack-4", 1},
        },
        time = 50
    }
}
