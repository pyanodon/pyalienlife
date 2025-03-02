--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--
--WIP--

RECIPE {
    type = "recipe",
    name = "scrondrix-mk02",
    category = "rc",
    allowed_module_categories = {"scrondrix"},
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item", name = "scrondrix",    amount = 2},
        {type = "item", name = "meat",         amount = 5},
        {type = "item", name = "bedding",      amount = 4},
        {type = "item", name = "salt",         amount = 10},
        {type = "item", name = "wood-seeds",   amount = 10},
        {type = "item", name = "water-barrel", amount = 8},
    },
    results = {
        {type = "item", name = "scrondrix-mk02", amount = 1, probability = 0.01},
        {type = "item", name = "barrel",         amount = 8},
        {type = "item", name = "scrondrix",      amount = 1, probability = 0.5, ignored_by_productivity = 1},
    },
    --main_product = "scrondrix-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk02.png",   icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/scrondrix.png", icon_size = 64, scale = 0.35},
    },
    --icon_size = 64,
    subgroup = "py-alienlife-scrondrix",
    order = "za"
}:add_unlock("scrondrix-mk02")

--mk03--
--WIP--

RECIPE {
    type = "recipe",
    name = "scrondrix-mk03",
    category = "rc",
    allowed_module_categories = {"scrondrix"},
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item", name = "scrondrix",       amount = 2},
        {type = "item", name = "alien-sample-03", amount = 1},
        {type = "item", name = "meat",            amount = 5},
        {type = "item", name = "bedding",         amount = 4},
        {type = "item", name = "salt",            amount = 10},
        {type = "item", name = "wood-seeds",      amount = 10},
        {type = "item", name = "water-barrel",    amount = 8},
    },
    results = {
        {type = "item", name = "scrondrix-mk03", amount = 1, probability = 0.01},
        {type = "item", name = "barrel",         amount = 8},
        {type = "item", name = "scrondrix",      amount = 1, probability = 0.6, ignored_by_productivity = 1},
    },
    --main_product = "scrondrix-mk03",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk03.png",   icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/scrondrix.png", icon_size = 64, scale = 0.35},
    },
    subgroup = "py-alienlife-scrondrix",
    order = "zb"
}:add_unlock("scrondrix-mk03")

--mk04--
--WIP--

RECIPE {
    type = "recipe",
    name = "scrondrix-mk04",
    category = "rc",
    allowed_module_categories = {"scrondrix"},
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item", name = "scrondrix",            amount = 2},
        {type = "item", name = "zinc-finger-proteins", amount = 1},
        {type = "item", name = "meat",                 amount = 5},
        {type = "item", name = "bedding",              amount = 4},
        {type = "item", name = "salt",                 amount = 10},
        {type = "item", name = "wood-seeds",           amount = 10},
        {type = "item", name = "water-barrel",         amount = 8},
    },
    results = {
        {type = "item", name = "scrondrix-mk04", amount = 1, probability = 0.01},
        {type = "item", name = "barrel",         amount = 8},
        {type = "item", name = "scrondrix",      amount = 1, probability = 0.7, ignored_by_productivity = 1},
    },
    --main_product = "scrondrix-mk04",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk04.png",   icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/scrondrix.png", icon_size = 64, scale = 0.35},
    },
    subgroup = "py-alienlife-scrondrix",
    order = "zc"
}:add_unlock("scrondrix-mk04")

--MK02 REPLICATOR---

RECIPE {
    type = "recipe",
    name = "scrondrix-mk02r",
    category = "bio-printer",
    enabled = false,
    energy_required = 120,
    ingredients = {
        {type = "item",  name = "scrondrix-mk02",       amount = 3,  ignored_by_stats = 3},
        {type = "item",  name = "scrondrix-codex-mk02", amount = 1},
        {type = "item",  name = "animal-sample-01",     amount = 2},
        {type = "item",  name = "cdna",                 amount = 2},
        {type = "item",  name = "bio-scafold",          amount = 4},
        {type = "fluid", name = "flavonoids",           amount = 100},
        {type = "fluid", name = "fetal-serum",          amount = 50},
        {type = "fluid", name = "xenogenic-cells",      amount = 100},
        {type = "item",  name = "solidified-sarcorus",  amount = 1},
    },
    results = {
        {type = "item", name = "scrondrix-mk02", amount = 4, ignored_by_stats = 3, ignored_by_productivity = 3},
    },
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/scrondrix.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk02.png", icon_size = 64},
    },
    icon_size = 64,
    subgroup = "py-alienlife-scrondrix",
    order = "za"
}:add_unlock("scrondrix-mk02")

