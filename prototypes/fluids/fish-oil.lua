FLUID {
    type = "fluid",
    name = "fish-oil",
    icon = "__pyalienlifegraphics__/graphics/icons/fish-oil.png",
	icon_size = 64,
    default_temperature = 10,
    base_color = {r = 0.964, g = 0.803, b = 0.117},
    flow_color = {r = 0.964, g = 0.803, b = 0.117},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-alienlife-fluids",
    order = "f"
}

RECIPE {
    type = 'recipe',
    name = 'fish-oil',
    category = 'biofactory',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "fish", amount = 5},
    },
    results = {
        {type = 'fluid', name = 'fish-oil', amount = 50},
    },
}:add_unlock("water-animals-mk01")