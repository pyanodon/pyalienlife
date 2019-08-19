TECHNOLOGY {
    type = "technology",
    name = "dhilmos",
    icon = "__pyalienlife__/graphics/technology/dhilmos.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"land-animals-mk03","genetics-mk03","genetic-design"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 4},
            {"logistic-science-pack", 2},
            {'chemical-science-pack', 2},
            {'py-science-pack', 1},
        },
        time = 50
    }
}
