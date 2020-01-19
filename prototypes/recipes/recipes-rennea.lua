--------------------------RENNEA-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'rennea-sample',
    category = 'nursery',
    enabled = false,
    energy_required = 200,
    ingredients = {
        {type = 'item', name = 'alien-sample-03', amount = 10},
        {type = 'item', name = 'cdna', amount = 10},
        {type = 'item', name = 'bio-sample', amount = 10},
        {type = 'item', name = 'fertilizer', amount = 30},
        {type = 'item', name = 'rennea-codex', amount = 1},
        {type = 'item', name = 'earth-sunflower-sample', amount = 1},
        {type = 'fluid', name = 'water', amount = 1000},
    },
    results = {
        {type = 'item', name = 'rennea', amount = 1},
    },
}:add_unlock("rennea")

RECIPE {
    type = 'recipe',
    name = 'rennea-codex',
    category = 'crafting',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'glass', amount = 2},
        {type = 'item', name = 'small-lamp', amount = 5},
        {type = 'item', name = 'advanced-circuit', amount = 30},
        {type = 'item', name = 'tinned-cable', amount = 20},
    },
    results = {
        {type = 'item', name = 'rennea-codex', amount = 1},
    },
}:add_unlock("rennea")

RECIPE {
    type = 'recipe',
    name = 'earth-sunflower-sample',
    category = 'data-array',
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = 'item', name = 'steel-chest', amount = 1},
        {type = 'item', name = 'chemical-science-pack', amount = 100},
        {type = 'item', name = 'rennea-codex', amount = 1},
    },
    results = {
        {type = 'item', name = 'earth-sunflower-sample', amount = 1},
    },
}:add_unlock("rennea")

---breeding---

-----SEEDS----

RECIPE {
    type = "recipe",
    name = "rennea-seeds",
    category = "nursery",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "rennea", amount = 5},
    },
    results = {
        {type = "item", name = "rennea-seeds", amount = 7}
    },
}:add_unlock("rennea")


RECIPE {
    type = 'recipe',
    name = 'replicator-rennea',
    category = 'advanced-crafting',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'rennea-codex', amount = 1},
        {type = 'item', name = 'rennea-seeds', amount = 200},
        {type = 'item', name = 'titanium-plate', amount = 100},
        {type = 'item', name = 'metallic-glass', amount = 2},
        {type = 'item', name = 'biofilm', amount = 20},
        {type = 'item', name = 'plastic-bar', amount = 100},
        {type = 'item', name = 'blanket-chassi', amount = 1},
        {type = 'item', name = 'fertilizer', amount = 20},
    },
    results = {
        {type = 'item', name = 'replicator-rennea', amount = 1},
    },
}:add_unlock("mega-farm-rennea"):add_ingredient({type = "item", name = "nems", amount = 10}):add_ingredient({type = "item", name = "carbon-nanotube", amount = 10})

---UPDATES---
RECIPE {
    type = 'recipe',
    name = 'rennea-mk02',
    category = 'rennea',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'rennea', amount = 2},
        {type = 'item', name = 'rennea-seeds', amount = 10},
        {type = 'fluid', name = 'carbon-dioxide', amount = 300},
        {type = 'item', name = 'manure', amount = 15},
        {type = 'item', name = 'coarse', amount = 10},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'rennea-mk02', amount = 1, probability = 0.005},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    main_product = "rennea-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-rennea',
    order = 'za'
}:add_unlock("selective-breeding")

RECIPE {
    type = 'recipe',
    name = 'rennea-mk03',
    category = 'rennea',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'rennea-mk02', amount = 2},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'rennea-seeds', amount = 10},
        {type = 'fluid', name = 'carbon-dioxide', amount = 300},
        {type = 'item', name = 'manure', amount = 15},
        {type = 'item', name = 'coarse', amount = 10},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'rennea-mk03', amount = 1, probability = 0.005},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "rennea-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-rennea',
    order = 'zb'
}:add_unlock("artificial-breeding")

RECIPE {
    type = 'recipe',
    name = 'rennea-mk04',
    category = 'rennea',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'rennea-mk03', amount = 2},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'rennea-seeds', amount = 10},
        {type = 'fluid', name = 'carbon-dioxide', amount = 300},
        {type = 'item', name = 'manure', amount = 15},
        {type = 'item', name = 'coarse', amount = 10},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'rennea-mk04', amount = 1, probability = 0.005},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "rennea-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-rennea',
    order = 'zc'
}:add_unlock("biased-mutation")