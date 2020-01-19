--------------------------YOTOIS-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'yotoi-sample',
    category = 'nursery',
    enabled = false,
    energy_required = 250,
    ingredients = {
        {type = 'item', name = 'alien-sample-02', amount = 2},
        {type = 'item', name = 'cdna', amount = 3},
        {type = 'item', name = 'bio-sample', amount = 10},
        {type = 'item', name = 'wood-seedling', amount = 5},
        {type = 'item', name = 'yotoi-codex', amount = 1},
        {type = 'item', name = 'earth-tropical-tree-sample', amount = 1},
        {type = 'fluid', name = 'water', amount = 1000},
    },
    results = {
        {type = 'item', name = 'yotoi', amount = 2},
    },
}:add_unlock("yotoi")

RECIPE {
    type = 'recipe',
    name = 'yotoi-codex',
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
        {type = 'item', name = 'yotoi-codex', amount = 1},
    },
}:add_unlock("yotoi")

RECIPE {
    type = 'recipe',
    name = 'earth-tropical-tree-sample',
    category = 'data-array',
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = 'item', name = 'steel-chest', amount = 1},
        {type = 'item', name = 'logistic-science-pack', amount = 100},
        {type = 'item', name = 'yotoi-codex', amount = 1},
    },
    results = {
        {type = 'item', name = 'earth-tropical-tree-sample', amount = 1},
    },
}:add_unlock("yotoi")

---breeding---

---fruits---

-----SEEDS----

RECIPE {
    type = "recipe",
    name = "yotoi-seeds",
    category = "nursery",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "yotoi-fruit", amount = 8},
    },
    results = {
        {type = "item", name = "yotoi-seeds", amount = 3}
    },
}:add_unlock("yotoi")

-----LEAVES----

RECIPE {
    type = "recipe",
    name = "yotoi-leaves",
    category = "crafting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "yotoi", amount = 2},
    },
    results = {
        {type = "item", name = "yotoi-leaves", amount = 5}
    },
}:add_unlock("yotoi")

-----REPLICATOR----

RECIPE {
    type = 'recipe',
    name = 'replicator-yotoi',
    category = 'advanced-crafting',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'yotoi-codex', amount = 1},
        {type = 'item', name = 'yotoi-seeds', amount = 200},
        {type = 'item', name = 'titanium-plate', amount = 100},
        {type = 'item', name = 'metallic-glass', amount = 2},
        {type = 'item', name = 'biofilm', amount = 20},
        {type = 'item', name = 'plastic-bar', amount = 100},
        {type = 'item', name = 'blanket-chassi', amount = 1},
        {type = 'item', name = 'fertilizer', amount = 40},
    },
    results = {
        {type = 'item', name = 'replicator-yotoi', amount = 1},
    },
}:add_unlock("mega-farm-yotoi"):add_ingredient({type = "item", name = "nems", amount = 10}):add_ingredient({type = "item", name = "carbon-nanotube", amount = 10})

RECIPE {
    type = 'recipe',
    name = 'replicator-yotoi-fruit',
    category = 'advanced-crafting',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'yotoi-codex', amount = 1},
        {type = 'item', name = 'yotoi', amount = 50},
        {type = 'item', name = 'titanium-plate', amount = 100},
        {type = 'item', name = 'metallic-glass', amount = 2},
        {type = 'item', name = 'biofilm', amount = 20},
        {type = 'item', name = 'plastic-bar', amount = 100},
        {type = 'item', name = 'blanket-chassi', amount = 1},
        {type = 'item', name = 'fertilizer', amount = 40},
    },
    results = {
        {type = 'item', name = 'replicator-yotoi-fruit', amount = 1},
    },
}:add_unlock("mega-farm-yotoi"):add_ingredient({type = "item", name = "nems", amount = 10}):add_ingredient({type = "item", name = "carbon-nanotube", amount = 10})

---UPDATES---
RECIPE {
    type = 'recipe',
    name = 'yotoi-mk02',
    category = 'yotoi',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'yotoi', amount = 2},
        {type = 'item', name = 'yotoi-seeds', amount = 10},
        {type = 'fluid', name = 'carbon-dioxide', amount = 300},
        {type = 'item', name = 'fertilizer', amount = 10},
        {type = 'item', name = 'sand', amount = 10},
        {type = 'item', name = 'small-lamp', amount = 10},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'yotoi-mk02', amount = 1, probability = 0.005},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    main_product = "yotoi-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-yotoi',
    order = 'za'
}:add_unlock("selective-breeding")

RECIPE {
    type = 'recipe',
    name = 'yotoi-mk03',
    category = 'yotoi',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'yotoi-mk02', amount = 2},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'yotoi-seeds', amount = 10},
        {type = 'fluid', name = 'carbon-dioxide', amount = 300},
        {type = 'item', name = 'fertilizer', amount = 10},
        {type = 'item', name = 'sand', amount = 10},
        {type = 'item', name = 'small-lamp', amount = 10},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'yotoi-mk03', amount = 1, probability = 0.005},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "yotoi-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-yotoi',
    order = 'zb'
}:add_unlock("artificial-breeding")

RECIPE {
    type = 'recipe',
    name = 'yotoi-mk04',
    category = 'yotoi',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'yotoi-mk03', amount = 2},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'yotoi-seeds', amount = 10},
        {type = 'fluid', name = 'carbon-dioxide', amount = 300},
        {type = 'item', name = 'fertilizer', amount = 10},
        {type = 'item', name = 'sand', amount = 10},
        {type = 'item', name = 'small-lamp', amount = 10},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'yotoi-mk04', amount = 1, probability = 0.005},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "yotoi-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-yotoi',
    order = 'zc'
}:add_unlock("biased-mutation")