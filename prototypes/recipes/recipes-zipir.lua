--------------------------ZIPIR-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'zipir1',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 150,
    ingredients = {
        {type = 'item', name = 'alien-sample01', amount = 5},
        {type = 'item', name = 'cdna', amount = 5},
        {type = 'item', name = 'fish', amount = 10},
        {type = 'item', name = 'bio-sample', amount = 10},
        {type = 'item', name = 'zipir-codex', amount = 2},
        {type = 'item', name = 'earth-crustacean-sample', amount = 1}, --add alien sample from pyALiens mod here.
        {type = 'fluid', name = 'fetal-serum', amount = 100},
        {type = 'fluid', name = 'artificial-blood', amount = 100},
    },
    results = {
        {type = 'item', name = 'zipir1', amount = 1},
    },
}:add_unlock("zipir")

RECIPE {
    type = 'recipe',
    name = 'zipir-codex',
    category = 'crafting',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'glass', amount = 4},
        {type = 'item', name = 'small-lamp', amount = 2},
        {type = 'item', name = 'electronic-circuit', amount = 5},
        {type = 'item', name = 'tinned-cable', amount = 5},
    },
    results = {
        {type = 'item', name = 'zipir-codex', amount = 2},
    },
}:add_unlock("zipir")

RECIPE {
    type = 'recipe',
    name = 'earth-crustacean-sample',
    category = 'data-array',
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = 'item', name = 'steel-chest', amount = 1},
        {type = 'item', name = 'chemical-science-pack', amount = 5},
        {type = 'item', name = 'zipir-codex', amount = 1},
    },
    results = {
        {type = 'item', name = 'earth-crustacean-sample', amount = 1},
    },
}:add_unlock("zipir")

----food----

RECIPE {
    type = 'recipe',
    name = 'zipir-food-01',
    category = 'crafting-with-fluid',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'plastic-bar', amount = 2},
        {type = 'item', name = 'seaweed', amount = 3},
        {type = 'item', name = 'ralesia-seeds', amount = 10},
        {type = 'item', name = 'fish', amount = 10},
        {type = 'item', name = 'bones', amount = 5},
        {type = 'item', name = 'biomass', amount = 10},
        {type = 'fluid', name = 'steam', amount = 100},
    },
    results = {
        {type = 'item', name = 'zipir-food-01', amount = 1},
    },
}:add_unlock("food-mk01")

RECIPE {
    type = 'recipe',
    name = 'zipir-food-02',
    category = 'crafting-with-fluid',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'plastic-bar', amount = 2},
        {type = 'item', name = 'navens', amount = 1},
        {type = 'item', name = 'seaweed', amount = 5},
        {type = 'item', name = 'fish', amount = 8},
        {type = 'item', name = 'rennea', amount = 15},
        {type = 'item', name = 'fawogae', amount = 10},
        {type = 'item', name = 'tuuphra', amount = 3},
        {type = 'fluid', name = 'steam', amount = 100},
        {type = 'fluid', name = 'blood', amount = 50},
    },
    results = {
        {type = 'item', name = 'zipir-food-02', amount = 1},
    },
}:add_unlock("food-mk02")
