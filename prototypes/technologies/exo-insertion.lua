TECHNOLOGY {
    type = "technology",
    name = "exo-insertion",
    icon = "__pyalienlifegraphics__/graphics/technology/exo-insertion.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"dingrits-mk02"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1",       1},
            {"logistic-science-pack",   3},
            {"py-science-pack-2",       1},
            {"chemical-science-pack",   1},
            {"py-science-pack-3",       1},
            {"production-science-pack", 1},
            {"py-science-pack-4",       1},
        },
        time = 50
    }
}
