TECHNOLOGY {
    type = "technology",
    name = "biotech-machines-mk01",
    icon = "__pyalienlifegraphics2__/graphics/technology/biotech-machines-mk01.png",
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
    name = "biotech-machines-mk02",
    icon = "__pyalienlifegraphics2__/graphics/technology/biotech-machines-mk02.png",
    icon_size = 128,
    order = "c-a",
    dependencies = {"biotech-machines-mk01"},
    effects = {},
    unit = {
        count = 150,
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
    name = "biotech-machines-mk03",
    icon = "__pyalienlifegraphics2__/graphics/technology/biotech-machines-mk03.png",
    icon_size = 128,
    order = "c-a",
    dependencies = {"biotech-machines-mk02"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1",       1},
            {"logistic-science-pack",   1},
            {"py-science-pack-2",       1},
            {"chemical-science-pack",   1},
            {"production-science-pack", 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "biotech-machines-mk04",
    icon = "__pyalienlifegraphics2__/graphics/technology/biotech-machines-mk04.png",
    icon_size = 128,
    order = "c-a",
    dependencies = {"biotech-machines-mk03"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1",       1},
            {"logistic-science-pack",   1},
            {"py-science-pack-2",       1},
            {"military-science-pack",   1},
            {"chemical-science-pack",   1},
            {"production-science-pack", 1},
            {"utility-science-pack",    1},
        },
        time = 50
    }
}
