RECIPE {
        type = 'recipe',
        name = "fish-hydrolysate",
        category = 'biofactory',
        enabled = false,
        energy_required = 5,
        ingredients = {
            {type = 'fluid', name = 'water', amount = 100},
            {type = 'fluid', name = 'sulfuric-acid', amount = 10},
            {type = 'item', name = 'fish', amount = 10},
            {type = 'item', name = 'sodium-hydroxide', amount = 4}
        },
        results = {
            {type = 'fluid', name = 'fish-hydrolysate', amount = 50}
        }
    }:add_unlock('water-animals-mk01')

FLUID {
    type = "fluid",
    name = "fish-hydrolysate",
    icon = "__pyalienlifegraphics3__/graphics/icons/wax.png",
	icon_size = 64,
    default_temperature = 10,
    base_color = {r = 0.321, g = 0.274, b = 0.274},
    flow_color = {r = 0.321, g = 0.274, b = 0.274},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-alienlife-fluids",
    order = "f"
}
