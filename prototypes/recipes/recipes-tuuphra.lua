--------------------------TUUPHRAS-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'tuuphra-sample',
    category = 'nursery',
    enabled = false,
    energy_required = 200,
    ingredients = {
        {type = 'item', name = 'alien-sample-02', amount = 2},
        {type = 'item', name = 'cdna', amount = 3},
        {type = 'item', name = 'bio-sample', amount = 5},
        {type = 'item', name = 'tuuphra-codex', amount = 1},
        {type = 'item', name = 'earth-potato-sample', amount = 1},
        {type = 'fluid', name = 'water', amount = 1000},
    },
    results = {
        {type = 'item', name = 'tuuphra', amount = 2},
    },
}:add_unlock("tuuphra")

RECIPE {
    type = 'recipe',
    name = 'tuuphra-codex',
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
        {type = 'item', name = 'tuuphra-codex', amount = 1},
    },
}:add_unlock("tuuphra")

RECIPE {
    type = 'recipe',
    name = 'earth-potato-sample',
    category = 'data-array',
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = 'item', name = 'steel-chest', amount = 1},
        {type = 'item', name = 'py-science-pack', amount = 100},
        {type = 'item', name = 'tuuphra-codex', amount = 1},
    },
    results = {
        {type = 'item', name = 'earth-potato-sample', amount = 1},
    },
}:add_unlock("tuuphra")

---breeding---

-----SEEDS----

RECIPE {
    type = "recipe",
    name = "tuuphra-seeds",
    category = "nursery",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "tuuphra", amount = 2},
    },
    results = {
        {type = "item", name = "tuuphra-seeds", amount = 8}
    },
}:add_unlock("tuuphra")

RECIPE {
    type = 'recipe',
    name = 'replicator-tuuphra',
    category = 'advanced-crafting',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'tuuphra-codex', amount = 1},
        {type = 'item', name = 'tuuphra-seeds', amount = 200},
        {type = 'item', name = 'titanium-plate', amount = 100},
        {type = 'item', name = 'metallic-glass', amount = 2},
        {type = 'item', name = 'biofilm', amount = 20},
        {type = 'item', name = 'plastic-bar', amount = 100},
        {type = 'item', name = 'blanket-chassi', amount = 1},
        {type = 'item', name = 'fertilizer', amount = 20},
    },
    results = {
        {type = 'item', name = 'replicator-tuuphra', amount = 1},
    },
}:add_unlock("mega-farm-tuuphra"):add_ingredient({type = "item", name = "nems", amount = 10}):add_ingredient({type = "item", name = "carbon-nanotube", amount = 10})