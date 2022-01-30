
--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'zipir-mk02',
    category = 'zipir',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'zipir1', amount = 2},
        {type = 'item', name = 'fawogae-substrate', amount = 15},
        {type = 'item', name = 'filtration-media', amount = 5},
        {type = 'item', name = 'fish', amount = 5},
        {type = 'fluid', name = 'pressured-water', amount = 3000},
        },
    results = {
        {type = 'item', name = 'zipir2', amount = 1, probability = 0.005},
        {type = 'item', name = 'zipir1', amount = 1, probability = 0.5},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "zipir-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-zipir',
    order = 'za'
}:add_unlock("selective-breeding"):add_ingredient({type = "item", name = "stone-wool", amount = 4})

--mk03--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'zipir-mk03',
    category = 'zipir',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'zipir1', amount = 2},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'filtration-media', amount = 5},
        {type = 'item', name = 'fish', amount = 5},
        {type = 'fluid', name = 'pressured-water', amount = 3000},
        },
    results = {
        {type = 'item', name = 'zipir3', amount = 1, probability = 0.004},
        {type = 'item', name = 'zipir1', amount = 1, probability = 0.6},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "zipir-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-zipir',
    order = 'zb'
}:add_unlock("artificial-breeding"):replace_ingredient("saps", "blood-meal"):add_ingredient({type = "item", name = "stone-wool", amount = 4})

--mk04--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'zipir-mk04',
    category = 'zipir',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'zipir1', amount = 2},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'filtration-media', amount = 5},
        {type = 'item', name = 'fish', amount = 5},
        {type = 'fluid', name = 'pressured-water', amount = 3000},
        },
    results = {
        {type = 'item', name = 'zipir4', amount = 1, probability = 0.003},
        {type = 'item', name = 'zipir1', amount = 1, probability = 0.7},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "zipir-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-zipir',
    order = 'zc'
}:add_unlock("biased-mutation"):replace_ingredient("saps", "blood-meal"):add_ingredient({type = "item", name = "stone-wool", amount = 4})
