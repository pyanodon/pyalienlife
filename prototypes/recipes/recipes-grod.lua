--------------------------GROD-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'grod-sample',
    category = 'nursery',
    enabled = false,
    energy_required = 200,
    ingredients = {
        {type = 'item', name = 'alien-sample01', amount = 4},
        {type = 'item', name = 'bio-sample', amount = 5},
        {type = 'item', name = 'cdna', amount = 3},
        {type = 'item', name = 'grod-codex', amount = 1},
        {type = 'item', name = 'earth-flower-sample', amount = 1},
        {type = 'fluid', name = 'water', amount = 1000},
    },
    results = {
        {type = 'item', name = 'grod', amount = 1},
    },
}:add_unlock("grod")

RECIPE {
    type = 'recipe',
    name = 'grod-codex',
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
        {type = 'item', name = 'grod-codex', amount = 1},
    },
}:add_unlock("grod")

RECIPE {
    type = 'recipe',
    name = 'earth-jute-sample',
    category = 'data-array',
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = 'item', name = 'steel-chest', amount = 1},
        {type = 'item', name = 'py-science-pack', amount = 50},
        {type = 'item', name = 'grod-codex', amount = 1},
    },
    results = {
        {type = 'item', name = 'earth-jute-sample', amount = 1},
    },
}:add_unlock("grod")

---breeding---


-----SEEDS----

RECIPE {
    type = "recipe",
    name = "grod-seeds",
    category = "nursery",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "grod", amount = 2},
    },
    results = {
        {type = "item", name = "grod-seeds", amount = 4}
    },
}:add_unlock("grod")


RECIPE {
    type = 'recipe',
    name = 'replicator-grod',
    category = 'advanced-crafting',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'grod-codex', amount = 1},
        {type = 'item', name = 'grod-seeds', amount = 200},
        {type = 'item', name = 'titanium-plate', amount = 100},
        {type = 'item', name = 'metallic-glass', amount = 2},
        {type = 'item', name = 'biofilm', amount = 20},
        {type = 'item', name = 'plastic-bar', amount = 100},
        {type = 'item', name = 'blanket-chassi', amount = 1},
        {type = 'item', name = 'fertilizer', amount = 40},
    },
    results = {
        {type = 'item', name = 'replicator-grod', amount = 1},
    },
}:add_unlock("mega-farm-grod"):add_ingredient({type = "item", name = "nems", amount = 10}):add_ingredient({type = "item", name = "carbon-nanotube", amount = 10})

---UPDATES---
RECIPE {
    type = 'recipe',
    name = 'grod-mk02',
    category = 'grod',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'grod', amount = 2},
        {type = 'item', name = 'grod-seeds', amount = 10},
        {type = 'fluid', name = 'carbon-dioxide', amount = 300},
        {type = 'item', name = 'fertilizer', amount = 10},
        {type = 'item', name = 'limestone', amount = 10},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'grod-mk02', amount = 1, probability = 0.005},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    main_product = "grod-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-grod',
    order = 'za'
}:add_unlock("selective-breeding")

RECIPE {
    type = 'recipe',
    name = 'grod-mk03',
    category = 'grod',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'grod', amount = 2},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'grod-seeds', amount = 10},
        {type = 'fluid', name = 'carbon-dioxide', amount = 300},
        {type = 'item', name = 'fertilizer', amount = 10},
        {type = 'item', name = 'limestone', amount = 10},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'grod-mk03', amount = 1, probability = 0.004},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "grod-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-grod',
    order = 'zb'
}:add_unlock("artificial-breeding")

RECIPE {
    type = 'recipe',
    name = 'grod-mk04',
    category = 'grod',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'grod', amount = 2},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'grod-seeds', amount = 10},
        {type = 'fluid', name = 'carbon-dioxide', amount = 300},
        {type = 'item', name = 'fertilizer', amount = 10},
        {type = 'item', name = 'limestone', amount = 10},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'grod-mk04', amount = 1, probability = 0.003},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "grod-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-grod',
    order = 'zc'
}:add_unlock("biased-mutation")