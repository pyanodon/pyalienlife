RECIPE {
    type = 'recipe',
    name = 'depolymerized-organics',
    category = 'gas-separator',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'fluid', name = 'liquid-manure', amount = 100},
        {type = 'fluid', name = 'subcritical-water', amount = 1000},
    },
    results = {
        {type = 'fluid', name = 'depolymerized-organics', amount = 100},
    },
}:add_unlock("cottongut-science-mk01").category = 'reformer'

FLUID {
    type = "fluid",
    name = "depolymerized-organics",
    icon = "__pyalienlifegraphics__/graphics/icons/depoly.png",
	icon_size = 64,
    default_temperature = 10,
    base_flow_rate = 100,
    base_color = {r = 0.09, g = 0.168, b = 0.286},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-alienlife-fluids",
    order = "f"
}