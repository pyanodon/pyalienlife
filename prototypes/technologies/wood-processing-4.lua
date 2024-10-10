TECHNOLOGY {
    type = "technology",
    name = "wood-processing-4",
    icon = "__pycoalprocessinggraphics__/graphics/technology/wood-processing-2.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"botany-mk03", "wood-processing-3"},
    dependencies = {"wood-processing-3"},
    effects = {},
    unit = {
        count = 350,
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
