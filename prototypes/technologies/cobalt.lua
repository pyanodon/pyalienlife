TECHNOLOGY {
    type = "technology",
    name = "cobalt-mk01",
    icon = "__pyalienlifegraphics2__/graphics/technology/cobalt-mk01.png",
    icon_size = 128,
    order = "c-a",
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   1}
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "cobalt-mk02",
    icon = "__pyalienlifegraphics2__/graphics/technology/cobalt-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"cobalt-mk01"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   1},
            {"chemical-science-pack",   1},
        },
        time = 50
    }
}
