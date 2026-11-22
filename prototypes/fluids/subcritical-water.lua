RECIPE {
    type = "recipe",
    name = "subcritical-water-01",
    category = "combustion",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "fluid", name = "pressured-water", amount = 200},
        {type = "item",  name = "biomass",         amount = 30},
    },
    results = {
        {type = "fluid", name = "subcritical-water", amount = 50},
    },
    main_product = "subcritical-water"
}:add_unlock("cottongut-science-mk01")

RECIPE {
    type = "recipe",
    name = "subcritical-water-02",
    category = "bhoddos",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "fluid", name = "pressured-water", amount = 1500},
    },
    results = {
        {type = "fluid", name = "subcritical-water", amount = 1500},
    },
    main_product = "subcritical-water"
}:add_unlock("bhoddos-mk02")

FLUID {
    type = "fluid",
    name = "subcritical-water",
    icon = "__pyalienlifegraphics__/graphics/icons/subcritical-water.png",
    icon_size = 64,
    default_temperature = 10,
    base_color = {r = 0, g = 0.34, b = 0.6},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-alienlife-fluids",
    order = "f"
}
