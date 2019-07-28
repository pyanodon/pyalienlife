TECHNOLOGY {
    type = "technology",
    name = "microbiology-mk01",
    icon = "__pyalienlife__/graphics/technology/microbiology-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"xenobiology","zoology"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'microbiology-mk02',
    icon = '__pyalienlife__/graphics/technology/microbiology-mk02.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'microbiology-mk01'},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1}
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'microbiology-mk03',
    icon = '__pyalienlife__/graphics/technology/microbiology-mk03.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'microbiology-mk02'},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {'automation-science-pack', 4},
            {'logistic-science-pack', 2},
            {'chemical-science-pack', 1},
            {'py-science-pack', 3},
        },
        time = 60
    }
}