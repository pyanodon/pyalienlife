RECIPE {
    type = 'recipe',
    name = 'subcritical-water',
    category = 'combustion',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'fluid', name = 'pressured-water', amount = 200},
        {type = 'item', name = 'fuelrod-mk01', amount = 2},
    },
    results = {
        {type = 'fluid', name = 'subcritical-water', amount = 200},
    },
}:add_unlock("biotech-mk02")

FLUID {
    type = "fluid",
    name = "subcritical-water",
    icon = "__pyalienlifegraphics__/graphics/icons/subcritical-water.png",
	icon_size = 64,
    default_temperature = 10,
    base_color = {r=0, g=0.34, b=0.6},
    flow_color = {r=0.7, g=0.7, b=0.7},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-alienlife-fluids",
    order = "f"
}