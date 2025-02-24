RECIPE {
    type = "recipe",
    name = "formamide",
    category = "chemistry",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "carbon-dioxide", amount = 100},
        {type = "fluid", name = "methanol",       amount = 100},
        {type = "fluid", name = "nitrogen",       amount = 100},
    },
    results = {
        {type = "fluid", name = "formamide", amount = 100},
        {type = "fluid", name = "methanol",  amount = 100, ignored_by_productivity=100, ignored_by_stats=100},
    },
    main_product = "formamide"
}:add_unlock("biotech-mk02")

FLUID {
    type = "fluid",
    name = "formamide",
    icon = "__pyalienlifegraphics__/graphics/icons/formamide.png",
    icon_size = 64,
    default_temperature = 10,
    base_color = {r = 0.780, g = 0.509, b = 0.811},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-alienlife-fluids",
    order = "a"
}
