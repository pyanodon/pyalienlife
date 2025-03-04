--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--
--WIP--

RECIPE {
    type = "recipe",
    name = "phadai-mk02",
    category = "rc",
    allowed_module_categories = {"phadai"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "phadai",               amount = 2},
        {type = "item", name = "phadai-food-01",       amount = 1},
        {type = "item", name = "programmable-speaker", amount = 3},
        {type = "item", name = "energy-drink",         amount = 2},
        {type = "item", name = "small-lamp",           amount = 5},
        {type = "item", name = "water-barrel",         amount = 7},
        {type = "item", name = "meat",                 amount = 5},
    },
    results = {
        {type = "item", name = "phadai-mk02", amount = 1, probability = 0.005},
        {type = "item", name = "barrel",      amount = 7},
        {type = "item", name = "phadai",      amount = 1, probability = 0.5,  ignored_by_productivity = 1},
    },
    --main_product = "phadai-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk02.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/phadai.png",  icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-phadai",
    order = "za"
}:add_unlock("phadai-mk02")

--mk03--
--WIP--

RECIPE {
    type = "recipe",
    name = "phadai-mk03",
    category = "rc",
    allowed_module_categories = {"phadai"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "phadai",               amount = 2},
        {type = "item", name = "alien-sample-03",      amount = 1},
        {type = "item", name = "phadai-food-02",       amount = 1},
        {type = "item", name = "programmable-speaker", amount = 3},
        {type = "item", name = "energy-drink",         amount = 2},
        {type = "item", name = "small-lamp",           amount = 5},
        {type = "item", name = "water-barrel",         amount = 7},
        {type = "item", name = "meat",                 amount = 5},
    },
    results = {
        {type = "item", name = "phadai-mk03", amount = 1, probability = 0.004},
        {type = "item", name = "barrel",      amount = 7},
        {type = "item", name = "phadai",      amount = 1, probability = 0.6,  ignored_by_productivity = 1},
    },
    --main_product = "phadai-mk03",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk03.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/phadai.png",  icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-phadai",
    order = "zb"
}:add_unlock("phadai-mk03")

--mk04--
--WIP--

RECIPE {
    type = "recipe",
    name = "phadai-mk04",
    category = "rc",
    allowed_module_categories = {"phadai"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "phadai",               amount = 2},
        {type = "item", name = "zinc-finger-proteins", amount = 1},
        {type = "item", name = "phadai-food-02",       amount = 1},
        {type = "item", name = "programmable-speaker", amount = 3},
        {type = "item", name = "energy-drink",         amount = 2},
        {type = "item", name = "small-lamp",           amount = 5},
        {type = "item", name = "water-barrel",         amount = 7},
        {type = "item", name = "meat",                 amount = 5},
    },
    results = {
        {type = "item", name = "phadai-mk04", amount = 1, probability = 0.003},
        {type = "item", name = "barrel",      amount = 7},
        {type = "item", name = "phadai",      amount = 1, probability = 0.7,  ignored_by_productivity = 1},
    },
    --main_product = "phadai-mk04",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk04.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/phadai.png",  icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-phadai",
    order = "zc"
}:add_unlock("phadai-mk04")

--MK02 REPLICATOR---

RECIPE {
    type = "recipe",
    name = "phadai-mk02r",
    category = "bio-printer",
    enabled = false,
    energy_required = 120,
    ingredients = {
        {type = "item",  name = "phadai-mk02",       amount = 4,  ignored_by_stats = 4},
        {type = "item",  name = "phadai-codex-mk02", amount = 1},
        {type = "item",  name = "animal-sample-01",  amount = 2},
        {type = "item",  name = "cdna",              amount = 2},
        {type = "fluid", name = "fetal-serum",       amount = 80},
        {type = "fluid", name = "xenogenic-cells",   amount = 150},
        {type = "item",  name = "bio-scafold",       amount = 5},
        {type = "item",  name = "bio-sample",        amount = 2},
    },
    results = {
        {type = "item", name = "phadai-mk02", amount = 5, ignored_by_stats = 4, ignored_by_productivity = 4},
    },
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/phadai.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk02.png", icon_size = 64},
    },
    icon_size = 64,
    subgroup = "py-alienlife-phadai",
    order = "za"
}:add_unlock("phadai-mk02"):add_ingredient {type = "fluid", name = "fatty-acids", amount = 20}

