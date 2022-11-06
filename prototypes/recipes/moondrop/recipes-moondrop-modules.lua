
--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--

RECIPE {
    type = 'recipe',
    name = 'moondrop-mk02',
    category = 'moon',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'moondrop', amount = 2},
        {type = 'item', name = 'moondrop-seeds', amount = 10},
        {type = 'fluid', name = 'hydrogen', amount = 300, fluidbox_index = 2},
        {type = 'item', name = 'fertilizer', amount = 10},
        {type = 'item', name = 'soil', amount = 100},
        {type = 'fluid', name = 'water', amount = 1000, fluidbox_index = 1},
        },
    results = {
        {type = 'item', name = 'moondrop-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'moondrop', amount = 1, probability = 0.5},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    main_product = "moondrop-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-moon',
    order = 'za'
}:add_unlock("moondrop-mk02")

RECIPE {
    type = 'recipe',
    name = 'moondrop-mk02-breeder',
    category = 'moon',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'moondrop-seeds-mk02', amount = 5},
        {type = 'fluid', name = 'hydrogen', amount = 400, fluidbox_index = 2},
        {type = 'item', name = 'ash', amount = 10},
        {type = 'item', name = 'fertilizer', amount = 5},
        {type = 'fluid', name = 'decalin', amount = 50, fluidbox_index = 1},
        },
    results = {
        {type = 'item', name = 'moondrop-mk02', amount = 5},
    },
    main_product = "moondrop-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/moondrop.png", icon_size = 64},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png', icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-moon',
    order = 'za'
}:add_unlock("moondrop-mk02")

RECIPE {
    type = "recipe",
    name = "moondrop-seeds-mk02",
    category = "nursery",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "moondrop-mk02", amount = 4},
    },
    results = {
        {type = "item", name = "moondrop-mk02", amount = 2},
        {type = "item", name = "moondrop-seeds-mk02", amount = 2},
        {type = "item", name = "moondrop-seeds-mk02", amount = 2, probability = 0.5},
        {type = 'item', name = 'moondrop', amount = 2, probability = 0.5},
        {type = 'item', name = 'moondrop-seeds', amount = 2, probability = 0.5},
    },
    main_product = "moondrop-seeds-mk02",
}:add_unlock("moondrop-mk02")

--mk03--

RECIPE {
    type = 'recipe',
    name = 'moondrop-mk03',
    category = 'moon',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'moondrop-mk02', amount = 2},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'moondrop-seeds-mk02', amount = 10},
        {type = 'fluid', name = 'hydrogen', amount = 300, fluidbox_index = 2},
        {type = 'item', name = 'fertilizer', amount = 10},
        {type = 'item', name = 'soil', amount = 100},
        {type = 'fluid', name = 'water', amount = 1000, fluidbox_index = 1},
        },
    results = {
        {type = 'item', name = 'moondrop-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'moondrop', amount = 1, probability = 0.6},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    main_product = "moondrop-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-ralesia',
    order = 'zb'
}:add_unlock("moondrop-mk04")

RECIPE {
    type = 'recipe',
    name = 'moondrop-mk03-breeder',
    category = 'moon',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'moondrop-seeds-mk03', amount = 5},
        {type = 'fluid', name = 'gasoline', amount = 400, fluidbox_index = 2},
        {type = 'item', name = 'retrovirus', amount = 10},
        {type = 'item', name = 'fertilizer', amount = 5},
        {type = 'item', name = 'cytostatics', amount = 3},
        {type = 'fluid', name = 'decalin', amount = 50, fluidbox_index = 1},
        },
    results = {
        {type = 'item', name = 'moondrop-mk03', amount = 5},
    },
    main_product = "moondrop-mk03",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/moondrop.png", icon_size = 64},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png', icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-moon',
    order = 'za'
}:add_unlock("moondrop-mk04")

RECIPE {
    type = "recipe",
    name = "moondrop-seeds-mk03",
    category = "nursery",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "moondrop-mk03", amount = 4},
    },
    results = {
        {type = "item", name = "moondrop-mk03", amount = 2},
        {type = "item", name = "moondrop-seeds-mk03", amount = 2},
        {type = "item", name = "moondrop-seeds-mk03", amount = 1, probability = 0.5},
        {type = 'item', name = 'moondrop-mk02', amount = 2, probability = 0.5},
        {type = 'item', name = 'moondrop-seeds-mk02', amount = 2, probability = 0.5},
    },
    main_product = "moondrop-seeds-mk03",
}:add_unlock("moondrop-mk04")

--mk04--

RECIPE {
    type = 'recipe',
    name = 'moondrop-mk04',
    category = 'moon',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'moondrop-mk03', amount = 2},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'moondrop-seeds-mk03', amount = 10},
        {type = 'fluid', name = 'hydrogen', amount = 300, fluidbox_index = 2},
        {type = 'item', name = 'fertilizer', amount = 10},
        {type = 'item', name = 'soil', amount = 100},
        {type = 'fluid', name = 'water', amount = 1000, fluidbox_index = 1},
        },
    results = {
        {type = 'item', name = 'moondrop-mk04', amount = 1, probability = 0.003},
        {type = 'item', name = 'moondrop', amount = 1, probability = 0.7},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    main_product = "moondrop-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-ralesia',
    order = 'zc'
}:add_unlock("moondrop-mk05")

RECIPE {
    type = 'recipe',
    name = 'moondrop-mk04-breeder',
    category = 'moon',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'moondrop-seeds-mk04', amount = 5},
        {type = 'fluid', name = 'refsyngas', amount = 400, fluidbox_index = 2},
        {type = 'item', name = 'retrovirus', amount = 10},
        {type = 'item', name = 'fertilizer', amount = 5},
        {type = 'item', name = 'alien-enzymes', amount = 3},
        {type = 'fluid', name = 'mutant-enzymes', amount = 50, fluidbox_index = 1},
        },
    results = {
        {type = 'item', name = 'moondrop-mk04', amount = 5},
    },
    main_product = "moondrop-mk04",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/moondrop.png", icon_size = 64},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png', icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-moon',
    order = 'za'
}:add_unlock("moondrop-mk05")

RECIPE {
    type = "recipe",
    name = "moondrop-seeds-mk04",
    category = "nursery",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "moondrop-mk04", amount = 4},
    },
    results = {
        {type = "item", name = "moondrop-mk04", amount = 2},
        {type = "item", name = "moondrop-seeds-mk04", amount = 2},
        {type = "item", name = "moondrop-seeds-mk04", amount = 1, probability = 0.25},
        {type = 'item', name = 'moondrop-mk03', amount = 2, probability = 0.5},
        {type = 'item', name = 'moondrop-seeds-mk03', amount = 2, probability = 0.5},
    },
    main_product = "moondrop-seeds-mk04",
}:add_unlock("moondrop-mk05")