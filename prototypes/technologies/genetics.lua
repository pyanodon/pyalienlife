TECHNOLOGY {
    type = "technology",
    name = "genetics-mk01",
    icon = "__pyalienlifegraphics__/graphics/technology/genetics-mk01.png",
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
    icon = '__pyalienlifegraphics__/graphics/technology/genetics-mk02.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'genetics-mk01',"machines-mk02","korlex"},
    dependencies = {"genetics-mk01"},
    effects = {},
    unit = {
        count = 200,
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
    icon = '__pyalienlifegraphics__/graphics/technology/genetics-mk03.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'genetics-mk02'},
    dependencies = {"genetics-mk02"},
    effects = {},
    unit = {
        count = 250,
        ingredients = {
            {'automation-science-pack', 4},
            {'logistic-science-pack', 3},
            -- {'py-science-pack-2', 1},

        },
        time = 60
    }
}

TECHNOLOGY {
    type = "technology",
    name = "genetics-mk04",
    icon = "__pyalienlifegraphics__/graphics/technology/genetics-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"genetics-mk03","pharmagenomics"},
    dependencies = {"genetics-mk03"},
    effects = {},
    unit = {
        count = 300,
        ingredients = {
            {'automation-science-pack', 3},
            {'logistic-science-pack', 2},
            -- {'py-science-pack-2', 1},
        },
        time = 45
    }
}
