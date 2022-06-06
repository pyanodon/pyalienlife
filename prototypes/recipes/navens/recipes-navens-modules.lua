
--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'navens-mk02',
    category = 'navens',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'navens', amount = 2},
        {type = 'item', name = 'navens-spore', amount = 5},
        {type = 'item', name = 'fungal-substrate-02', amount = 5},
        {type = 'item', name = 'guts', amount = 10},
        {type = 'item', name = 'manure', amount = 10},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'navens-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'navens', amount = 1, probability = 0.5},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "navens-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-navens',
    order = 'za'
}:add_unlock("navens-mk02")

--mk03--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'navens-mk03',
    category = 'navens',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'navens', amount = 2},
        {type = 'item', name = 'navens-spore', amount = 5},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'fungal-substrate-02', amount = 5},
        {type = 'item', name = 'guts', amount = 10},
        {type = 'item', name = 'manure', amount = 10},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'navens-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'navens', amount = 1, probability = 0.6},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "navens-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-navens',
    order = 'zb'
}:add_unlock("navens-mk03")

--mk04--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'navens-mk04',
    category = 'navens',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'navens', amount = 2},
        {type = 'item', name = 'navens-spore', amount = 5},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'fungal-substrate-02', amount = 5},
        {type = 'item', name = 'guts', amount = 10},
        {type = 'item', name = 'manure', amount = 10},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'navens-mk04', amount = 1, probability = 0.003},
        {type = 'item', name = 'navens', amount = 1, probability = 0.7},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "navens-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-navens',
    order = 'zc'
}:add_unlock("navens-mk04")
