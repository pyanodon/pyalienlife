--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--
--WIP--

RECIPE {
    type = "recipe",
    name = "mukmoux-mk02",
    category = "rc",
    allowed_module_categories = {"mukmoux"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "mukmoux",         amount = 2},
        {type = "item", name = "mukmoux-food-01", amount = 2},
        {type = "item", name = "bedding",         amount = 4},
        {type = "item", name = "salt",            amount = 10},
        {type = "item", name = "fawogae",         amount = 10},
        {type = "item", name = "water-barrel",    amount = 6},
    },
    results = {
        {type = "item", name = "mukmoux-mk02", amount = 1, probability = 0.005},
        {type = "item", name = "barrel",       amount = 6},
        {type = "item", name = "mukmoux",      amount = 1, probability = 0.5,  ignored_by_productivity = 1},
    },
    --main_product = "mukmoux-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk02.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/mukmoux.png", icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-mukmoux",
    order = "za"
}:add_unlock("mukmoux-mk02")

--mk03--
--WIP--

RECIPE {
    type = "recipe",
    name = "mukmoux-mk03",
    category = "rc",
    allowed_module_categories = {"mukmoux"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "mukmoux",         amount = 2},
        {type = "item", name = "alien-sample-03", amount = 1},
        {type = "item", name = "mukmoux-food-02", amount = 3},
        {type = "item", name = "bedding",         amount = 4},
        {type = "item", name = "salt",            amount = 10},
        {type = "item", name = "fawogae",         amount = 10},
        {type = "item", name = "water-barrel",    amount = 6},
    },
    results = {
        {type = "item", name = "mukmoux-mk03", amount = 1, probability = 0.004},
        {type = "item", name = "barrel",       amount = 6},
        {type = "item", name = "mukmoux",      amount = 1, probability = 0.6,  ignored_by_productivity = 1},
    },
    --main_product = "mukmoux-mk03",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk03.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/mukmoux.png", icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-mukmoux",
    order = "zb"
}:add_unlock("mukmoux-mk03")

--mk04--
--WIP--

RECIPE {
    type = "recipe",
    name = "mukmoux-mk04",
    category = "rc",
    allowed_module_categories = {"mukmoux"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "mukmoux",              amount = 2},
        {type = "item", name = "zinc-finger-proteins", amount = 1},
        {type = "item", name = "mukmoux-food-02",      amount = 3},
        {type = "item", name = "bedding",              amount = 4},
        {type = "item", name = "salt",                 amount = 10},
        {type = "item", name = "fawogae",              amount = 10},
        {type = "item", name = "water-barrel",         amount = 6},
    },
    results = {
        {type = "item", name = "mukmoux-mk04", amount = 1, probability = 0.003},
        {type = "item", name = "barrel",       amount = 6},
        {type = "item", name = "mukmoux",      amount = 1, probability = 0.7,  ignored_by_productivity = 1},
    },
    --main_product = "mukmoux-mk04",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk04.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/mukmoux.png", icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-mukmoux",
    order = "zc"
}:add_unlock("mukmoux-mk04")


--MK02 REPLICATOR---

RECIPE {
    type = "recipe",
    name = "mukmoux-mk02r",
    category = "bio-printer",
    enabled = false,
    energy_required = 120,
    ingredients = {
        {type = "item",  name = "mukmoux-mk02",           amount = 2,  ignored_by_stats = 2},
        {type = "item",  name = "mukmoux-codex-mk02",     amount = 1},
        {type = "item",  name = "animal-sample-01",       amount = 1},
        {type = "item",  name = "cdna",                   amount = 2},
        {type = "item",  name = "bio-scafold",            amount = 3},
        {type = "fluid", name = "depolymerized-organics", amount = 100},
        {type = "fluid", name = "xenogenic-cells",        amount = 100},
        {type = "item",  name = "bio-sample",             amount = 1},
    },
    results = {
        {type = "item", name = "mukmoux-mk02", amount = 3, ignored_by_stats = 2, ignored_by_productivity = 2},
    },
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/mukmoux.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk02.png", icon_size = 64},
    },
    icon_size = 64,
    subgroup = "py-alienlife-mukmoux",
    order = "za"
}:add_unlock("mukmoux-mk02"):add_ingredient {type = "fluid", name = "fatty-acids", amount = 20}

