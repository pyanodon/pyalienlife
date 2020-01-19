TECHNOLOGY {
    type = "technology",
    name = "domestication",
    icon = "__pyalienlifegraphics__/graphics/technology/domestication-1.png",
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

TECHNOLOGY {
    type = "technology",
    name = "domestication-mk02",
    icon = "__pyalienlifegraphics__/graphics/technology/domestication-2.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"domestication","dingrits"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 4},
            {"logistic-science-pack", 3},
            {'chemical-science-pack', 2},
            {"py-science-pack", 1},
        },
        time = 50
    }
}