TECHNOLOGY {
    type = "technology",
    name = "ctc",
    icon = "__pyalienlifegraphics__/graphics/technology/ctc.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"trits-mk02"},
    effects = {},
    unit = {
        count = 250,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            -- {'py-science-pack-2', 1},
        },
        time = 50
    }
}
