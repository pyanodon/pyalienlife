TECHNOLOGY {
    type = "technology",
    name = "xeno",
    icon = "__pyalienlifegraphics__/graphics/technology/xeno.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"biotech-mk02","land-animals-mk02","assisted-embryology"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 3},
            {'logistic-science-pack', 2},
            -- {'py-science-pack-2', 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "xeno-mk02",
    icon = "__pyalienlifegraphics__/graphics/technology/xeno-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"xeno"},
    dependencies = {"xeno"},
    effects = {},
    unit = {
        count = 300,
        ingredients = {
            {"automation-science-pack", 1},
            {'logistic-science-pack', 1},
            -- {'py-science-pack-2', 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "xeno-mk03",
    icon = "__pyalienlifegraphics__/graphics/technology/xeno-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"xeno-mk02"},
    dependencies = {"xeno-mk02"},
    effects = {},
    unit = {
        count = 350,
        ingredients = {
            {"automation-science-pack", 1},
            {'logistic-science-pack', 1},
            -- {'py-science-pack-2', 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "xeno-mk04",
    icon = "__pyalienlifegraphics__/graphics/technology/xeno-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"xeno-mk03"},
    dependencies = {"xeno-mk03"},
    effects = {},
    unit = {
        count = 400,
        ingredients = {
            {"automation-science-pack", 1},
            {'logistic-science-pack', 1},
            -- {'py-science-pack-2', 1},
        },
        time = 45
    }
}
