--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--
--WIP--

RECIPE {
    type = "recipe",
    name = "vonix-mk02",
    category = "rc",
    allowed_module_categories = {"vonix"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "vonix",         amount = 2},
        {type = "item", name = "caged-mukmoux", amount = 1},
        {type = "item", name = "guts",          amount = 5},
        {type = "item", name = "bedding",       amount = 10},
        {type = "item", name = "water-barrel",  amount = 15},
    },
    results = {
        {type = "item", name = "vonix-mk02", amount = 1, probability = 0.005},
        {type = "item", name = "barrel",     amount = 15},
        {type = "item", name = "vonix",      amount = 1, probability = 0.5,  ignored_by_productivity = 1},
    },
    --main_product = "vonix-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk02.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/vonix.png",   icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-vonix",
    order = "za"
}:add_unlock("vonix-mk02")

--mk03--
--WIP--

RECIPE {
    type = "recipe",
    name = "vonix-mk03",
    category = "rc",
    allowed_module_categories = {"vonix"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "vonix-mk02",      amount = 2},
        {type = "item", name = "alien-sample-03", amount = 1},
        {type = "item", name = "caged-mukmoux",   amount = 1},
        {type = "item", name = "guts",            amount = 5},
        {type = "item", name = "bedding",         amount = 10},
        {type = "item", name = "water-barrel",    amount = 15},
    },
    results = {
        {type = "item", name = "vonix-mk03", amount = 1, probability = 0.004},
        {type = "item", name = "barrel",     amount = 15},
        {type = "item", name = "vonix-mk02", amount = 1, probability = 0.6,  ignored_by_productivity = 1},
    },
    --main_product = "vonix-mk03",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk03.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/vonix.png",   icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-vonix",
    order = "zb"
}:add_unlock("vonix-mk03")

--mk04--
--WIP--

RECIPE {
    type = "recipe",
    name = "vonix-mk04",
    category = "rc",
    allowed_module_categories = {"vonix"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "vonix-mk03",           amount = 2},
        {type = "item", name = "zinc-finger-proteins", amount = 1},
        {type = "item", name = "caged-mukmoux",        amount = 1},
        {type = "item", name = "guts",                 amount = 5},
        {type = "item", name = "bedding",              amount = 10},
        {type = "item", name = "water-barrel",         amount = 15},
    },
    results = {
        {type = "item", name = "vonix-mk04", amount = 1, probability = 0.003},
        {type = "item", name = "barrel",     amount = 15},
        {type = "item", name = "vonix-mk03", amount = 1, probability = 0.7,  ignored_by_productivity = 1},
    },
    --main_product = "vonix-mk04",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk04.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/vonix.png",   icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-vonix",
    order = "zc"
}:add_unlock("vonix-mk04")

--MK02 REPLICATOR---

RECIPE {
    type = "recipe",
    name = "vonix-mk02r",
    category = "bio-printer",
    enabled = false,
    energy_required = 120,
    ingredients = {
        {type = "item",  name = "vonix-mk02",        amount = 2,  ignored_by_stats = 2},
        {type = "item",  name = "vonix-codex-mk02",  amount = 1},
        {type = "item",  name = "bio-scafold",       amount = 5},
        {type = "item",  name = "animal-sample-01",  amount = 2},
        {type = "item",  name = "cdna",              amount = 2},
        {type = "fluid", name = "fetal-serum",       amount = 80},
        {type = "fluid", name = "blood",             amount = 100},
        {type = "fluid", name = "flavonoids",        amount = 50},
        {type = "item",  name = "dna-polymerase",    amount = 1},
        {type = "item",  name = "fawogae-substrate", amount = 5},
        {type = "item",  name = "microcin-j25",      amount = 1},
    },
    results = {
        {type = "item", name = "vonix-mk02", amount = 3, ignored_by_stats = 2, ignored_by_productivity = 2},
    },
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/vonix.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk02.png", icon_size = 64},
    },
    icon_size = 64,
    subgroup = "py-alienlife-vonix",
    order = "za"
}:add_unlock("vonix-mk02")

RECIPE {
    type = "recipe",
    name = "compile-vonix-codex",
    category = "data-array",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "vonix-codex",    amount = 1},
        {type = "item", name = "neuroprocessor", amount = 1},
    },
    results = {
        {type = "item", name = "vonix-codex-mk02", amount = 1},
    },
}:add_unlock("vonix-mk02")

--MK03 REPLICATOR---

RECIPE {
    type = "recipe",
    name = "vonix-mk03r",
    category = "bio-printer",
    enabled = false,
    energy_required = 150,
    ingredients = {
        {type = "item",  name = "vonix-mk03",        amount = 2, ignored_by_stats = 2},
        {type = "item",  name = "vonix-codex-mk03",  amount = 1},
        {type = "item",  name = "bio-scafold",       amount = 8},
        {type = "item",  name = "cdna",              amount = 2},
        {type = "item",  name = "alien-sample-03",   amount = 1},
        {type = "item",  name = "chimeric-proteins", amount = 1},
        {type = "item",  name = "pacifastin",        amount = 1},
        {type = "fluid", name = "arqad-honey",       amount = 20},
        {type = "fluid", name = "chelator",          amount = 30},
        {type = "fluid", name = "fetal-serum",       amount = 50},
    },
    results = {
        {type = "item", name = "vonix-mk03", amount = 3, ignored_by_stats = 2, ignored_by_productivity = 2},
    },
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/vonix.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk03.png", icon_size = 64},
    },
    icon_size = 64,
    subgroup = "py-alienlife-vonix",
    order = "za"
}:add_unlock("vonix-mk03")


RECIPE {
    type = "recipe",
    name = "compile-vonix-im",
    category = "data-array",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "vonix-codex-mk02",  amount = 1},
        {type = "item", name = "neuromorphic-chip", amount = 1},
    },
    results = {
        {type = "item", name = "vonix-codex-mk03", amount = 1},
    },
}:add_unlock("vonix-mk03")