RECIPE {
    type = "recipe",
    name = "compile-mukmoux-codex",
    category = "data-array",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "mukmoux-codex",  amount = 1},
        {type = "item", name = "neuroprocessor", amount = 1},
    },
    results = {
        {type = "item", name = "mukmoux-codex-mk02", amount = 1},
    },
}:add_unlock("mukmoux-mk02")

--MK03 REPLICATOR---

RECIPE {
    type = "recipe",
    name = "mukmoux-mk03r",
    category = "bio-printer",
    enabled = false,
    energy_required = 150,
    ingredients = {
        {type = "item",  name = "mukmoux-mk03",       amount = 3,  ignored_by_stats = 3},
        {type = "item",  name = "mukmoux-codex-mk03", amount = 1},
        {type = "item",  name = "alien-sample-03",    amount = 1},
        {type = "item",  name = "cdna",               amount = 2},
        {type = "item",  name = "bio-scafold",        amount = 5},
        {type = "fluid", name = "psc",                amount = 100},
        {type = "fluid", name = "arqad-honey",        amount = 50},
        {type = "fluid", name = "artificial-blood",   amount = 50},
        {type = "item",  name = "chimeric-proteins",  amount = 1},
        {type = "item",  name = "negasium",           amount = 1},
    },
    results = {
        {type = "item", name = "mukmoux-mk03", amount = 4, ignored_by_stats = 3, ignored_by_productivity = 3},
    },
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/mukmoux.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk03.png", icon_size = 64},
    },
    icon_size = 64,
    subgroup = "py-alienlife-mukmoux",
    order = "za"
}:add_unlock("mukmoux-mk03")


RECIPE {
    type = "recipe",
    name = "compile-mukmoux-im",
    category = "data-array",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "mukmoux-codex-mk02", amount = 1},
        {type = "item", name = "neuromorphic-chip",  amount = 1},
    },
    results = {
        {type = "item", name = "mukmoux-codex-mk03", amount = 1},
    },
}:add_unlock("mukmoux-mk03")

--MK04 REPLICATOR---

RECIPE {
    type = "recipe",
    name = "mukmoux-mk04r",
    category = "bio-printer",
    enabled = false,
    energy_required = 200,
    ingredients = {
        {type = "item",  name = "mukmoux-mk04",       amount = 4,  ignored_by_stats = 4},
        {type = "item",  name = "mukmoux-codex-mk04", amount = 1},
        {type = "item",  name = "cdna",               amount = 2},
        {type = "item",  name = "bio-scafold",        amount = 8},
        {type = "item",  name = "enzyme-pks",         amount = 1},
        {type = "item",  name = "denatured-seismite", amount = 1},
        {type = "fluid", name = "psc",                amount = 100},
        {type = "fluid", name = "gta",                amount = 50},
    },
    results = {
        {type = "item", name = "mukmoux-mk04", amount = 5, ignored_by_stats = 4, ignored_by_productivity = 4},
    },
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/mukmoux.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk04.png", icon_size = 64},
    },
    icon_size = 64,
    subgroup = "py-alienlife-mukmoux",
    order = "za"
}:add_unlock("mukmoux-mk04"):add_ingredient {type = "fluid", name = "clean-organic-pulp", amount = 50}:add_ingredient {type = "item", name = "resilin", amount = 1}:add_ingredient {type = "item", name = "nanocarrier", amount = 1}

RECIPE {
    type = "recipe",
    name = "compile-mukmoux-ai",
    category = "data-array",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "mukmoux-codex-mk03", amount = 1},
        {type = "item", name = "control-unit",       amount = 1},
    },
    results = {
        {type = "item", name = "mukmoux-codex-mk04", amount = 1},
    },
}:add_unlock("mukmoux-mk04")
