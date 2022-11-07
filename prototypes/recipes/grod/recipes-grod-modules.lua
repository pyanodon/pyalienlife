
--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--

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
    },
    main_product = "grod-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk02.png", icon_size = 64},
            {icon = "__pyalienlifegraphics__/graphics/icons/grod.png", icon_size = 64, scale = 0.35},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-grod',
    order = 'za'
}:add_unlock("grod-mk02")

RECIPE {
    type = 'recipe',
    name = 'grod-mk02-breeder',
    category = 'grod',
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = 'item', name = 'grod-seeds-mk02', amount = 10},
        {type = 'fluid', name = 'carbon-dioxide', amount = 300, fluidbox_index = 2},
        {type = 'item', name = 'fertilizer', amount = 10},
        {type = 'item', name = 'limestone', amount = 10},
        {type = 'item', name = 'urea', amount = 10},
        {type = 'fluid', name = 'water', amount = 1000, fluidbox_index = 1},
        },
    results = {
        {type = 'item', name = 'grod-mk02', amount = 7},
        {type = 'item', name = 'grod-mk02', amount = 2, probability = 0.5},
        {type = 'item', name = 'grod', amount = 1, probability = 0.5},
    },
    main_product = "grod-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/grod.png", icon_size = 64},
            {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk02.png", icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-grod',
    order = 'za'
}:add_unlock("grod-mk02")

RECIPE {
    type = 'recipe',
    name = 'grod-seeds-mk02-breeder',
    category = 'grod',
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = 'item', name = 'grod-mk02', amount = 2},
        },
    results = {
        {type = 'item', name = 'grod-seeds-pod-mk02', amount = 2},
    },
    main_product = "grod-seeds-pod-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk02.png", icon_size = 64},
            {icon = "__pyalienlifegraphics__/graphics/icons/grod-seeds.png", icon_size = 64, scale = 0.35},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-grod',
    order = 'za'
}:add_unlock("grod-mk02")

RECIPE {
    type = 'recipe',
    name = 'grod-seeds-mk02-soaker',
    category = 'centrifuging',
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'item', name = 'grod-seeds-pod-mk02', amount = 2},
        {type = 'fluid', name = 'sulfuric-acid', amount = 100},
        },
    results = {
        {type = 'item', name = 'grod-seeds-mk02', amount = 4},
    },
    main_product = "grod-seeds-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/grod-seeds.png", icon_size = 64},
            {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk02.png", icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-grod',
    order = 'za'
}:add_unlock("grod-mk02")

--mk03--

RECIPE {
    type = 'recipe',
    name = 'grod-mk03',
    category = 'grod',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'grod-mk02', amount = 2},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'grod-seeds-mk02', amount = 10},
        {type = 'fluid', name = 'carbon-dioxide', amount = 300, fluidbox_index = 2},
        {type = 'item', name = 'fertilizer', amount = 10},
        {type = 'item', name = 'limestone', amount = 10},
        {type = 'fluid', name = 'water', amount = 1000, fluidbox_index = 1},
        },
    results = {
        {type = 'item', name = 'grod-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'grod', amount = 1, probability = 0.6},
    },
    main_product = "grod-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-grod',
    order = 'zb'
}:add_unlock("grod-mk03")

RECIPE {
    type = 'recipe',
    name = 'grod-mk03-breeder',
    category = 'grod',
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = 'item', name = 'grod-seeds-mk03', amount = 10},
        {type = 'fluid', name = 'slacked-lime', amount = 300, fluidbox_index = 2},
        {type = 'item', name = 'fertilizer', amount = 10},
        {type = 'item', name = 'limestone', amount = 10},
        {type = 'item', name = 'urea', amount = 10},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'pesticide-mk01', amount = 1},
        {type = 'fluid', name = 'water', amount = 1000, fluidbox_index = 1},
        },
    results = {
        {type = 'item', name = 'grod-mk03', amount = 7},
        {type = 'item', name = 'grod-mk03', amount = 2, probability = 0.4},
        {type = 'item', name = 'grod-mk02', amount = 1, probability = 0.6},
    },
    main_product = "grod-mk03",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/grod.png", icon_size = 64},
            {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk03.png", icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-grod',
    order = 'zb'
}:add_unlock("grod-mk03")

