TECHNOLOGY {
    type = "technology",
    name = "botany-mk01",
    icon = "__pyalienlifegraphics__/graphics/technology/botany-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"xenobiology"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'botany-mk02',
    icon = '__pyalienlifegraphics__/graphics/technology/botany-mk02.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'botany-mk01'},
    dependencies = {'botany-mk01'},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1}
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'botany-mk03',
    icon = '__pyalienlifegraphics__/graphics/technology/botany-mk03.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'botany-mk02'},
    dependencies = {'botany-mk02'},
    effects = {},
    unit = {
        count = 250,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1},
            {"production-science-pack", 1},
        },
        time = 60
    }
}

TECHNOLOGY {
    type = "technology",
    name = "botany-mk04",
    icon = "__pyalienlifegraphics__/graphics/technology/botany-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"botany-mk03"},
    dependencies = {'botany-mk03'},
    effects = {},
    unit = {
        count = 300,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"military-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1},
        },
        time = 45
    }
}
