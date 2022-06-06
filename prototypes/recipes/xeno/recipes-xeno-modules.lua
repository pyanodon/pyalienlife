
--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'xeno-mk02',
    category = 'xeno',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'xeno', amount = 2},
        {type = 'item', name = 'caged-mukmoux', amount = 1},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'bones', amount = 10},
        {type = 'item', name = 'fish', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 6},
        },
    results = {
        {type = 'item', name = 'xeno-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'empty-barrel', amount = 6},
        {type = 'item', name = 'xeno', amount = 1, probability = 0.5},
    },
    --main_product = "xeno-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-xeno',
    order = 'za'
}:add_unlock("xeno-mk02")

--mk03--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'xeno-mk03',
    category = 'xeno',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'xeno', amount = 2},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'caged-mukmoux', amount = 1},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'bones', amount = 10},
        {type = 'item', name = 'fish', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 6},
        },
    results = {
        {type = 'item', name = 'xeno-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'empty-barrel', amount = 6},
        {type = 'item', name = 'xeno', amount = 1, probability = 0.6},
    },
    --main_product = "xeno-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-xeno',
    order = 'zb'
}:add_unlock("xeno-mk03")

--mk04--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'xeno-mk04',
    category = 'xeno',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'xeno', amount = 2},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'caged-mukmoux', amount = 1},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'bones', amount = 10},
        {type = 'item', name = 'fish', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 6},
        },
    results = {
        {type = 'item', name = 'xeno-mk04', amount = 1, probability = 0.003},
        {type = 'item', name = 'empty-barrel', amount = 6},
        {type = 'item', name = 'xeno', amount = 1, probability = 0.7},
    },
    --main_product = "xeno-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-xeno',
    order = 'zc'
}:add_unlock("xeno-mk04")
