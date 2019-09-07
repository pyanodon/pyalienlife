TECHNOLOGY {
    type = "technology",
    name = "yaedols",
    icon = "__pyalienlife__/graphics/technology/yaedols.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"mycology-mk03","genetic-design"},
    effects = {},
    unit = {
        count = 120,
        ingredients = {
            {"automation-science-pack", 4},
            {"logistic-science-pack", 1},
            {'chemical-science-pack', 2},
            {"py-science-pack", 2},
        },
        time = 50
    }
}
