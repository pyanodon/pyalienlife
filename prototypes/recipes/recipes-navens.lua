--------------------------NAVENS-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'navens-sample',
    category = 'nursery',
    enabled = false,
    energy_required = 200,
    ingredients = {
        {type = 'item', name = 'alien-sample-02', amount = 2},
        {type = 'item', name = 'earth-shroom-sample', amount = 1},
        {type = 'item', name = 'cdna', amount = 3},
        {type = 'item', name = 'bio-sample', amount = 10},
        {type = 'item', name = 'navens-codex', amount = 1},
        {type = 'item', name = 'navens-spore', amount = 100},
        {type = 'fluid', name = 'water', amount = 1000},
    },
    results = {
        {type = 'item', name = 'navens', amount = 2},
    },
}:add_unlock("navens")

RECIPE {
    type = 'recipe',
    name = 'navens-codex',
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
        {type = 'item', name = 'navens-codex', amount = 1},
    },
}:add_unlock("navens")

RECIPE {
    type = 'recipe',
    name = 'navens-spore',
    category = 'spore',
    enabled = false,
    energy_required = 8,
    ingredients = {
    },
    results = {
        {type = 'item', name = 'navens-spore', amount = 1, probability = 0.4},
    },
}:add_unlock("navens")

---breeding---

-----SPORES----


---UPDATES---
RECIPE {
    type = 'recipe',
    name = 'navens-mk02',
    category = 'navens',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'navens', amount = 2},
        {type = 'item', name = 'navens-spore', amount = 5},
        {type = 'item', name = 'fungal-substrate-02', amount = 5},
        {type = 'item', name = 'guts', amount = 10},
        {type = 'item', name = 'manure', amount = 10},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'navens-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'navens', amount = 1, probability = 0.5},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "navens-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-navens',
    order = 'za'
}:add_unlock("selective-breeding")

RECIPE {
    type = 'recipe',
    name = 'navens-mk03',
    category = 'navens',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'navens', amount = 2},
        {type = 'item', name = 'navens-spore', amount = 5},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'fungal-substrate-02', amount = 5},
        {type = 'item', name = 'guts', amount = 10},
        {type = 'item', name = 'manure', amount = 10},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'navens-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'navens', amount = 1, probability = 0.6},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "navens-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-navens',
    order = 'zb'
}:add_unlock("artificial-breeding")

RECIPE {
    type = 'recipe',
    name = 'navens-mk04',
    category = 'navens',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'navens', amount = 2},
        {type = 'item', name = 'navens-spore', amount = 5},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'fungal-substrate-02', amount = 5},
        {type = 'item', name = 'guts', amount = 10},
        {type = 'item', name = 'manure', amount = 10},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'navens-mk04', amount = 1, probability = 0.003},
        {type = 'item', name = 'navens', amount = 1, probability = 0.7},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "navens-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-navens',
    order = 'zc'
}:add_unlock("biased-mutation")