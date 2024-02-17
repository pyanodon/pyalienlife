data:extend{{
    type = 'item',
    name = 'guano',
    icon = '__pyalienlifegraphics3__/graphics/icons/guano.png',
    icon_size = 64,
    flags = {'always-show'},
    subgroup = 'py-alienlife-items',
    order = 'a',
    stack_size = 100
}}

RECIPE {
    type = 'recipe',
    name = 'guano-manure',
    energy_required = 20,
    enabled = false,
    category = 'mixer',
    ingredients = {
        {'manure', 8},
        {'guano', 8},
        {type = 'fluid', name = 'water', amount = 5}
    },
    results = {
        {'manure', 16},
    }
}:add_unlock{'biofluid-mk01'}

RECIPE {
    type = 'recipe',
    name = 'guano-gunpowder',
    energy_required = 4,
    enabled = false,
    category = 'crafting-with-fluid',
    ingredients = {
        {'coke', 1},
        {'sulfur', 1},
        {type = 'fluid', name = 'water-saline', amount = 100},
        {'guano', 2},
    },
    results = {
        {'gunpowder', 10},
    }
}:add_unlock{'biofluid-mk02'}

data:extend{{
    type = 'item',
    name = 'ammonium-nitrate',
    icon = '__pyalienlifegraphics2__/graphics/icons/ammonium-nitrate.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-alienlife-items',
    order = 'a',
    stack_size = 100
}}

RECIPE {
    type = 'recipe',
    name = 'ammonium-nitrate',
    energy_required = 2,
    enabled = false,
    category = 'evaporator',
    ingredients = {
        {type = 'item', name = 'guano', amount = 2},
        {type = 'fluid', name = 'pressured-water', amount = 10}
    },
    results = {
        {type = 'item', name = 'ammonium-nitrate', amount = 1}
    }
}:add_unlock{'biofluid-mk02'}

RECIPE {
    type = 'recipe',
    name = 'guano-explosives',
    energy_required = 4,
    enabled = false,
    category = 'chemistry',
    ingredients = {
        {type = 'fluid', name = 'glycerol', amount = 100},
        {type = 'fluid', name = 'sulfuric-acid', amount = 50},
        {'ammonium-nitrate', 1}
    },
    results = {
        {'explosives', 8},
    }
}:add_unlock{'biofluid-mk02'}

FLUID {
    type = 'fluid',
    name = 'nitrous-oxide',
    icon = '__pyalienlifegraphics2__/graphics/icons/nitrous-oxide.png',
	icon_size = 64,
    default_temperature = 15,
    base_color = {r = 0.5, g = 0.5, b = 1},
    flow_color = {r = 1, g = 0.5, b = 0.5},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = 'py-alienlife-fluids',
    order = 'd'
}

RECIPE {
    type = 'recipe',
    name = 'nitrous-oxide',
    energy_required = 4,
    enabled = false,
    category = 'gasifier',
    ingredients = {
        {type = 'item', name = 'ammonium-nitrate', amount = 2},
        {type = 'fluid', name = 'subcritical-water', amount = 100},
        {type = 'fluid', name = 'oxygen', amount = 200},
        {type = 'fluid', name = 'purest-nitrogen-gas', amount = 400},
    },
    results = {
        {type = 'fluid', name = 'nitrous-oxide', amount = 60}
    }
}:add_unlock{'biofluid-mk03'}:add_ingredient{type = 'item', name = 'urea', amount = 1}

RECIPE('utility-science-pack'):add_ingredient{type = 'item', name = 'workers-food-03', amount = 3}