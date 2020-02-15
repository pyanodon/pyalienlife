--------------------------FAWOGAE-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'fawogae-sample',
    category = 'nursery',
    enabled = false,
    energy_required = 200,
    ingredients = {
        {type = 'item', name = 'ground-sample01', amount = 2},
        {type = 'item', name = 'fawogae-spore', amount = 10},
        {type = 'item', name = 'wood', amount = 50},
        {type = 'item', name = 'fawogae-codex', amount = 1},
        {type = 'item', name = 'earth-shroom-sample', amount = 1},
        {type = 'fluid', name = 'steam', amount = 1000},
    },
    results = {
        {type = 'item', name = 'fawogae', amount = 2},
    },
}:add_unlock("fawogae")

RECIPE {
    type = 'recipe',
    name = 'fawogae-codex',
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
        {type = 'item', name = 'fawogae-codex', amount = 1},
    },
}:add_unlock("fawogae")

RECIPE {
    type = 'recipe',
    name = 'earth-shroom-sample',
    category = 'data-array',
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = 'item', name = 'wooden-chest', amount = 1},
        {type = 'item', name = 'automation-science-pack', amount = 100},
        {type = 'item', name = 'fawogae-codex', amount = 1},
    },
    results = {
        {type = 'item', name = 'earth-shroom-sample', amount = 1},
    },
}:add_unlock("fawogae")

--[[
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
]]--

---UPDATES---
RECIPE {
    type = 'recipe',
    name = 'fawogae-mk02',
    category = 'fawogae',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'fawogae', amount = 2},
        {type = 'item', name = 'fawogae-spore', amount = 10},
        {type = 'fluid', name = 'hydrogen', amount = 300},
        {type = 'item', name = 'fertilizer', amount = 10},
        {type = 'item', name = 'soil', amount = 100},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'fawogae-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'fawogae', amount = 1, probability = 0.5},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    main_product = "fawogae-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-ralesia',
    order = 'za'
}:add_unlock("selective-breeding")

RECIPE {
    type = 'recipe',
    name = 'fawogae-mk03',
    category = 'fawogae',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'fawogae', amount = 2},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'fawogae-spore', amount = 10},
        {type = 'fluid', name = 'hydrogen', amount = 300},
        {type = 'item', name = 'fertilizer', amount = 10},
        {type = 'item', name = 'soil', amount = 100},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'fawogae-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'fawogae', amount = 1, probability = 0.6},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "fawogae-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-ralesia',
    order = 'zb'
}:add_unlock("artificial-breeding")

RECIPE {
    type = 'recipe',
    name = 'fawogae-mk04',
    category = 'fawogae',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'fawogae', amount = 2},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'fawogae-spore', amount = 10},
        {type = 'fluid', name = 'hydrogen', amount = 300},
        {type = 'item', name = 'fertilizer', amount = 10},
        {type = 'item', name = 'soil', amount = 100},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'fawogae-mk04', amount = 1, probability = 0.003},
        {type = 'item', name = 'fawogae', amount = 1, probability = 0.7},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "fawogae-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-ralesia',
    order = 'zc'
}:add_unlock("biased-mutation")