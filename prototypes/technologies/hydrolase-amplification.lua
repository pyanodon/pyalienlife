TECHNOLOGY {
    type = "technology",
    name = "hydrolase-amplification",
    icon = "__pyalienlifegraphics__/graphics/technology/hydrolase-amplification.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"kmauts-mk02"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 3},
            {"logistic-science-pack", 2},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
        },
        time = 50
    }
}
