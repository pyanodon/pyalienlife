--[[
TECHNOLOGY {
    type = "technology",
    name = "moondrop",
    icon = "__pyalienlifegraphics__/graphics/technology/moondrop-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"botany-mk01","ralesia"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
        },
        time = 50
    }
}
]]
TECHNOLOGY("moondrop"):set_fields{icon = "__pyalienlifegraphics__/graphics/technology/moondrop-mk01.png"}

TECHNOLOGY {
    type = "technology",
    name = "moondrop-mk02",
    icon = "__pyalienlifegraphics__/graphics/technology/moondrop-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"botany-mk02","moondrop","phytomining"},
    dependencies = {"moondrop"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1", 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "moondrop-mk03",
    icon = "__pyalienlifegraphics__/graphics/technology/moondrop-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"botany-mk03","moondrop-mk02","phytomining-mk02"},
    dependencies = {"moondrop-mk02"},
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
    name = "moondrop-mk04",
    icon = "__pyalienlifegraphics__/graphics/technology/moondrop-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"botany-mk04","moondrop-mk03","phytomining-mk03"},
    dependencies = {"moondrop-mk03"},
    effects = {},
    unit = {
        count = 350,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1", 1},
            {"logistic-science-pack", 1},
            {"py-science-pack-2", 1},
            {"chemical-science-pack", 1},
            {"py-science-pack-3", 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "moondrop-mk05",
    icon = "__pycoalprocessinggraphics__/graphics/technology/missing_icon.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"botany-mk04","moondrop-mk03","phytomining-mk03"},
    dependencies = {"moondrop-mk04"},
    effects = {},
    unit = {
        count = 350,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1", 1},
            {"logistic-science-pack", 1},
            {"py-science-pack-2", 1},
            {"chemical-science-pack", 1},
            {"py-science-pack-3", 1},
            {"production-science-pack", 1},
            {"py-science-pack-4", 1},
        },
        time = 50
    }
}
