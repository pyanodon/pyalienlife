
--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--

RECIPE {
    type = 'recipe',
    name = 'yaedols-mk02',
    category = 'yaedols',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'yaedols', amount = 2},
        {type = 'item', name = 'yaedols-spores', amount = 5},
        {type = 'item', name = 'fungal-substrate-03', amount = 5},
        {type = 'item', name = 'wood', amount = 15},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'yaedols-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'yaedols', amount = 1, probability = 0.5},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "yaedols-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk02.png", icon_size = 64},
            {icon = "__pyalienlifegraphics__/graphics/icons/yaedols.png", icon_size = 64, scale = 0.35},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-yaedols',
    order = 'za'
}:add_unlock("yaedols-mk02")

RECIPE {
    type = 'recipe',
    name = 'yaedols-mk02-breeder',
    category = 'yaedols',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'yaedols-spores-mk02', amount = 10},
        {type = 'fluid', name = 'nitrogen', amount = 400, fluidbox_index = 2},
        {type = 'item', name = 'wood', amount = 10},
        {type = 'item', name = 'fungal-substrate', amount = 2},
        {type = 'item', name = 'cobalt-fluoride', amount = 5},
        {type = 'fluid', name = 'water', amount = 400, fluidbox_index = 1},
        },
    results = {
        {type = 'item', name = 'yaedols-mk02', amount = 2},
        {type = 'item', name = 'yaedols-mk02', amount = 1, probability = 0.25}
    },
    main_product = "yaedols-mk02",
    icons =
    {
        {icon = '__pyalienlifegraphics__/graphics/icons/yaedols.png', icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk02.png", icon_size = 64},
    },
    icon_size = 64,
    subgroup = 'py-alienlife-yaedols',
    order = 'za'
}:add_unlock("yaedols-mk02")

RECIPE {
    type = 'recipe',
    name = 'yaedols-spore-mk02',
    category = 'spore',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'yaedols-mk02', amount = 1},
    },
    results = {
        {type = 'item', name = 'yaedols-spores-mk02', amount = 5},
    },
    main_product = "yaedols-spores-mk02",
}:add_unlock("yaedols-mk02")

--mk03--

RECIPE {
    type = 'recipe',
    name = 'yaedols-mk03',
    category = 'yaedols',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'yaedols-mk02', amount = 2},
        {type = 'item', name = 'yaedols-spores-mk02', amount = 5},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'fungal-substrate-03', amount = 5},
        {type = 'item', name = 'wood', amount = 15},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'yaedols-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'yaedols', amount = 1, probability = 0.6},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "yaedols-mk03",
    icons =
        {
            {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk03.png", icon_size = 64},
            {icon = "__pyalienlifegraphics__/graphics/icons/yaedols.png", icon_size = 64, scale = 0.35},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-yaedols',
    order = 'zb'
}:add_unlock("yaedols-mk03")

RECIPE {
    type = 'recipe',
    name = 'yaedols-mk03-breeder',
    category = 'yaedols',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'yaedols-spores-mk03', amount = 10},
        {type = 'fluid', name = 'liquid-nitrogen', amount = 50, fluidbox_index = 2},
        {type = 'item', name = 'wood', amount = 20},
        {type = 'item', name = 'fungal-substrate-02', amount = 2},
        {type = 'item', name = 'chitosan', amount = 5},
        {type = 'fluid', name = 'water', amount = 400, fluidbox_index = 1},
        },
    results = {
        {type = 'item', name = 'yaedols-mk03', amount = 2},
        {type = 'item', name = 'yaedols-mk03', amount = 1, probability = 0.225}
    },
    main_product = "yaedols-mk03",
    icons =
    {
        {icon = '__pyalienlifegraphics__/graphics/icons/yaedols.png', icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk03.png", icon_size = 64},
    },
    icon_size = 64,
    subgroup = 'py-alienlife-yaedols',
    order = 'za'
}:add_unlock("yaedols-mk03")

RECIPE {
    type = 'recipe',
    name = 'yaedols-spore-mk03',
    category = 'spore',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'yaedols-mk03', amount = 1},
    },
    results = {
        {type = 'item', name = 'yaedols-spores-mk03', amount = 5},
    },
    main_product = "yaedols-spores-mk03",
}:add_unlock("yaedols-mk03")

--mk04--

RECIPE {
    type = 'recipe',
    name = 'yaedols-mk04',
    category = 'yaedols',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'yaedols-mk03', amount = 2},
        {type = 'item', name = 'yaedols-spores-mk03', amount = 5},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'fungal-substrate-03', amount = 5},
        {type = 'item', name = 'wood', amount = 15},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'yaedols-mk04', amount = 1, probability = 0.003},
        {type = 'item', name = 'yaedols', amount = 1, probability = 0.7},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "yaedols-mk04",
    icons =
        {
            {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk04.png", icon_size = 64},
            {icon = "__pyalienlifegraphics__/graphics/icons/yaedols.png", icon_size = 64, scale = 0.35},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-yaedols',
    order = 'zc'
}:add_unlock("yaedols-mk04")

RECIPE {
    type = 'recipe',
    name = 'yaedols-mk04-breeder',
    category = 'yaedols',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'yaedols-spores-mk04', amount = 10},
        {type = 'fluid', name = 'simik-blood', amount = 50, fluidbox_index = 2},
        {type = 'item', name = 'wood', amount = 20},
        {type = 'item', name = 'fungal-substrate-03', amount = 2},
        {type = 'item', name = 'adam42-gen', amount = 2},
        {type = 'fluid', name = 'water', amount = 400, fluidbox_index = 1},
        },
    results = {
        {type = 'item', name = 'yaedols-mk04', amount = 2},
        {type = 'item', name = 'yaedols-mk04', amount = 1, probability = 0.2}
    },
    main_product = "yaedols-mk04",
    icons =
    {
        {icon = '__pyalienlifegraphics__/graphics/icons/yaedols.png', icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk04.png", icon_size = 64},
    },
    icon_size = 64,
    subgroup = 'py-alienlife-yaedols',
    order = 'za'
}:add_unlock("yaedols-mk04")

RECIPE {
    type = 'recipe',
    name = 'yaedols-spore-mk04',
    category = 'spore',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'yaedols-mk04', amount = 1},
    },
    results = {
        {type = 'item', name = 'yaedols-spores-mk04', amount = 5},
    },
    main_product = "yaedols-spores-mk04",
}:add_unlock("yaedols-mk04")