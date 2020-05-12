--------------------------yaedols-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'yaedols-sample',
    category = 'nursery',
    enabled = false,
    energy_required = 35,
    ingredients = {
        {type = 'item', name = 'alien-sample-02', amount = 1},
        {type = 'item', name = 'cdna', amount = 3},
        {type = 'item', name = 'bio-sample', amount = 5},
        {type = 'item', name = 'earth-shroom-sample', amount = 1},
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
    energy_required = 8,
    ingredients = {
    },
    results = {
        {type = 'item', name = 'yaedols-spores', amount = 1, probability = 0.4},
    },
}:add_unlock("yaedols")

---breeding---


---UPDATES---
RECIPE {
    type = 'recipe',
    name = 'yaedols-mk02',
    category = 'yaedols',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'yaedols', amount = 2},
        {type = 'item', name = 'yaedols-spores', amount = 5},
        {type = 'item', name = 'fungal-substrate-03', amount = 5},
        {type = 'item', name = 'wood', amount = 15},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'yaedols-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'yaedols', amount = 1, probability = 0.5},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "yaedols-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-yaedols',
    order = 'za'
}:add_unlock("selective-breeding")

RECIPE {
    type = 'recipe',
    name = 'yaedols-mk03',
    category = 'yaedols',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'yaedols', amount = 2},
        {type = 'item', name = 'yaedols-spores', amount = 5},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'fungal-substrate-03', amount = 5},
        {type = 'item', name = 'wood', amount = 15},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'yaedols-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'yaedols', amount = 1, probability = 0.6},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "yaedols-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-yaedols',
    order = 'zb'
}:add_unlock("artificial-breeding")

RECIPE {
    type = 'recipe',
    name = 'yaedols-mk04',
    category = 'yaedols',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'yaedols', amount = 2},
        {type = 'item', name = 'yaedols-spores', amount = 5},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'fungal-substrate-03', amount = 5},
        {type = 'item', name = 'wood', amount = 15},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'yaedols-mk04', amount = 1, probability = 0.003},
        {type = 'item', name = 'yaedols', amount = 1, probability = 0.7},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "yaedols-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-yaedols',
    order = 'zc'
}:add_unlock("biased-mutation")