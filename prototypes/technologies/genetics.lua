TECHNOLOGY {
    type = "technology",
    name = "genetics-mk01",
    icon = "__pyalienlife__/graphics/technology/genetics-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"microbiology-mk01"},
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
    name = 'genetics-mk02',
    icon = '__pyalienlife__/graphics/technology/genetics-mk02.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'genetics-mk01'},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
            {'logistic-science-pack', 1}
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'genetics-mk03',
    icon = '__pyalienlife__/graphics/technology/genetics-mk03.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'genetics-mk02'},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'utility-science-pack', 1},
            
        },
        time = 60
    }
}

TECHNOLOGY {
    type = "technology",
    name = "genetics-mk04",
    icon = "__pyalienlife__/graphics/technology/genetics-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"genetics-mk03"},
    effects = {},
    unit = {
        count = 130,
        ingredients = {
            {'automation-science-pack', 3},
            {'logistic-science-pack', 2},
            {'chemical-science-pack', 1},
            {'utility-science-pack', 1},
            {'production-science-pack', 1}
        },
        time = 45
    }
}