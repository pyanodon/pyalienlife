--Secondary Upgrade Recipes--
--SUR--
--WIP--

RECIPE {
    type = "recipe",
    name = "simik-mk02",
    category = "rc",
    allowed_module_categories = {"simik"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "simik",         amount = 2},
        {type = "item",  name = "simik-food-01", amount = 1},
        {type = "item",  name = "bio-sample",    amount = 1},
        {type = "item",  name = "bedding",       amount = 4},
        {type = "item",  name = "navens",        amount = 6},
        {type = "fluid", name = "olefin",        amount = 50},
    },
    results = {
        {type = "item", name = "simik-mk02", amount = 1, probability = 0.005},
        {type = "item", name = "simik",      amount = 1, probability = 0.5,  ignored_by_productivity = 1},
        --{type = 'item', name = 'barrel', amount = 7},
    },
    --main_product = "simik-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk02.png", icon_size = 64},
        {icon = "__pyalienlifegraphics2__/graphics/icons/simik.png",  icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-simik",
    order = "za"
}:add_unlock("simik-mk02"):add_ingredient {type = "item", name = "stone-wool", amount = 1}:add_ingredient {type = "fluid", name = "reactor-waste-1", amount = 10}

--mk03--
--WIP--

RECIPE {
    type = "recipe",
    name = "simik-mk03",
    category = "rc",
    allowed_module_categories = {"simik"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "simik-mk02",    amount = 2},
        {type = "item",  name = "simik-food-02", amount = 1},
        {type = "item",  name = "scrondrix",     amount = 1},
        {type = "fluid", name = "olefin",        amount = 50},
    },
    results = {
        {type = "item", name = "simik-mk03", amount = 1, probability = 0.004},
        {type = "item", name = "simik-mk02", amount = 1, probability = 0.6,  ignored_by_productivity = 1},
        --{type = 'item', name = 'barrel', amount = 7},
    },
    --main_product = "simik-mk03",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk03.png", icon_size = 64},
        {icon = "__pyalienlifegraphics2__/graphics/icons/simik.png",  icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-simik",
    order = "zb"
}:add_unlock("simik-mk03"):add_ingredient {type = "item", name = "advanced-substrate", amount = 1}:add_ingredient {type = "item", name = "biopolymer", amount = 1}:add_ingredient {type = "fluid", name = "plutonium-peroxide", amount = 10}

--mk04--
--WIP--

RECIPE {
    type = "recipe",
    name = "simik-mk04",
    category = "rc",
    allowed_module_categories = {"simik"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "simik-mk03",        amount = 2},
        {type = "item",  name = "simik-food-02",     amount = 1},
        {type = "item",  name = "py-science-pack-3", amount = 1},
        {type = "item",  name = "bedding",           amount = 4},
        {type = "item",  name = "bhoddos",           amount = 3},
        {type = "fluid", name = "olefin",            amount = 50},
    },
    results = {
        {type = "item", name = "simik-mk04", amount = 1, probability = 0.003},
        {type = "item", name = "simik-mk03", amount = 1, probability = 0.7,  ignored_by_productivity = 1},
        --{type = 'item', name = 'barrel', amount = 7},
    },
    --main_product = "simik-mk04",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk04.png", icon_size = 64},
        {icon = "__pyalienlifegraphics2__/graphics/icons/simik.png",  icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-simik",
    order = "zc"
}:add_unlock("simik-mk04"):add_ingredient {type = "item", name = "advanced-substrate", amount = 1}:add_ingredient {type = "fluid", name = "fluorine-gas", amount = 10}

--MK02 REPLICATOR---

