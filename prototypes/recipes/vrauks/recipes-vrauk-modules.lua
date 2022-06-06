
--Secondary Upgrade Recipes--
--SUR--
--WIP--

--MK02--
--DONE--

RECIPE {
    type = 'recipe',
    name = 'vrauks-mk02',
    category = 'vrauks',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'cocoon', amount = 50},
        {type = 'item', name = 'vrauks-food-01', amount = 2},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'saps', amount = 8},
        {type = 'item', name = 'native-flora', amount = 15},
        {type = 'item', name = 'water-barrel', amount = 5},
        },
    results = {
        {type = 'item', name = 'vrauks-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'vrauks', amount_min = 1, amount_max = 50, probability = 0.05},
        {type = 'item', name = 'empty-barrel', amount = 5},
    },
    --main_product = "vrauks-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-vrauks',
    order = 'za'
}:add_unlock("vrauks-mk02")

RECIPE {
    type = 'recipe',
    name = 'vrauks-mk02-breeder',
    category = 'vrauks',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'vrauks-mk02', amount = 1},
        {type = 'item', name = 'cocoon-mk02', amount = 8},
        {type = 'item', name = 'vrauks-food-01', amount = 4},
        {type = 'item', name = 'bedding', amount = 2},
        {type = 'item', name = 'saps', amount = 8},
        {type = 'item', name = 'native-flora', amount = 15},
        {type = 'item', name = 'sea-sponge', amount = 5},
        {type = 'item', name = 'water-barrel', amount = 5},
        },
    results = {
        {type = 'item', name = 'vrauks-mk02', amount = 1, probability = 0.95},
        {type = 'item', name = 'vrauks-mk02', amount = 1},
        {type = 'item', name = 'empty-barrel', amount = 5},
    },
    --main_product = "vrauks-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/vrauks.png"},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png', icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-vrauks',
    order = 'za'
}:add_unlock("vrauks-mk02")

RECIPE {
    type = 'recipe',
    name = 'vrauks-mk02-cocoon-1',
    category = 'vrauks',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'vrauks-mk02', amount = 2},
        {type = 'item', name = 'vrauks-food-01', amount = 4},
        {type = 'item', name = 'bedding', amount = 2},
        {type = 'item', name = 'saps', amount = 8},
        {type = 'item', name = 'native-flora', amount = 15},
        {type = 'item', name = 'sea-sponge', amount = 5},
        {type = 'item', name = 'water-barrel', amount = 5},
        },
    results = {
        {type = 'item', name = 'cocoon-mk02', amount_min = 4, amount_max = 7},
        {type = 'item', name = 'vrauks-mk02', amount = 2, probability = 0.99},
        {type = 'item', name = 'empty-barrel', amount = 5},
    },
    main_product = "cocoon-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/vrauks.png"},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png', icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-vrauks',
    order = 'za'
}:add_unlock("vrauks-mk02")

--MK03--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'vrauks-mk03',
    category = 'vrauks',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'cocoon-mk02', amount = 50},
        {type = 'item', name = 'vrauks-food-02', amount = 3},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'saps', amount = 8},
        {type = 'item', name = 'native-flora', amount = 15},
        {type = 'item', name = 'water-barrel', amount = 5},
        },
    results = {
        {type = 'item', name = 'vrauks-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'vrauks-mk02', amount_min = 1, amount_max = 50, probability = 0.1},
        {type = 'item', name = 'empty-barrel', amount = 5},
    },
    --main_product = "vrauks-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-vrauks',
    order = 'zb'
}:add_unlock("vrauks-mk03")

RECIPE {
    type = 'recipe',
    name = 'vrauks-mk03-breeder',
    category = 'vrauks',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'vrauks-mk03', amount = 1},
        {type = 'item', name = 'cocoon-mk03', amount = 1},
        {type = 'item', name = 'vrauks-food-02', amount = 3},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'saps', amount = 8},
        {type = 'item', name = 'native-flora', amount = 15},
        {type = 'item', name = 'sea-sponge', amount = 5},
        {type = 'item', name = 'water-barrel', amount = 5},
        },
    results = {
        {type = 'item', name = 'vrauks-mk03', amount = 1, probability = 0.95},
        {type = 'item', name = 'vrauks-mk03', amount = 1},
        {type = 'item', name = 'empty-barrel', amount = 5},
    },
    --main_product = "vrauks-mk03",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/vrauks.png"},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png', icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-vrauks',
    order = 'zb'
}:add_unlock("vrauks-mk03")

--MK04--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'vrauks-mk04',
    category = 'vrauks',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'cocoon-mk03', amount = 50},
        {type = 'item', name = 'vrauks-food-02', amount = 3},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'saps', amount = 8},
        {type = 'item', name = 'native-flora', amount = 15},
        {type = 'item', name = 'water-barrel', amount = 5},
        },
    results = {
        {type = 'item', name = 'vrauks-mk04', amount = 1, probability = 0.003},
        {type = 'item', name = 'vrauks-mk03', amount_min = 1, amount_max = 50, probability = 0.2},
        {type = 'item', name = 'empty-barrel', amount = 5},
    },
    --main_product = "vrauks-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-vrauks',
    order = 'zc'
}:add_unlock("vrauks-mk04")

RECIPE {
    type = 'recipe',
    name = 'vrauks-mk04-breeder',
    category = 'vrauks',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'vrauks-mk04', amount = 1},
        {type = 'item', name = 'cocoon-mk04', amount = 1},
        {type = 'item', name = 'vrauks-food-02', amount = 3},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'saps', amount = 8},
        {type = 'item', name = 'native-flora', amount = 15},
        {type = 'item', name = 'sea-sponge', amount = 5},
        {type = 'item', name = 'water-barrel', amount = 5},
        },
    results = {
        {type = 'item', name = 'vrauks-mk04', amount = 1, probability = 0.95},
        {type = 'item', name = 'vrauks-mk04', amount = 1},
        {type = 'item', name = 'empty-barrel', amount = 5},
    },
    --main_product = "vrauks-mk04",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/vrauks.png"},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png', icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-vrauks',
    order = 'zc'
}:add_unlock("vrauks-mk04")
