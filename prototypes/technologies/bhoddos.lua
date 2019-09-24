TECHNOLOGY {
    type = "technology",
    name = "bhoddos",
    icon = "__pyalienlife__/graphics/technology/bhoddos.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"mycology-mk01","genetics-mk01"},
    effects = {},
    unit = {
        count = 120,
        ingredients = {
            {"automation-science-pack", 4},
            {"py-science-pack", 2},
        },
        time = 50
    }
}
