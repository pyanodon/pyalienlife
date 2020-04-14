--------------------------KICALK-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'kicalk-sample',
    category = 'nursery',
    enabled = false,
    energy_required = 250,
    ingredients = {
        {type = 'item', name = 'alien-sample01', amount = 4},
        {type = 'item', name = 'bio-sample', amount = 5},
        {type = 'item', name = 'cdna', amount = 3},
        {type = 'item', name = 'kicalk-codex', amount = 1},
        {type = 'item', name = 'earth-palmtree-sample', amount = 1},
        {type = 'fluid', name = 'water', amount = 1000},
    },
    results = {
        {type = 'item', name = 'kicalk', amount = 1},
    },
}:add_unlock("kicalk")

RECIPE {
    type = 'recipe',
    name = 'kicalk-codex',
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
        {type = 'item', name = 'kicalk-codex', amount = 1},
    },
}:add_unlock("kicalk")

RECIPE {
    type = 'recipe',
    name = 'earth-palmtree-sample',
    category = 'data-array',
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = 'item', name = 'steel-chest', amount = 1},
        {type = 'item', name = 'automation-science-pack', amount = 50},
        {type = 'item', name = 'kicalk-codex', amount = 1},
    },
    results = {
        {type = 'item', name = 'earth-palmtree-sample', amount = 1},
    },
}:add_unlock("kicalk")

---breeding---


-----SEEDS----

RECIPE {
    type = "recipe",
    name = "kicalk-seeds",
    category = "nursery",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "kicalk", amount = 3},
    },
    results = {
        {type = "item", name = "kicalk-seeds", amount = 5}
    },
}:add_unlock("kicalk")

RECIPE {
    type = "recipe",
    name = "kicalk-seeds-mk02",
    category = "nursery",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "kicalk-mk02", amount = 4},
    },
    results = {
        {type = "item", name = "kicalk-seeds-mk02", amount = 5}
    },
}:add_unlock("selective-breeding")

RECIPE {
    type = "recipe",
    name = "kicalk-seeds-mk03",
    category = "nursery",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "kicalk-mk03", amount = 5},
    },
    results = {
        {type = "item", name = "kicalk-seeds-mk03", amount = 5}
    },
}:add_unlock("artificial-breeding")

RECIPE {
    type = "recipe",
    name = "kicalk-seeds-mk04",
    category = "nursery",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "kicalk-mk04", amount = 6},
    },
    results = {
        {type = "item", name = "kicalk-seeds-mk04", amount = 6}
    },
}:add_unlock("biased-mutation")

---REPLICATOR---

RECIPE {
    type = 'recipe',
    name = 'replicator-kicalk',
    category = 'advanced-crafting',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'kicalk-codex', amount = 1},
        {type = 'item', name = 'kicalk-seeds', amount = 200},
        {type = 'item', name = 'titanium-plate', amount = 100},
        {type = 'item', name = 'metallic-glass', amount = 2},
        {type = 'item', name = 'biofilm', amount = 20},
        {type = 'item', name = 'plastic-bar', amount = 100},
        {type = 'item', name = 'blanket-chassi', amount = 1},
        {type = 'item', name = 'fertilizer', amount = 40},
    },
    results = {
        {type = 'item', name = 'replicator-kicalk', amount = 1},
    },
}:add_unlock("mega-farm-kicalk"):add_ingredient({type = "item", name = "nems", amount = 10}):add_ingredient({type = "item", name = "carbon-nanotube", amount = 10})

---UPGRADES---

---STARTER---

RECIPE {
    type = 'recipe',
    name = 'kicalk-mk02',
    category = 'kicalk',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'kicalk', amount = 2},
        {type = 'item', name = 'kicalk-seeds', amount = 10},
        {type = 'fluid', name = 'carbon-dioxide', amount = 300},
        {type = 'item', name = 'clay', amount = 10},
        {type = 'item', name = 'small-lamp', amount = 5},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'kicalk-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'kicalk-seeds-mk02', amount = 1, probability = 0.02},
        {type = 'item', name = 'kicalk', amount = 1, probability = 0.5},
    },
    main_product = "kicalk-seeds-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-kicalk',
    order = 'za'
}:add_unlock("selective-breeding")

RECIPE {
    type = 'recipe',
    name = 'kicalk-mk03',
    category = 'kicalk',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'kicalk-mk02', amount = 2},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'kicalk-seeds-mk02', amount = 10},
        {type = 'fluid', name = 'carbon-dioxide', amount = 300},
        {type = 'item', name = 'clay', amount = 10},
        {type = 'item', name = 'small-lamp', amount = 5},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'kicalk-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'kicalk-seeds-mk03', amount = 1, probability = 0.01},
        {type = 'item', name = 'kicalk', amount = 1, probability = 0.6},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "kicalk-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-kicalk',
    order = 'zb'
}:add_unlock("artificial-breeding")

