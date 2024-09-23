TECHNOLOGY {
    type = "technology",
    name = "land-animals-mk01",
    icon = "__pyalienlifegraphics__/graphics/technology/land-animals-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"coal-processing-1"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "land-animals-mk02",
    icon = "__pyalienlifegraphics__/graphics/technology/land-animals-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"land-animals-mk01","botany-mk02","biotech-mk02"},
    dependencies = {"land-animals-mk01"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 3},
            {"py-science-pack-1", 1},
            {"logistic-science-pack", 1},
            {"py-science-pack-2", 1},
            {'chemical-science-pack', 2},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "land-animals-mk03",
    icon = "__pyalienlifegraphics__/graphics/technology/land-animals-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"land-animals-mk02","botany-mk03"},
    dependencies = {"land-animals-mk02"},
    effects = {},
    unit = {
        count = 250,
        ingredients = {
            {'automation-science-pack', 4},
            {"py-science-pack-1", 1},
            {"logistic-science-pack", 1},
            {"military-science-pack", 1},
            {"py-science-pack-2", 1},
            {'chemical-science-pack', 2},
            {'production-science-pack', 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "land-animals-mk04",
    icon = "__pyalienlifegraphics__/graphics/technology/land-animals-mk04.png",
    icon_size = 128,
    order = "c-a",
    dependencies = {"land-animals-mk03"},
    effects = {},
    unit = {
        count = 250,
        ingredients = {
            {'automation-science-pack', 4},
            {"py-science-pack-1", 1},
            {"logistic-science-pack", 1},
            {"py-science-pack-2", 1},
            {'military-science-pack', 3},
            {'chemical-science-pack', 2},
            {'production-science-pack', 1},
            {'utility-science-pack', 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "land-animals-mk05",
    icon = "__pyalienlifegraphics__/graphics/technology/land-animals-mk05.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"land-animals-mk04", "dingrits-upgrade"}, --TODO:see why it thinks this tech doesnt exist "schrodinger-antelope-upgrade"
    dependencies = {"land-animals-mk04", "dingrits-upgrade"}, --TODO:see why it thinks this tech doesnt exist "schrodinger-antelope-upgrade"
    effects = {},
    unit = {
        count = 700,
        ingredients = {
            {'automation-science-pack', 200},
            {"py-science-pack-1", 100},
            {"logistic-science-pack", 60},
            {"py-science-pack-2", 30},
            {'military-science-pack', 30},
            {'chemical-science-pack', 20},
            {"py-science-pack-3", 10},
            {'production-science-pack', 6},
            {"py-science-pack-4", 3},
            {'utility-science-pack', 2},
            {'space-science-pack', 1},
        },
        time = 1200
    }
}
