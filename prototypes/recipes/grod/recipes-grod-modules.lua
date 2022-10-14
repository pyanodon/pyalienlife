
--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'grod-mk02',
    category = 'grod',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'grod', amount = 2},
        {type = 'item', name = 'grod-seeds', amount = 10},
        {type = 'fluid', name = 'carbon-dioxide', amount = 300, fluidbox_index = 2},
        {type = 'item', name = 'fertilizer', amount = 10},
        {type = 'item', name = 'limestone', amount = 10},
        {type = 'fluid', name = 'water', amount = 1000, fluidbox_index = 1},
        },
    results = {
        {type = 'item', name = 'grod-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'grod', amount = 1, probability = 0.5},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    main_product = "grod-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-grod',
    order = 'za'
}:add_unlock("grod-mk02")

--mk03--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'grod-mk03',
    category = 'grod',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'grod', amount = 2},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'grod-seeds', amount = 10},
        {type = 'fluid', name = 'carbon-dioxide', amount = 300, fluidbox_index = 2},
        {type = 'item', name = 'fertilizer', amount = 10},
        {type = 'item', name = 'limestone', amount = 10},
        {type = 'fluid', name = 'water', amount = 1000, fluidbox_index = 1},
        },
    results = {
        {type = 'item', name = 'grod-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'grod', amount = 1, probability = 0.6},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "grod-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-grod',
    order = 'zb'
}:add_unlock("grod-mk03")

--mk04--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'grod-mk04',
    category = 'grod',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'grod', amount = 2},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'grod-seeds', amount = 10},
        {type = 'fluid', name = 'carbon-dioxide', amount = 300, fluidbox_index = 2},
        {type = 'item', name = 'fertilizer', amount = 10},
        {type = 'item', name = 'limestone', amount = 10},
        {type = 'fluid', name = 'water', amount = 1000, fluidbox_index = 1},
        },
    results = {
        {type = 'item', name = 'grod-mk04', amount = 1, probability = 0.003},
        {type = 'item', name = 'grod', amount = 1, probability = 0.7},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "grod-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-grod',
    order = 'zc'
}:add_unlock("grod-mk04")
