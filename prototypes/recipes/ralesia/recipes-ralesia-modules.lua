--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--

RECIPE {
    type = "recipe",
    name = "ralesias-mk02",
    category = "ralesia",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "ralesias",      amount = 2},
        {type = "item",  name = "ralesia-seeds", amount = 10},
        {type = "fluid", name = "hydrogen",      amount = 300,  fluidbox_index = 2},
        {type = "item",  name = "fertilizer",    amount = 10},
        {type = "item",  name = "soil",          amount = 100},
        {type = "fluid", name = "water",         amount = 1000, fluidbox_index = 1},
    },
    results = {
        {type = "item", name = "ralesias-mk02", amount = 1, probability = 0.005},
        {type = "item", name = "ralesias",      amount = 1, probability = 0.5},
    },
    main_product = "ralesias-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk02.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/ralesia.png", icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-ralesia",
    order = "za"
}:add_unlock("ralesia-mk02")

RECIPE {
    type = "recipe",
    name = "ralesia-mk02-breeder",
    category = "ralesia",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "ralesia-seeds-mk02", amount = 4},
        {type = "fluid", name = "flue-gas",           amount = 400, fluidbox_index = 2},
        {type = "item",  name = "fawogae-mk02",       amount = 2},
    },
    results = {
        {type = "item", name = "ralesias-mk02",      amount = 3},
        {type = "item", name = "ralesias-mk02",      amount = 2, probability = 0.5},
        {type = "item", name = "ralesia-seeds-mk02", amount = 2, probability = 0.5},
        {type = "item", name = "fawogae-spore-mk02", amount = 2, probability = 0.5},
    },
    main_product = "ralesias-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/ralesia.png",        icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk02.png", icon_size = 64, scale = 0.25, shift = {-7.5, -7.5}},
    },
    icon_size = 64,
    subgroup = "py-alienlife-ralesia",
    order = "za"
}:add_unlock("ralesia-mk02")

RECIPE {
    type = "recipe",
    name = "ralesia-seeds-mk02",
    category = "nursery",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "ralesias-mk02", amount = 5},
    },
    results = {
        {type = "item", name = "ralesia-seeds-mk02", amount = 8}
    },
    main_product = "ralesia-seeds-mk02",
    subgroup = "py-alienlife-ralesia",
    order = "za"
}:add_unlock("ralesia-mk02")

--mk03--

RECIPE {
    type = "recipe",
    name = "ralesias-mk03",
    category = "ralesia",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "ralesias-mk02",      amount = 2},
        {type = "item",  name = "alien-sample-03",    amount = 1},
        {type = "item",  name = "ralesia-seeds-mk02", amount = 10},
        {type = "fluid", name = "hydrogen",           amount = 300,  fluidbox_index = 2},
        {type = "item",  name = "fertilizer",         amount = 10},
        {type = "item",  name = "soil",               amount = 100},
        {type = "fluid", name = "water",              amount = 1000, fluidbox_index = 1},
    },
    results = {
        {type = "item", name = "ralesias-mk03", amount = 1, probability = 0.004},
        {type = "item", name = "ralesias",      amount = 1, probability = 0.6},
        --{type = 'item', name = 'barrel', amount = 7},
    },
    main_product = "ralesias-mk03",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk03.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/ralesia.png", icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-ralesia",
    order = "zb"
}:add_unlock("ralesia-mk03")

RECIPE {
    type = "recipe",
    name = "ralesia-mk03-breeder",
    category = "ralesia",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "ralesia-seeds-mk03", amount = 4},
        {type = "fluid", name = "syngas",             amount = 400, fluidbox_index = 2},
        {type = "item",  name = "fawogae-mk03",       amount = 2},
    },
    results = {
        {type = "item", name = "ralesias-mk03",      amount = 3},
        {type = "item", name = "ralesias-mk03",      amount = 1, probability = 0.5},
        {type = "item", name = "ralesia-seeds-mk03", amount = 2, probability = 0.5},
        {type = "item", name = "fawogae-spore-mk03", amount = 2, probability = 0.5},
    },
    main_product = "ralesias-mk03",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/ralesia.png",        icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk03.png", icon_size = 64, scale = 0.25, shift = {-7.5, -7.5}},
    },
    icon_size = 64,
    subgroup = "py-alienlife-ralesia",
    order = "za"
}:add_unlock("ralesia-mk03")

RECIPE {
    type = "recipe",
    name = "ralesia-seeds-mk03",
    category = "nursery",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "ralesias-mk03", amount = 5},
    },
    results = {
        {type = "item", name = "ralesia-seeds-mk03", amount = 8}
    },
    main_product = "ralesia-seeds-mk03",
    subgroup = "py-alienlife-ralesia",
    order = "za"
}:add_unlock("ralesia-mk03")

--mk04--

RECIPE {
    type = "recipe",
    name = "ralesias-mk04",
    category = "ralesia",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "ralesias-mk03",        amount = 2},
        {type = "item",  name = "zinc-finger-proteins", amount = 1},
        {type = "item",  name = "ralesia-seeds-mk03",   amount = 10},
        {type = "fluid", name = "hydrogen",             amount = 300,  fluidbox_index = 2},
        {type = "item",  name = "fertilizer",           amount = 10},
        {type = "item",  name = "soil",                 amount = 100},
        {type = "fluid", name = "water",                amount = 1000, fluidbox_index = 1},
    },
    results = {
        {type = "item", name = "ralesias-mk04", amount = 1, probability = 0.003},
        {type = "item", name = "ralesias",      amount = 1, probability = 0.7},
    },
    main_product = "ralesias-mk04",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk04.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/ralesia.png", icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-ralesia",
    order = "zc"
}:add_unlock("ralesia-mk04")

RECIPE {
    type = "recipe",
    name = "ralesia-mk04-breeder",
    category = "ralesia",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "ralesia-seeds-mk04",  amount = 4},
        {type = "fluid", name = "refined-natural-gas", amount = 400, fluidbox_index = 2},
        {type = "item",  name = "fawogae-mk04",        amount = 2},
    },
    results = {
        {type = "item", name = "ralesias-mk04",      amount = 3},
        {type = "item", name = "ralesias-mk04",      amount = 1, probability = 0.25},
        {type = "item", name = "ralesia-seeds-mk04", amount = 2, probability = 0.5},
        {type = "item", name = "fawogae-spore-mk04", amount = 2, probability = 0.5},
    },
    main_product = "ralesias-mk04",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/ralesia.png",        icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk04.png", icon_size = 64, scale = 0.25, shift = {-7.5, -7.5}},
    },
    icon_size = 64,
    subgroup = "py-alienlife-ralesia",
    order = "za"
}:add_unlock("ralesia-mk04")

RECIPE {
    type = "recipe",
    name = "ralesia-seeds-mk04",
    category = "nursery",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "ralesias-mk04", amount = 5},
    },
    results = {
        {type = "item", name = "ralesia-seeds-mk04", amount = 8}
    },
    main_product = "ralesia-seeds-mk04",
    subgroup = "py-alienlife-ralesia",
    order = "za"
}:add_unlock("ralesia-mk04")
