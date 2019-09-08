--------------------------yaedols-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'yaedols-sample',
    category = 'nursery',
    enabled = false,
    energy_required = 35,
    ingredients = {
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'cdna', amount = 3},
        {type = 'item', name = 'moss-gen', amount = 5},
        {type = 'item', name = 'navens-codex', amount = 1},
        {type = 'item', name = 'yaedols-codex', amount = 1},
        {type = 'item', name = 'yaedols-spores', amount = 20},
        {type = 'item', name = 'fawogae-spore', amount = 20},
        {type = 'fluid', name = 'water', amount = 1000},
    },
    results = {
        {type = 'item', name = 'yaedols', amount = 1},
    },
}:add_unlock("yaedols")

RECIPE {
    type = 'recipe',
    name = 'yaedols-codex',
    category = 'crafting',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'glass', amount = 2},
        {type = 'item', name = 'small-lamp', amount = 5},
        {type = 'item', name = 'advanced-circuit', amount = 50},
        {type = 'item', name = 'red-wire', amount = 20},
    },
    results = {
        {type = 'item', name = 'yaedols-codex', amount = 1},
    },
}:add_unlock("yaedols")

RECIPE {
    type = 'recipe',
    name = 'yaedols-spores',
    category = 'spore',
    enabled = false,
    energy_required = 15,
    ingredients = {
    },
    results = {
        {type = 'item', name = 'yaedols-spores', amount = 1, probability = 0.4},
    },
}:add_unlock("yaedols")

---breeding---


-----SPORES----
