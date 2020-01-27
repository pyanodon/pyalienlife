TECHNOLOGY {
    type = "technology",
    name = "argumented-spikes",
    icon = "__pyalienlifegraphics__/graphics/technology/argumented-spikes.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"dingrits-mk02"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {'chemical-science-pack', 1},
            {'production-science-pack', 1},
        },
        time = 50
    }
}