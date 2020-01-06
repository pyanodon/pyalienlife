TECHNOLOGY {
    type = "technology",
    name = "organic-breeding",
    icon = "__pyalienlife__/graphics/technology/organic-breeding.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"water-animals-mk01","biotech-mk02","land-animals-mk01"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {'logistic-science-pack', 2}
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "selective-breeding",
    icon = "__pyalienlife__/graphics/technology/selective-breeding.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"organic-breeding","biotech-mk02","domestication"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {'logistic-science-pack', 2},
            {'chemical-science-pack', 2},
            {'py-science-pack', 3},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "artificial-breeding",
    icon = "__pyalienlife__/graphics/technology/artificial-breeding.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"selective-breeding","biotech-mk03","domestication-mk02"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 4},
            {'logistic-science-pack', 3},
            {'chemical-science-pack', 2},
            {'production-science-pack', 1},
            {'py-science-pack', 2},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "biased-mutation",
    icon = "__pyalienlife__/graphics/technology/biased-mutation.png",
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