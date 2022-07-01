TECHNOLOGY {
    type = "technology",
    name = "cellulose-mk01",
    icon = "__pyalienlifegraphics2__/graphics/technology/cellulose-mk01.png",
    icon_size = 128,
    order = "c-a",
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "cellulose-mk02",
    icon = "__pyalienlifegraphics2__/graphics/technology/cellulose-mk02.png",
    icon_size = 128,
    order = "c-a",
    dependencies = {"cellulose-mk01"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1", 1},
            {"logistic-science-pack", 1},
            {"py-science-pack-2", 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "cellulose-mk03",
    icon = "__pyalienlifegraphics2__/graphics/technology/cellulose-mk03.png",
    icon_size = 128,
    order = "c-a",
    dependencies = {"cellulose-mk02"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1", 1},
            {"logistic-science-pack", 1},
            {"py-science-pack-2", 1},
            {"chemical-science-pack", 1},
        },
        time = 50
    }
}
