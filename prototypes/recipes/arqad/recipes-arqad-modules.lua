--Secondary Upgrade Recipes--
--SUR--
--DONE--

--mk02--
--DONE--

RECIPE {
    type = "recipe",
    name = "arqad-mk02",
    category = "rc",
    allowed_module_categories = {"arqad"},
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item", name = "arqad-maggot",          amount = 25},
        {type = "item", name = "crude-oil-barrel",      amount = 5},
        {type = "item", name = "raw-coal",              amount = 5},
        {type = "item", name = "mutant-enzymes-barrel", amount = 2},
    },
    results = {
        {type = "item", name = "arqad-mk02", probability = 0.005, amount = 1},
        {type = "item", name = "arqad",      probability = 0.8,   amount = 1},
        {type = "item", name = "barrel",     amount = 7,          ignored_by_productivity = 7, ignored_by_stats = 7},
    },
    --main_product = "arqad-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk02.png", icon_size = 64},
        {icon = "__pyalienlifegraphics3__/graphics/icons/arqad.png",  icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-arqad",
    order = "za"
}:add_unlock("arqad-mk02")

RECIPE {
    type = "recipe",
    name = "arqad-mk02-breeding",
    category = "arqad",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item", name = "arqad-mk02",  amount = 1},
        {type = "item", name = "ulric",       amount = 2},
        {type = "item", name = "filled-comb", amount = 5},
    },
    results = {
        {type = "item", name = "arqad-egg-nest-2", amount = 1},
        {type = "item", name = "empty-comb",       amount = 5},
    },
    main_product = "arqad-egg-nest-2",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/ulric.png"},
        {icon = "__pyalienlifegraphics3__/graphics/icons/arqad-egg.png",     scale = 0.25, shift = {-7.5, -7.5}},
        {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk02.png", scale = 0.25, shift = {-7.5, -7.5}},
    },
    icon_size = 64,
    subgroup = "py-alienlife-arqad",
    order = "za"
}:add_unlock("arqad-mk02")

RECIPE {
    type = "recipe",
    name = "arqad-mk02-incubating",
    category = "ulric",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item", name = "arqad-egg-nest-2", amount = 1},
        {type = "item", name = "bedding",          amount = 2},
        {type = "item", name = "barrel-milk",      amount = 1},
        {type = "item", name = "ulric-food-01",    amount = 1},
    },
    results = {
        {type = "item", name = "arqad-egg-2",       amount = 20},
        {type = "item", name = "empty-barrel-milk", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1},
    },
    main_product = "arqad-egg-2",
    icons =
    {
        {icon = "__pyalienlifegraphics3__/graphics/icons/arqad-egg.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk02.png", scale = 0.25, shift = {-7.5, -7.5}},
    },
    icon_size = 64,
    subgroup = "py-alienlife-arqad",
    order = "za"
}:add_unlock("arqad-mk02")

RECIPE {
    type = "recipe",
    name = "arqad-mk02-hatching",
    category = "incubator",
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = "item",  name = "arqad-egg-2", amount = 5},
        {type = "fluid", name = "hot-air",     amount = 100},
    },
    results = {
        {type = "item", name = "arqad-maggot-2", amount = 4},
    },
    main_product = "arqad-maggot-2",
    icons =
    {
        {icon = "__pyalienlifegraphics3__/graphics/icons/mip/arqad-maggot-01.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk02.png"},
    },
    icon_size = 64,
    subgroup = "py-alienlife-arqad",
    order = "za"
}:add_unlock("arqad-mk02")

RECIPE {
    type = "recipe",
    name = "arqad-mk02-maturing",
    category = "arqad",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item", name = "arqad-maggot-2", amount = 9},
        {type = "item", name = "meat",           amount = 10},
        {type = "item", name = "dhilmos-pup",    amount = 2},
    },
    results = {
        {type = "item", name = "arqad-mk02", amount_min = 3, amount_max = 13},
    },
    main_product = "arqad-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics3__/graphics/icons/arqad.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk02.png"},
        --{icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png', scale = 0.25,shift = {-7.5,-7.5}},
    },
    icon_size = 64,
    subgroup = "py-alienlife-arqad",
    order = "za"
}:add_unlock("arqad-mk02")

--MK03--
--DONE--

