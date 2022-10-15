
--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'korlex-mk02',
    category = 'rc',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'korlex', amount = 2},
        {type = 'item', name = 'korlex-food-01', amount = 2},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'salt', amount = 10},
        {type = 'item', name = 'rennea', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 6},
        },
    results = {
        {type = 'item', name = 'korlex-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'empty-barrel', amount = 6},
        {type = 'item', name = 'korlex', amount = 1, probability = 0.5},
    },
    --main_product = "korlex-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk02.png", icon_size = 64},
        {icon = '__pyalienlifegraphics__/graphics/icons/korlex.png', icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = 'py-alienlife-korlex',
    order = 'za'
}:add_unlock("korlex-mk02")

--mk03--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'korlex-mk03',
    category = 'rc',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'korlex', amount = 2},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'korlex-food-02', amount = 3},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'salt', amount = 10},
        {type = 'item', name = 'rennea', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 6},
        },
    results = {
        {type = 'item', name = 'korlex-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'empty-barrel', amount = 6},
        {type = 'item', name = 'korlex', amount = 1, probability = 0.6},
    },
    --main_product = "korlex-mk03",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk03.png", icon_size = 64},
        {icon = '__pyalienlifegraphics__/graphics/icons/korlex.png', icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = 'py-alienlife-korlex',
    order = 'zb'
}:add_unlock("korlex-mk03")

--mk04--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'korlex-mk04',
    category = 'rc',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'korlex', amount = 2},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'korlex-food-02', amount = 3},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'salt', amount = 10},
        {type = 'item', name = 'rennea', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 6},
        },
    results = {
        {type = 'item', name = 'korlex-mk04', amount = 1, probability = 0.003},
        {type = 'item', name = 'empty-barrel', amount = 6},
        {type = 'item', name = 'korlex', amount = 1, probability = 0.7},
    },
    --main_product = "korlex-mk04",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk04.png", icon_size = 64},
        {icon = '__pyalienlifegraphics__/graphics/icons/korlex.png', icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = 'py-alienlife-korlex',
    order = 'zc'
}:add_unlock("korlex-mk04")
