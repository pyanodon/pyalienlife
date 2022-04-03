TECHNOLOGY {
    type = "technology",
    name = "bigger-colon",
    icon = "__pyalienlifegraphics__/graphics/technology/manure-1.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"genetic-design","ulric-mk04","scrondrix-mk04","phagnot-mk04","mukmoux-mk04","auog-mk04"},
    effects = {},
    unit = {
        count = 400,
        ingredients = {
            {"automation-science-pack", 4},
            {"logistic-science-pack", 2},
            {'chemical-science-pack', 2},
            {'production-science-pack', 1},
        },
        time = 50
    }
}
