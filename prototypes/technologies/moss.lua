TECHNOLOGY {
    type = "technology",
    name = "moss-mk01",
    icon = "__pyalienlifegraphics__/graphics/technology/moss-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"botany-mk01"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "moss-mk02",
    icon = "__pyalienlifegraphics__/graphics/technology/moss-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"botany-mk02","moss-mk01"},
    dependencies = {"moss-mk01"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            --{"logistic-science-pack", 1},
            {"py-science-pack-1", 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "moss-mk03",
    icon = "__pyalienlifegraphics__/graphics/technology/moss-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"botany-mk03","moss-mk02"},
    dependencies = {"moss-mk02"},
    effects = {},
    unit = {
        count = 250,
        ingredients = {
            {"automation-science-pack", 2},
            {"py-science-pack-1", 1},
            {"logistic-science-pack", 1},
            {"py-science-pack-2", 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "moss-mk04",
    icon = "__pyalienlifegraphics__/graphics/technology/moss-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"botany-mk04","moss-mk03"},
    dependencies = {"moss-mk03"},
    effects = {},
    unit = {
        count = 350,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1", 1},
            {"logistic-science-pack", 1},
            {"py-science-pack-2", 1},
            {"py-science-pack-3", 1},
        },
        time = 50
    }
}
