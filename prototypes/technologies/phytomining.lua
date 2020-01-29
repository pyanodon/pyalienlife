TECHNOLOGY {
    type = 'technology',
    name = 'phytomining',
    icon = '__pyalienlifegraphics__/graphics/technology/phytomining.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'botany-mk02'},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1},
            {'py-science-pack', 1},
        },
        time = 45
    }
}