TECHNOLOGY {
    type = "technology",
    name = "space-program-mk01",
    icon = "__pyalienlifegraphics__/graphics/technology/space-program-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"rocket-silo","laika","bio-implants"},
    effects = {},
    unit = {
        count = 400,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {'chemical-science-pack', 2},
            {'production-science-pack', 1},
            {'utility-science-pack', 1},
            {'py-science-pack-2', 1},
            {'space-science-pack', 1},
        },
        time = 50
    }
}
