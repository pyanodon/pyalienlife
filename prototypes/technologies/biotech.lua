TECHNOLOGY {
    type = "technology",
    name = "biotech-mk01",
    icon = "__pyalienlifegraphics__/graphics/technology/biotech-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"xenobiology"},
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
    name = 'biotech-mk02',
    icon = '__pyalienlifegraphics__/graphics/technology/biotech-mk02.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'biotech-mk01',"land-animals-mk01","water-animals-mk01"},
    dependencies = {'biotech-mk01'},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1}
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'biotech-mk03',
    icon = '__pyalienlifegraphics__/graphics/technology/biotech-mk03.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'chitin',"land-animals-mk02","water-animals-mk02"},
    dependencies = {'biotech-mk02'},
    effects = {},
    unit = {
        count = 250,
        ingredients = {
            {'automation-science-pack', 1},
            {'py-science-pack-1', 1},
            {'logistic-science-pack', 1},
            {'py-science-pack-2', 1},
            {'chemical-science-pack', 1},
            {'py-science-pack-3', 1},
        },
        time = 60
    }
}

TECHNOLOGY {
    type = "technology",
    name = "biotech-mk04",
    icon = "__pyalienlifegraphics__/graphics/technology/biotech-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"biotech-mk03","pharmagenomics"},
    dependencies = {'biotech-mk03'},
    effects = {},
    unit = {
        count = 300,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1},
            {"production-science-pack", 1},
        },
        time = 45
    }
}
