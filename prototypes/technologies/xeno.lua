TECHNOLOGY {
    type = "technology",
    name = "xeno",
    icon = "__pyalienlife__/graphics/technology/xeno.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"biotech-mk02","land-animals-mk02"},
    effects = {},
    unit = {
        count = 250,
        ingredients = {
            {"automation-science-pack", 3},
            {'logistic-science-pack', 2},
            {'py-science-pack', 1},
        },
        time = 45
    }
}
