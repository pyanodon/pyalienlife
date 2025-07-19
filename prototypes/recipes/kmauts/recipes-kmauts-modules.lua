--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--
--WIP--

RECIPE {
    type = "recipe",
    name = "kmauts-mk02",
    category = "rc",
    allowed_module_categories = {"kmauts"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "kmauts",        amount = 2},
        {type = "item", name = "kmauts-ration", amount = 2},
        {type = "item", name = "bedding",       amount = 4},
        {type = "item", name = "rennea",        amount = 5},
        {type = "item", name = "caged-ulric",   amount = 1},
        {type = "item", name = "water-barrel",  amount = 4},
    },
    results = {
        {type = "item", name = "kmauts-mk02", amount = 1, probability = 0.005},
        {type = "item", name = "kmauts",      amount = 1, probability = 0.5,  ignored_by_productivity = 1},
        {type = "item", name = "barrel",      amount = 4},
        {type = "item", name = "cage",        amount = 1},
    },
    --main_product = "kmauts-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk02.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/kmauts.png",  icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-kmauts",
    order = "za"
}:add_unlock("kmauts-mk02")

--mk03--
--WIP--

RECIPE {
    type = "recipe",
    name = "kmauts-mk03",
    category = "rc",
    allowed_module_categories = {"kmauts"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "kmauts",          amount = 2},
        {type = "item", name = "alien-sample-03", amount = 1},
        {type = "item", name = "kmauts-ration",   amount = 2},
        {type = "item", name = "bedding",         amount = 4},
        {type = "item", name = "rennea",          amount = 5},
        {type = "item", name = "caged-ulric",     amount = 1},
        {type = "item", name = "water-barrel",    amount = 4},
    },
    results = {
        {type = "item", name = "kmauts-mk03", amount = 1, probability = 0.004},
        {type = "item", name = "kmauts",      amount = 1, probability = 0.6,  ignored_by_productivity = 1},
        {type = "item", name = "barrel",      amount = 4},
        {type = "item", name = "cage",        amount = 1},
    },
    --main_product = "kmauts-mk03",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk03.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/kmauts.png",  icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-kmauts",
    order = "zb"
}:add_unlock("kmauts-mk03")

--mk04--
--WIP--

RECIPE {
    type = "recipe",
    name = "kmauts-mk04",
    category = "rc",
    allowed_module_categories = {"kmauts"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "kmauts",               amount = 2},
        {type = "item", name = "zinc-finger-proteins", amount = 1},
        {type = "item", name = "kmauts-ration",        amount = 2},
        {type = "item", name = "bedding",              amount = 4},
        {type = "item", name = "rennea",               amount = 5},
        {type = "item", name = "caged-ulric",          amount = 1},
        {type = "item", name = "water-barrel",         amount = 4},
    },
    results = {
        {type = "item", name = "kmauts-mk04", amount = 1, probability = 0.003},
        {type = "item", name = "kmauts",      amount = 1, probability = 0.6,  ignored_by_productivity = 1},
        {type = "item", name = "barrel",      amount = 4},
        {type = "item", name = "cage",        amount = 1},
    },
    --main_product = "kmauts-mk04",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk04.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/kmauts.png",  icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-kmauts",
    order = "zc"
}:add_unlock("kmauts-mk04")

--MK02 REPLICATOR---

RECIPE {
    type = "recipe",
    name = "kmauts-mk02r",
    category = "bio-printer",
    enabled = false,
    energy_required = 120,
    ingredients = {
        {type = "item",  name = "kmauts-mk02",       amount = 4, ignored_by_stats = 4},
        {type = "item",  name = "kmauts-codex-mk02", amount = 1},
        {type = "item",  name = "bio-scafold",       amount = 5},
        {type = "item",  name = "animal-sample-01",  amount = 2},
        {type = "item",  name = "cdna",              amount = 2},
        {type = "fluid", name = "fetal-serum",       amount = 80},
        {type = "fluid", name = "zogna-bacteria",    amount = 50},
        {type = "fluid", name = "flavonoids",        amount = 50},
        {type = "item",  name = "dna-polymerase",    amount = 1},
        {type = "item",  name = "agar",              amount = 2},
    },
    results = {
        {type = "item", name = "kmauts-mk02", amount = 5, ignored_by_stats = 4, ignored_by_productivity = 4},
    },
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/kmauts.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk02.png", icon_size = 64},
    },
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    icon_size = 64,
    subgroup = "py-alienlife-kmauts",
    order = "za"
}:add_unlock("kmauts-mk02")

