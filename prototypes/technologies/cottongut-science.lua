TECHNOLOGY {
    type = "technology",
    name = "cottongut-science-mk01",   -- solidified sarcorus
    icon = "__pyalienlifegraphics2__/graphics/technology/cottongut-science-mk01.png",
    icon_size = 128,
    order = "c-a",
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1", 1}
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "cottongut-science-mk02",    -- paragen
    icon = "__pyalienlifegraphics2__/graphics/technology/cottongut-science-mk02.png",
    icon_size = 128,
    order = "c-a",
    dependencies = {"cottongut-science-mk01"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1", 1},
            {"logistic-science-pack", 1},
            -- {'py-science-pack-3', 1}
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "cottongut-science-mk03",    -- negasium
    icon = "__pyalienlifegraphics2__/graphics/technology/cottongut-science-mk03.png",
    icon_size = 128,
    order = "c-a",
    dependencies = {"cottongut-science-mk02"},
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

TECHNOLOGY {
    type = "technology",
    name = "cottongut-science-mk04",    -- non-conductive phazogen
    icon = "__pyalienlifegraphics2__/graphics/technology/cottongut-science-mk04.png",
    icon_size = 128,
    order = "c-a",
    dependencies = {"cottongut-science-mk03"},
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

TECHNOLOGY {
    type = "technology",
    name = "cottongut-science-mk05",    -- denatured seizmite
    icon = "__pyalienlifegraphics2__/graphics/technology/cottongut-science-mk05.png",
    icon_size = 128,
    order = "c-a",
    dependencies = {"cottongut-science-mk04"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1", 1},
            {"logistic-science-pack", 1},
            {"py-science-pack-2", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
        },
        time = 50
    }
}

