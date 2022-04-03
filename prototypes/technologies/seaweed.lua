TECHNOLOGY {
    type = "technology",
    name = "seaweed-mk01",
    icon = "__pycoalprocessinggraphics__/graphics/missing_icon.png",
    icon_size = 128,
    order = "c-a",
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
    name = "seaweed-mk02",
    icon = "__pycoalprocessinggraphics__/graphics/missing_icon.png",
    icon_size = 128,
    order = "c-a",
    dependencies = {"seaweed-mk01"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            -- {'py-science-pack-2', 1}
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "seaweed-mk03",
    icon = "__pycoalprocessinggraphics__/graphics/missing_icon.png",
    icon_size = 128,
    order = "c-a",
    dependencies = {"seaweed-mk02"},
    effects = {},
    unit = {
        count = 250,
        ingredients = {
            {"automation-science-pack", 2},
            {"logistic-science-pack", 1},
            -- {'py-science-pack-2', 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "seaweed-mk04",
    icon = "__pycoalprocessinggraphics__/graphics/missing_icon.png",
    icon_size = 128,
    order = "c-a",
    dependencies = {"seaweed-mk03"},
    effects = {},
    unit = {
        count = 350,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            -- {'py-science-pack-2', 1},
        },
        time = 50
    }
}
