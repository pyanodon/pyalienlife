
TECHNOLOGY {
    type = "technology",
    name = "biased-mutation",
    icon = "__pyalienlifegraphics__/graphics/technology/biased-mutation.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"artificial-breeding","biotech-mk04"},
    effects = {},
    unit = {
        count = 300,
        ingredients = {
            {"automation-science-pack", 3},
            {'logistic-science-pack', 4},
            {'chemical-science-pack', 3},
            {'production-science-pack', 1},
            {'utility-science-pack', 1},
            {'py-science-pack', 2},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "arqad-breeding-3",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/technology/arqad.png"},
        {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png', icon_size = 64, scale = 0.5,shift = {35,35}},
    },
    icon_size = 128,
    order = "c-a",
    prerequisites = {"biased-mutation","arqad-breeding-2"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 3},
            {'logistic-science-pack', 4},
            {'chemical-science-pack', 3},
            {'production-science-pack', 1},
            {'utility-science-pack', 1},
            {'py-science-pack', 2},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "arthurian-breeding-3",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/technology/arthurian.png"},
        {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png', icon_size = 64, scale = 0.5,shift = {35,35}},
    },
    icon_size = 128,
    order = "c-a",
    prerequisites = {"biased-mutation","arthurian-breeding-2"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 3},
            {'logistic-science-pack', 4},
            {'chemical-science-pack', 3},
            {'production-science-pack', 1},
            {'utility-science-pack', 1},
            {'py-science-pack', 2},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "auog-breeding-3",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/technology/arthurian.png"},
        {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png', icon_size = 64, scale = 0.5,shift = {35,35}},
    },
    icon_size = 128,
    order = "c-a",
    prerequisites = {"biased-mutation","auog-breeding-2"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 3},
            {'logistic-science-pack', 4},
            {'chemical-science-pack', 3},
            {'production-science-pack', 1},
            {'utility-science-pack', 1},
            {'py-science-pack', 2},
        },
        time = 50
    }
}
