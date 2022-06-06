
--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'scrondrix-mk02',
    category = 'scrondrix',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'scrondrix', amount = 2},
        {type = 'item', name = 'meat', amount = 5},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'salt', amount = 10},
        {type = 'item', name = 'wood-seeds', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 8},
        },
    results = {
        {type = 'item', name = 'scrondrix-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'empty-barrel', amount = 8},
        {type = 'item', name = 'scrondrix', amount = 1, probability = 0.5},
    },
    --main_product = "scrondrix-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-scrondrix',
    order = 'za'
}:add_unlock("scrondrix-mk02")

--mk03--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'scrondrix-mk03',
    category = 'scrondrix',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'scrondrix', amount = 2},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'meat', amount = 5},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'salt', amount = 10},
        {type = 'item', name = 'wood-seeds', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 8},
        },
    results = {
        {type = 'item', name = 'scrondrix-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'empty-barrel', amount = 8},
        {type = 'item', name = 'scrondrix', amount = 1, probability = 0.6},
    },
    --main_product = "scrondrix-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-scrondrix',
    order = 'zb'
}:add_unlock("scrondrix-mk03")

--mk04--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'scrondrix-mk04',
    category = 'scrondrix',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'scrondrix', amount = 2},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'meat', amount = 5},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'salt', amount = 10},
        {type = 'item', name = 'wood-seeds', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 8},
        },
    results = {
        {type = 'item', name = 'scrondrix-mk04', amount = 1, probability = 0.003},
        {type = 'item', name = 'empty-barrel', amount = 8},
        {type = 'item', name = 'scrondrix', amount = 1, probability = 0.7},
    },
    --main_product = "scrondrix-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-scrondrix',
    order = 'zc'
}:add_unlock("scrondrix-mk04")
