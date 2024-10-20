if not mods["pyhightech"] then
    TECHNOLOGY {
        type = "technology",
        name = "kicalk",
        icon = "__pyalienlifegraphics__/graphics/technology/kicalk.png",
        icon_size = 128,
        order = "c-a",
        prerequisites = {"botany-mk01"},
        effects = {},
        unit = {
            count = 100,
            ingredients = {
                {"automation-science-pack", 1},
                --{"logistic-science-pack", 1},
                {"py-science-pack-1",       1},
            },
            time = 50
        }
    }
else
    TECHNOLOGY("kicalk"):set_fields {icon = "__pyalienlifegraphics__/graphics/technology/kicalk.png"}
    TECHNOLOGY("kicalk"):add_prereq("botany-mk01")
    TECHNOLOGY("kicalk"):add_pack("py-science-pack-1")
    TECHNOLOGY("kicalk"):add_pack("logistic-science-pack")
end

TECHNOLOGY {
    type = "technology",
    name = "kicalk-mk02",
    icon = "__pyalienlifegraphics__/graphics/technology/kicalk-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"kicalk"},
    dependencies = {"kicalk"},
    effects = {},
    unit = {
        count = 150,
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
    name = "kicalk-mk03",
    icon = "__pyalienlifegraphics__/graphics/technology/kicalk-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"kicalk-mk02"},
    dependencies = {"kicalk-mk02"},
    effects = {},
    unit = {
        count = 200,
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
    name = "kicalk-mk04",
    icon = "__pyalienlifegraphics__/graphics/technology/kicalk-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"kicalk-mk03"},
    dependencies = {"kicalk-mk03"},
    effects = {},
    unit = {
        count = 250,
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
