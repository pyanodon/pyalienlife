--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--

RECIPE {
    type = "recipe",
    name = "guar-mk02",
    category = "guar",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "guar",           amount = 2},
        {type = "item",  name = "guar-seeds",     amount = 10},
        {type = "fluid", name = "carbon-dioxide", amount = 300,  fluidbox_index = 2},
        {type = "item",  name = "fertilizer",     amount = 10},
        {type = "item",  name = "limestone",      amount = 10},
        {type = "fluid", name = "water",          amount = 1000, fluidbox_index = 1},
    },
    results = {
        {type = "item", name = "guar-mk02", amount = 1, probability = 0.005},
        {type = "item", name = "guar",      amount = 1, probability = 0.5},
    },
    main_product = "guar-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk02.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/guar.png",    icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-guar",
    order = "za"
}:add_unlock("guar-mk02")

RECIPE {
    type = "recipe",
    name = "guar-mk02-breeder",
    category = "guar",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "item",  name = "guar-seeds-mk02", amount = 5},
        {type = "item",  name = "small-lamp",      amount = 5},
        {type = "item",  name = "fertilizer",      amount = 10},
        {type = "item",  name = "ash",             amount = 25},
        {type = "item",  name = "coarse",          amount = 10},
        {type = "fluid", name = "water",           amount = 500, fluidbox_index = 1},
    },
    results = {
        {type = "item", name = "guar-mk02", amount = 5},
    },
    main_product = "guar-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/guar.png",      icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk02.png", icon_size = 64},
    },
    icon_size = 64,
    subgroup = "py-alienlife-guar",
    order = "za"
}:add_unlock("guar-mk02")

RECIPE {
    type = "recipe",
    name = "guar-seeds-mk02-breeder",
    category = "nursery",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "guar-mk02", amount = 2},
    },
    results = {
        {type = "item", name = "guar-seeds-mk02", amount = 2},
        {type = "item", name = "guar-seeds-mk02", amount = 1, probability = 0.6}
    },
    main_product = "guar-seeds-mk02",
    icons =
    {
        {icon = "__pypetroleumhandlinggraphics__/graphics/icons/guar-seeds.png", icon_size = 32},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk02.png",          icon_size = 64},
    },
    icon_size = 64,
    subgroup = "py-alienlife-guar",
    order = "za"
}:add_unlock("guar-mk02")


--mk03--
--WIP--

RECIPE {
    type = "recipe",
    name = "guar-mk03",
    category = "guar",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "guar-mk02",       amount = 2},
        {type = "item",  name = "alien-sample-03", amount = 1},
        {type = "item",  name = "guar-seeds-mk02", amount = 10},
        {type = "fluid", name = "carbon-dioxide",  amount = 300,  fluidbox_index = 2},
        {type = "item",  name = "fertilizer",      amount = 10},
        {type = "item",  name = "limestone",       amount = 10},
        {type = "fluid", name = "water",           amount = 1000, fluidbox_index = 1},
    },
    results = {
        {type = "item", name = "guar-mk03", amount = 1, probability = 0.004},
        {type = "item", name = "guar",      amount = 1, probability = 0.6},
    },
    main_product = "guar-mk03",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk03.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/guar.png",    icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-guar",
    order = "zb"
}:add_unlock("guar-mk03")

RECIPE {
    type = "recipe",
    name = "guar-mk03-breeder",
    category = "guar",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "item",  name = "guar-seeds-mk03", amount = 5},
        {type = "item",  name = "small-lamp",      amount = 3},
        {type = "item",  name = "fertilizer",      amount = 10},
        {type = "item",  name = "pesticide-mk01",  amount = 10},
        {type = "item",  name = "dried-grods",     amount = 10},
        {type = "fluid", name = "carbon-dioxide",  amount = 200, fluidbox_index = 2},
    },
    results = {
        {type = "item", name = "guar-mk03", amount = 5},
    },
    main_product = "guar-mk03",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/guar.png",      icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk03.png", icon_size = 64},
    },
    icon_size = 64,
    subgroup = "py-alienlife-guar",
    order = "zb"
}:add_unlock("guar-mk03"):add_ingredient {type = "fluid", name = "raw-ralesia-extract", amount = 100, fluidbox_index = 1}

RECIPE {
    type = "recipe",
    name = "guar-seeds-mk03-breeder",
    category = "nursery",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "guar-mk03", amount = 2},
    },
    results = {
        {type = "item", name = "guar-seeds-mk03", amount = 2},
        {type = "item", name = "guar-seeds-mk03", amount = 1, probability = 0.5}
    },
    main_product = "guar-seeds-mk03",
    icons =
    {
        {icon = "__pypetroleumhandlinggraphics__/graphics/icons/guar-seeds.png", icon_size = 32},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk03.png",          icon_size = 64},
    },
    icon_size = 64,
    subgroup = "py-alienlife-guar",
    order = "zb"
}:add_unlock("guar-mk03")

--mk04--

RECIPE {
    type = "recipe",
    name = "guar-mk04",
    category = "guar",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "guar-mk03",            amount = 2},
        {type = "item",  name = "zinc-finger-proteins", amount = 1},
        {type = "item",  name = "guar-seeds-mk03",      amount = 10},
        {type = "fluid", name = "carbon-dioxide",       amount = 300,  fluidbox_index = 2},
        {type = "item",  name = "fertilizer",           amount = 10},
        {type = "item",  name = "limestone",            amount = 10},
        {type = "fluid", name = "water",                amount = 1000, fluidbox_index = 1},
    },
    results = {
        {type = "item", name = "guar-mk04", amount = 1, probability = 0.003},
        {type = "item", name = "guar",      amount = 1, probability = 0.7},
    },
    main_product = "guar-mk04",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk04.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/guar.png",    icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-guar",
    order = "zc"
}:add_unlock("guar-mk04")

RECIPE {
    type = "recipe",
    name = "guar-mk04-breeder",
    category = "guar",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "item",  name = "guar-seeds-mk04", amount = 5},
        {type = "item",  name = "small-lamp",      amount = 3},
        {type = "item",  name = "fertilizer",      amount = 10},
        {type = "item",  name = "pesticide-mk01",  amount = 10},
        {type = "item",  name = "pesticide-mk02",  amount = 10},
        {type = "item",  name = "dried-grods",     amount = 10},
        {type = "item",  name = "sternite-lung",   amount = 2},
        {type = "fluid", name = "carbon-dioxide",  amount = 200, fluidbox_index = 2},
    },
    results = {
        {type = "item", name = "guar-mk04", amount = 5},
    },
    main_product = "guar-mk04",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/guar.png",      icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk04.png", icon_size = 64},
    },
    icon_size = 64,
    subgroup = "py-alienlife-guar",
    order = "zc"
}:add_unlock("guar-mk04"):add_ingredient {type = "fluid", name = "raw-ralesia-extract", amount = 100, fluidbox_index = 1}

RECIPE {
    type = "recipe",
    name = "guar-seeds-mk04-breeder",
    category = "nursery",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "guar-mk04", amount = 2},
    },
    results = {
        {type = "item", name = "guar-seeds-mk04", amount = 2},
        {type = "item", name = "guar-seeds-mk04", amount = 1, probability = 0.4}
    },
    main_product = "guar-seeds-mk04",
    icons =
    {
        {icon = "__pypetroleumhandlinggraphics__/graphics/icons/guar-seeds.png", icon_size = 32},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk04.png",          icon_size = 64},
    },
    icon_size = 64,
    subgroup = "py-alienlife-guar",
    order = "zc"
}:add_unlock("guar-mk04")
