--------------------------TUUPHRAS-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'tuuphra-sample',
    category = 'nursery',
    enabled = false,
    energy_required = 200,
    ingredients = {
        {type = 'item', name = 'alien-sample-02', amount = 2},
        {type = 'item', name = 'cdna', amount = 3},
        {type = 'item', name = 'bio-sample', amount = 5},
        {type = 'item', name = 'tuuphra-codex', amount = 1},
        {type = 'item', name = 'earth-potato-sample', amount = 1},
        {type = 'fluid', name = 'water', amount = 1000},
    },
    results = {
        {type = 'item', name = 'tuuphra', amount = 2},
    },
}:add_unlock("tuuphra")

RECIPE {
    type = 'recipe',
    name = 'tuuphra-codex',
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
        {type = 'item', name = 'tuuphra-codex', amount = 1},
    },
}:add_unlock("tuuphra")

RECIPE {
    type = 'recipe',
    name = 'earth-potato-sample',
    category = 'data-array',
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = 'item', name = 'steel-chest', amount = 1},
        {type = 'item', name = 'logistic-science-pack', amount = 100},
        {type = 'item', name = 'tuuphra-codex', amount = 1},
    },
    results = {
        {type = 'item', name = 'earth-potato-sample', amount = 1},
    },
}:add_unlock("tuuphra")

---breeding---

-----SEEDS----

RECIPE {
    type = "recipe",
    name = "tuuphra-seeds",
    category = "nursery",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "tuuphra", amount = 2},
    },
    results = {
        {type = "item", name = "tuuphra-seeds", amount = 8}
    },
}:add_unlock("tuuphra")

RECIPE {
    type = 'recipe',
    name = 'replicator-tuuphra',
    category = 'advanced-crafting',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'tuuphra-codex', amount = 1},
        {type = 'item', name = 'tuuphra-seeds', amount = 200},
        {type = 'item', name = 'titanium-plate', amount = 100},
        {type = 'item', name = 'metallic-glass', amount = 2},
        {type = 'item', name = 'biofilm', amount = 20},
        {type = 'item', name = 'plastic-bar', amount = 100},
        {type = 'item', name = 'blanket-chassi', amount = 1},
        {type = 'item', name = 'fertilizer', amount = 20},
    },
    results = {
        {type = 'item', name = 'replicator-tuuphra', amount = 1},
    },
}:add_unlock("mega-farm-tuuphra"):add_ingredient({type = "item", name = "nems", amount = 10}):add_ingredient({type = "item", name = "carbon-nanotube", amount = 10})

---UPDATES---
RECIPE {
    type = 'recipe',
    name = 'tuuphra-mk02',
    category = 'tuuphra',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'tuuphra', amount = 2},
        {type = 'item', name = 'tuuphra-seeds', amount = 10},
        {type = 'fluid', name = 'carbon-dioxide', amount = 300},
        {type = 'item', name = 'manure', amount = 15},
        {type = 'item', name = 'coarse', amount = 20},
        {type = 'item', name = 'soil', amount = 100},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'tuuphra-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'tuuphra', amount = 1, probability = 0.5},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "tuuphra-mk02",
    icons =
        {
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png'},
            {icon = "__pyalienlifegraphics__/graphics/icons/tuuphra.png", icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}}
        },
    icon_size = 64,
    subgroup = 'py-alienlife-tuuphra',
    order = 'za'
}:add_unlock("selective-breeding")

