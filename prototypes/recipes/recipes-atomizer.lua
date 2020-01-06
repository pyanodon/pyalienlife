local fun = require("prototypes/functions/functions")

RECIPE {
    type = 'recipe',
    name = 'blood-to-iron',
    category = 'atomizer',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'fluid', name = 'blood', amount = 100},
    },
    results = {
        {type = 'item', name = 'iron-ore', amount = 10},
    },
    --main_product = "cocoon",
}:add_unlock("molecular-decohesion")

RECIPE {
    type = 'recipe',
    name = 'meat-to-iron',
    category = 'atomizer',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'meat', amount = 10},
    },
    results = {
        {type = 'item', name = 'iron-ore', amount = 7},
    },
    --main_product = "cocoon",
}:add_unlock("molecular-decohesion-mk02")

RECIPE {
    type = 'recipe',
    name = 'meat-and-gut-to-copper',
    category = 'atomizer',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'meat', amount = 5},
        {type = 'item', name = 'guts', amount = 10},
    },
    results = {
        {type = 'item', name = 'copper-ore', amount = 5},
    },
    --main_product = "cocoon",
}:add_unlock("molecular-decohesion-mk02")

RECIPE {
    type = 'recipe',
    name = 'arthropod-blood-to-copper',
    category = 'atomizer',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'fluid', name = 'arthropod-blood', amount = 100},
    },
    results = {
        {type = 'item', name = 'copper-ore', amount = 10},
    },
    --main_product = "cocoon",
}:add_unlock("molecular-decohesion")

RECIPE {
    type = 'recipe',
    name = 'meat-to-copper',
    category = 'atomizer',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'meat', amount = 10},
    },
    results = {
        {type = 'item', name = 'copper-ore', amount = 4},
    },
    --main_product = "cocoon",
}:add_unlock("molecular-decohesion-mk03")

RECIPE {
    type = 'recipe',
    name = 'guts-to-copper',
    category = 'atomizer',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'guts', amount = 10},
    },
    results = {
        {type = 'item', name = 'copper-ore', amount = 4},
    },
    --main_product = "cocoon",
}:add_unlock("molecular-decohesion-mk02")

RECIPE {
    type = 'recipe',
    name = 'meat-to-nitrogen',
    category = 'atomizer',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'meat', amount = 10},
    },
    results = {
        {type = 'fluid', name = 'nitrogen', amount = 40},
    },
    --main_product = "cocoon",
}:add_unlock("molecular-decohesion-mk03")

RECIPE {
    type = 'recipe',
    name = 'guts-to-chlorine',
    category = 'atomizer',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'guts', amount = 10},
    },
    results = {
        {type = 'fluid', name = 'chlorine', amount = 40},
    },
    --main_product = "cocoon",
}:add_unlock("molecular-decohesion")

RECIPE {
    type = 'recipe',
    name = 'brain-guts-to-zinc',
    category = 'atomizer',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'guts', amount = 10},
        {type = 'item', name = 'brain', amount = 5},
    },
    results = {
        {type = 'item', name = 'ore-zinc', amount = 20},
    },
    --main_product = "cocoon",
}:add_unlock("molecular-decohesion-mk03")

RECIPE {
    type = 'recipe',
    name = 'brain-to-zinc',
    category = 'atomizer',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'brain', amount = 5},
    },
    results = {
        {type = 'item', name = 'ore-zinc', amount = 5},
    },
    --main_product = "cocoon",
}:add_unlock("molecular-decohesion-mk04")

RECIPE {
    type = 'recipe',
    name = 'guts-to-zinc',
    category = 'atomizer',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'guts', amount = 10},
    },
    results = {
        {type = 'item', name = 'ore-zinc', amount = 10},
    },
    --main_product = "cocoon",
}:add_unlock("molecular-decohesion-mk04")

RECIPE {
    type = 'recipe',
    name = 'carapace-to-al',
    category = 'atomizer',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'carapace', amount = 5},
    },
    results = {
        {type = 'item', name = 'ore-aluminium', amount = 5},
    },
    --main_product = "cocoon",
}:add_unlock("molecular-decohesion-mk04")

RECIPE {
    type = 'recipe',
    name = 'spikes-to-mo',
    category = 'atomizer',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'dingrit-spike', amount = 5},
    },
    results = {
        {type = 'item', name = 'molybdenum-ore', amount = 5},
    },
    --main_product = "cocoon",
}:add_unlock("molecular-decohesion-mk04")