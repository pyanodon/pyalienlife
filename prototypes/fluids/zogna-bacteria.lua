RECIPE {
    type = "recipe",
    name = "zogna-bacteria",
    category = "incubator",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "petri-dish", amount = 2},
        {type = "item", name = "small-lamp", amount = 1},
        {type = "item", name = "wood",       amount = 5},
    },
    results = {
        {type = "fluid", name = "zogna-bacteria", amount = 20},
    },
    --main_product = "cocoon",
}:add_unlock("microbiology-mk01")

FLUID {
    type = "fluid",
    name = "zogna-bacteria",
    icon = "__pyalienlifegraphics__/graphics/icons/zogna-bacteria.png",
    icon_size = 64,
    default_temperature = 10,
    base_flow_rate = 100,
    base_color = {r = 0.129, g = 0.109, b = 0.243},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-alienlife-genetics",
    order = "a"
}
