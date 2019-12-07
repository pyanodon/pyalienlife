TECHNOLOGY {
    type = "technology",
    name = "mega-farm",
    icon = "__pyalienlife__/graphics/technology/mega-farm.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"botany-mk04"},
    effects = {},
    unit = {
        count = 300,
        ingredients = {
            {'automation-science-pack', 4},
            {'logistic-science-pack', 3},
            {'chemical-science-pack', 2},
            {'utility-science-pack', 1},
            {'production-science-pack', 1},
            {'py-science-pack', 4},
        },
        time = 45
    }
}