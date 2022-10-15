
--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'phadai-mk02',
    category = 'rc',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'phadai', amount = 2},
        {type = 'item', name = 'phadai-food-01', amount = 1},
        {type = 'item', name = 'programmable-speaker', amount = 3},
        {type = 'item', name = 'energy-drink', amount = 2},
        {type = 'item', name = 'small-lamp', amount = 5},
        {type = 'item', name = 'water-barrel', amount = 7},
        {type = 'item', name = 'meat', amount = 5},
        },
    results = {
        {type = 'item', name = 'phadai-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'empty-barrel', amount = 7},
        {type = 'item', name = 'phadai', amount = 1, probability = 0.5},
    },
    --main_product = "phadai-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk02.png", icon_size = 64},
        {icon = '__pyalienlifegraphics__/graphics/icons/phadai.png', icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = 'py-alienlife-phadai',
    order = 'za'
}:add_unlock("phadai-mk02")

--mk03--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'phadai-mk03',
    category = 'rc',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'phadai', amount = 2},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'phadai-food-02', amount = 1},
        {type = 'item', name = 'programmable-speaker', amount = 3},
        {type = 'item', name = 'energy-drink', amount = 2},
        {type = 'item', name = 'small-lamp', amount = 5},
        {type = 'item', name = 'water-barrel', amount = 7},
        {type = 'item', name = 'meat', amount = 5},
        },
    results = {
        {type = 'item', name = 'phadai-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'empty-barrel', amount = 7},
        {type = 'item', name = 'phadai', amount = 1, probability = 0.6},
    },
    --main_product = "phadai-mk03",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk03.png", icon_size = 64},
        {icon = '__pyalienlifegraphics__/graphics/icons/phadai.png', icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = 'py-alienlife-phadai',
    order = 'zb'
}:add_unlock("phadai-mk03")

--mk04--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'phadai-mk04',
    category = 'rc',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'phadai', amount = 2},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'phadai-food-02', amount = 1},
        {type = 'item', name = 'programmable-speaker', amount = 3},
        {type = 'item', name = 'energy-drink', amount = 2},
        {type = 'item', name = 'small-lamp', amount = 5},
        {type = 'item', name = 'water-barrel', amount = 7},
        {type = 'item', name = 'meat', amount = 5},
        },
    results = {
        {type = 'item', name = 'phadai-mk04', amount = 1, probability = 0.003},
        {type = 'item', name = 'empty-barrel', amount = 7},
        {type = 'item', name = 'phadai', amount = 1, probability = 0.7},
    },
    --main_product = "phadai-mk04",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk04.png", icon_size = 64},
        {icon = '__pyalienlifegraphics__/graphics/icons/phadai.png', icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = 'py-alienlife-phadai',
    order = 'zc'
}:add_unlock("phadai-mk04")
