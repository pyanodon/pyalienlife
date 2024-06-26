TECHNOLOGY {
    type = "technology",
    name = "genetics-mk01",
    icon = "__pyalienlifegraphics__/graphics/technology/genetics-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {},
    dependencies = {"moss-mk01"},
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
    icon = '__pyalienlifegraphics__/graphics/technology/genetics-mk02.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {},
    dependencies = {"genetics-mk01"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {'py-science-pack-1', 1}
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'genetics-mk03',
    icon = '__pyalienlifegraphics__/graphics/technology/genetics-mk03.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {},
    dependencies = {"genetics-mk02"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {'py-science-pack-1', 1},
            {'logistic-science-pack', 1}
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'genetics-mk04',
    icon = '__pyalienlifegraphics__/graphics/technology/genetics-mk04.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'genetics-mk03'},
    dependencies = {"genetics-mk03"},
    effects = {},
    unit = {
        count = 250,
        ingredients = {
            {'automation-science-pack', 4},
            {'py-science-pack-1', 1},
            {'logistic-science-pack', 1},
            {'py-science-pack-2', 1},
            {'chemical-science-pack', 3},
        },
        time = 60
    }
}

TECHNOLOGY {
    type = "technology",
    name = "genetics-mk05",
    icon = "__pyalienlifegraphics__/graphics/technology/genetics-mk05.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"genetics-mk04","pharmacogenomics"},
    dependencies = {"genetics-mk04"},
    effects = {},
    unit = {
        count = 300,
        ingredients = {
            {'automation-science-pack', 3},
            {'logistic-science-pack', 2},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
        },
        time = 45
    }
}
