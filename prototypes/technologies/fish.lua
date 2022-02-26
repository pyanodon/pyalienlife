TECHNOLOGY {
    type = "technology",
    name = "fish-mk01",
    icon = "__pyalienlifegraphics__/graphics/technology/fish-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"water-animals-mk01"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 3},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "fish-mk02",
    icon = "__pyalienlifegraphics__/graphics/technology/fish-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"fish-mk01"},
    dependencies = {"fish-mk01"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 3},
            {'logistic-science-pack', 2},
            {'py-science-pack-2', 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "fish-mk03",
    icon = "__pyalienlifegraphics__/graphics/technology/fish-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"fish-mk02"},
    dependencies = {"fish-mk02"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {'automation-science-pack', 4},
            {'logistic-science-pack', 3},
            {'py-science-pack-2', 3},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "fish-mk04",
    icon = "__pyalienlifegraphics__/graphics/technology/fish-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"fish-mk03"},
    dependencies = {"fish-mk03"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {'automation-science-pack', 4},
            {'logistic-science-pack', 3},
            {'py-science-pack-2', 4},
        },
        time = 45
    }
}
