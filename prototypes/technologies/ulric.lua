--[[
TECHNOLOGY {
    type = "technology",
    name = "ulric",
    icon = "__pyalienlifegraphics__/graphics/technology/ulric.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"land-animals-mk01","food-mk01","biotech-mk01"},
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
]]
TECHNOLOGY("ulric"):set_fields {icon = "__pyalienlifegraphics__/graphics/technology/ulric.png"}:add_pack("py-science-pack-1"):add_pack("logistic-science-pack")

TECHNOLOGY {
    type = "technology",
    name = "ulric-mk02",
    icon = "__pyalienlifegraphics__/graphics/technology/ulric-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"ulric"},
    effects = {},
    unit = {
        count = 250,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1",       1},
            {"logistic-science-pack",   1},
            {"py-science-pack-2",       1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "ulric-mk03",
    icon = "__pyalienlifegraphics__/graphics/technology/ulric-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"ulric-mk02"},
    effects = {},
    unit = {
        count = 300,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1",       1},
            {"logistic-science-pack",   1},
            {"py-science-pack-2",       1},
            {"chemical-science-pack",   1},
            {"py-science-pack-3",       1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "ulric-mk04",
    icon = "__pyalienlifegraphics__/graphics/technology/ulric-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"ulric-mk03"},
    effects = {},
    unit = {
        count = 350,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1",       1},
            {"logistic-science-pack",   1},
            {"py-science-pack-2",       1},
            {"chemical-science-pack",   1},
            {"py-science-pack-3",       1},
            {"production-science-pack", 1},
            {"py-science-pack-4",       1},
        },
        time = 50
    }
}
