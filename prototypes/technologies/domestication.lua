TECHNOLOGY {
    type = "technology",
    name = "domestication",
    icon = "__pyalienlife__/graphics/technology/domestication.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"biotech-mk02","land-animals-mk02"},
    effects = {},
    unit = {
        count = 350,
        ingredients = {
            {"automation-science-pack", 4},
            {"logistic-science-pack", 3},
        },
        time = 50
    }
}
