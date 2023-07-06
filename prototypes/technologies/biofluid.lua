TECHNOLOGY {
    type = 'technology',
    name = 'biofluid-mk01',
    icon = '__pyalienlifegraphics2__/graphics/technology/robooport-mk01.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'genetics-mk04'},
    dependencies = {'genetics-mk04'},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {'automation-science-pack', 4},
            {'py-science-pack-1', 1},
            {'logistic-science-pack', 3},
            {'py-science-pack-2', 1},
            {'chemical-science-pack', 1}
        },
        time = 50
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'biofluid-mk02',
    icon = '__pyalienlifegraphics2__/graphics/technology/robooport-mk02.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'biofluid-mk01'},
    dependencies = {'biofluid-mk01'},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {'automation-science-pack', 4},
            {'py-science-pack-1', 1},
            {'logistic-science-pack', 3},
            {'py-science-pack-2', 1},
            {'chemical-science-pack', 1},
            {'py-science-pack-3', 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'biofluid-mk03',
    icon = '__pyalienlifegraphics2__/graphics/technology/robooport-mk03.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'biofluid-mk02'},
    dependencies = {'biofluid-mk02'},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {'automation-science-pack', 4},
            {'py-science-pack-1', 1},
            {'logistic-science-pack', 3},
            {'py-science-pack-2', 2},
            {'chemical-science-pack', 3},
            {'py-science-pack-3', 2},
            {'military-science-pack', 1},
            {'production-science-pack', 3},
            {'py-science-pack-4', 1},
        },
        time = 50
    }
}