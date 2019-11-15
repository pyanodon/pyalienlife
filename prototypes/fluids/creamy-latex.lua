FLUID {
    type = "fluid",
    name = "creamy-latex",
    icon = "__pyalienlife__/graphics/icons/creamy-latex.png",
	icon_size = 64,
    default_temperature = 10,
    base_color = {r = 0.913, g = 0.913, b = 0.913},
    flow_color = {r = 0.913, g = 0.913, b = 0.913},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-alienlife-latex",
    order = "b"
}

RECIPE {
    type = 'recipe',
    name = 'creamy-latex',
    category = 'washer',
    enabled = true,
    energy_required = 8,
    ingredients = {
        {type = "item", name = "saps", amount = 5},
        {type = "item", name = "limestone", amount = 4},
        {type = 'fluid', name = 'water', amount = 100},
    },
    results = {
        {type = 'fluid', name = 'creamy-latex', amount = 100},
    },
    main_product = "creamy-latex",
}