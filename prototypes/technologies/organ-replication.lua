TECHNOLOGY {
    type = "technology",
    name = "organ-replication",
    icon = "__pyalienlifegraphics__/graphics/technology/organ-replication.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"genetic-design"},
    effects = {},
    unit = {
        count = 400,
        ingredients = {
            {"automation-science-pack", 4},
            {"logistic-science-pack", 2},
            -- {'py-science-pack-3', 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "cavity",
    icon = "__pyalienlifegraphics__/graphics/technology/cavity.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"organ-replication","antitumor"},
    dependencies = {"organ-replication"},
    effects = {},
    unit = {
        count = 600,
        ingredients = {
            {"automation-science-pack", 3},
            {"logistic-science-pack", 3},
            -- {'py-science-pack-3', 1},
        },
        time = 50
    }
}