RECIPE {
    type = "recipe",
    name = "arqad-mk03",
    category = "rc",
    allowed_module_categories = {"arqad"},
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item", name = "arqad-maggot-2",        amount = 25},
        {type = "item", name = "crude-oil-barrel",      amount = 10},
        {type = "item", name = "coke",                  amount = 20},
        {type = "item", name = "mutant-enzymes-barrel", amount = 4},
    },
    results = {
        {type = "item", name = "arqad-mk03", probability = 0.005, amount = 1},
        {type = "item", name = "arqad-mk02", probability = 0.4,   amount = 1},
        {type = "item", name = "arqad",      probability = 0.4,   amount = 1},
        {type = "item", name = "barrel",     amount = 14,         ignored_by_productivity = 14, ignored_by_stats = 14},
    },
    --main_product = "arqad-mk03",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk03.png", icon_size = 64},
        {icon = "__pyalienlifegraphics3__/graphics/icons/arqad.png",  icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-arqad",
    order = "zb"
}:add_unlock("arqad-mk03")

RECIPE {
    type = "recipe",
    name = "arqad-mk03-breeding",
    category = "arqad",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item", name = "arqad-mk03",  amount = 1},
        {type = "item", name = "korlex",      amount = 2},
        {type = "item", name = "filled-comb", amount = 5},
    },
    results = {
        {type = "item", name = "arqad-egg-nest-3", amount = 1},
        {type = "item", name = "empty-comb",       amount = 5},
    },
    main_product = "arqad-egg-nest-3",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/korlex.png"},
        {icon = "__pyalienlifegraphics3__/graphics/icons/arqad-egg.png",     scale = 0.25, shift = {-7.5, -7.5}},
        {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk03.png", scale = 0.25, shift = {-7.5, -7.5}},
    },
    icon_size = 64,
    subgroup = "py-alienlife-arqad",
    order = "zb"
}:add_unlock("arqad-mk03")

RECIPE {
    type = "recipe",
    name = "arqad-mk03-incubating",
    category = "korlex",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item", name = "arqad-egg-nest-3", amount = 1},
        {type = "item", name = "bedding",          amount = 2},
        {type = "item", name = "energy-drink",     amount = 1},
        {type = "item", name = "korlex-food-02",   amount = 2},
    },
    results = {
        {type = "item", name = "arqad-egg-3", amount = 20},
    },
    main_product = "arqad-egg-3",
    icons =
    {
        {icon = "__pyalienlifegraphics3__/graphics/icons/arqad-egg.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk03.png", scale = 0.25, shift = {-7.5, -7.5}},
    },
    icon_size = 64,
    subgroup = "py-alienlife-arqad",
    order = "zb"
}:add_unlock("arqad-mk03")

RECIPE {
    type = "recipe",
    name = "arqad-mk03-hatching",
    category = "incubator",
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = "item",  name = "arqad-egg-3", amount = 5},
        {type = "fluid", name = "hot-air",     amount = 100},
    },
    results = {
        {type = "item", name = "arqad-maggot-3", amount = 4},
    },
    main_product = "arqad-maggot-3",
    icons =
    {
        {icon = "__pyalienlifegraphics3__/graphics/icons/mip/arqad-maggot-01.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk03.png"},
        --{icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png', scale = 0.25,shift = {-7.5,-7.5}},
    },
    icon_size = 64,
    subgroup = "py-alienlife-arqad",
    order = "zb"
}:add_unlock("arqad-mk03")

RECIPE {
    type = "recipe",
    name = "arqad-mk03-maturing",
    category = "arqad",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item", name = "arqad-maggot-3", amount = 9},
        {type = "item", name = "meat",           amount = 20},
        {type = "item", name = "dhilmos-pup",    amount = 5},
    },
    results = {
        {type = "item", name = "arqad-mk03", amount_min = 3, amount_max = 13},
    },
    main_product = "arqad-mk03",
    icons =
    {
        {icon = "__pyalienlifegraphics3__/graphics/icons/arqad.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk03.png"},
        --{icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png', scale = 0.25,shift = {-7.5,-7.5}},
    },
    icon_size = 64,
    subgroup = "py-alienlife-arqad",
    order = "zb"
}:add_unlock("arqad-mk03")

--MK04--
--DONE--

