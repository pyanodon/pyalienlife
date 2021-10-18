--------------------------GUAR-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'guar-sample',
    category = 'nursery',
    enabled = false,
    energy_required = 200,
    ingredients = {
        {type = 'item', name = 'bio-sample', amount = 5},
        {type = 'item', name = 'cdna', amount = 3},
        {type = 'item', name = 'ralesia-codex', amount = 1},
        {type = 'item', name = 'tuuphra-codex', amount = 1},
        {type = 'item', name = 'earth-flower-sample', amount = 1},
        {type = 'item', name = 'earth-potato-sample', amount = 1},
        {type = 'fluid', name = 'water', amount = 100},
    },
    results = {
        {type = 'item', name = 'guar', amount = 1},
    },
}:add_unlock("guar")

---breeding---


-----SEEDS----

RECIPE {
    type = "recipe",
    name = "guar-seeds",
    category = "nursery",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "guar", amount = 2},
    },
    results = {
        {type = "item", name = "guar-seeds", amount = 4}
    },
}:add_unlock("guar")

--Secondary Upgrade Recipes--
--SUR--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'guar-mk02',
    category = 'guar',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'guar', amount = 2},
        {type = 'item', name = 'guar-seeds', amount = 10},
        {type = 'fluid', name = 'carbon-dioxide', amount = 300},
        {type = 'item', name = 'fertilizer', amount = 10},
        {type = 'item', name = 'limestone', amount = 10},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'guar-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'guar', amount = 1, probability = 0.5},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    main_product = "guar-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-guar',
    order = 'za'
}:add_unlock("selective-breeding")

RECIPE {
    type = 'recipe',
    name = 'guar-mk03',
    category = 'guar',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'guar', amount = 2},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'guar-seeds', amount = 10},
        {type = 'fluid', name = 'carbon-dioxide', amount = 300},
        {type = 'item', name = 'fertilizer', amount = 10},
        {type = 'item', name = 'limestone', amount = 10},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'guar-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'guar', amount = 1, probability = 0.6},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "guar-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-guar',
    order = 'zb'
}:add_unlock("artificial-breeding")

RECIPE {
    type = 'recipe',
    name = 'guar-mk04',
    category = 'guar',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'guar', amount = 2},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'guar-seeds', amount = 10},
        {type = 'fluid', name = 'carbon-dioxide', amount = 300},
        {type = 'item', name = 'fertilizer', amount = 10},
        {type = 'item', name = 'limestone', amount = 10},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'guar-mk04', amount = 1, probability = 0.003},
        {type = 'item', name = 'guar', amount = 1, probability = 0.7},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "guar-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-guar',
    order = 'zc'
}:add_unlock("biased-mutation")
