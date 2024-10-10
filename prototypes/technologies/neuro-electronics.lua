TECHNOLOGY {
    type = "technology",
    name = "neuro-electronics-mk01",
    icon = "__pyalienlifegraphics2__/graphics/technology/neuro-electronics-mk01.png",
    icon_size = 128,
    order = "c-a",
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   1},
            {"py-science-pack-2",       1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "neuro-electronics-mk02",
    icon = "__pyalienlifegraphics2__/graphics/technology/neuro-electronics-mk02.png",
    icon_size = 128,
    order = "c-a",
    dependencies = {"neuro-electronics-mk01"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1",       1},
            {"logistic-science-pack",   1},
            {"py-science-pack-2",       1},
            {"chemical-science-pack",   1},
            {"py-science-pack-3",       1},
        },
        time = 50
    }
}
