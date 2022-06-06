
--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'kmauts-mk02',
    category = 'kmauts',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'kmauts', amount = 2},
        {type = 'item', name = 'kmauts-ration', amount = 2},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'rennea', amount = 5},
        {type = 'item', name = 'caged-ulric', amount = 1},
        {type = 'item', name = 'water-barrel', amount = 4},
        },
    results = {
        {type = 'item', name = 'kmauts-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'kmauts', amount = 1, probability = 0.5},
        {type = 'item', name = 'empty-barrel', amount = 4},
    },
    --main_product = "kmauts-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-kmauts',
    order = 'za'
}:add_unlock("kmauts-mk02")

--mk03--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'kmauts-mk03',
    category = 'kmauts',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'kmauts', amount = 2},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'kmauts-ration', amount = 2},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'rennea', amount = 5},
        {type = 'item', name = 'caged-ulric', amount = 1},
        {type = 'item', name = 'water-barrel', amount = 4},
        },
    results = {
        {type = 'item', name = 'kmauts-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'kmauts', amount = 1, probability = 0.6},
        {type = 'item', name = 'empty-barrel', amount = 4},
    },
    --main_product = "kmauts-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-kmauts',
    order = 'zb'
}:add_unlock("kmauts-mk03")

--mk04--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'kmauts-mk04',
    category = 'kmauts',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'kmauts', amount = 2},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'kmauts-ration', amount = 2},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'rennea', amount = 5},
        {type = 'item', name = 'caged-ulric', amount = 1},
        {type = 'item', name = 'water-barrel', amount = 4},
        },
    results = {
        {type = 'item', name = 'kmauts-mk04', amount = 1, probability = 0.003},
        {type = 'item', name = 'kmauts', amount = 1, probability = 0.6},
        {type = 'item', name = 'empty-barrel', amount = 4},
    },
    --main_product = "kmauts-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-kmauts',
    order = 'zc'
}:add_unlock("kmauts-mk04")