RECIPE {
    type = "recipe",
    name = "compile-phadai-codex",
    category = "data-array",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "phadai-codex",   amount = 1},
        {type = "item", name = "neuroprocessor", amount = 1},
    },
    results = {
        {type = "item", name = "phadai-codex-mk02", amount = 1},
    },
}:add_unlock("phadai-mk02")

--MK03 REPLICATOR---

RECIPE {
    type = "recipe",
    name = "phadai-mk03r",
    category = "bio-printer",
    enabled = false,
    energy_required = 150,
    ingredients = {
        {type = "item",  name = "phadai-mk03",       amount = 4,  ignored_by_stats = 4},
        {type = "item",  name = "phadai-codex-mk03", amount = 1},
        {type = "item",  name = "bio-scafold",       amount = 8},
        {type = "item",  name = "alien-sample-03",   amount = 1},
        {type = "item",  name = "paragen",           amount = 1},
        {type = "item",  name = "albumin",           amount = 1},
        {type = "item",  name = "cdna",              amount = 2},
        {type = "fluid", name = "psc",               amount = 100},
        {type = "fluid", name = "arqad-honey",       amount = 50},

    },
    results = {
        {type = "item", name = "phadai-mk03", amount = 5, ignored_by_stats = 4, ignored_by_productivity = 4},
    },
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/phadai.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk03.png", icon_size = 64},
    },
    icon_size = 64,
    subgroup = "py-alienlife-phadai",
    order = "za"
}:add_unlock("phadai-mk03"):add_ingredient {type = "fluid", name = "fatty-acids", amount = 50}


RECIPE {
    type = "recipe",
    name = "compile-phadai-im",
    category = "data-array",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "phadai-codex-mk02", amount = 1},
        {type = "item", name = "neuromorphic-chip", amount = 1},
    },
    results = {
        {type = "item", name = "phadai-codex-mk03", amount = 1},
    },
}:add_unlock("phadai-mk03")

--MK04 REPLICATOR---

RECIPE {
    type = "recipe",
    name = "phadai-mk04r",
    category = "bio-printer",
    enabled = false,
    energy_required = 200,
    ingredients = {
        {type = "item",  name = "phadai-mk04",        amount = 4,  ignored_by_stats = 4},
        {type = "item",  name = "phadai-codex-mk04",  amount = 1},
        {type = "item",  name = "cdna",               amount = 2},
        {type = "item",  name = "bio-scafold",        amount = 8},
        {type = "item",  name = "enzyme-pks",         amount = 1},
        {type = "item",  name = "denatured-seismite", amount = 1},
        {type = "fluid", name = "psc",                amount = 100},
    },
    results = {
        {type = "item", name = "phadai-mk04", amount = 5, ignored_by_stats = 4, ignored_by_productivity = 4},
    },
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/phadai.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk04.png", icon_size = 64},
    },
    icon_size = 64,
    subgroup = "py-alienlife-phadai",
    order = "za"
}:add_unlock("phadai-mk04"):add_ingredient {type = "fluid", name = "crude-enzyme", amount = 50}:add_ingredient {type = "item", name = "mpa", amount = 1}:add_ingredient {type = "fluid", name = "clean-organic-pulp", amount = 50}:add_ingredient {type = "item", name = "resilin", amount = 1}

RECIPE {
    type = "recipe",
    name = "compile-phadai-ai",
    category = "data-array",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "phadai-codex-mk03", amount = 1},
        {type = "item", name = "control-unit",      amount = 1},
    },
    results = {
        {type = "item", name = "phadai-codex-mk04", amount = 1},
    },
}:add_unlock("phadai-mk04")
