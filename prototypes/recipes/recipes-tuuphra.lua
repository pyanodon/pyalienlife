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

---UPDATES---
RECIPE {
    type = 'recipe',
    name = 'tuuphra-mk02',
    category = 'tuuphra',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'tuuphra', amount = 2},
        {type = 'item', name = 'tuuphra-seeds', amount = 10},
        {type = 'fluid', name = 'carbon-dioxide', amount = 300},
        {type = 'item', name = 'manure', amount = 15},
        {type = 'item', name = 'coarse', amount = 20},
        {type = 'item', name = 'soil', amount = 100},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'tuuphra-mk02', amount = 1, probability = 0.005},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    main_product = "tuuphra-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-tuuphra',
    order = 'za'
}:add_unlock("selective-breeding")

RECIPE {
    type = 'recipe',
    name = 'tuuphra-mk03',
    category = 'tuuphra',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'tuuphra', amount = 2},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'fluid', name = 'carbon-dioxide', amount = 300},
        {type = 'item', name = 'manure', amount = 15},
        {type = 'item', name = 'coarse', amount = 20},
        {type = 'item', name = 'soil', amount = 100},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'tuuphra-mk03', amount = 1, probability = 0.004},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "tuuphra-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-tuuphra',
    order = 'zb'
}:add_unlock("artificial-breeding")

RECIPE {
    type = 'recipe',
    name = 'tuuphra-mk04',
    category = 'tuuphra',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'tuuphra', amount = 2},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'fluid', name = 'carbon-dioxide', amount = 300},
        {type = 'item', name = 'manure', amount = 15},
        {type = 'item', name = 'coarse', amount = 20},
        {type = 'item', name = 'soil', amount = 100},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'tuuphra-mk04', amount = 1, probability = 0.003},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "tuuphra-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-tuuphra',
    order = 'zc'
}:add_unlock("biased-mutation")