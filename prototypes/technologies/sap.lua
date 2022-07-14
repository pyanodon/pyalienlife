TECHNOLOGY {
    type = "technology",
    name = "sap-mk01",
    icon = "__pyalienlifegraphics2__/graphics/technology/sap-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {},
    effects = {},
    unit = {
        count = 20,
        ingredients = {
            {"automation-science-pack", 1},
        },
        time = 30
    }
}


TECHNOLOGY {
    type = "technology",
    name = "sap-mk02",
    icon = "__pyalienlifegraphics2__/graphics/technology/sap-mk02.png",
    icon_size = 128,
    order = "c-a",
    dependencies = {"sap-mk01"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1", 1},
            {"logistic-science-pack", 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "sap-mk03",
    icon = "__pyalienlifegraphics2__/graphics/technology/sap-mk03.png",
    icon_size = 128,
    order = "c-a",
    dependencies = {"sap-mk02"},
    effects = {},
    unit = {
        count = 250,
        ingredients = {
            {"automation-science-pack", 2},
            {"py-science-pack-1", 1},
            {"logistic-science-pack", 1},
            {"py-science-pack-2", 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "sap-mk04",
    icon = "__pyalienlifegraphics2__/graphics/technology/sap-mk04.png",
    icon_size = 128,
    order = "c-a",
    dependencies = {"sap-mk03"},
    effects = {},
    unit = {
        count = 350,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1", 1},
            {"logistic-science-pack", 1},
            {"py-science-pack-2", 1},
            {"chemical-science-pack", 1},
            {"py-science-pack-3", 1},
        },
        time = 50
    }
}
