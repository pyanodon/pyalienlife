TECHNOLOGY {
    type = "technology",
    name = "symbiosis-mk01",
    icon = "__pyalienlifegraphics3__/graphics/technology/symbiosis-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"ulric-mk02"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1",       1},
            {"logistic-science-pack",   1},
            {"py-science-pack-2",       1},
            {"chemical-science-pack",   1},
        },
        time = 50
    }
}
