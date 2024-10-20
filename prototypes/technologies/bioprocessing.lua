TECHNOLOGY {
    type = "technology",
    name = "bioprocessing",
    icon = "__pyalienlifegraphics3__/graphics/technology/bioprocessing.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"quartz-mk01", "compost"},
    effects = {},
    unit = {
        count = 300,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   1},
        },
        time = 50
    }
}
