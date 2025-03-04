--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--
--WIP--

RECIPE {
    type = "recipe",
    name = "dingrits-mk02",
    category = "rc",
    allowed_module_categories = {"dingrits"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "dingrits",        amount = 2},
        {type = "item", name = "caged-scrondrix", amount = 1},
        {type = "item", name = "bedding",         amount = 4},
        {type = "item", name = "yaedols",         amount = 5},
        {type = "item", name = "water-barrel",    amount = 5},
    },
    results = {
        {type = "item", name = "dingrits-mk02", amount = 1, probability = 0.005},
        {type = "item", name = "dingrits",      amount = 1, probability = 0.5,  ignored_by_productivity = 1},
        {type = "item", name = "barrel",        amount = 5},
        {type = "item", name = "cage",          amount = 1},
    },
    --main_product = "dingrits-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk02.png",  icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/dingrits.png", icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-dingrits",
    order = "za"
}:add_unlock("dingrits-mk02")

--mk03--
--WIP--

RECIPE {
    type = "recipe",
    name = "dingrits-mk03",
    category = "rc",
    allowed_module_categories = {"dingrits"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "dingrits",        amount = 2},
        {type = "item", name = "caged-scrondrix", amount = 1},
        {type = "item", name = "alien-sample-03", amount = 1},
        {type = "item", name = "bedding",         amount = 4},
        {type = "item", name = "yaedols",         amount = 5},
        {type = "item", name = "water-barrel",    amount = 5},
    },
    results = {
        {type = "item", name = "dingrits-mk03", amount = 1, probability = 0.004},
        {type = "item", name = "dingrits",      amount = 1, probability = 0.6,  ignored_by_productivity = 1},
        {type = "item", name = "barrel",        amount = 5},
        {type = "item", name = "cage",          amount = 1},
    },
    --main_product = "dingrits-mk03",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk03.png",  icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/dingrits.png", icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-dingrits",
    order = "zb"
}:add_unlock("dingrits-mk03")

--mk04--
--WIP--

RECIPE {
    type = "recipe",
    name = "dingrits-mk04",
    category = "rc",
    allowed_module_categories = {"dingrits"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "dingrits",             amount = 2},
        {type = "item", name = "caged-scrondrix",      amount = 1},
        {type = "item", name = "zinc-finger-proteins", amount = 1},
        {type = "item", name = "bedding",              amount = 4},
        {type = "item", name = "yaedols",              amount = 5},
        {type = "item", name = "water-barrel",         amount = 5},
    },
    results = {
        {type = "item", name = "dingrits-mk04", amount = 1, probability = 0.003},
        {type = "item", name = "dingrits",      amount = 1, probability = 0.7,  ignored_by_productivity = 1},
        {type = "item", name = "barrel",        amount = 5},
        {type = "item", name = "cage",          amount = 1},
    },
    --main_product = "dingrits-mk04",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk04.png",  icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/dingrits.png", icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-dingrits",
    order = "zc"
}:add_unlock("dingrits-mk04")

--MK02 REPLICATOR---

RECIPE {
    type = "recipe",
    name = "dingrits-mk02r",
    category = "bio-printer",
    enabled = false,
    energy_required = 120,
    ingredients = {
        {type = "item",  name = "dingrits-mk02",       amount = 4,  ignored_by_stats = 4},
        {type = "item",  name = "dingrits-codex-mk02", amount = 1},
        {type = "item",  name = "bio-scafold",         amount = 5},
        {type = "item",  name = "animal-sample-01",    amount = 2},
        {type = "item",  name = "cdna",                amount = 2},
        {type = "fluid", name = "fetal-serum",         amount = 80},
        {type = "fluid", name = "water-saline",        amount = 200},
        {type = "fluid", name = "psc",                 amount = 50},
        {type = "item",  name = "bio-sample",          amount = 2},
        {type = "item",  name = "moss-gen",            amount = 1},
    },
    results = {
        {type = "item", name = "dingrits-mk02", amount = 5, ignored_by_stats = 4, ignored_by_productivity = 4},
    },
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/dingrits.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk02.png", icon_size = 64},
    },
    icon_size = 64,
    subgroup = "py-alienlife-dingrits",
    order = "za"
}:add_unlock("dingrits-mk02")

