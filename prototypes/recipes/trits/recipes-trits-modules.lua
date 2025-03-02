--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--
--WIP--

RECIPE {
    type = "recipe",
    name = "trits-mk02",
    category = "rc",
    allowed_module_categories = {"trits"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "trits",            amount = 2},
        {type = "item",  name = "seaweed",          amount = 10},
        {type = "item",  name = "filtration-media", amount = 5},
        {type = "item",  name = "sodium-alginate",  amount = 10},
        {type = "item",  name = "sea-sponge",       amount = 4},
        {type = "fluid", name = "water-saline",     amount = 300},
    },
    results = {
        {type = "item", name = "trits-mk02", amount = 1, probability = 0.005},
        {type = "item", name = "trits",      amount = 1, probability = 0.5,  ignored_by_productivity = 1},
        --{type = 'item', name = 'barrel', amount = 7},
    },
    --main_product = "trits-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk02.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/trits.png",   icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-trits",
    order = "za"
}:add_unlock("trits-mk02")

--mk03--
--WIP--

RECIPE {
    type = "recipe",
    name = "trits-mk03",
    category = "rc",
    allowed_module_categories = {"trits"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "trits",            amount = 2},
        {type = "item",  name = "alien-sample-03",  amount = 1},
        {type = "item",  name = "seaweed",          amount = 10},
        {type = "item",  name = "filtration-media", amount = 5},
        {type = "item",  name = "sodium-alginate",  amount = 10},
        {type = "item",  name = "sea-sponge",       amount = 4},
        {type = "fluid", name = "water-saline",     amount = 300},
    },
    results = {
        {type = "item", name = "trits-mk03", amount = 1, probability = 0.004},
        {type = "item", name = "trits",      amount = 1, probability = 0.6,  ignored_by_productivity = 1},
        --{type = 'item', name = 'barrel', amount = 7},
    },
    --main_product = "trits-mk03",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk03.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/trits.png",   icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-trits",
    order = "zb"
}:add_unlock("trits-mk03")

--mk04--
--WIP--

RECIPE {
    type = "recipe",
    name = "trits-mk04",
    category = "rc",
    allowed_module_categories = {"trits"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "trits",                amount = 2},
        {type = "item",  name = "zinc-finger-proteins", amount = 1},
        {type = "item",  name = "seaweed",              amount = 10},
        {type = "item",  name = "filtration-media",     amount = 5},
        {type = "item",  name = "sodium-alginate",      amount = 10},
        {type = "item",  name = "sea-sponge",           amount = 4},
        {type = "fluid", name = "water-saline",         amount = 300},
    },
    results = {
        {type = "item", name = "trits-mk04", amount = 1, probability = 0.003},
        {type = "item", name = "trits",      amount = 1, probability = 0.7,  ignored_by_productivity = 1},
        --{type = 'item', name = 'barrel', amount = 7},
    },
    --main_product = "trits-mk04",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk04.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/trits.png",   icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-trits",
    order = "zc"
}:add_unlock("trits-mk04")

--MK02 REPLICATOR---

RECIPE {
    type = "recipe",
    name = "trits-mk02r",
    category = "bio-printer",
    enabled = false,
    energy_required = 250,
    ingredients = {
        {type = "item",  name = "trits-mk02",          amount = 4,  ignored_by_stats = 4},
        {type = "item",  name = "trits-codex-mk02",    amount = 1},
        {type = "item",  name = "bio-scafold",         amount = 5},
        {type = "item",  name = "animal-sample-01",    amount = 2},
        {type = "item",  name = "cdna",                amount = 2},
        {type = "fluid", name = "fetal-serum",         amount = 80},
        {type = "fluid", name = "flavonoids",          amount = 50},
        {type = "fluid", name = "water-saline",        amount = 500},
        {type = "item",  name = "microcin-j25",        amount = 1},
        {type = "item",  name = "solidified-sarcorus", amount = 1},
    },
    results = {
        {type = "item", name = "trits-mk02", amount = 5, ignored_by_stats = 4, ignored_by_productivity = 4},
    },
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/trits.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk02.png", icon_size = 64},
    },
    icon_size = 64,
    subgroup = "py-alienlife-trits",
    order = "za"
}:add_unlock("trits-mk02")

