
--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'ralesias-mk02',
    category = 'ralesia',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'ralesias', amount = 2},
        {type = 'item', name = 'ralesia-seeds', amount = 10},
        {type = 'fluid', name = 'hydrogen', amount = 300},
        {type = 'item', name = 'fertilizer', amount = 10},
        {type = 'item', name = 'soil', amount = 100},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'ralesias-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'ralesias', amount = 1, probability = 0.5},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    main_product = "ralesias-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-ralesia',
    order = 'za'
}:add_unlock("ralesias-mk02")

--mk03--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'ralesias-mk03',
    category = 'ralesia',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'ralesias', amount = 2},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'ralesia-seeds', amount = 10},
        {type = 'fluid', name = 'hydrogen', amount = 300},
        {type = 'item', name = 'fertilizer', amount = 10},
        {type = 'item', name = 'soil', amount = 100},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'ralesias-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'ralesias', amount = 1, probability = 0.6},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "ralesias-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-ralesia',
    order = 'zb'
}:add_unlock("ralesias-mk03")

--mk04--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'ralesias-mk04',
    category = 'ralesia',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'ralesias', amount = 2},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'ralesia-seeds', amount = 10},
        {type = 'fluid', name = 'hydrogen', amount = 300},
        {type = 'item', name = 'fertilizer', amount = 10},
        {type = 'item', name = 'soil', amount = 100},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'ralesias-mk04', amount = 1, probability = 0.003},
        {type = 'item', name = 'ralesias', amount = 1, probability = 0.7},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "ralesias-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-ralesia',
    order = 'zc'
}:add_unlock("ralesias-mk04")
