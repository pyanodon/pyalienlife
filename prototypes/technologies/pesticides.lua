TECHNOLOGY {
    type = "technology",
    name = "pesticides-mk01",
    icon = "__pyalienlifegraphics3__/graphics/technology/pesticides-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"arqad-mk02","energy-drink"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {'py-science-pack-2', 1},
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
    prerequisites = {"pesticides-mk01","biotech-mk03"},
    dependencies = {"pesticides-mk01"},
    effects = {},
    unit = {
        count = 300,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {'py-science-pack-2', 1},
        },
        time = 50
    }
}
