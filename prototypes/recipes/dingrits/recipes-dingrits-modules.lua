
--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'dingrits-mk02',
    category = 'dingrits',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'dingrits', amount = 2},
        {type = 'item', name = 'caged-scrondrix', amount = 1},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'yaedols', amount = 5},
        {type = 'item', name = 'water-barrel', amount = 5},
        },
    results = {
        {type = 'item', name = 'dingrits-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'dingrits', amount = 1, probability = 0.5},
        {type = 'item', name = 'empty-barrel', amount = 5},
    },
    --main_product = "dingrits-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-dingrits',
    order = 'za'
}:add_unlock("selective-breeding")

--mk03--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'dingrits-mk03',
    category = 'dingrits',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'dingrits', amount = 2},
        {type = 'item', name = 'caged-scrondrix', amount = 1},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'yaedols', amount = 5},
        {type = 'item', name = 'water-barrel', amount = 5},
        },
    results = {
        {type = 'item', name = 'dingrits-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'dingrits', amount = 1, probability = 0.6},
        {type = 'item', name = 'empty-barrel', amount = 5},
    },
    --main_product = "dingrits-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-dingrits',
    order = 'zb'
}:add_unlock("artificial-breeding")

--mk04--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'dingrits-mk04',
    category = 'dingrits',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'dingrits', amount = 2},
        {type = 'item', name = 'caged-scrondrix', amount = 1},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'yaedols', amount = 5},
        {type = 'item', name = 'water-barrel', amount = 5},
        },
    results = {
        {type = 'item', name = 'dingrits-mk04', amount = 1, probability = 0.003},
        {type = 'item', name = 'dingrits', amount = 1, probability = 0.7},
        {type = 'item', name = 'empty-barrel', amount = 5},
    },
    --main_product = "dingrits-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-dingrits',
    order = 'zc'
}:add_unlock("biased-mutation")
