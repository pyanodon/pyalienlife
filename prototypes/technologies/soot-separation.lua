-- https://github.com/pyanodon/pybugreports/issues/825

TECHNOLOGY {
    type = "technology",
    name = "soot-separation",
    icon = "__pyalienlifegraphics2__/graphics/technology/ash-separation.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {
        "silver-mk01",
        "ash-separation",
    },
    effects = {},
    unit = {
        count = 360,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1", 1},
            {"logistic-science-pack", 1},
        },
        time = 60
    }
}
