TECHNOLOGY {
    type = "technology",
    name = "explosive-diarrhea",
    icon = "__pyalienlifegraphics__/graphics/technology/explosive-diarrhea.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"bigger-colon"},
    effects = {},
    unit = {
        count = 600,
        ingredients = {
            {"automation-science-pack", 3},
            {"logistic-science-pack", 3},
            {'chemical-science-pack', 2},
            {'py-science-pack-2', 2},
            {'production-science-pack', 1},
        },
        time = 50
    }
}