RECIPE {
    type = "recipe",
    name = "compile-scrondrix-codex",
    category = "data-array",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "scrondrix-codex", amount = 1},
        {type = "item", name = "neuroprocessor",  amount = 1},
    },
    results = {
        {type = "item", name = "scrondrix-codex-mk02", amount = 1},
    },
}:add_unlock("scrondrix-mk02")

--MK03 REPLICATOR---

RECIPE {
    type = "recipe",
    name = "scrondrix-mk03r",
    category = "bio-printer",
    enabled = false,
    energy_required = 150,
    ingredients = {
        {type = "item",  name = "scrondrix-mk03",       amount = 3,  ignored_by_stats = 3},
        {type = "item",  name = "scrondrix-codex-mk03", amount = 1},
        {type = "item",  name = "alien-sample-03",      amount = 1},
        {type = "item",  name = "cdna",                 amount = 2},
        {type = "item",  name = "bio-scafold",          amount = 5},
        {type = "fluid", name = "chelator",             amount = 100},
        {type = "fluid", name = "artificial-blood",     amount = 50},
        {type = "fluid", name = "arqad-jelly",          amount = 10},
        {type = "item",  name = "adrenal-cortex",       amount = 1},
        {type = "item",  name = "paragen",              amount = 1},
        {type = "item",  name = "sugar",                amount = 3},
    },
    results = {
        {type = "item", name = "scrondrix-mk03", amount = 4, ignored_by_stats = 3, ignored_by_productivity = 3},
    },
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/scrondrix.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk03.png", icon_size = 64},
    },
    icon_size = 64,
    subgroup = "py-alienlife-scrondrix",
    order = "za"
}:add_unlock("scrondrix-mk03")


RECIPE {
    type = "recipe",
    name = "compile-scrondrix-im",
    category = "data-array",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "scrondrix-codex-mk02", amount = 1},
        {type = "item", name = "neuromorphic-chip",    amount = 1},
    },
    results = {
        {type = "item", name = "scrondrix-codex-mk03", amount = 1},
    },
}:add_unlock("scrondrix-mk03")

--MK04 REPLICATOR---

RECIPE {
    type = "recipe",
    name = "scrondrix-mk04r",
    category = "bio-printer",
    enabled = false,
    energy_required = 200,
    ingredients = {
        {type = "item",  name = "scrondrix-mk04",       amount = 4,  ignored_by_stats = 4},
        {type = "item",  name = "scrondrix-codex-mk04", amount = 1},
        {type = "item",  name = "cdna",                 amount = 2},
        {type = "item",  name = "bio-scafold",          amount = 8},
        {type = "item",  name = "negasium",             amount = 1},
        {type = "item",  name = "adam42-gen",           amount = 1},
        {type = "fluid", name = "psc",                  amount = 100},
        {type = "fluid", name = "helium",               amount = 50},
        {type = "fluid", name = "gta",                  amount = 50},
    },
    results = {
        {type = "item", name = "scrondrix-mk04", amount = 5, ignored_by_stats = 4, ignored_by_productivity = 4},
    },
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/scrondrix.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk04.png", icon_size = 64},
    },
    icon_size = 64,
    subgroup = "py-alienlife-scrondrix",
    order = "za"
}:add_unlock("scrondrix-mk04"):add_ingredient {type = "item", name = "mpa", amount = 1}:add_ingredient {type = "item", name = "nanocarrier", amount = 1}

RECIPE {
    type = "recipe",
    name = "compile-scrondrix-ai",
    category = "data-array",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "scrondrix-codex-mk03", amount = 1},
        {type = "item", name = "control-unit",         amount = 1},
    },
    results = {
        {type = "item", name = "scrondrix-codex-mk04", amount = 1},
    },
}:add_unlock("scrondrix-mk04")
