TECHNOLOGY {
    type = "technology",
    name = "microbiology-mk01",
    icon = "__pyalienlifegraphics__/graphics/technology/microbiology-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"xenobiology"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1", 1}
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'microbiology-mk02',
    icon = '__pyalienlifegraphics__/graphics/technology/microbiology-mk02.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'microbiology-mk01'},
    dependencies = {"microbiology-mk01"},
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
    icon = '__pyalienlifegraphics__/graphics/technology/microbiology-mk03.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'microbiology-mk02'},
    dependencies = {"microbiology-mk02"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {'automation-science-pack', 4},
            {'logistic-science-pack', 2},
            {'chemical-science-pack', 2},
        },
        time = 60
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'microbiology-mk04',
    icon = "__pyalienlifegraphics2__/graphics/technology/microbiology-mk04.png",
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'microbiology-mk03'},
    dependencies = {"microbiology-mk03"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {'automation-science-pack', 4},
            {'logistic-science-pack', 2},
            {'chemical-science-pack', 2},
            {'production-science-pack', 2},
        },
        time = 60
    }
}
