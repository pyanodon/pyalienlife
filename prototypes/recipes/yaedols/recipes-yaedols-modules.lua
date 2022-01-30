
--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--
--WIP--

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

--mk03--
--WIP--

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

--mk04--
--WIP--

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
