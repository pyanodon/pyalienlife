TECHNOLOGY {
    type = 'technology',
    name = 'organ-printing',
    icon = '__pyalienlifegraphics__/graphics/technology/organ-printing.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'biotech-mk01'},
    effects = {},
    unit = {
        count = 300,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'organ-printing-mk02',
    icon = '__pyalienlifegraphics__/graphics/technology/organ-printing-mk02.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'biotech-mk02','organ-printing'},
    effects = {},
    unit = {
        count = 350,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1},
            {'py-science-pack', 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'organ-printing-mk03',
    icon = '__pyalienlifegraphics__/graphics/technology/organ-printing-mk03.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'biotech-mk03','organ-printing-mk02','immunosupressants'},
    effects = {},
    unit = {
        count = 400,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1},
            {'production-science-pack', 1},
            {'py-science-pack', 1},
        },
        time = 45
    }
}