TECHNOLOGY {
    type = "technology",
    name = "artificial-breeding",
    icon = "__pyalienlifegraphics__/graphics/technology/artificial-breeding.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"selective-breeding", "biotech-mk03", "domestication-mk02"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 4},
            {"logistic-science-pack",   3},
            {"chemical-science-pack",   1},
            {"py-science-pack-3",       1},
        },
        time = 50
    }
}
