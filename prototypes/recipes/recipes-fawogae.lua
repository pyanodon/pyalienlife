--------------------------FAWOGAE-----------------------

--SPORES---

RECIPE {
    type = 'recipe',
    name = 'fawogae-spore',
    category = 'spore',
    enabled = false,
    energy_required = 15,
    ingredients = {
    },
    results = {
        {type = 'item', name = 'fawogae-spore', amount = 1, probability = 0.4},
    },
}:add_unlock("fawogae")

RECIPE {
    type = 'recipe',
    name = 'fawogae-spore-2',
    category = 'spore',
    enabled = false,
    energy_required = 15,
    ingredients = {
    },
    results = {
        {type = 'item', name = 'fawogae-spore', amount = 1, probability = 0.6},
    },
}:add_unlock("microfilters")

RECIPE {
    type = 'recipe',
    name = 'fawogae-spore-3',
    category = 'spore',
    enabled = false,
    energy_required = 15,
    ingredients = {
    },
    results = {
        {type = 'item', name = 'fawogae-spore', amount = 1, probability = 0.8},
    },
}:add_unlock("microfilters-mk02")

---IMPROVED SPORES---

RECIPE {
    type = 'recipe',
    name = 'fawogae-spore-mk02',
    category = 'spore',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'fawogae-mk02', amount = 1},
    },
    results = {
        {type = 'item', name = 'fawogae-spore-mk02', amount = 5},
    },
}:add_unlock("selective-breeding")

RECIPE {
    type = 'recipe',
    name = 'fawogae-spore-mk03',
    category = 'spore',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'fawogae-mk03', amount = 1},
    },
    results = {
        {type = 'item', name = 'fawogae-spore-mk03', amount = 5},
    },
}:add_unlock("artificial-breeding")

RECIPE {
    type = 'recipe',
    name = 'fawogae-spore-mk04',
    category = 'spore',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'fawogae-mk04', amount = 1},
    },
    results = {
        {type = 'item', name = 'fawogae-spore-mk04', amount = 5},
    },
}:add_unlock("biased-mutation")


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

---UPGRADES---
---STARTER----

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
    subgroup = 'py-alienlife-fawogae',
    order = 'za'
}:add_unlock("selective-breeding")

RECIPE {
    type = 'recipe',
    name = 'fawogae-mk03',
    category = 'fawogae',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'fawogae-mk02', amount = 2},
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
    subgroup = 'py-alienlife-fawogae',
    order = 'zb'
}:add_unlock("artificial-breeding")

RECIPE {
    type = 'recipe',
    name = 'fawogae-mk04',
    category = 'fawogae',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'fawogae-mk03', amount = 2},
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
    subgroup = 'py-alienlife-fawogae',
    order = 'zc'
}:add_unlock("biased-mutation")

---Duplicators---


RECIPE {
    type = 'recipe',
    name = 'fawogae-mk02-breeder',
    category = 'fawogae',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'fawogae-spore-mk02', amount = 10},
        {type = 'fluid', name = 'hydrogen', amount = 300},
        {type = 'item', name = 'fertilizer', amount = 2},
        {type = 'item', name = 'biomass', amount = 20},
        {type = 'fluid', name = 'water', amount = 750},
        },
    results = {
        {type = 'item', name = 'fawogae-mk02', amount = 2, },
        {type = 'item', name = 'fawogae-mk02', amount = 1, probability = 0.25},
    },
    main_product = "fawogae-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-fawogae',
    order = 'za'
}:add_unlock("selective-breeding")

RECIPE {
    type = 'recipe',
    name = 'fawogae-mk03-breeder',
    category = 'fawogae',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'fawogae-spore-mk03', amount = 10},
        {type = 'fluid', name = 'hydrogen', amount = 300},
        {type = 'item', name = 'fertilizer', amount = 5},
        {type = 'item', name = 'fe-biomass', amount = 10},
        {type = 'item', name = 'al-biomass', amount = 10},
        {type = 'fluid', name = 'blood', amount = 100},
        },
    results = {
        {type = 'item', name = 'fawogae-mk03', amount = 2, },
        {type = 'item', name = 'fawogae-mk03', amount = 1, probability = 0.25},
    },
    --main_product = "fawogae-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-fawogae',
    order = 'zb'
}:add_unlock("artificial-breeding")

RECIPE {
    type = 'recipe',
    name = 'fawogae-mk04-breeder',
    category = 'fawogae',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'fawogae-spore-mk04', amount = 10},
        {type = 'fluid', name = 'hydrogen', amount = 300},
        {type = 'item', name = 'fertilizer', amount = 10},
        {type = 'item', name = 'co-biomass', amount = 20},
        {type = 'item', name = 'ti-biomass', amount = 20},
        {type = 'fluid', name = 'arthropod-blood', amount = 150},
        },
    results = {
        {type = 'item', name = 'fawogae-mk04', amount = 2},
        {type = 'item', name = 'fawogae-mk04', amount = 1, probability = 0.25},
    },
    --main_product = "fawogae-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-fawogae',
    order = 'zc'
}:add_unlock("biased-mutation")