RECIPE {
    type = "recipe",
    name = "arqad-mk04",
    category = "rc",
    allowed_module_categories = {"arqad"},
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item", name = "arqad-maggot-3",        amount = 25},
        {type = "item", name = "crude-oil-barrel",      amount = 20},
        {type = "item", name = "coke",                  amount = 20},
        {type = "item", name = "mutant-enzymes-barrel", amount = 8},
    },
    results = {
        {type = "item", name = "arqad-mk04", probability = 0.005, amount = 1},
        {type = "item", name = "arqad-mk03", probability = 0.3,   amount = 1},
        {type = "item", name = "arqad-mk02", probability = 0.3,   amount = 1},
        {type = "item", name = "arqad",      probability = 0.2,   amount = 1},
        {type = "item", name = "barrel",     amount = 28,         ignored_by_productivity = 28, ignored_by_stats = 28},
    },
    --main_product = "arqad-mk04",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk04.png", icon_size = 64},
        {icon = "__pyalienlifegraphics3__/graphics/icons/arqad.png",  icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-arqad",
    order = "zb"
}:add_unlock("arqad-mk04")

RECIPE {
    type = "recipe",
    name = "arqad-mk04-breeding",
    category = "arqad",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item", name = "arqad-mk04",  amount = 1},
        {type = "item", name = "phadai",      amount = 2},
        {type = "item", name = "filled-comb", amount = 5},
    },
    results = {
        {type = "item", name = "arqad-egg-nest-4", amount = 1},
        {type = "item", name = "empty-comb",       amount = 5},
    },
    main_product = "arqad-egg-nest-4",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/phadai.png"},
        {icon = "__pyalienlifegraphics3__/graphics/icons/arqad-egg.png",     scale = 0.25, shift = {-7.5, -7.5}},
        {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk04.png", scale = 0.25, shift = {-7.5, -7.5}},
    },
    icon_size = 64,
    subgroup = "py-alienlife-arqad",
    order = "zb"
}:add_unlock("arqad-mk04")

RECIPE {
    type = "recipe",
    name = "arqad-mk04-incubating",
    category = "phadai",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item", name = "arqad-egg-nest-4", amount = 1},
        {type = "item", name = "bedding",          amount = 2},
        {type = "item", name = "barrel-milk",      amount = 5},
        {type = "item", name = "phadai-food-02",   amount = 4},
    },
    results = {
        {type = "item", name = "arqad-egg-4",       amount = 20},
        {type = "item", name = "empty-barrel-milk", amount = 5, ignored_by_productivity = 5, ignored_by_stats = 5},
    },
    main_product = "arqad-egg-4",
    icons =
    {
        {icon = "__pyalienlifegraphics3__/graphics/icons/arqad-egg.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk04.png", scale = 0.25, shift = {-7.5, -7.5}},
    },
    icon_size = 64,
    subgroup = "py-alienlife-arqad",
    order = "zb"
}:add_unlock("arqad-mk04")

RECIPE {
    type = "recipe",
    name = "arqad-mk04-hatching",
    category = "incubator",
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = "item",  name = "arqad-egg-4", amount = 5},
        {type = "fluid", name = "hot-air",     amount = 100},
    },
    results = {
        {type = "item", name = "arqad-maggot-4", amount = 4},
    },
    main_product = "arqad-maggot-4",
    icons =
    {
        {icon = "__pyalienlifegraphics3__/graphics/icons/mip/arqad-maggot-01.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk04.png"},
        --{icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png', scale = 0.25,shift = {-7.5,-7.5}},
    },
    icon_size = 64,
    subgroup = "py-alienlife-arqad",
    order = "zb"
}:add_unlock("arqad-mk04")

RECIPE {
    type = "recipe",
    name = "arqad-mk04-maturing",
    category = "arqad",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item", name = "arqad-maggot-4", amount = 9},
        {type = "item", name = "meat",           amount = 30},
        {type = "item", name = "xyhiphoe-cub",   amount = 8},
    },
    results = {
        {type = "item", name = "arqad-mk04", amount_min = 3, amount_max = 13},
    },
    main_product = "arqad-mk04",
    icons =
    {
        {icon = "__pyalienlifegraphics3__/graphics/icons/arqad.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk04.png"},
        --{icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png', scale = 0.25,shift = {-7.5,-7.5}},
    },
    icon_size = 64,
    subgroup = "py-alienlife-arqad",
    order = "zb"
}:add_unlock("arqad-mk04")
