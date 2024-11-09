RECIPE {
    type = "recipe",
    name = "liquid-manure",
    category = "bio-reactor",
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "fluid", name = "water",  amount = 500},
        {type = "item",  name = "manure", amount = 10},
    },
    results = {
        {type = "fluid", name = "liquid-manure", amount = 100},
    },
    --main_product = "cocoon",
}:add_unlock("cottongut-science-mk01")

FLUID {
    type = "fluid",
    name = "liquid-manure",
    icon = "__pyalienlifegraphics__/graphics/icons/liquid-manure.png",
    icon_size = 64,
    default_temperature = 10,
    base_flow_rate = 100,
    base_color = {r = 0.513, g = 0.505, b = 0.313},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-alienlife-genetics",
    order = "a"
}
