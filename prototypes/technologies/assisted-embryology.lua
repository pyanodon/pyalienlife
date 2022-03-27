TECHNOLOGY {
    type = "technology",
    name = "assisted-embryology",
    icon = "__pyalienlifegraphics__/graphics/technology/assisted-embryology.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"biotech-mk03","land-animals-mk03","diamond-mining","immunosupressants"},
    effects = {},
    unit = {
        count = 300,
        ingredients = {
            {"automation-science-pack", 4},
            {"logistic-science-pack", 3},
            -- {'py-science-pack-2', 1},
        },
        time = 50
    }
}
