TECHNOLOGY {
    type = "technology",
    name = "starch-mk01",
    icon = "__pyalienlifegraphics2__/graphics/technology/starch-mk01.png",
    icon_size = 128,
    order = "c-a",
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1", 1}
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "starch-mk02",
    icon = "__pyalienlifegraphics2__/graphics/technology/starch-mk02.png",
    icon_size = 128,
    order = "c-a",
    dependencies = {"starch-mk01"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 1},
            {"py-science-pack-1", 1},
            {"logistic-science-pack", 1},
            {"py-science-pack-2", 1},
            {"chemical-science-pack", 1},
        },
        time = 50
    }
}

if mods["pyhightech"] then
    TECHNOLOGY {
        type = "technology",
        name = "starch-mk03",
        icon = "__pyalienlifegraphics2__/graphics/technology/starch-mk03.png",
        icon_size = 128,
        order = "c-a",
        dependencies = {"starch-mk02"},
        effects = {},
        unit = {
            count = 150,
            ingredients = {
                {"automation-science-pack", 1},
                {"py-science-pack-1", 1},
                {"logistic-science-pack", 1},
                {"py-science-pack-2", 1},
                {"chemical-science-pack", 1},
                {'py-science-pack-3', 1}
            },
            time = 50
        }
    }
end