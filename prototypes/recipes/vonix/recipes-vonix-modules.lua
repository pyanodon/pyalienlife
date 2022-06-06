
--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'vonix-mk02',
    category = 'vonix',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'vonix', amount = 2},
        {type = 'item', name = 'caged-mukmoux', amount = 1},
        {type = 'item', name = 'guts', amount = 5},
        {type = 'item', name = 'bedding', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 15},
        },
    results = {
        {type = 'item', name = 'vonix-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'empty-barrel', amount = 15},
        {type = 'item', name = 'vonix', amount = 1, probability = 0.5},
    },
    --main_product = "vonix-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-vonix',
    order = 'za'
}:add_unlock("vonix-mk02")

--mk03--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'vonix-mk03',
    category = 'vonix',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'vonix', amount = 2},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'caged-mukmoux', amount = 1},
        {type = 'item', name = 'guts', amount = 5},
        {type = 'item', name = 'bedding', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 15},
        },
    results = {
        {type = 'item', name = 'vonix-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'empty-barrel', amount = 15},
        {type = 'item', name = 'vonix', amount = 1, probability = 0.6},
    },
    --main_product = "vonix-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-vonix',
    order = 'zb'
}:add_unlock("vonix-mk03")

--mk04--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'vonix-mk04',
    category = 'vonix',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'vonix', amount = 2},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'caged-mukmoux', amount = 1},
        {type = 'item', name = 'guts', amount = 5},
        {type = 'item', name = 'bedding', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 15},
        },
    results = {
        {type = 'item', name = 'vonix-mk04', amount = 1, probability = 0.003},
        {type = 'item', name = 'empty-barrel', amount = 15},
        {type = 'item', name = 'vonix', amount = 1, probability = 0.7},
    },
    --main_product = "vonix-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-vonix',
    order = 'zc'
}:add_unlock("vonix-mk04")
