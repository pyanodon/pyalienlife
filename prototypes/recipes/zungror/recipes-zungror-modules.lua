
--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'zungror-mk02',
    category = 'rc-zungror',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'zungror', amount = 2},
        {type = 'item', name = 'caged-mukmoux', amount = 1},
        {type = 'item', name = 'guts', amount = 5},
        {type = 'item', name = 'bedding', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 15},
        },
    results = {
        {type = 'item', name = 'zungror-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'empty-barrel', amount = 15},
        {type = 'item', name = 'zungror', amount = 1, probability = 0.5},
    },
    main_product = "zungror-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk02.png", icon_size = 64},
        {icon = '__pyalienlifegraphics__/graphics/icons/zungror.png', icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = 'py-alienlife-zungror',
    order = 'za'
}:add_unlock("zungror-mk02")

--mk03--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'zungror-mk03',
    category = 'rc-zungror',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'zungror', amount = 2},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'caged-mukmoux', amount = 1},
        {type = 'item', name = 'guts', amount = 5},
        {type = 'item', name = 'bedding', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 15},
        },
    results = {
        {type = 'item', name = 'zungror-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'empty-barrel', amount = 15},
        {type = 'item', name = 'zungror', amount = 1, probability = 0.6},
    },
    main_product = "zungror-mk03",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk03.png", icon_size = 64},
        {icon = '__pyalienlifegraphics__/graphics/icons/zungror.png', icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = 'py-alienlife-zungror',
    order = 'zb'
}:add_unlock("zungror-mk03")

--mk04--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'zungror-mk04',
    category = 'rc-zungror',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'zungror', amount = 2},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'caged-mukmoux', amount = 1},
        {type = 'item', name = 'guts', amount = 5},
        {type = 'item', name = 'bedding', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 15},
        },
    results = {
        {type = 'item', name = 'zungror-mk04', amount = 1, probability = 0.003},
        {type = 'item', name = 'empty-barrel', amount = 15},
        {type = 'item', name = 'zungror', amount = 1, probability = 0.7},
    },
    main_product = "zungror-mk04",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk04.png", icon_size = 64},
        {icon = '__pyalienlifegraphics__/graphics/icons/zungror.png', icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = 'py-alienlife-zungror',
    order = 'zc'
}:add_unlock("zungror-mk04")
