TECHNOLOGY {
    type = "technology",
    name = "vatbrain-mk01",
    icon = "__pyalienlifegraphics2__/graphics/technology/vatbrain-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {},
    effects = {},
    unit = {
        count = 300,
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
    name = "vatbrain-mk02",
    icon = "__pyalienlifegraphics2__/graphics/technology/vatbrain-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"vatbrain-mk01"},
    dependencies = {"vatbrain-mk01"},
    effects = {},
    unit = {
        count = 350,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "vatbrain-mk03",
    icon = "__pyalienlifegraphics2__/graphics/technology/vatbrain-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"vatbrain-mk02"},
    dependencies = {"vatbrain-mk02"},
    effects = {},
    unit = {
        count = 400,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1", 1},
            {"logistic-science-pack", 1},
            {"py-science-pack-2", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1}
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "vatbrain-mk04",
    icon = "__pyalienlifegraphics2__/graphics/technology/vatbrain-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"vatbrain-mk03"},
    dependencies = {"vatbrain-mk03"},
    effects = {},
    unit = {
        count = 450,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1", 1},
            {"logistic-science-pack", 1},
            {"py-science-pack-2", 1},
            {"chemical-science-pack", 1},
            {"py-science-pack-3", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1}
        },
        time = 50
    }
}
