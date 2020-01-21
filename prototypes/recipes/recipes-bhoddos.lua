--------------------------BHODDOS-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'bhoddos-sample',
    category = 'nursery',
    enabled = false,
    energy_required = 35,
    ingredients = {
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'bio-sample', amount = 5},
        {type = 'item', name = 'cdna', amount = 3},
        {type = 'item', name = 'moss-gen', amount = 5},
        {type = 'item', name = 'bhoddos-codex', amount = 1},
        {type = 'item', name = 'bhoddos-spore', amount = 50},
        {type = 'item', name = 'fawogae-spore', amount = 20},
        {type = 'fluid', name = 'water', amount = 1000},
    },
    results = {
        {type = 'item', name = 'bhoddos', amount = 1},
    },
}:add_unlock("bhoddos")

RECIPE {
    type = 'recipe',
    name = 'bhoddos-codex',
    category = 'crafting',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'glass', amount = 2},
        {type = 'item', name = 'small-lamp', amount = 5},
        {type = 'item', name = 'electronic-circuit', amount = 20},
        {type = 'item', name = 'tinned-cable', amount = 20},
    },
    results = {
        {type = 'item', name = 'bhoddos-codex', amount = 1},
    },
}:add_unlock("bhoddos")

RECIPE {
    type = 'recipe',
    name = 'bhoddos-spore',
    category = 'spore',
    enabled = false,
    energy_required = 15,
    ingredients = {
    },
    results = {
        {type = 'item', name = 'bhoddos-spore', amount = 1, probability = 0.4},
    },
}:add_unlock("bhoddos")

---breeding---


-----SPORES----

---UPDATES---
RECIPE {
    type = 'recipe',
    name = 'bhoddos-mk02',
    category = 'bhoddos',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'bhoddos', amount = 2},
        {type = 'item', name = 'bhoddos-spore', amount = 5},
        {type = 'item', name = 'fungal-substrate-02', amount = 5},
        {type = 'item', name = 'biomass', amount = 15},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'bhoddos-mk02', amount = 1, probability = 0.005},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "bhoddos-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-bhoddos',
    order = 'za'
}:add_unlock("selective-breeding")

RECIPE {
    type = 'recipe',
    name = 'bhoddos-mk03',
    category = 'bhoddos',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'bhoddos', amount = 2},
        {type = 'item', name = 'bhoddos-spore', amount = 5},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'fungal-substrate-02', amount = 5},
        {type = 'item', name = 'biomass', amount = 15},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'bhoddos-mk03', amount = 1, probability = 0.004},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "bhoddos-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-bhoddos',
    order = 'zb'
}:add_unlock("artificial-breeding")

RECIPE {
    type = 'recipe',
    name = 'bhoddos-mk04',
    category = 'bhoddos',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'bhoddos', amount = 2},
        {type = 'item', name = 'bhoddos-spore', amount = 5},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'fungal-substrate-02', amount = 5},
        {type = 'item', name = 'biomass', amount = 15},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'bhoddos-mk04', amount = 1, probability = 0.003},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "bhoddos-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-bhoddos',
    order = 'zc'
}:add_unlock("biased-mutation")