RECIPE {
    type = "recipe",
    name = "simik-mk02r",
    category = "bio-printer",
    enabled = false,
    energy_required = 250,
    ingredients = {
        {type = "item",  name = "simik-mk02",             amount = 3,  ignored_by_stats = 3},
        {type = "item",  name = "simik-codex-mk02",       amount = 1},
        {type = "item",  name = "bio-scafold",            amount = 5},
        {type = "item",  name = "strorix-unknown-sample", amount = 3},
        {type = "item",  name = "cdna",                   amount = 5},
        {type = "item",  name = "uranium-ore",            amount = 50},
        {type = "fluid", name = "fetal-serum",            amount = 80},
        {type = "fluid", name = "flavonoids",             amount = 50},
        {type = "fluid", name = "zogna-bacteria",         amount = 100},
        {type = "item",  name = "microcin-j25",           amount = 1},
        {type = "item",  name = "dna-polymerase",         amount = 1},
    },
    results = {
        {type = "item", name = "simik-mk02", amount = 4, ignored_by_stats = 3, ignored_by_productivity = 3},
    },
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/simik.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk02.png", icon_size = 64},
    },
    icon_size = 64,
    subgroup = "py-alienlife-simik",
    order = "za"
}:add_unlock("simik-mk02"):add_ingredient {type = "item", name = "urea", amount = 50}

RECIPE {
    type = "recipe",
    name = "compile-simik-codex",
    category = "data-array",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "simik-codex",    amount = 1},
        {type = "item", name = "neuroprocessor", amount = 1},
    },
    results = {
        {type = "item", name = "simik-codex-mk02", amount = 1},
    },
}:add_unlock("simik-mk02")

--MK03 REPLICATOR---

RECIPE {
    type = "recipe",
    name = "simik-mk03r",
    category = "bio-printer",
    enabled = false,
    energy_required = 250,
    ingredients = {
        {type = "item",  name = "simik-mk03",             amount = 4, ignored_by_stats = 4},
        {type = "item",  name = "simik-codex-mk03",       amount = 1},
        {type = "item",  name = "bio-scafold",            amount = 8},
        {type = "item",  name = "cdna",                   amount = 2},
        {type = "item",  name = "strorix-unknown-sample", amount = 3},
        {type = "item",  name = "primers",                amount = 5},
        {type = "item",  name = "chimeric-proteins",      amount = 2},
        {type = "item",  name = "immunosupressants",      amount = 1},
        {type = "fluid", name = "artificial-blood",       amount = 50},
        {type = "fluid", name = "arqad-jelly",            amount = 50},
        {type = "fluid", name = "mutant-enzymes",         amount = 50},
    },
    results = {
        {type = "item", name = "simik-mk03", amount = 5, ignored_by_stats = 4, ignored_by_productivity = 4},
    },
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/simik.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk03.png", icon_size = 64},
    },
    icon_size = 64,
    subgroup = "py-alienlife-simik",
    order = "za"
}:add_unlock("simik-mk03")


RECIPE {
    type = "recipe",
    name = "compile-simik-im",
    category = "data-array",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "simik-codex-mk02",  amount = 1},
        {type = "item", name = "neuromorphic-chip", amount = 1},
    },
    results = {
        {type = "item", name = "simik-codex-mk03", amount = 1},
    },
}:add_unlock("simik-mk03")

--MK04 REPLICATOR---

RECIPE {
    type = "recipe",
    name = "simik-mk04r",
    category = "bio-printer",
    enabled = false,
    energy_required = 350,
    ingredients = {
        {type = "item",  name = "simik-mk04",             amount = 4,  ignored_by_stats = 4},
        {type = "item",  name = "simik-codex-mk04",       amount = 1},
        {type = "item",  name = "cdna",                   amount = 2},
        {type = "item",  name = "strorix-unknown-sample", amount = 3},
        {type = "item",  name = "in-vitro-meat",          amount = 5},
        {type = "item",  name = "bmp",                    amount = 1},
        {type = "fluid", name = "gta",                    amount = 100},
        {type = "fluid", name = "tholins",                amount = 100},
        {type = "fluid", name = "rich-gas",               amount = 500},
    },
    results = {
        {type = "item", name = "simik-mk04", amount = 5, ignored_by_stats = 4, ignored_by_productivity = 4},
    },
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/simik.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk04.png", icon_size = 64},
    },
    icon_size = 64,
    subgroup = "py-alienlife-simik",
    order = "za"
}:add_unlock("simik-mk04"):add_ingredient {type = "item", name = "nanocarrier", amount = 1}

RECIPE {
    type = "recipe",
    name = "compile-simik-ai",
    category = "data-array",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "simik-codex-mk03", amount = 1},
        {type = "item", name = "control-unit",     amount = 1},
    },
    results = {
        {type = "item", name = "simik-codex-mk04", amount = 1},
    },
}:add_unlock("simik-mk04")
