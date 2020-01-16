--------------------------RALESIAS-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'ralesia-sample',
    category = 'nursery',
    enabled = false,
    energy_required = 200,
    ingredients = {
        {type = 'item', name = 'alien-sample-02', amount = 2},
        {type = 'item', name = 'cdna', amount = 3},
        {type = 'item', name = 'bio-sample', amount = 5},
        {type = 'item', name = 'ralesia-codex', amount = 1},
        {type = 'item', name = 'earth-flower-sample', amount = 1},
        {type = 'fluid', name = 'water', amount = 1000},
    },
    results = {
        {type = 'item', name = 'ralesias', amount = 2},
    },
}:add_unlock("ralesia")

RECIPE {
    type = 'recipe',
    name = 'ralesia-codex',
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
        {type = 'item', name = 'ralesia-codex', amount = 1},
    },
}:add_unlock("ralesia")

RECIPE {
    type = 'recipe',
    name = 'earth-flower-sample',
    category = 'data-array',
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = 'item', name = 'steel-chest', amount = 1},
        {type = 'item', name = 'automation-science-pack', amount = 100},
        {type = 'item', name = 'ralesia-codex', amount = 1},
    },
    results = {
        {type = 'item', name = 'earth-flower-sample', amount = 1},
    },
}:add_unlock("ralesia")

RECIPE {
    type = 'recipe',
    name = 'replicator-ralesia',
    category = 'advanced-crafting',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'ralesia-codex', amount = 1},
        {type = 'item', name = 'ralesia-seeds', amount = 100},
        {type = 'item', name = 'titanium-plate', amount = 100},
        {type = 'item', name = 'metallic-glass', amount = 2},
        {type = 'item', name = 'biofilm', amount = 20},
        {type = 'item', name = 'plastic-bar', amount = 100},
        {type = 'item', name = 'blanket-chassi', amount = 1},
    },
    results = {
        {type = 'item', name = 'replicator-ralesia', amount = 1},
    },
}:add_unlock("mega-farm-ralesia"):add_ingredient({type = "item", name = "nems", amount = 10}):add_ingredient({type = "item", name = "carbon-nanotube", amount = 10})

---UPDATES---
RECIPE {
    type = 'recipe',
    name = 'ralesias-mk02',
    category = 'ralesia',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'ralesias', amount = 2},
        {type = 'item', name = 'ralesia-seeds', amount = 10},
        {type = 'fluid', name = 'hydrogen', amount = 300},
        {type = 'item', name = 'fertilizer', amount = 10},
        {type = 'item', name = 'soil', amount = 100},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'ralesias-mk02', amount = 1, probability = 0.005},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    main_product = "ralesias-mk02",
    icon = '__pyalienlife__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-ralesia',
    order = 'za'
}:add_unlock("selective-breeding")

RECIPE {
    type = 'recipe',
    name = 'ralesias-mk03',
    category = 'ralesia',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'ralesias-mk02', amount = 2},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'ralesia-seeds', amount = 10},
        {type = 'fluid', name = 'hydrogen', amount = 300},
        {type = 'item', name = 'fertilizer', amount = 10},
        {type = 'item', name = 'soil', amount = 100},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'ralesias-mk03', amount = 1, probability = 0.005},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "ralesias-mk03",
    icon = '__pyalienlife__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-ralesia',
    order = 'zb'
}:add_unlock("artificial-breeding")

RECIPE {
    type = 'recipe',
    name = 'ralesias-mk04',
    category = 'ralesia',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'ralesias-mk03', amount = 2},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'ralesia-seeds', amount = 10},
        {type = 'fluid', name = 'hydrogen', amount = 300},
        {type = 'item', name = 'fertilizer', amount = 10},
        {type = 'item', name = 'soil', amount = 100},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'ralesias-mk04', amount = 1, probability = 0.005},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "ralesias-mk04",
    icon = '__pyalienlife__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-ralesia',
    order = 'zc'
}:add_unlock("biased-mutation")