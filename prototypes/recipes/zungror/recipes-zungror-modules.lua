--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--
--WIP--

RECIPE {
    type = "recipe",
    name = "zungror-mk02",
    category = "rc",
    allowed_module_categories = {"zungror"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "zungror",       amount = 2},
        {type = "item", name = "caged-mukmoux", amount = 1},
        {type = "item", name = "guts",          amount = 5},
        {type = "item", name = "bedding",       amount = 10},
        {type = "item", name = "water-barrel",  amount = 15},
    },
    results = {
        {type = "item", name = "zungror-mk02", amount = 1, probability = 0.005},
        {type = "item", name = "barrel",       amount = 15},
        {type = "item", name = "zungror",      amount = 1, probability = 0.5,  ignored_by_productivity = 1},
        {type = "item", name = "cage",         amount = 1},
    },
    main_product = "zungror-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk02.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/zungror.png", icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-zungror",
    order = "za"
}:add_unlock("zungror-mk02")

--mk03--
--WIP--

RECIPE {
    type = "recipe",
    name = "zungror-mk03",
    category = "rc",
    allowed_module_categories = {"zungror"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "zungror",         amount = 2},
        {type = "item", name = "alien-sample-03", amount = 1},
        {type = "item", name = "caged-mukmoux",   amount = 1},
        {type = "item", name = "guts",            amount = 5},
        {type = "item", name = "bedding",         amount = 10},
        {type = "item", name = "water-barrel",    amount = 15},
    },
    results = {
        {type = "item", name = "zungror-mk03", amount = 1, probability = 0.004},
        {type = "item", name = "barrel",       amount = 15},
        {type = "item", name = "zungror",      amount = 1, probability = 0.6,  ignored_by_productivity = 1},
        {type = "item", name = "cage",         amount = 1},
    },
    main_product = "zungror-mk03",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk03.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/zungror.png", icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-zungror",
    order = "zb"
}:add_unlock("zungror-mk03")

--mk04--
--WIP--

RECIPE {
    type = "recipe",
    name = "zungror-mk04",
    category = "rc",
    allowed_module_categories = {"zungror"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "zungror",              amount = 2},
        {type = "item", name = "zinc-finger-proteins", amount = 1},
        {type = "item", name = "caged-mukmoux",        amount = 1},
        {type = "item", name = "guts",                 amount = 5},
        {type = "item", name = "bedding",              amount = 10},
        {type = "item", name = "water-barrel",         amount = 15},
    },
    results = {
        {type = "item", name = "zungror-mk04", amount = 1, probability = 0.003},
        {type = "item", name = "barrel",       amount = 15},
        {type = "item", name = "cage",         amount = 1},
        {type = "item", name = "zungror",      amount = 1, probability = 0.7,  ignored_by_productivity = 1},
    },
    main_product = "zungror-mk04",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk04.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/zungror.png", icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-zungror",
    order = "zc"
}:add_unlock("zungror-mk04")


--MK02 REPLICATOR---

RECIPE {
    type = "recipe",
    name = "zungror-mk02r",
    category = "bio-printer",
    enabled = false,
    energy_required = 250,
    ingredients = {
        {type = "item",  name = "zungror-mk02",       amount = 4,  ignored_by_stats = 4},
        {type = "item",  name = "zungror-codex-mk02", amount = 1},
        {type = "item",  name = "bio-scafold",        amount = 5},
        {type = "item",  name = "animal-sample-01",   amount = 5},
        {type = "item",  name = "cdna",               amount = 5},
        {type = "fluid", name = "fetal-serum",        amount = 150},
        {type = "fluid", name = "oxygen",             amount = 200},
        {type = "fluid", name = "flavonoids",         amount = 100},
        {type = "item",  name = "microcin-j25",       amount = 2},
        {type = "item",  name = "resveratrol",        amount = 3},
        {type = "item",  name = "bio-sample",         amount = 10},
    },
    results = {
        {type = "item", name = "zungror-mk02", amount = 5, ignored_by_stats = 4, ignored_by_productivity = 4},
    },
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/zungror.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk02.png", icon_size = 64},
    },
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    icon_size = 64,
    subgroup = "py-alienlife-zungror",
    order = "za"
}:add_unlock("zungror-mk02")