RECIPE {
    type = "recipe",
    name = "compile-kmauts-codex",
    category = "data-array",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "kmauts-codex",   amount = 1},
        {type = "item", name = "neuroprocessor", amount = 1},
    },
    results = {
        {type = "item", name = "kmauts-codex-mk02", amount = 1},
    },
    allowed_module_categories = {"data-array", "speed", "efficiency", "quality"},
}:add_unlock("kmauts-mk02")

--MK03 REPLICATOR---

RECIPE {
    type = "recipe",
    name = "kmauts-mk03r",
    category = "bio-printer",
    enabled = false,
    energy_required = 150,
    ingredients = {
        {type = "item",  name = "kmauts-mk03",       amount = 4, ignored_by_stats = 4},
        {type = "item",  name = "kmauts-codex-mk03", amount = 1},
        {type = "item",  name = "bio-scafold",       amount = 8},
        {type = "item",  name = "cdna",              amount = 2},
        {type = "item",  name = "alien-sample-03",   amount = 1},
        {type = "item",  name = "propeptides",       amount = 1},
        {type = "item",  name = "primers",           amount = 1},
        {type = "fluid", name = "mutant-enzymes",    amount = 20},
        {type = "fluid", name = "chelator",          amount = 30},
        {type = "fluid", name = "oxygen",            amount = 50},
    },
    results = {
        {type = "item", name = "kmauts-mk03", amount = 5, ignored_by_stats = 4, ignored_by_productivity = 4},
    },
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/kmauts.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk03.png", icon_size = 64},
    },
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    icon_size = 64,
    subgroup = "py-alienlife-kmauts",
    order = "za"
}:add_unlock("kmauts-mk03")


RECIPE {
    type = "recipe",
    name = "compile-kmauts-im",
    category = "data-array",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "kmauts-codex-mk02", amount = 1},
        {type = "item", name = "neuromorphic-chip", amount = 1},
    },
    results = {
        {type = "item", name = "kmauts-codex-mk03", amount = 1},
    },
    allowed_module_categories = {"data-array", "speed", "efficiency", "quality"},
}:add_unlock("kmauts-mk03")

--MK04 REPLICATOR---

RECIPE {
    type = "recipe",
    name = "kmauts-mk04r",
    category = "bio-printer",
    enabled = false,
    energy_required = 200,
    ingredients = {
        {type = "item",  name = "kmauts-mk04",          amount = 4,  ignored_by_stats = 4},
        {type = "item",  name = "kmauts-codex-mk04",    amount = 1},
        {type = "item",  name = "cdna",                 amount = 2},
        {type = "item",  name = "bio-scafold",          amount = 8},
        {type = "item",  name = "enediyne",             amount = 1},
        {type = "item",  name = "alien-enzymes",        amount = 1},
        {type = "item",  name = "zinc-finger-proteins", amount = 1},
        {type = "item",  name = "mmp",                  amount = 1},
        {type = "fluid", name = "psc",                  amount = 100},
        {type = "fluid", name = "gta",                  amount = 50},
    },
    results = {
        {type = "item", name = "kmauts-mk04", amount = 5, ignored_by_stats = 4, ignored_by_productivity = 4},
    },
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/kmauts.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk04.png", icon_size = 64},
    },
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    icon_size = 64,
    subgroup = "py-alienlife-kmauts",
    order = "za"
}:add_unlock("kmauts-mk04"):add_ingredient {type = "fluid", name = "crude-enzyme", amount = 50}

RECIPE {
    type = "recipe",
    name = "compile-kmauts-ai",
    category = "data-array",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "kmauts-codex-mk03", amount = 1},
        {type = "item", name = "control-unit",      amount = 1},
    },
    results = {
        {type = "item", name = "kmauts-codex-mk04", amount = 1},
    },
    allowed_module_categories = {"data-array", "speed", "efficiency", "quality"},
}:add_unlock("kmauts-mk04")
