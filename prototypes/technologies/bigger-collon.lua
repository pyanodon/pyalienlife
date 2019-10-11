TECHNOLOGY {
    type = "technology",
    name = "bigger-colon",
    icon = "__pyalienlife__/graphics/technology/manure-1.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"genetic-design","land-animals-mk02"},
    effects = {},
    unit = {
        count = 350,
        ingredients = {
            {"automation-science-pack", 4},
            {"logistic-science-pack", 2},
            {'chemical-science-pack', 2},
            {'py-science-pack', 2},
        },
        time = 50
    }
}
