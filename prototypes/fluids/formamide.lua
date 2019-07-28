RECIPE {
    type = 'recipe',
    name = 'formamide',
    category = 'chemistry',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'fluid', name = 'carbon-dioxide', amount = 100},
        {type = 'fluid', name = 'nitrogen', amount = 100},
    },
    results = {
        {type = 'fluid', name = 'formamide', amount = 100},
    },
    --main_product = "cocoon",
}:add_unlock("biotech-mk02")

FLUID {
    type = "fluid",
    name = "formamide",
    icon = "__pyalienlife__/graphics/icons/formamide.png",
	icon_size = 64,
    default_temperature = 10,
    base_color = {r = 0.780, g = 0.509, b = 0.811},
    flow_color = {r = 0.780, g = 0.509, b = 0.811},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-alienlife-fluids",
    order = "a"
}
