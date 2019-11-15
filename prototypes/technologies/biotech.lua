TECHNOLOGY {
    type = "technology",
    name = "biotech-mk01",
    icon = "__pyalienlife__/graphics/technology/biotech-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"xenobiology","machines-mk01"},
    effects = {},
    unit = {
        count = 130,
        ingredients = {
            {"automation-science-pack", 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'biotech-mk02',
    icon = '__pyalienlife__/graphics/technology/biotech-mk02.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'biotech-mk01',"land-animals-mk01","water-animals-mk01","lead-mk02"},
    effects = {},
    unit = {
        count = 130,
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
    icon = '__pyalienlife__/graphics/technology/biotech-mk03.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'biotech-mk02',"land-animals-mk02","water-animals-mk02"},
    effects = {},
    unit = {
        count = 130,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1},
            {'py-science-pack', 1},
        },
        time = 60
    }
}

TECHNOLOGY {
    type = "technology",
    name = "biotech-mk04",
    icon = "__pyalienlife__/graphics/technology/biotech-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"biotech-mk03","dingrits"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {'automation-science-pack', 3},
            {'logistic-science-pack', 2},
            {'chemical-science-pack', 1},
            {'utility-science-pack', 1},
            {'py-science-pack', 1},
        },
        time = 45
    }
}