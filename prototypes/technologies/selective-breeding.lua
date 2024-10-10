TECHNOLOGY {
    type = "technology",
    name = "selective-breeding",
    icon = "__pyalienlifegraphics__/graphics/technology/selective-breeding.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"organic-breeding", "biotech-mk02", "domestication"},
    dependencies = {"organic-breeding"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   2},
            -- {'py-science-pack-3', 3},
        },
        time = 50
    }
}
