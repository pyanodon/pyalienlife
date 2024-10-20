TECHNOLOGY {
    type = "technology",
    name = "biased-mutation",
    icon = "__pyalienlifegraphics__/graphics/technology/biased-mutation.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"artificial-breeding", "biotech-mk04"},
    dependencies = {"artificial-breeding"},
    effects = {},
    unit = {
        count = 300,
        ingredients = {
            {"automation-science-pack", 3},
            {"logistic-science-pack",   4},
            {"chemical-science-pack",   1},
            {"production-science-pack", 1},
        },
        time = 50
    }
}
