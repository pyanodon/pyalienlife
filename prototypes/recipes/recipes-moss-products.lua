--MOSS--
RECIPE {
    type = 'recipe',
    name = 'moss-1',
    category = 'moss',
    enabled = true,
    energy_required = 15,
    ingredients = {
        {type = 'fluid', name = 'water', amount = 100},
        {type = 'fluid', name = 'carbon-dioxide', amount = 100},
    },
    results = {
        {type = 'item', name = 'moss', amount = 3},
    },
    icon = '__pyalienlifegraphics__/graphics/icons/moss.png',
    icon_size = 32,
    subgroup = 'py-alienlife-plants',
    order = 'a'
}

RECIPE {
    type = 'recipe',
    name = 'moss-2',
    category = 'moss',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'fluid', name = 'water', amount = 100},
        {type = 'fluid', name = 'carbon-dioxide', amount = 100},
        {type = 'item', name = 'stone', amount = 3},
    },
    results = {
        {type = 'item', name = 'moss', amount = 5},
    },
    icon = '__pyalienlifegraphics__/graphics/icons/moss.png',
    icon_size = 32,
    subgroup = 'py-alienlife-plants',
    order = 'a'
}:add_unlock("botany-mk01")

RECIPE {
    type = 'recipe',
    name = 'moss-3',
    category = 'moss',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'fluid', name = 'water', amount = 100},
        {type = 'fluid', name = 'carbon-dioxide', amount = 100},
        {type = 'item', name = 'coarse', amount = 10},
    },
    results = {
        {type = 'item', name = 'moss', amount = 10},
    },
    icon = '__pyalienlifegraphics__/graphics/icons/moss.png',
    icon_size = 32,
    subgroup = 'py-alienlife-plants',
    order = 'a'
}:add_unlock("botany-mk02")

RECIPE {
    type = 'recipe',
    name = 'moss-4',
    category = 'moss',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'fluid', name = 'water', amount = 200},
        {type = 'fluid', name = 'carbon-dioxide', amount = 150},
        {type = 'item', name = 'limestone', amount = 4},
        {type = 'item', name = 'coarse', amount = 6},
    },
    results = {
        {type = 'item', name = 'moss', amount = 17},   -- added 2 so i cant call it a pure nerff
    },
    icon = '__pyalienlifegraphics__/graphics/icons/moss.png',
    icon_size = 32,
    subgroup = 'py-alienlife-plants',
    order = 'a'
}:add_unlock("botany-mk03")

--PHYTHOPLANCTON--
RECIPE {
    type = "recipe",
    name = "phytoplankton-3",
    category = "plankton",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "flue-gas", amount = 100},
        {type = "fluid", name = "water", amount = 500}
    },
    results = {
        {type = "fluid", name = "phytoplankton", amount = 20}
    },
    main_product = "phytoplankton",
    subgroup = 'py-alienlife-plants',
    order = 'b'
}:add_unlock("microbiology-mk02")