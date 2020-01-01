--------------------------CADAVERIC ARUM-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'cadaveric-arum-sample',
    category = 'nursery',
    enabled = false,
    energy_required = 200,
    ingredients = {
        {type = 'item', name = 'alien-sample-02', amount = 2},
        {type = 'item', name = 'cdna', amount = 3},
        {type = 'item', name = 'bio-sample', amount = 7},
        {type = 'item', name = 'cadaveric-arum-codex', amount = 2},
        {type = 'item', name = 'earth-tropical-tree-sample', amount = 1},
        {type = 'item', name = 'earth-flower-sample', amount = 1},
        {type = 'fluid', name = 'water', amount = 1000},
    },
    results = {
        {type = 'item', name = 'cadaveric-arum', amount = 2},
    },
}:add_unlock("cadaveric-arum")

RECIPE {
    type = 'recipe',
    name = 'cadaveric-arum-codex',
    category = 'crafting',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'glass', amount = 2},
        {type = 'item', name = 'small-lamp', amount = 5},
        {type = 'item', name = 'electronic-circuit', amount = 50},
        {type = 'item', name = 'tinned-cable', amount = 20},
    },
    results = {
        {type = 'item', name = 'cadaveric-arum-codex', amount = 1},
    },
}:add_unlock("cadaveric-arum")

-----SEEDS----

RECIPE {
    type = "recipe",
    name = "cadaveric-arum-seeds",
    category = "nursery",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "cadaveric-arum", amount = 5},
    },
    results = {
        {type = "item", name = "cadaveric-arum-seeds", amount = 7}
    },
}:add_unlock("cadaveric-arum")

RECIPE {
    type = 'recipe',
    name = 'replicator-cadaveric-arum',
    category = 'advanced-crafting',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'cadaveric-arum-codex', amount = 1},
        {type = 'item', name = 'cadaveric-arum-seeds', amount = 200},
        {type = 'item', name = 'titanium-plate', amount = 100},
        {type = 'item', name = 'metallic-glass', amount = 2},
        {type = 'item', name = 'biofilm', amount = 20},
        {type = 'item', name = 'plastic-bar', amount = 100},
        {type = 'item', name = 'blanket-chassi', amount = 1},
        {type = 'item', name = 'fertilizer', amount = 20},
    },
    results = {
        {type = 'item', name = 'replicator-cadaveric-arum', amount = 1},
    },
}:add_unlock("mega-farm-cadaveric-arum"):add_ingredient({type = "item", name = "nems", amount = 10}):add_ingredient({type = "item", name = "carbon-nanotube", amount = 10})