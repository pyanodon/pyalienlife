
--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'fish-mk02',
    category = 'fish-farm',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'fish', amount = 20},
        {type = 'item', name = 'fish-food-01', amount = 2},
        {type = 'item', name = 'filtration-media', amount = 5},
        {type = 'item', name = "seaweed", amount = 10},
        {type = 'fluid', name = 'phytoplankton', amount = 60},
        },
    results = {
        {type = 'item', name = 'fish-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'fish', amount = 10, probability = 0.5},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "fish-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-fish',
    order = 'za'
}:add_unlock("fish-mk02")

--mk03--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'fish-mk03',
    category = 'fish-farm',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'fish', amount = 20},
        {type = 'item', name = 'fish-food-02', amount = 3},
        {type = 'item', name = 'alien-sample-02', amount = 1},
        {type = 'item', name = 'filtration-media', amount = 5},
        {type = 'item', name = "seaweed", amount = 10},
        {type = 'fluid', name = 'phytoplankton', amount = 60},
        },
    results = {
        {type = 'item', name = 'fish-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'fish', amount = 10, probability = 0.6},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "fish-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-fish',
    order = 'zb'
}:add_unlock("fish-mk03")

--mk04--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'fish-mk04',
    category = 'fish-farm',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'fish', amount = 20},
        {type = 'item', name = 'fish-food-02', amount = 3},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'filtration-media', amount = 5},
        {type = 'item', name = "seaweed", amount = 10},
        {type = 'fluid', name = 'phytoplankton', amount = 60},
        },
    results = {
        {type = 'item', name = 'fish-mk04', amount = 10, probability = 0.003},
        {type = 'item', name = 'fish', amount = 1, probability = 0.7},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "fish-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-fish',
    order = 'zc'
}:add_unlock("fish-mk04")
