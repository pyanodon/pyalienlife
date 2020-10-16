--MOSS--
RECIPE {
    type = 'recipe',
    name = 'moss-1a',
    category = 'moss',
    enabled = true,
    energy_required = 15,
    ingredients = {
        {type = 'fluid', name = 'water', amount = 100},
        {type = 'fluid', name = 'carbon-dioxide', amount = 100},
        {type = 'item', name = 'chlorinated-water', amount = 1},
    },
    results = {
        {type = 'item', name = 'moss', amount = 5},
    },
    icon = '__pyalienlifegraphics__/graphics/icons/moss.png',
    icon_size = 32,
    subgroup = 'py-alienlife-plants',
    order = 'a'
}

RECIPE {
    type = 'recipe',
    name = 'moss-2a',
    category = 'moss',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'fluid', name = 'water', amount = 100},
        {type = 'fluid', name = 'carbon-dioxide', amount = 100},
        {type = 'item', name = 'stone', amount = 3},
        {type = 'item', name = 'chlorinated-water', amount = 1},
    },
    results = {
        {type = 'item', name = 'moss', amount = 10},
    },
    icon = '__pyalienlifegraphics__/graphics/icons/moss.png',
    icon_size = 32,
    subgroup = 'py-alienlife-plants',
    order = 'a'
}:add_unlock("botany-mk01")

RECIPE {
    type = 'recipe',
    name = 'moss-3a',
    category = 'moss',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'fluid', name = 'water', amount = 100},
        {type = 'fluid', name = 'carbon-dioxide', amount = 100},
        {type = 'item', name = 'coarse', amount = 10},
        {type = 'item', name = 'chlorinated-water', amount = 1},
    },
    results = {
        {type = 'item', name = 'moss', amount = 15},
    },
    icon = '__pyalienlifegraphics__/graphics/icons/moss.png',
    icon_size = 32,
    subgroup = 'py-alienlife-plants',
    order = 'a'
}:add_unlock("botany-mk02")

RECIPE {
    type = 'recipe',
    name = 'moss-4a',
    category = 'moss',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'fluid', name = 'water', amount = 200},
        {type = 'fluid', name = 'carbon-dioxide', amount = 150},
        {type = 'item', name = 'limestone', amount = 4},
        {type = 'item', name = 'coarse', amount = 6},
        {type = 'item', name = 'chlorinated-water', amount = 1},
    },
    results = {
        {type = 'item', name = 'moss', amount = 25},   -- added 2 so i cant call it a pure nerff
    },
    icon = '__pyalienlifegraphics__/graphics/icons/moss.png',
    icon_size = 32,
    subgroup = 'py-alienlife-plants',
    order = 'a'
}:add_unlock("botany-mk03")