RECIPE {
    type = 'recipe',
    name = 'tuuphra-mk03',
    category = 'tuuphra',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'tuuphra-mk02', amount = 1},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'fluid', name = 'carbon-dioxide', amount = 300},
        {type = 'item', name = 'manure', amount = 15},
        {type = 'item', name = 'coarse', amount = 20},
        {type = 'item', name = 'soil', amount = 100},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'tuuphra', amount = 1, probability = 0.8},
        {type = 'item', name = 'tuuphra-mk02', amount = 1, probability = 0.01},
        {type = 'item', name = 'tuuphra-mk03', amount = 1, probability = 0.004},
    },
    --main_product = "tuuphra-mk03",
    icons =
        {
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png'},
            {icon = "__pyalienlifegraphics__/graphics/icons/tuuphra.png", icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-tuuphra',
    order = 'zb'
}:add_unlock("artificial-breeding")

RECIPE {
    type = 'recipe',
    name = 'tuuphra-mk04',
    category = 'tuuphra',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'tuuphra-mk03', amount = 1},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'fluid', name = 'carbon-dioxide', amount = 300},
        {type = 'item', name = 'manure', amount = 15},
        {type = 'item', name = 'coarse', amount = 20},
        {type = 'item', name = 'soil', amount = 100},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'tuuphra', amount = 1, probability = 0.8},
        {type = 'item', name = 'tuuphra-mk02', amount = 1, probability = 0.15},
        {type = 'item', name = 'tuuphra-mk03', amount = 1, probability = 0.01},
        {type = 'item', name = 'tuuphra-mk04', amount = 1, probability = 0.003},
    },
    --main_product = "tuuphra-mk04",
    icons =
        {
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png'},
            {icon = "__pyalienlifegraphics__/graphics/icons/tuuphra.png", icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-tuuphra',
    order = 'zc'
}:add_unlock("biased-mutation")


--Secondary Upgrade Recipes--
--SUR--
--Done--
--mk02--

RECIPE {
    type = 'recipe',
    name = 'tuuphra-mk02-breeder',
    category = 'tuuphra',
    enabled = false,
    energy_required = 200,
    ingredients = {
        {type = 'item', name = 'tuuphra-mk02', amount = 1},
        {type = 'fluid', name = 'sulfuric-acid', amount = 300},
        {type = 'item', name = 'lime', amount = 50},
        {type = 'item', name = 'fertilizer', amount = 30},
        {type = 'item', name = 'biomass', amount = 100},
        {type = 'fluid', name = 'liquid-manure', amount = 200},
        },
    results = {
        {type = 'item', name = 'tuuphra-mk02', amount_min = 3, amount_max = 10},
    },
    --main_product = "tuuphra-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/tuuphra.png", icon_size = 64},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png', icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-tuuphra',
    order = 'za'
}:add_unlock("selective-breeding"):replace_ingredient("sulfuric-acid", "phosphoric-acid")

--mk03--

RECIPE {
    type = 'recipe',
    name = 'tuuphra-mk03-breeder',
    category = 'tuuphra',
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = 'item', name = 'tuuphra-mk03', amount = 1},
        {type = 'fluid', name = 'sulfuric-acid', amount = 300},
        {type = 'item', name = 'sporopollenin', amount = 50},
        {type = 'item', name = 'seeds-extract-01', amount = 50},
        {type = 'item', name = 'fertilizer', amount = 60},
        {type = 'item', name = 'ni-biomass', amount = 50},
        {type = 'fluid', name = 'liquid-manure', amount = 200},
        },
    results = {
        {type = 'item', name = 'tuuphra-mk03', amount_min = 5, amount_max = 10},
    },
    --main_product = "tuuphra-mk03",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/tuuphra.png", icon_size = 64},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png', icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-tuuphra',
    order = 'zb'
}:add_unlock("artificial-breeding"):replace_ingredient("sulfuric-acid", "phosphoric-acid")

--mk04--

RECIPE {
    type = 'recipe',
    name = 'tuuphra-mk04-breeder',
    category = 'tuuphra',
    enabled = false,
    energy_required = 400,
    ingredients = {
        {type = 'item', name = 'tuuphra-mk04', amount = 1},
        {type = 'fluid', name = 'autoantigens', amount = 300},
        {type = 'item', name = 'subdermal-chemosnare', amount = 4},
        {type = 'item', name = 'seeds-extract-01', amount = 50},
        {type = 'item', name = 'fertilizer', amount = 60},
        {type = 'item', name = 'au-biomass', amount = 50},
        {type = 'fluid', name = 'liquid-manure', amount = 200},
        },
    results = {
        {type = 'item', name = 'tuuphra-mk04', amount_min = 7, amount_max = 10},
    },
    --main_product = "tuuphra-mk04",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/tuuphra.png", icon_size = 64},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png', icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-tuuphra',
    order = 'zc'
}:add_unlock("biased-mutation")
