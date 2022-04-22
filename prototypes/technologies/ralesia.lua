--[[
TECHNOLOGY {
    type = "technology",
    name = "ralesia",
    icon = "__pyalienlifegraphics__/graphics/technology/ralesia.png",
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
]]--
TECHNOLOGY('ralesia'):set_fields{icon = "__pyalienlifegraphics__/graphics/technology/ralesia-mk01.png"}

TECHNOLOGY {
    type = "technology",
    name = "ralesia-mk02",
    icon = "__pyalienlifegraphics__/graphics/technology/ralesia-mk02.png",
    icon_size = 128,
    order = "c-a",
    dependencies = {"ralesia"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "ralesia-mk03",
    icon = "__pyalienlifegraphics__/graphics/technology/ralesia-mk03.png",
    icon_size = 128,
    order = "c-a",
    dependencies = {"ralesia-mk02"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "ralesia-mk04",
    icon = "__pyalienlifegraphics__/graphics/technology/ralesia-mk04.png",
    icon_size = 128,
    order = "c-a",
    dependencies = {"ralesia-mk03"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
        },
        time = 50
    }
}
