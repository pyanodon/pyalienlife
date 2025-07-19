TECHNOLOGY {
    type = "technology",
    name = "microfilters",
    icon = "__pyalienlifegraphics__/graphics/technology/microfilters.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"mycology-mk02"},
    effects = {
        {
            type = "change-recipe-productivity",
            recipe = "fawogae-spore",
            change = 0.15,
        },
        {
            type = "change-recipe-productivity",
            recipe = "navens-spore",
            change = 0.4,
        },
        {
            type = "change-recipe-productivity",
            recipe = "yaedols-spores",
            change = 0.4,
        },
    },
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   1}
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "microfilters-mk02",
    icon = "__pyalienlifegraphics__/graphics/technology/microfilters-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"mycology-mk03", "microfilters"},
    dependencies = {"microfilters"},
    effects = {
        {
            type = "change-recipe-productivity",
            recipe = "fawogae-spore",
            change = 0.2,
        },
        {
            type = "change-recipe-productivity",
            recipe = "navens-spore",
            change = 0.6,
        },
        {
            type = "change-recipe-productivity",
            recipe = "yaedols-spores",
            change = 0.6,
        },
        {
            type = "change-recipe-productivity",
            recipe = "bhoddos-spore",
            change = 1,
        },
    },
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   1},
            {"py-science-pack-2",       1},
        },
        time = 45
    }
}
