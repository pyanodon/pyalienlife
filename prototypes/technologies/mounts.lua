TECHNOLOGY {
    type = 'technology',
    name = 'mounts-mk01',
    icon = '__pyalienlifegraphics__/graphics/technology/mounts-mk01.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'logistic-science-pack'},
    effects = {},
    unit = {
        count = 350,
        ingredients = {
            {'automation-science-pack', 2},
            {'logistic-science-pack', 2},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'mounts-mk02',
    icon = '__pyalienlifegraphics__/graphics/technology/mounts-mk02.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'genetics-mk03', 'dingrits'},
    effects = {},
    unit = {
        count = 350,
        ingredients = {
            {'automation-science-pack', 2},
            {'logistic-science-pack', 2},
            {'chemical-science-pack', 2},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'spidertron',
    icon = '__pyalienlifegraphics__/graphics/technology/mounts-mk03.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {mods.pyalternativeenergy and 'zungror' or 'pharmagenomics'},
    effects = {},
    unit = {
        count = 350,
        ingredients = {
            {'automation-science-pack', 2},
            {'logistic-science-pack', 2},
            {'chemical-science-pack', 2},
            {'py-science-pack-3', 2},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'mounts-mk04',
    icon = '__pyalienlifegraphics__/graphics/technology/mounts-mk04.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {mods.pyalternativeenergy and 'phadai-upgrade' or 'domestication-mk05', 'phadai-mk04'},
    effects = {},
    unit = {
        count = 350,
        ingredients = {
            {'automation-science-pack', 2},
            {'logistic-science-pack', 2},
            {'chemical-science-pack', 2},
            {'utility-science-pack', 2},
        },
        time = 50
    }
}