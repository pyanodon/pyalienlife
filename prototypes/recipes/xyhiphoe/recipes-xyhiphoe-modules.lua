
--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'xyhiphoe-mk02',
    category = 'xyhiphoe',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'xyhiphoe', amount = 2},
        {type = 'item', name = 'fish-food-02', amount = 2},
        {type = 'item', name = 'filtration-media', amount = 5},
        {type = 'item', name = 'saps', amount = 6},
        {type = 'fluid', name = 'pressured-water', amount = 3000},
        },
    results = {
        {type = 'item', name = 'xyhiphoe-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'xyhiphoe', amount = 1, probability = 0.5},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "xyhiphoe-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-xyhiphoe',
    order = 'za'
}:add_unlock("selective-breeding"):replace_ingredient("saps", "blood-meal")

--mk03--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'xyhiphoe-mk03',
    category = 'xyhiphoe',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'xyhiphoe', amount = 2},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'fish-food-02', amount = 2},
        {type = 'item', name = 'filtration-media', amount = 5},
        {type = 'item', name = 'saps', amount = 6},
        {type = 'fluid', name = 'pressured-water', amount = 3000},
        },
    results = {
        {type = 'item', name = 'xyhiphoe-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'xyhiphoe', amount = 1, probability = 0.6},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "xyhiphoe-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-xyhiphoe',
    order = 'zb'
}:add_unlock("artificial-breeding"):replace_ingredient("saps", "blood-meal")

--mk04--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'xyhiphoe-mk04',
    category = 'xyhiphoe',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'xyhiphoe', amount = 2},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'fish-food-02', amount = 2},
        {type = 'item', name = 'filtration-media', amount = 5},
        {type = 'item', name = 'saps', amount = 6},
        {type = 'fluid', name = 'pressured-water', amount = 3000},
        },
    results = {
        {type = 'item', name = 'xyhiphoe-mk04', amount = 1, probability = 0.003},
        {type = 'item', name = 'xyhiphoe', amount = 1, probability = 0.7},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "xyhiphoe-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-xyhiphoe',
    order = 'zc'
}:add_unlock("biased-mutation"):replace_ingredient("saps", "blood-meal")
