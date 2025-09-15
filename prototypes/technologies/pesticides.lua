TECHNOLOGY {
    type = "technology",
    name = "pesticides-mk01",
    icon = "__pyalienlifegraphics3__/graphics/technology/pesticides-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"arqad-mk02", "biotech-mk03"},
    effects = {},
    unit = {
        count = 200,
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

TECHNOLOGY {
    type = "technology",
    name = "pesticides-mk02",
    icon = "__pyalienlifegraphics3__/graphics/technology/pesticides-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"pesticides-mk01", "biotech-mk04"},
    effects = {},
    unit = {
        count = 300,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1",       1},
            {"logistic-science-pack",   1},
            {"py-science-pack-2",       1},
            {"chemical-science-pack",   1},
            {"py-science-pack-3",       1},
            {"production-science-pack", 1},
        },
        time = 50
    }
}
