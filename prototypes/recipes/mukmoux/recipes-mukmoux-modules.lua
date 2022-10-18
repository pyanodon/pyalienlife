
--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'mukmoux-mk02',
    category = 'rc-mukmoux',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'mukmoux', amount = 2},
        {type = 'item', name = 'mukmoux-food-01', amount = 2},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'salt', amount = 10},
        {type = 'item', name = 'fawogae', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 6},
        },
    results = {
        {type = 'item', name = 'mukmoux-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'empty-barrel', amount = 6},
        {type = 'item', name = 'mukmoux', amount = 1, probability = 0.5},
    },
    --main_product = "mukmoux-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk02.png", icon_size = 64},
        {icon = '__pyalienlifegraphics__/graphics/icons/mukmoux.png', icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = 'py-alienlife-mukmoux',
    order = 'za'
}:add_unlock("mukmoux-mk02")

--mk03--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'mukmoux-mk03',
    category = 'rc-mukmoux',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'mukmoux', amount = 2},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'mukmoux-food-02', amount = 3},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'salt', amount = 10},
        {type = 'item', name = 'fawogae', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 6},
        },
    results = {
        {type = 'item', name = 'mukmoux-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'empty-barrel', amount = 6},
        {type = 'item', name = 'mukmoux', amount = 1, probability = 0.6},
    },
    --main_product = "mukmoux-mk03",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk03.png", icon_size = 64},
        {icon = '__pyalienlifegraphics__/graphics/icons/mukmoux.png', icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = 'py-alienlife-mukmoux',
    order = 'zb'
}:add_unlock("mukmoux-mk03")

--mk04--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'mukmoux-mk04',
    category = 'rc-mukmoux',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'mukmoux', amount = 2},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'mukmoux-food-02', amount = 3},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'salt', amount = 10},
        {type = 'item', name = 'fawogae', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 6},
        },
    results = {
        {type = 'item', name = 'mukmoux-mk04', amount = 1, probability = 0.003},
        {type = 'item', name = 'empty-barrel', amount = 6},
        {type = 'item', name = 'mukmoux', amount = 1, probability = 0.7},
    },
    --main_product = "mukmoux-mk04",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk04.png", icon_size = 64},
        {icon = '__pyalienlifegraphics__/graphics/icons/mukmoux.png', icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = 'py-alienlife-mukmoux',
    order = 'zc'
}:add_unlock("mukmoux-mk04")
