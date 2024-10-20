if not mods["pyalternativeenergy"] then
    TECHNOLOGY {
        type = "technology",
        name = "biobattery",
        icon = "__pyalienlifegraphics2__/graphics/technology/biobattery.png",
        icon_size = 128,
        order = "c-a",
        effects = {},
        unit = {
            count = 200,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack",   1},
                {"chemical-science-pack",   1},
                {"production-science-pack", 1},
            },
            time = 60
        }
    }
end
