RECIPE {
    type = 'recipe',
    name = "fish-emulsion",
    category = 'compressor',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'fluid', name = 'fish-hydrolysate', amount = 100},
        {type = 'fluid', name = 'steam', amount = 200}
    },
    results = {
        {type = 'item', name = 'fishmeal', amount = 10},
        {type = 'fluid', name = 'fish-emulsion', amount = 40},
        {type = 'fluid', name = 'fish-oil', amount = 15}
    },
    main_product = 'fishmeal'
}:add_unlock('fish-mk03')

FLUID {
    type = "fluid",
    name = "fish-emulsion",
    icon = "__pyalienlifegraphics3__/graphics/icons/wax.png",
	icon_size = 64,
    default_temperature = 10,
    base_color = {r = 0.321, g = 0.274, b = 0.274},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-alienlife-fluids",
    order = "f"
}
