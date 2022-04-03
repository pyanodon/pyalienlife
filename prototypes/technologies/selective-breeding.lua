
TECHNOLOGY {
    type = "technology",
    name = "selective-breeding",
    icon = "__pyalienlifegraphics__/graphics/technology/selective-breeding.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"organic-breeding","biotech-mk02","domestication"},
    dependencies = {"organic-breeding"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {'logistic-science-pack', 2},
            -- {'py-science-pack-2', 3},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "arqad-breeding-1",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/technology/arqad.png"},
        {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png', icon_size = 64, scale = 0.5,shift = {35,35}},
    },
    icon_size = 128,
    order = "arq",
    prerequisites = {"selective-breeding"},
    dependencies = {"selective-breeding"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {'logistic-science-pack', 2},
            {'chemical-science-pack', 2},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "arthurian-breeding-1",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/technology/arthurian.png"},
        {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png', icon_size = 64, scale = 0.5,shift = {35,35}},
    },
    icon_size = 128,
    order = "art",
    prerequisites = {"selective-breeding"},
    dependencies = {"selective-breeding"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1},
            {'production-science-pack', 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "auog-breeding-1",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/technology/auog.png"},
        {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png', icon_size = 64, scale = 0.5,shift = {35,35}},
    },
    icon_size = 128,
    order = "auo",
    prerequisites = {"selective-breeding"},
    dependencies = {"selective-breeding"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {'logistic-science-pack', 2},
            -- {'py-science-pack-2', 3},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "bhoddos-breeding-1",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/technology/bhoddos.png"},
        {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png', icon_size = 64, scale = 0.5,shift = {35,35}},
    },
    icon_size = 128,
    order = "bho",
    prerequisites = {"selective-breeding"},
    dependencies = {"selective-breeding"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {'logistic-science-pack', 2},
            {"chemical-science-pack", 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "arum-breeding-1",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/technology/cadaveric-arum.png"},
        {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png', icon_size = 64, scale = 0.5,shift = {35,35}},
    },
    icon_size = 128,
    order = "cad",
    prerequisites = {"selective-breeding"},
    dependencies = {"selective-breeding"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {'logistic-science-pack', 2},
            -- {'py-science-pack-2', 3},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "cottongut-breeding-1",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/technology/cottongut.png"},
        {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png', icon_size = 64, scale = 0.5,shift = {35,35}},
    },
    icon_size = 128,
    order = "cad",
    prerequisites = {"selective-breeding"},
    dependencies = {"selective-breeding"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {'logistic-science-pack', 2},
            -- {'py-science-pack-2', 3},
        },
        time = 50
    }
}

--modules missing tech icons
--fish
--sea sponge
--xyhiphoe
