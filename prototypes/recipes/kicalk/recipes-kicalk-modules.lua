--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--
--WIP--

RECIPE {
    type = "recipe",
    name = "kicalk-mk02",
    category = "kicalk",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "kicalk",         amount = 2},
        {type = "item",  name = "kicalk-seeds",   amount = 10},
        {type = "fluid", name = "carbon-dioxide", amount = 300,  fluidbox_index = 2},
        {type = "item",  name = "clay",           amount = 10},
        {type = "item",  name = "small-lamp",     amount = 5},
        {type = "fluid", name = "water",          amount = 1000, fluidbox_index = 1},
    },
    results = {
        {type = "item", name = "kicalk-mk02",       amount = 1, probability = 0.005},
        {type = "item", name = "kicalk-seeds-mk02", amount = 1, probability = 0.02},
        {type = "item", name = "kicalk",            amount = 1, probability = 0.5},
    },
    main_product = "kicalk-seeds-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk02.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/kicalk.png",  icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-kicalk",
    order = "za"
}:add_unlock("kicalk-mk02")

RECIPE {
    type = "recipe",
    name = "kicalk-mk02-breeder",
    category = "kicalk",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "kicalk-seeds-mk02", amount = 5},
        {type = "fluid", name = "carbon-dioxide",    amount = 400, fluidbox_index = 2},
        {type = "item",  name = "rich-clay",         amount = 10},
        {type = "item",  name = "small-lamp",        amount = 5},
        {type = "fluid", name = "flutec-pp6",        amount = 50,  fluidbox_index = 1},
    },
    results = {
        {type = "item", name = "kicalk-mk02",       amount = 4},
        {type = "item", name = "kicalk-mk02",       amount = 2, probability = 0.5},
        {type = "item", name = "kicalk-seeds",      amount = 3, probability = 0.5},
        {type = "item", name = "kicalk-seeds-mk02", amount = 2, probability = 0.25},
    },
    main_product = "kicalk-seeds-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/kicalk.png",         icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk02.png", icon_size = 64, scale = 0.25, shift = {-7.5, -7.5}},
    },
    icon_size = 64,
    subgroup = "py-alienlife-kicalk",
    order = "za"
}:add_unlock("kicalk-mk02")

RECIPE {
    type = "recipe",
    name = "kicalk-seeds-mk02",
    category = "nursery",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "kicalk-mk02", amount = 4},
    },
    results = {
        {type = "item", name = "kicalk-seeds-mk02", amount = 5}
    },
}:add_unlock("kicalk-mk02")

--mk03--
--WIP--

RECIPE {
    type = "recipe",
    name = "kicalk-mk03",
    category = "kicalk",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "kicalk-mk02",       amount = 2},
        {type = "item",  name = "alien-sample-03",   amount = 1},
        {type = "item",  name = "kicalk-seeds-mk02", amount = 10},
        {type = "fluid", name = "carbon-dioxide",    amount = 300,  fluidbox_index = 2},
        {type = "item",  name = "clay",              amount = 10},
        {type = "item",  name = "small-lamp",        amount = 5},
        {type = "fluid", name = "water",             amount = 1000, fluidbox_index = 1},
    },
    results = {
        {type = "item", name = "kicalk-mk03",       amount = 1, probability = 0.004},
        {type = "item", name = "kicalk-seeds-mk03", amount = 1, probability = 0.01},
        {type = "item", name = "kicalk",            amount = 1, probability = 0.6},
        --{type = 'item', name = 'barrel', amount = 7},
    },
    --main_product = "kicalk-mk03",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk03.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/kicalk.png",  icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-kicalk",
    order = "zb"
}:add_unlock("kicalk-mk03")

