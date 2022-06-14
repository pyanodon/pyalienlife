TECHNOLOGY {
    type = "technology",
    name = "laika",
    icon = "__pyalienlifegraphics3__/graphics/technology/laika.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"rocket-silo","biotech-mk04","bio-implants"},
    effects = {},
    unit = {
        count = 350,
        ingredients = {
            {"automation-science-pack", 3},
            {"py-science-pack-1", 1},
            {"logistic-science-pack", 1},
            {"military-science-pack", 1},
            {"py-science-pack-2", 1},
            {"chemical-science-pack", 1},
            {"py-science-pack-3", 1},
            {"production-science-pack", 1},
        },
        time = 50
    }
}