RECIPE {
    type = 'recipe',
    name = 'grod-seeds-mk03-breeder',
    category = 'grod',
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = 'item', name = 'grod-mk03', amount = 2},
        },
    results = {
        {type = 'item', name = 'grod-seeds-pod-mk03', amount = 2},
    },
    main_product = "grod-seeds-pod-mk03",
    icons =
        {
            {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk03.png", icon_size = 64},
            {icon = "__pyalienlifegraphics__/graphics/icons/grod-seeds.png", icon_size = 64, scale = 0.35},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-grod',
    order = 'zc'
}:add_unlock("grod-mk03")

RECIPE {
    type = 'recipe',
    name = 'grod-seeds-mk03-soaker',
    category = 'centrifuging',
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'item', name = 'grod-seeds-pod-mk03', amount = 2},
        {type = 'fluid', name = 'sulfuric-acid', amount = 100},
        },
    results = {
        {type = 'item', name = 'grod-seeds-mk03', amount = 4},
    },
    main_product = "grod-seeds-mk03",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/grod-seeds.png", icon_size = 64},
            {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk03.png", icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-grod',
    order = 'zc'
}:add_unlock("grod-mk03"):replace_ingredient("sulfuric-acid", { type = "fluid", name = "phosphoric-acid", amount = 100})

--mk04--

RECIPE {
    type = 'recipe',
    name = 'grod-mk04',
    category = 'grod',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'grod-mk03', amount = 2},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'grod-seeds-mk03', amount = 10},
        {type = 'fluid', name = 'carbon-dioxide', amount = 300, fluidbox_index = 2},
        {type = 'item', name = 'fertilizer', amount = 10},
        {type = 'item', name = 'limestone', amount = 10},
        {type = 'fluid', name = 'water', amount = 1000, fluidbox_index = 1},
        },
    results = {
        {type = 'item', name = 'grod-mk04', amount = 1, probability = 0.003},
        {type = 'item', name = 'grod', amount = 1, probability = 0.7},
    },
    main_product = "grod-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-grod',
    order = 'zc'
}:add_unlock("grod-mk04")

RECIPE {
    type = 'recipe',
    name = 'grod-mk04-breeder',
    category = 'grod',
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = 'item', name = 'grod-seeds-mk04', amount = 10},
        {type = 'fluid', name = 'slacked-lime', amount = 300, fluidbox_index = 2},
        {type = 'item', name = 'fertilizer', amount = 10},
        {type = 'item', name = 'limestone', amount = 10},
        {type = 'item', name = 'urea', amount = 10},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'pesticide-mk02', amount = 1},
        {type = 'fluid', name = 'water', amount = 1000, fluidbox_index = 1},
        },
    results = {
        {type = 'item', name = 'grod-mk04', amount = 7},
        {type = 'item', name = 'grod-mk04', amount = 2, probability = 0.3},
        {type = 'item', name = 'grod-mk03', amount = 1, probability = 0.7},
    },
    main_product = "grod-mk04",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/grod.png", icon_size = 64},
            {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk04.png", icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-grod',
    order = 'zc'
}:add_unlock("grod-mk04")

RECIPE {
    type = 'recipe',
    name = 'grod-seeds-mk04-breeder',
    category = 'grod',
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = 'item', name = 'grod-mk04', amount = 2},
        },
    results = {
        {type = 'item', name = 'grod-seeds-pod-mk04', amount = 2},
    },
    main_product = "grod-seeds-pod-mk04",
    icons =
        {
            {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk04.png", icon_size = 64},
            {icon = "__pyalienlifegraphics__/graphics/icons/grod-seeds.png", icon_size = 64, scale = 0.35},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-grod',
    order = 'zc'
}:add_unlock("grod-mk04")

RECIPE {
    type = 'recipe',
    name = 'grod-seeds-mk04-soaker',
    category = 'centrifuging',
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'item', name = 'grod-seeds-pod-mk04', amount = 2},
        {type = 'fluid', name = 'sulfuric-acid', amount = 100},
        },
    results = {
        {type = 'item', name = 'grod-seeds-mk04', amount = 4},
    },
    main_product = "grod-seeds-mk04",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/grod-seeds.png", icon_size = 64},
            {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk04.png", icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-grod',
    order = 'zc'
}:add_unlock("grod-mk04"):replace_ingredient("sulfuric-acid", { type = "fluid", name = "msa", amount = 100})