RECIPE {
    type = "recipe",
    name = "kicalk-mk03-breeder",
    category = "kicalk",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "alien-sample-03",   amount = 1},
        {type = "item",  name = "kicalk-seeds-mk03", amount = 5},
        {type = "fluid", name = "carbon-dioxide",    amount = 300, fluidbox_index = 2},
        {type = "item",  name = "retrovirus",        amount = 5},
        {type = "item",  name = "microcin-j25",      amount = 1},
        {type = "fluid", name = "mutant-enzymes",    amount = 100, fluidbox_index = 1},
    },
    results = {
        {type = "item", name = "kicalk-mk03",       amount = 5},
        {type = "item", name = "kicalk-mk03",       amount = 3, probability = 0.4},
        {type = "item", name = "kicalk-mk02",       amount = 2, probability = 0.2},
        {type = "item", name = "kicalk-seeds",      amount = 3, probability = 0.4},
        {type = "item", name = "kicalk-seeds-mk02", amount = 3, probability = 0.2},
        {type = "item", name = "kicalk-seeds-mk03", amount = 2, probability = 0.05},
    },
    --main_product = "kicalk-mk03",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/kicalk.png",         icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk03.png", icon_size = 64, scale = 0.25, shift = {-7.5, -7.5}},
    },
    icon_size = 64,
    subgroup = "py-alienlife-kicalk",
    order = "zb"
}:add_unlock("kicalk-mk03")

RECIPE {
    type = "recipe",
    name = "kicalk-seeds-mk03",
    category = "nursery",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "kicalk-mk03", amount = 5},
    },
    results = {
        {type = "item", name = "kicalk-seeds-mk03", amount = 5}
    },
}:add_unlock("kicalk-mk03")

--mk04--
--WIP--

RECIPE {
    type = "recipe",
    name = "kicalk-mk04",
    category = "kicalk",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "kicalk-mk03",          amount = 2},
        {type = "item",  name = "zinc-finger-proteins", amount = 1},
        {type = "item",  name = "kicalk-seeds-mk03",    amount = 10},
        {type = "fluid", name = "carbon-dioxide",       amount = 300,  fluidbox_index = 2},
        {type = "item",  name = "clay",                 amount = 10},
        {type = "item",  name = "small-lamp",           amount = 5},
        {type = "fluid", name = "water",                amount = 1000, fluidbox_index = 1},
    },
    results = {
        {type = "item", name = "kicalk-mk04",       amount = 1, probability = 0.003},
        {type = "item", name = "kicalk-seeds-mk04", amount = 1, probability = 0.008},
        {type = "item", name = "kicalk",            amount = 1, probability = 0.7},
        --{type = 'item', name = 'barrel', amount = 7},
    },
    --main_product = "kicalk-mk04",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk04.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/kicalk.png",  icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-kicalk",
    order = "zc"
}:add_unlock("kicalk-mk04")

RECIPE {
    type = "recipe",
    name = "kicalk-mk04-breeder",
    category = "kicalk",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "zinc-finger-proteins", amount = 1},
        {type = "item",  name = "kicalk-seeds-mk04",    amount = 6},
        {type = "fluid", name = "carbon-dioxide",       amount = 300, fluidbox_index = 2},
        {type = "item",  name = "laser-module",         amount = 2},
        {type = "item",  name = "retrovirus",           amount = 2},
        {type = "item",  name = "adam42-gen",           amount = 4},
        {type = "item",  name = "microcin-j25",         amount = 1},
        {type = "fluid", name = "mutant-enzymes",       amount = 100, fluidbox_index = 1},
    },
    results = {
        {type = "item", name = "kicalk-mk04",       amount = 5},
        {type = "item", name = "kicalk-mk04",       amount = 3, probability = 0.4},
        {type = "item", name = "kicalk-mk03",       amount = 2, probability = 0.25},
        {type = "item", name = "kicalk-mk02",       amount = 2, probability = 0.15},
        {type = "item", name = "kicalk-seeds",      amount = 3, probability = 0.6},
        {type = "item", name = "kicalk-seeds-mk02", amount = 3, probability = 0.4},
        {type = "item", name = "kicalk-seeds-mk03", amount = 2, probability = 0.3},
        {type = "item", name = "kicalk-seeds-mk03", amount = 2, probability = 0.15},
    },
    --main_product = "kicalk-mk04",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/kicalk.png",         icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk04.png", icon_size = 64, scale = 0.25, shift = {-7.5, -7.5}},
    },
    --icon_size = 64,
    subgroup = "py-alienlife-kicalk",
    order = "zc"
}:add_unlock("kicalk-mk04")

RECIPE {
    type = "recipe",
    name = "kicalk-seeds-mk04",
    category = "nursery",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "kicalk-mk04", amount = 6},
    },
    results = {
        {type = "item", name = "kicalk-seeds-mk04", amount = 6}
    },
}:add_unlock("kicalk-mk04")
