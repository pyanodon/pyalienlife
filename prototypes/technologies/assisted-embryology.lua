TECHNOLOGY {
    type = "technology",
    name = "assisted-embryology",
    icon = "__pyalienlifegraphics__/graphics/technology/assisted-embryology.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"biotech-mk03","land-animals-mk03","immunosupressants"},
    effects = {},
    unit = {
        count = 300,
        ingredients = {
            {"automation-science-pack", 4},
            {"py-science-pack-1", 1},
            {"logistic-science-pack", 3},
            {"py-science-pack-2", 1},
            {"chemical-science-pack", 3},
            {"py-science-pack-3", 1},
            {"production-science-pack", 1},
            {"military-science-pack", 1}
        },
        time = 50
    }
}
