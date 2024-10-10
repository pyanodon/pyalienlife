TECHNOLOGY {
    type = "technology",
    name = "seaweed-mk01",
    icon = "__pyalienlifegraphics2__/graphics/technology/seaweed-mk01.png",
    icon_size = 128,
    order = "c-a",
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "seaweed-mk02",
    icon = "__pyalienlifegraphics2__/graphics/technology/seaweed-mk02.png",
    icon_size = 128,
    order = "c-a",
    dependencies = {"seaweed-mk01"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1",       1},
            {"logistic-science-pack",   1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "seaweed-mk03",
    icon = "__pyalienlifegraphics2__/graphics/technology/seaweed-mk03.png",
    icon_size = 128,
    order = "c-a",
    dependencies = {"seaweed-mk02"},
    effects = {},
    unit = {
        count = 250,
        ingredients = {
            {"automation-science-pack", 2},
            {"py-science-pack-1",       1},
            {"logistic-science-pack",   1},
            {"py-science-pack-2",       1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "seaweed-mk04",
    icon = "__pyalienlifegraphics2__/graphics/technology/seaweed-mk04.png",
    icon_size = 128,
    order = "c-a",
    dependencies = {"seaweed-mk03"},
    effects = {},
    unit = {
        count = 350,
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
    name = "seaweed-mk05",
    icon = "__pyalienlifegraphics2__/graphics/technology/seaweed-mk05.png",
    icon_size = 128,
    order = "c-a",
    dependencies = {"seaweed-mk04"},
    effects = {},
    unit = {
        count = 350,
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
