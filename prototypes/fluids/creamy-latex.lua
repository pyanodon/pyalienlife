FLUID {
    type = "fluid",
    name = "creamy-latex",
    icon = "__pyalienlifegraphics__/graphics/icons/creamy-latex.png",
    icon_size = 64,
    default_temperature = 10,
    base_flow_rate = 100,
    base_color = {r = 0.913, g = 0.913, b = 0.913},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-alienlife-latex",
    order = "b"
}

RECIPE {
    type = "recipe",
    name = "creamy-latex",
    category = "washer",
    enabled = true,
    energy_required = 8,
    ingredients = {
        {type = "item",  name = "saps",      amount = 2},
        {type = "item",  name = "limestone", amount = 2},
        {type = "fluid", name = "water",     amount = 100},
    },
    results = {
        {type = "fluid", name = "creamy-latex", amount = 100},
    },
    main_product = "creamy-latex",
}:add_unlock("latex")