RECIPE {
    type = "recipe",
    name = "compile-zungror-codex",
    category = "data-array",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "zungror-codex",  amount = 1},
        {type = "item", name = "neuroprocessor", amount = 1},
    },
    results = {
        {type = "item", name = "zungror-codex-mk02", amount = 1},
    },
    allowed_module_categories = {"data-array", "speed", "efficiency", "quality"},
}:add_unlock("zungror-mk02")

--MK03 REPLICATOR---

RECIPE {
    type = "recipe",
    name = "zungror-mk03r",
    category = "bio-printer",
    enabled = false,
    energy_required = 250,
    ingredients = {
        {type = "item",  name = "zungror-mk03",       amount = 4, ignored_by_stats = 4},
        {type = "item",  name = "zungror-codex-mk03", amount = 1},
        {type = "item",  name = "bio-scafold",        amount = 8},
        {type = "item",  name = "cdna",               amount = 2},
        {type = "item",  name = "alien-sample-03",    amount = 1},
        {type = "item",  name = "adrenal-cortex",     amount = 1},
        {type = "item",  name = "purine-analogues",   amount = 1},
        {type = "item",  name = "negasium",           amount = 1},
        {type = "fluid", name = "mutant-enzymes",     amount = 50},
        {type = "fluid", name = "artificial-blood",   amount = 50},
    },
    results = {
        {type = "item", name = "zungror-mk03", amount = 5, ignored_by_stats = 4, ignored_by_productivity = 4},
    },
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/zungror.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk03.png", icon_size = 64},
    },
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    icon_size = 64,
    subgroup = "py-alienlife-zungror",
    order = "za"
}:add_unlock("zungror-mk03"):add_ingredient {type = "fluid", name = "fatty-acids", amount = 100}


RECIPE {
    type = "recipe",
    name = "compile-zungror-im",
    category = "data-array",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "zungror-codex-mk02", amount = 1},
        {type = "item", name = "neuromorphic-chip",  amount = 1},
    },
    results = {
        {type = "item", name = "zungror-codex-mk03", amount = 1},
    },
    allowed_module_categories = {"data-array", "speed", "efficiency", "quality"},
}:add_unlock("zungror-mk03")

--MK04 REPLICATOR---

RECIPE {
    type = "recipe",
    name = "zungror-mk04r",
    category = "bio-printer",
    enabled = false,
    energy_required = 350,
    ingredients = {
        {type = "item",  name = "zungror-mk04",       amount = 4,  ignored_by_stats = 4},
        {type = "item",  name = "zungror-codex-mk04", amount = 1},
        {type = "item",  name = "cdna",               amount = 2},
        {type = "item",  name = "bio-scafold",        amount = 8},
        {type = "item",  name = "alien-enzymes",      amount = 1},
        {type = "item",  name = "mmp",                amount = 1},
        {type = "item",  name = "antitumor",          amount = 1},
        {type = "item",  name = "bmp",                amount = 1},
        {type = "fluid", name = "gta",                amount = 50},
        {type = "fluid", name = "tholins",            amount = 500},
    },
    results = {
        {type = "item", name = "zungror-mk04", amount = 5, ignored_by_stats = 4, ignored_by_productivity = 4},
    },
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/zungror.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk04.png", icon_size = 64},
    },
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    icon_size = 64,
    subgroup = "py-alienlife-zungror",
    order = "za"
}:add_unlock("zungror-mk04"):add_ingredient {type = "fluid", name = "crude-enzyme", amount = 50}:add_ingredient {type = "item", name = "nanocarrier", amount = 1}

RECIPE {
    type = "recipe",
    name = "compile-zungror-ai",
    category = "data-array",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "zungror-codex-mk03", amount = 1},
        {type = "item", name = "control-unit",       amount = 1},
    },
    results = {
        {type = "item", name = "zungror-codex-mk04", amount = 1},
    },
    allowed_module_categories = {"data-array", "speed", "efficiency", "quality"},
}:add_unlock("zungror-mk04")
