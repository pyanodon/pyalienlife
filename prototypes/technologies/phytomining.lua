TECHNOLOGY {
    type = 'technology',
    name = 'phytomining',
    icon = '__pyalienlifegraphics__/graphics/technology/phytomining.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'botany-mk01','coal-processing-2'},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'phytomining-mk02',
    icon = '__pyalienlifegraphics__/graphics/technology/phytomining-mk02.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'botany-mk02','phytomining'},
    dependencies = {"phytomining"},
    effects = {},
    unit = {
        count = 250,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            -- {'py-science-pack-2', 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'phytomining-mk03',
    icon = '__pyalienlifegraphics__/graphics/technology/phytomining-mk03.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'botany-mk03','phytomining-mk02'},
    effects = {},
    unit = {
        count = 300,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            -- {'py-science-pack-2', 1},
        },
        time = 45
    }
}
