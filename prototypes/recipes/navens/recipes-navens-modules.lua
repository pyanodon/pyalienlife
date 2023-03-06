
--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--

RECIPE {
    type = 'recipe',
    name = 'navens-mk02',
    category = 'navens',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'navens', amount = 2},
        {type = 'item', name = 'navens-spore', amount = 5},
        {type = 'item', name = 'fungal-substrate-02', amount = 5},
        {type = 'item', name = 'guts', amount = 10},
        {type = 'item', name = 'manure', amount = 10},
        {type = 'fluid', name = 'water', amount = 500, fluidbox_index = 2},
        },
    results = {
        {type = 'item', name = 'navens-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'navens', amount = 1, probability = 0.5},
    },
    main_product = "navens-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk02.png", icon_size = 64},
            {icon = "__pyalienlifegraphics__/graphics/icons/navens.png", icon_size = 64, scale = 0.35},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-navens',
    order = 'za'
}:add_unlock("navens-mk02")

RECIPE {
    type = 'recipe',
    name = 'navens-mk02-breeder',
    category = 'navens',
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = 'item', name = 'navens-spore-mk02', amount = 10},
        {type = 'item', name = 'xyhiphoe-mk02', amount = 1},
        {type = 'item', name = 'fungal-substrate-02', amount = 10},
        {type = 'item', name = 'fertilizer', amount = 25},
        {type = 'fluid', name = 'water', amount = 1000, fluidbox_index = 2},
        },
    results = {
        {type = 'item', name = 'navens-mk02', amount = 8},
        {type = 'item', name = 'navens-mk02', amount = 4, probability = 0.5},
    },
    main_product = "navens-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/navens.png", icon_size = 64},
            {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk02.png", icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-navens',
    order = 'za'
}:add_unlock("navens-mk02")

RECIPE {
    type = 'recipe',
    name = 'navens-spore-mk02',
    category = 'spore',
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = 'item', name = 'navens-mk02', amount = 2},
        },
    results = {
        {type = 'item', name = 'navens-spore-mk02', amount = 10},
    },
    main_product = "navens-spore-mk02",
    icons =
    {
        {icon = '__pyalienlifegraphics__/graphics/icons/navens-spore.png', icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk02.png", icon_size = 64},
    },
    icon_size = 64,
    subgroup = 'py-alienlife-navens',
    order = 'za'
}:add_unlock("navens-mk02")

--mk03--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'navens-mk03',
    category = 'navens',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'navens-mk02', amount = 2},
        {type = 'item', name = 'navens-spore-mk02', amount = 5},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'fungal-substrate-02', amount = 5},
        {type = 'item', name = 'guts', amount = 10},
        {type = 'item', name = 'manure', amount = 10},
        {type = 'fluid', name = 'water', amount = 1000, fluidbox_index = 2},
        },
    results = {
        {type = 'item', name = 'navens-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'navens', amount = 1, probability = 0.6},
    },
    main_product = "navens-mk03",
    icons =
        {
            {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk03.png", icon_size = 64},
            {icon = "__pyalienlifegraphics__/graphics/icons/navens.png", icon_size = 64, scale = 0.35},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-navens',
    order = 'zb'
}:add_unlock("navens-mk03")

RECIPE {
    type = 'recipe',
    name = 'navens-mk03-breeder',
    category = 'navens',
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = 'item', name = 'navens-spore-mk03', amount = 10},
        {type = 'item', name = 'xyhiphoe-mk03', amount = 1},
        {type = 'item', name = 'fungal-substrate-03', amount = 10},
        {type = 'item', name = 'fertilizer', amount = 25},
        {type = 'fluid', name = 'nitrogen', amount = 500, fluidbox_index = 1},
        },
    results = {
        {type = 'item', name = 'navens-mk03', amount = 8},
        {type = 'item', name = 'navens-mk03', amount = 4, probability = 0.375},
    },
    main_product = "navens-mk03",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/navens.png", icon_size = 64},
            {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk03.png", icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-navens',
    order = 'zb'
}:add_unlock("navens-mk03")

RECIPE {
    type = 'recipe',
    name = 'navens-spore-mk03',
    category = 'spore',
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = 'item', name = 'navens-mk03', amount = 2},
        },
    results = {
        {type = 'item', name = 'navens-spore-mk03', amount = 10},
    },
    main_product = "navens-spore-mk03",
    icons =
    {
        {icon = '__pyalienlifegraphics__/graphics/icons/navens-spore.png', icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk02.png", icon_size = 64},
    },
    icon_size = 64,
    subgroup = 'py-alienlife-navens',
    order = 'zb'
}:add_unlock("navens-mk03")

--mk04--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'navens-mk04',
    category = 'navens',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'navens-mk03', amount = 2},
        {type = 'item', name = 'navens-spore-mk03', amount = 5},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'fungal-substrate-02', amount = 5},
        {type = 'item', name = 'guts', amount = 10},
        {type = 'item', name = 'manure', amount = 10},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'navens-mk04', amount = 1, probability = 0.003},
        {type = 'item', name = 'navens', amount = 1, probability = 0.7},
    },
    main_product = "navens-mk04",
    icons =
        {
            {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk04.png", icon_size = 64},
            {icon = "__pyalienlifegraphics__/graphics/icons/navens.png", icon_size = 64, scale = 0.35},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-navens',
    order = 'zc'
}:add_unlock("navens-mk04")

RECIPE {
    type = 'recipe',
    name = 'navens-mk04-breeder',
    category = 'navens',
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = 'item', name = 'navens-spore-mk04', amount = 10},
        {type = 'item', name = 'xyhiphoe-mk04', amount = 1},
        {type = 'item', name = 'fungal-substrate-03', amount = 10},
        {type = 'fluid', name = 'bacteria-1', amount = 500, fluidbox_index = 2},
        },
    results = {
        {type = 'item', name = 'navens-mk04', amount = 8},
        {type = 'item', name = 'navens-mk04', amount = 4, probability = 0.25},
    },
    main_product = "navens-mk04",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/navens.png", icon_size = 64},
            {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk04.png", icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-navens',
    order = 'zc'
}:add_unlock("navens-mk04"):add_ingredient({type = 'item', name = 'urea', amount = 25}):replace_ingredient("bacteria-1", "bacteria-2")

RECIPE {
    type = 'recipe',
    name = 'navens-spore-mk04',
    category = 'spore',
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = 'item', name = 'navens-mk04', amount = 2},
        },
    results = {
        {type = 'item', name = 'navens-spore-mk04', amount = 10},
    },
    main_product = "navens-spore-mk04",
    icons =
    {
        {icon = '__pyalienlifegraphics__/graphics/icons/navens-spore.png', icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk04.png", icon_size = 64},
    },
    icon_size = 64,
    subgroup = 'py-alienlife-navens',
    order = 'zc'
}:add_unlock("navens-mk04")