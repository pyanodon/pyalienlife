--------------------------SEA WEED-----------------------

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
    name = 'seaweed-9',
    category = 'seaweed',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'fluid', name = 'water-saline', amount = 100},
        {type = 'fluid', name = 'slacked-lime', amount = 50},
        {type = 'item', name = 'fertilizer', amount = 5},
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