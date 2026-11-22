--Secondary Upgrade Recipes--
--SUR--
--DONE--

--mk02--
--DONE--

RECIPE {
    type = "recipe",
    name = "cottongut-mk02",
    category = "rc",
    allowed_module_categories = {"cottongut"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "cottongut-pup-mk01", amount = 1},
        {type = "fluid", name = "fetal-serum",        amount = 50},
        {type = "item",  name = "dna-polymerase",     amount = 1},
        {type = "fluid", name = "artificial-blood",   amount = 20}
    },
    results = {
        {type = "item", name = "cottongut-mk02", amount = 1, probability = 0.005},
        {type = "item", name = "cottongut-mk01", amount = 1, probability = 0.5},
    },
    --main_product = "cottongut-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk02.png",          icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/cottongut-module.png", icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-cottongut",
    order = "za"
}:add_unlock("cottongut-mk02")

RECIPE {
    type = "recipe",
    name = "cottongut-pup-mk02-raising",
    category = "cottongut",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "cottongut-mk02",    amount = 2, ignored_by_stats = 1},
        {type = "item", name = "bedding",           amount = 1},
        {type = "item", name = "cocoon",            amount = 1},
        {type = "item", name = "tuuphra-seeds",     amount = 5},
        {type = "item", name = "cottongut-food-02", amount = 1},
    },
    results = {
        {type = "item", name = "cottongut-mk02",     amount = 1,     ignored_by_stats = 1, ignored_by_productivity = 1},
        {type = "item", name = "cottongut-mk02",     amount = 1,     probability = 0.5,    ignored_by_productivity = 1},
        {type = "item", name = "cottongut-pup-mk02", amount_min = 3, amount_max = 8,       probability = 0.7},
    },
    main_product = "cottongut-pup-mk02",
    --icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = "py-alienlife-cottongut",
    order = "za"
}:add_unlock("cottongut-mk02")

RECIPE {
    type = "recipe",
    name = "cottongut-mature-basic-mk02",
    category = "cottongut",
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = "item", name = "cottongut-pup-mk02", amount = 3},
        {type = "item", name = "dried-grods",        amount = 3},
        {type = "item", name = "rennea",             amount = 2},
        {type = "item", name = "cottongut-food-02",  amount = 1},
    },
    results = {
        {type = "item", name = "cottongut-mk02", amount = 2},
    },
    main_product = "cottongut-mk02",
    subgroup = "py-alienlife-cottongut",
    order = "a",
}:add_unlock("cottongut-mk02"):add_ingredient {type = "item", name = "cadaveric-arum", amount = 1}

--mk03--
--DONE--

RECIPE {
    type = "recipe",
    name = "cottongut-mk03",
    category = "rc",
    allowed_module_categories = {"cottongut"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "cottongut-pup-mk02", amount = 1},
        {type = "fluid", name = "fetal-serum",        amount = 50},
        {type = "fluid", name = "psc",                amount = 25},
        {type = "fluid", name = "artificial-blood",   amount = 20},
        {type = "item",  name = "alien-enzymes",      amount = 5},
    },
    results = {
        {type = "item", name = "cottongut-mk03", amount = 1, probability = 0.004},
        {type = "item", name = "cottongut-mk02", amount = 1, probability = 0.6},
    },
    --main_product = "cottongut-mk03",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk03.png",          icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/cottongut-module.png", icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-cottongut",
    order = "zb"
}:add_unlock("cottongut-mk03")

RECIPE {
    type = "recipe",
    name = "cottongut-pup-mk03-raising",
    category = "cottongut",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "cottongut-mk03",    amount = 2, ignored_by_stats = 1},
        {type = "item", name = "bedding",           amount = 1},
        {type = "item", name = "dried-meat",        amount = 3},
        {type = "item", name = "tuuphra-seeds",     amount = 5},
        {type = "item", name = "cottongut-food-02", amount = 2},
    },
    results = {
        {type = "item", name = "cottongut-mk03",     amount = 1,     ignored_by_stats = 1, ignored_by_productivity = 1},
        {type = "item", name = "cottongut-mk03",     amount = 1,     probability = 0.5,    ignored_by_productivity = 1},
        {type = "item", name = "cottongut-pup-mk03", amount_min = 3, amount_max = 8,       probability = 0.7},
    },
    main_product = "cottongut-pup-mk03",
    --icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = "py-alienlife-cottongut",
    order = "za"
}:add_unlock("cottongut-mk03")

RECIPE {
    type = "recipe",
    name = "cottongut-mature-basic-mk03",
    category = "cottongut",
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = "item", name = "cottongut-pup-mk03", amount = 5},
        {type = "item", name = "dried-grods",        amount = 3},
        {type = "item", name = "navens",             amount = 3},
        {type = "item", name = "sugar",              amount = 2},
        {type = "item", name = "cottongut-food-02",  amount = 2},
    },
    results = {
        {type = "item", name = "cottongut-mk03", amount = 4},
    },
    main_product = "cottongut-mk03",
    subgroup = "py-alienlife-cottongut",
    order = "a",
}:add_unlock("cottongut-mk03")

--mk04--
--DONE--

RECIPE {
    type = "recipe",
    name = "cottongut-mk04",
    category = "rc",
    allowed_module_categories = {"cottongut"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "cottongut-pup-mk03", amount = 1},
        {type = "fluid", name = "fetal-serum",        amount = 50},
        {type = "item",  name = "gh",                 amount = 5},
        {type = "fluid", name = "artificial-blood",   amount = 20},
        {type = "item",  name = "antitumor",          amount = 5},
    },
    results = {
        {type = "item", name = "cottongut-mk04", amount = 1, probability = 0.003},
        {type = "item", name = "cottongut-mk03", amount = 1, probability = 0.7},
    },
    --main_product = "cottongut-mk04",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk04.png",          icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/cottongut-module.png", icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-cottongut",
    order = "zc"
}:add_unlock("cottongut-mk04")

RECIPE {
    type = "recipe",
    name = "cottongut-pup-mk04-raising",
    category = "cottongut",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "cottongut-mk04",    amount = 2, ignored_by_stats = 1},
        {type = "item", name = "bedding",           amount = 1},
        {type = "item", name = "dhilmos-egg",       amount = 2},
        {type = "item", name = "cottongut-food-02", amount = 3},
    },
    results = {
        {type = "item", name = "cottongut-mk04",     amount = 1,     ignored_by_stats = 1, ignored_by_productivity = 1},
        {type = "item", name = "cottongut-mk04",     amount = 1,     probability = 0.5,    ignored_by_productivity = 1},
        {type = "item", name = "cottongut-pup-mk04", amount_min = 3, amount_max = 8,       probability = 0.7},
    },
    main_product = "cottongut-pup-mk04",
    --icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = "py-alienlife-cottongut",
    order = "za"
}:add_unlock("cottongut-mk04"):add_ingredient {type = "item", name = "moondrop", amount = 5}

RECIPE {
    type = "recipe",
    name = "cottongut-mature-basic-mk04",
    category = "cottongut",
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = "item", name = "cottongut-pup-mk04", amount = 9},
        {type = "item", name = "xeno-egg",           amount = 2},
        {type = "item", name = "navens",             amount = 5},
        {type = "item", name = "sugar",              amount = 5},
        {type = "item", name = "cottongut-food-02",  amount = 4},
    },
    results = {
        {type = "item", name = "cottongut-mk04", amount = 7},
    },
    main_product = "cottongut-mk04",
    subgroup = "py-alienlife-cottongut",
    order = "a",
}:add_unlock("cottongut-mk04")