RECIPE {
    type = 'recipe',
    name = 'kicalk-mk04',
    category = 'kicalk',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'kicalk-mk03', amount = 2},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'kicalk-seeds-mk03', amount = 10},
        {type = 'fluid', name = 'carbon-dioxide', amount = 300},
        {type = 'item', name = 'clay', amount = 10},
        {type = 'item', name = 'small-lamp', amount = 5},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'kicalk-mk04', amount = 1, probability = 0.003},
        {type = 'item', name = 'kicalk-seeds-mk04', amount = 1, probability = 0.008},
        {type = 'item', name = 'kicalk', amount = 1, probability = 0.7},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "kicalk-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-kicalk',
    order = 'zc'
}:add_unlock("biased-mutation")

---Duplication---

RECIPE {
    type = 'recipe',
    name = 'kicalk-mk02-breeder',
    category = 'kicalk',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'kicalk-seeds-mk02', amount = 5},
        {type = 'fluid', name = 'carbon-dioxide', amount = 400},
        {type = 'item', name = 'rich-clay', amount = 10},
        {type = 'item', name = 'small-lamp', amount = 5},
        {type = 'fluid', name = 'flutec-pp6', amount = 50},
        },
    results = {
        {type = 'item', name = 'kicalk-mk02', amount = 4},
        {type = 'item', name = 'kicalk-mk02', amount = 2, probability = 0.5},
        {type = 'item', name = 'kicalk-seeds', amount = 3, probability = 0.5},
        {type = 'item', name = 'kicalk-seeds-mk02', amount = 2, probability = 0.25},
    },
    main_product = "kicalk-seeds-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/kicalk.png", icon_size = 64},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png', icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-kicalk',
    order = 'za'
}:add_unlock("selective-breeding")

RECIPE {
    type = 'recipe',
    name = 'kicalk-mk03-breeder',
    category = 'kicalk',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'kicalk-seeds-mk03', amount = 5},
        {type = 'fluid', name = 'carbon-dioxide', amount = 300},
        {type = 'item', name = 'retrovirus', amount = 5},
        {type = 'item', name = 'microcin-j25', amount = 1},
        {type = 'fluid', name = 'mutant-enzymes', amount = 100},
        },
    results = {
        {type = 'item', name = 'kicalk-mk03', amount = 5},
        {type = 'item', name = 'kicalk-mk03', amount = 3, probability = 0.4},
        {type = 'item', name = 'kicalk-mk02', amount = 2, probability = 0.2},
        {type = 'item', name = 'kicalk-seeds', amount = 3, probability = 0.4},
        {type = 'item', name = 'kicalk-seeds-mk02', amount = 3, probability = 0.2},
        {type = 'item', name = 'kicalk-seeds-mk03', amount = 2, probability = 0.05},
    },
    --main_product = "kicalk-mk03",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/kicalk.png", icon_size = 64},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png', icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-kicalk',
    order = 'zb'
}:add_unlock("artificial-breeding")

RECIPE {
    type = 'recipe',
    name = 'kicalk-mk04-breeder',
    category = 'kicalk',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'kicalk-seeds-mk04', amount = 6},
        {type = 'fluid', name = 'carbon-dioxide', amount = 300},
        {type = 'item', name = 'laser-module', amount = 2},
        {type = 'item', name = 'retrovirus', amount = 2},
        {type = 'item', name = 'adam42-gen', amount = 4},
        {type = 'item', name = 'microcin-j25', amount = 1},
        {type = 'fluid', name = 'mutant-enzymes', amount = 100},
        },
    results = {
        {type = 'item', name = 'kicalk-mk04', amount = 5},
        {type = 'item', name = 'kicalk-mk04', amount = 3, probability = 0.4},
        {type = 'item', name = 'kicalk-mk03', amount = 2, probability = 0.25},
        {type = 'item', name = 'kicalk-mk02', amount = 2, probability = 0.15},
        {type = 'item', name = 'kicalk-seeds', amount = 3, probability = 0.6},
        {type = 'item', name = 'kicalk-seeds-mk02', amount = 3, probability = 0.4},
        {type = 'item', name = 'kicalk-seeds-mk03', amount = 2, probability = 0.3},
        {type = 'item', name = 'kicalk-seeds-mk03', amount = 2, probability = 0.15},
    },
    --main_product = "kicalk-mk04",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/kicalk.png", icon_size = 64},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png', icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    --icon_size = 64,
    subgroup = 'py-alienlife-kicalk',
    order = 'zc'
}:add_unlock("biased-mutation")
