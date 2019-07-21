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
    icon = '__pyalienlife__/graphics/icons/moss.png',
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
    icon = '__pyalienlife__/graphics/icons/moss.png',
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
    icon = '__pyalienlife__/graphics/icons/moss.png',
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
        {type = 'fluid', name = 'water', amount = 100},
        {type = 'fluid', name = 'carbon-dioxide', amount = 100},
        {type = 'item', name = 'limestone', amount = 3},
        {type = 'item', name = 'coarse', amount = 5},
    },
    results = {
        {type = 'item', name = 'moss', amount = 15},
    },
    icon = '__pyalienlife__/graphics/icons/moss.png',
    icon_size = 32,
    subgroup = 'py-alienlife-plants',
    order = 'a'
}:add_unlock("botany-mk03")

--PHYTHOPLANCTON--
RECIPE {
    type = "recipe",
    name = "phytoplankton-2",
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

--SEAWEED--
RECIPE {
    type = 'recipe',
    name = 'seaweed',
    category = 'seaweed',
    enabled = true,
    energy_required = 25,
    ingredients = {
        {type = 'fluid', name = 'water', amount = 200},
    },
    results = {
        {type = 'item', name = 'seaweed', amount = 5},
    },
}

RECIPE {
    type = 'recipe',
    name = 'seaweed-2',
    category = 'seaweed',
    enabled = false,
    energy_required = 25,
    ingredients = {
        {type = 'fluid', name = 'water', amount = 150},
        {type = 'fluid', name = 'carbon-dioxide', amount = 100},
    },
    results = {
        {type = 'item', name = 'seaweed', amount = 8},
    },
}:add_unlock("botany-mk01")

RECIPE {
    type = 'recipe',
    name = 'seaweed-3',
    category = 'seaweed',
    enabled = false,
    energy_required = 25,
    ingredients = {
        {type = 'fluid', name = 'water-saline', amount = 100},
        {type = 'fluid', name = 'carbon-dioxide', amount = 100},
    },
    results = {
        {type = 'item', name = 'seaweed', amount = 12},
    },
}:add_unlock("botany-mk01")

RECIPE {
    type = 'recipe',
    name = 'seaweed-4',
    category = 'seaweed',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'fluid', name = 'water-saline', amount = 100},
        {type = 'fluid', name = 'slacked-lime', amount = 50},
    },
    results = {
        {type = 'item', name = 'seaweed', amount = 12},
    },
}:add_unlock("botany-mk02")

RECIPE {
    type = 'recipe',
    name = 'seaweed-5',
    category = 'seaweed',
    enabled = false,
    energy_required = 12,
    ingredients = {
        {type = 'fluid', name = 'water-saline', amount = 100},
        {type = 'fluid', name = 'slacked-lime', amount = 100},
        {type = 'item', name = 'iron-ore-dust', amount = 1},
    },
    results = {
        {type = 'item', name = 'seaweed', amount = 15},
    },
}:add_unlock("botany-mk03")

RECIPE {
    type = 'recipe',
    name = 'seaweed-6',
    category = 'seaweed',
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = 'fluid', name = 'water', amount = 150},
        {type = 'item', name = 'limestone', amount = 3},
    },
    results = {
        {type = 'item', name = 'seaweed', amount = 8},
    },
}:add_unlock("botany-mk01")

RECIPE {
    type = 'recipe',
    name = 'seaweed-7',
    category = 'seaweed',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'fluid', name = 'water-saline', amount = 100},
        {type = 'fluid', name = 'slacked-lime', amount = 100},
        {type = 'item', name = 'iron-ore-dust', amount = 1},
        {type = 'item', name = 'limestone', amount = 3},
    },
    results = {
        {type = 'item', name = 'seaweed', amount = 25},
    },
}:add_unlock("botany-mk04")
