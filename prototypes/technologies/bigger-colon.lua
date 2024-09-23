TECHNOLOGY {
    type = "technology",
    name = "bigger-colon",
    icon = "__pyalienlifegraphics__/graphics/technology/manure-1.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"ulric-mk02","scrondrix-mk02","phagnot-mk02","mukmoux-mk02","auog-mk02"},
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
