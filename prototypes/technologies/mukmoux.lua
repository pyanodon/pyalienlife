--[[
TECHNOLOGY {
    type = "technology",
    name = "mukmoux",
    icon = "__pyalienlifegraphics__/graphics/technology/mukmoux.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"land-animals-mk02","biotech-mk02","organic-breeding","tuuphra"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 2},
        },
        time = 50
    }
}
]]--
TECHNOLOGY('mukmoux'):set_fields{icon = "__pyalienlifegraphics__/graphics/technology/mukmoux.png"}

TECHNOLOGY {
    type = "technology",
    name = "mukmoux-mk02",
    icon = "__pyalienlifegraphics__/graphics/technology/mukmoux-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"mukmoux"},
    effects = {},
    unit = {
        count = 250,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {'py-science-pack-2', 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "mukmoux-mk03",
    icon = "__pyalienlifegraphics__/graphics/technology/mukmoux-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"mukmoux-mk02"},
    effects = {},
    unit = {
        count = 300,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {'py-science-pack-2', 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "mukmoux-mk04",
    icon = "__pyalienlifegraphics__/graphics/technology/mukmoux-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"mukmoux-mk03"},
    effects = {},
    unit = {
        count = 350,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {'py-science-pack-2', 1},
        },
        time = 50
    }
}
