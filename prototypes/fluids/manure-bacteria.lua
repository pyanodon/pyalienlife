RECIPE {
    type = 'recipe',
    name = 'manure-bacteria',
    category = 'incubator',
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = 'item', name = 'petri-dish', amount = 1},
        {type = 'item', name = 'agar', amount = 1},
        {type = 'item', name = 'manure', amount = 3},
    },
    results = {
        {type = 'fluid', name = 'manure-bacteria', amount = 50},
    },
    --main_product = "cocoon",
}:add_unlock("microbiology-mk02")

FLUID {
    type = "fluid",
    name = "manure-bacteria",
    icon = "__pyalienlifegraphics__/graphics/icons/manure-bacteria.png",
	icon_size = 64,
    default_temperature = 10,
    base_color = {r = 0.505, g = 0.639, b = 0.533},
    flow_color = {r = 0.505, g = 0.639, b = 0.533},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-alienlife-genetics",
    order = "a"
}
