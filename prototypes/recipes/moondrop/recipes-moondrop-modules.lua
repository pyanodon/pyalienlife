
--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'moondrop-mk02',
    category = 'moon',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'moondrop', amount = 2},
        {type = 'item', name = 'moondrop-seeds', amount = 10},
        {type = 'fluid', name = 'hydrogen', amount = 300},
        {type = 'item', name = 'fertilizer', amount = 10},
        {type = 'item', name = 'soil', amount = 100},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'moondrop-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'moondrop', amount = 1, probability = 0.5},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    main_product = "moondrop-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-ralesia',
    order = 'za'
}:add_unlock("moondrop-mk02")

--mk03--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'moondrop-mk03',
    category = 'moon',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'moondrop', amount = 2},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'moondrop-seeds', amount = 10},
        {type = 'fluid', name = 'hydrogen', amount = 300},
        {type = 'item', name = 'fertilizer', amount = 10},
        {type = 'item', name = 'soil', amount = 100},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'moondrop-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'moondrop', amount = 1, probability = 0.6},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    main_product = "moondrop-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-ralesia',
    order = 'zb'
}:add_unlock("moondrop-mk03")

--mk04--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'moondrop-mk04',
    category = 'moon',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'moondrop', amount = 2},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'moondrop-seeds', amount = 10},
        {type = 'fluid', name = 'hydrogen', amount = 300},
        {type = 'item', name = 'fertilizer', amount = 10},
        {type = 'item', name = 'soil', amount = 100},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'moondrop-mk04', amount = 1, probability = 0.003},
        {type = 'item', name = 'moondrop', amount = 1, probability = 0.7},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    main_product = "moondrop-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-ralesia',
    order = 'zc'
}:add_unlock("moondrop-mk04")