RECIPE {
    type = "recipe",
    name = "compile-trits-codex",
    category = "data-array",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "trits-codex",    amount = 1},
        {type = "item", name = "neuroprocessor", amount = 1},
    },
    results = {
        {type = "item", name = "trits-codex-mk02", amount = 1},
    },
}:add_unlock("trits-mk02")

--MK03 REPLICATOR---

RECIPE {
    type = "recipe",
    name = "trits-mk03r",
    category = "bio-printer",
    enabled = false,
    energy_required = 250,
    ingredients = {
        {type = "item",  name = "trits-mk03",        amount = 4,  ignored_by_stats = 4},
        {type = "item",  name = "trits-codex-mk03",  amount = 1},
        {type = "item",  name = "bio-scafold",       amount = 8},
        {type = "item",  name = "cdna",              amount = 2},
        {type = "item",  name = "alien-sample-03",   amount = 1},
        {type = "item",  name = "chitosan",          amount = 2},
        {type = "item",  name = "immunosupressants", amount = 1},
        {type = "fluid", name = "artificial-blood",  amount = 50},
        {type = "fluid", name = "arqad-honey",       amount = 100},
        {type = "fluid", name = "chelator",          amount = 50},
    },
    results = {
        {type = "item", name = "trits-mk03", amount = 5, ignored_by_stats = 4, ignored_by_productivity = 4},
    },
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/trits.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk03.png", icon_size = 64},
    },
    icon_size = 64,
    subgroup = "py-alienlife-trits",
    order = "za"
}:add_unlock("trits-mk03")


RECIPE {
    type = "recipe",
    name = "compile-trits-im",
    category = "data-array",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "trits-codex-mk02",  amount = 1},
        {type = "item", name = "neuromorphic-chip", amount = 1},
    },
    results = {
        {type = "item", name = "trits-codex-mk03", amount = 1},
    },
}:add_unlock("trits-mk03")

--MK04 REPLICATOR---

RECIPE {
    type = "recipe",
    name = "trits-mk04r",
    category = "bio-printer",
    enabled = false,
    energy_required = 350,
    ingredients = {
        {type = "item",  name = "trits-mk04",         amount = 4,  ignored_by_stats = 4},
        {type = "item",  name = "trits-codex-mk04",   amount = 1},
        {type = "item",  name = "cdna",               amount = 2},
        {type = "item",  name = "bio-scafold",        amount = 8},
        {type = "item",  name = "cysteine",           amount = 1},
        {type = "item",  name = "denatured-seismite", amount = 1},
        {type = "item",  name = "bmp",                amount = 1},
        {type = "fluid", name = "psc",                amount = 100},
        {type = "fluid", name = "gta",                amount = 50},
        {type = "fluid", name = "tholins",            amount = 100},
    },
    results = {
        {type = "item", name = "trits-mk04", amount = 5, ignored_by_stats = 4, ignored_by_productivity = 4},
    },
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/trits.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk04.png", icon_size = 64},
    },
    icon_size = 64,
    subgroup = "py-alienlife-trits",
    order = "za"
}:add_unlock("trits-mk04"):add_ingredient {type = "item", name = "nanocarrier", amount = 1}

RECIPE {
    type = "recipe",
    name = "compile-trits-ai",
    category = "data-array",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "trits-codex-mk03", amount = 1},
        {type = "item", name = "control-unit",     amount = 1},
    },
    results = {
        {type = "item", name = "trits-codex-mk04", amount = 1},
    },
}:add_unlock("trits-mk04")
