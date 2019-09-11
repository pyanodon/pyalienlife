TECHNOLOGY {
    type = "technology",
    name = "kmauts",
    icon = "__pyalienlife__/graphics/technology/kmauts.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"land-animals-mk02"},
    effects = {},
    unit = {
        count = 180,
        ingredients = {
            {"automation-science-pack", 3},
            {"logistic-science-pack", 2},
            {"py-science-pack", 2},
        },
        time = 50
    }
}
