--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--
--WIP--

RECIPE {
    type = "recipe",
    name = "korlex-mk02",
    category = "rc",
    allowed_module_categories = {"korlex"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "korlex",         amount = 2},
        {type = "item", name = "korlex-food-01", amount = 2},
        {type = "item", name = "bedding",        amount = 4},
        {type = "item", name = "salt",           amount = 10},
        {type = "item", name = "rennea",         amount = 10},
        {type = "item", name = "water-barrel",   amount = 6},
    },
    results = {
        {type = "item", name = "korlex-mk02", amount = 1, probability = 0.005},
        {type = "item", name = "barrel",      amount = 6},
        {type = "item", name = "korlex",      amount = 1, probability = 0.5,  ignored_by_productivity = 1},
    },
    main_product = "korlex-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk02.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/korlex.png",  icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-korlex",
    order = "za"
}:add_unlock("korlex-mk02")

--mk03--
--WIP--

RECIPE {
    type = "recipe",
    name = "korlex-mk03",
    category = "rc",
    allowed_module_categories = {"korlex"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "korlex",          amount = 2},
        {type = "item", name = "alien-sample-03", amount = 1},
        {type = "item", name = "korlex-food-02",  amount = 3},
        {type = "item", name = "bedding",         amount = 4},
        {type = "item", name = "salt",            amount = 10},
        {type = "item", name = "rennea",          amount = 10},
        {type = "item", name = "water-barrel",    amount = 6},
    },
    results = {
        {type = "item", name = "korlex-mk03", amount = 1, probability = 0.004},
        {type = "item", name = "barrel",      amount = 6},
        {type = "item", name = "korlex",      amount = 1, probability = 0.6,  ignored_by_productivity = 1},
    },
    --main_product = "korlex-mk03",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk03.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/korlex.png",  icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-korlex",
    order = "zb"
}:add_unlock("korlex-mk03")

--mk04--
--WIP--

RECIPE {
    type = "recipe",
    name = "korlex-mk04",
    category = "rc",
    allowed_module_categories = {"korlex"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "korlex",               amount = 2},
        {type = "item", name = "zinc-finger-proteins", amount = 1},
        {type = "item", name = "korlex-food-02",       amount = 3},
        {type = "item", name = "bedding",              amount = 4},
        {type = "item", name = "salt",                 amount = 10},
        {type = "item", name = "rennea",               amount = 10},
        {type = "item", name = "water-barrel",         amount = 6},
    },
    results = {
        {type = "item", name = "korlex-mk04", amount = 1, probability = 0.003},
        {type = "item", name = "barrel",      amount = 6},
        {type = "item", name = "korlex",      amount = 1, probability = 0.7,  ignored_by_productivity = 1},
    },
    --main_product = "korlex-mk04",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk04.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/korlex.png",  icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-korlex",
    order = "zc"
}:add_unlock("korlex-mk04")

--MK02 REPLICATOR---

RECIPE {
    type = "recipe",
    name = "korlex-mk02r",
    category = "bio-printer",
    enabled = false,
    energy_required = 120,
    ingredients = {
        {type = "item",  name = "korlex-mk02",       amount = 4,  ignored_by_stats = 4},
        {type = "item",  name = "korlex-codex-mk02", amount = 1},
        {type = "item",  name = "animal-sample-01",  amount = 1},
        {type = "item",  name = "cdna",              amount = 2},
        {type = "fluid", name = "psc",               amount = 100},
        {type = "fluid", name = "xenogenic-cells",   amount = 100},
        {type = "item",  name = "bio-scafold",       amount = 5},
    },
    results = {
        {type = "item", name = "korlex-mk02", amount = 5, ignored_by_stats = 4, ignored_by_productivity = 4},
    },
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/korlex.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk02.png", icon_size = 64},
    },
    icon_size = 64,
    subgroup = "py-alienlife-korlex",
    order = "za"
}:add_unlock("korlex-mk02"):add_ingredient {type = "fluid", name = "fatty-acids", amount = 20}

RECIPE {
    type = "recipe",
    name = "compile-korlex-codex",
    category = "data-array",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "korlex-codex",   amount = 1},
        {type = "item", name = "neuroprocessor", amount = 1},
    },
    results = {
        {type = "item", name = "korlex-codex-mk02", amount = 1},
    },
}:add_unlock("korlex-mk02")

--MK03 REPLICATOR---

RECIPE {
    type = "recipe",
    name = "korlex-mk03r",
    category = "bio-printer",
    enabled = false,
    energy_required = 150,
    ingredients = {
        {type = "item",  name = "korlex-mk03",       amount = 4,  ignored_by_stats = 4},
        {type = "item",  name = "korlex-codex-mk03", amount = 1},
        {type = "item",  name = "alien-sample-03",   amount = 1},
        {type = "item",  name = "propeptides",       amount = 1},
        {type = "item",  name = "adrenal-cortex",    amount = 1},
        {type = "item",  name = "cdna",              amount = 2},
        {type = "fluid", name = "psc",               amount = 100},
        {type = "fluid", name = "artificial-blood",  amount = 50},
        {type = "item",  name = "bio-scafold",       amount = 8},
    },
    results = {
        {type = "item", name = "korlex-mk03", amount = 5, ignored_by_stats = 4, ignored_by_productivity = 4},
    },
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/korlex.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk03.png", icon_size = 64},
    },
    icon_size = 64,
    subgroup = "py-alienlife-korlex",
    order = "za"
}:add_unlock("korlex-mk03"):add_ingredient {type = "fluid", name = "fatty-acids", amount = 50}


RECIPE {
    type = "recipe",
    name = "compile-korlex-im",
    category = "data-array",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "korlex-codex-mk02", amount = 1},
        {type = "item", name = "neuromorphic-chip", amount = 1},
    },
    results = {
        {type = "item", name = "korlex-codex-mk03", amount = 1},
    },
}:add_unlock("korlex-mk03")

--MK04 REPLICATOR---

RECIPE {
    type = "recipe",
    name = "korlex-mk04r",
    category = "bio-printer",
    enabled = false,
    energy_required = 200,
    ingredients = {
        {type = "item",  name = "korlex-mk04",            amount = 4,  ignored_by_stats = 4},
        {type = "item",  name = "korlex-codex-mk04",      amount = 1},
        {type = "item",  name = "cdna",                   amount = 2},
        {type = "item",  name = "mmp",                    amount = 1},
        {type = "item",  name = "nonconductive-phazogen", amount = 1},
        {type = "item",  name = "enediyne",               amount = 1},
        {type = "item",  name = "bio-scafold",            amount = 8},
        {type = "fluid", name = "psc",                    amount = 100},
        {type = "fluid", name = "gta",                    amount = 50},
    },
    results = {
        {type = "item", name = "korlex-mk04", amount = 5, ignored_by_stats = 4, ignored_by_productivity = 4},
    },
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/korlex.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk04.png", icon_size = 64},
    },
    icon_size = 64,
    subgroup = "py-alienlife-korlex",
    order = "za"
}:add_unlock("korlex-mk04"):add_ingredient {type = "item", name = "mpa", amount = 1}:add_ingredient {type = "fluid", name = "clean-organic-pulp", amount = 50}

RECIPE {
    type = "recipe",
    name = "compile-korlex-ai",
    category = "data-array",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "korlex-codex-mk03", amount = 1},
        {type = "item", name = "control-unit",      amount = 1},
    },
    results = {
        {type = "item", name = "korlex-codex-mk04", amount = 1},
    },
}:add_unlock("korlex-mk04")
