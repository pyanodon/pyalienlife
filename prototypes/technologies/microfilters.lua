TECHNOLOGY {
    type = "technology",
    name = "microfilters",
    icon = "__pyalienlifegraphics__/graphics/technology/microfilters.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"mycology-mk02"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   1}
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "microfilters-mk02",
    icon = "__pyalienlifegraphics__/graphics/technology/microfilters-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"mycology-mk03", "microfilters"},
    dependencies = {"microfilters"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   1},
            {"py-science-pack-2",       1},
        },
        time = 45
    }
}
