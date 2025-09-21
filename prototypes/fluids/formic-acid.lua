FLUID {
    type = "fluid",
    name = "formic-acid",
    icon = "__pyalienlifegraphics__/graphics/icons/formic-acid.png",
    icon_size = 64,
    default_temperature = 15,
    base_color = {r = 0.713, g = 0.713, b = 0.713},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-alienlife-latex",
    order = "c"
}

RECIPE {
    type = "recipe",
    name = "formic-acid",
    category = "distilator",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "formamide",     amount = 100},
        {type = "fluid", name = "water",         amount = 100},
        {type = "fluid", name = "sulfuric-acid", amount = 50},
    },
    results = {
        {type = "fluid", name = "formic-acid", amount = 100, autotech_is_not_primary_source = true},
    },
}:add_unlock("biotech-mk02")