RECIPE {
    type = "recipe",
    name = "compile-dingrits-codex",
    category = "data-array",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "dingrits-codex", amount = 1},
        {type = "item", name = "neuroprocessor", amount = 1},
    },
    results = {
        {type = "item", name = "dingrits-codex-mk02", amount = 1},
    },
}:add_unlock("dingrits-mk02")

--MK03 REPLICATOR---

RECIPE {
    type = "recipe",
    name = "dingrits-mk03r",
    category = "bio-printer",
    enabled = false,
    energy_required = 150,
    ingredients = {
        {type = "item",  name = "dingrits-mk03",       amount = 4,  ignored_by_stats = 4},
        {type = "item",  name = "dingrits-codex-mk03", amount = 1},
        {type = "item",  name = "bio-scafold",         amount = 8},
        {type = "item",  name = "cdna",                amount = 2},
        {type = "item",  name = "alien-sample-03",     amount = 1},
        {type = "item",  name = "negasium",            amount = 1},
        {type = "item",  name = "sugar",               amount = 1},
        {type = "fluid", name = "artificial-blood",    amount = 100},
        {type = "fluid", name = "arqad-jelly",         amount = 20},
        {type = "fluid", name = "arqad-honey",         amount = 50},
    },
    results = {
        {type = "item", name = "dingrits-mk03", amount = 5, ignored_by_stats = 4, ignored_by_productivity = 4},
    },
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/dingrits.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk03.png", icon_size = 64},
    },
    icon_size = 64,
    subgroup = "py-alienlife-dingrits",
    order = "za"
}:add_unlock("dingrits-mk03")


RECIPE {
    type = "recipe",
    name = "compile-dingrits-im",
    category = "data-array",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "dingrits-codex-mk02", amount = 1},
        {type = "item", name = "neuromorphic-chip",   amount = 1},
    },
    results = {
        {type = "item", name = "dingrits-codex-mk03", amount = 1},
    },
}:add_unlock("dingrits-mk03")

--MK04 REPLICATOR---

RECIPE {
    type = "recipe",
    name = "dingrits-mk04r",
    category = "bio-printer",
    enabled = false,
    energy_required = 200,
    ingredients = {
        {type = "item",  name = "dingrits-mk04",          amount = 4,  ignored_by_stats = 4},
        {type = "item",  name = "dingrits-codex-mk04",    amount = 1},
        {type = "item",  name = "cdna",                   amount = 2},
        {type = "item",  name = "bio-scafold",            amount = 8},
        {type = "item",  name = "dynemicin",              amount = 1},
        {type = "item",  name = "adam42-gen",             amount = 1},
        {type = "item",  name = "nonconductive-phazogen", amount = 1},
        {type = "item",  name = "cysteine",               amount = 1},
        {type = "fluid", name = "psc",                    amount = 100},
        {type = "fluid", name = "tholins",                amount = 50},
    },
    results = {
        {type = "item", name = "dingrits-mk04", amount = 5, ignored_by_stats = 4, ignored_by_productivity = 4},
    },
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/dingrits.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk04.png", icon_size = 64},
    },
    icon_size = 64,
    subgroup = "py-alienlife-dingrits",
    order = "za"
}:add_unlock("dingrits-mk04"):add_ingredient {type = "fluid", name = "crude-enzyme", amount = 50}

RECIPE {
    type = "recipe",
    name = "compile-dingrits-ai",
    category = "data-array",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "dingrits-codex-mk03", amount = 1},
        {type = "item", name = "control-unit",        amount = 1},
    },
    results = {
        {type = "item", name = "dingrits-codex-mk04", amount = 1},
    },
}:add_unlock("dingrits-mk04")
