--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--
--WIP--

RECIPE {
    type = "recipe",
    name = "xeno-mk02",
    category = "rc",
    allowed_module_categories = {"xeno"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "xeno",          amount = 2},
        {type = "item", name = "caged-mukmoux", amount = 1},
        {type = "item", name = "bedding",       amount = 4},
        {type = "item", name = "bones",         amount = 10},
        {type = "item", name = "fish",          amount = 10},
        {type = "item", name = "water-barrel",  amount = 6},
    },
    results = {
        {type = "item", name = "xeno-mk02", amount = 1, probability = 0.005},
        {type = "item", name = "barrel",    amount = 6},
        {type = "item", name = "xeno",      amount = 1, probability = 0.5,  ignored_by_productivity = 1},
        {type = "item", name = "cage",      amount = 1},
    },
    --main_product = "xeno-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk02.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/xeno.png",    icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-xeno",
    order = "za"
}:add_unlock("xeno-mk02")

--mk03--
--WIP--

RECIPE {
    type = "recipe",
    name = "xeno-mk03",
    category = "rc",
    allowed_module_categories = {"xeno"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "xeno",            amount = 2},
        {type = "item", name = "alien-sample-03", amount = 1},
        {type = "item", name = "caged-mukmoux",   amount = 1},
        {type = "item", name = "bedding",         amount = 4},
        {type = "item", name = "bones",           amount = 10},
        {type = "item", name = "fish",            amount = 10},
        {type = "item", name = "water-barrel",    amount = 6},
    },
    results = {
        {type = "item", name = "xeno-mk03", amount = 1, probability = 0.004},
        {type = "item", name = "barrel",    amount = 6},
        {type = "item", name = "xeno",      amount = 1, probability = 0.6,  ignored_by_productivity = 1},
        {type = "item", name = "cage",      amount = 1},
    },
    --main_product = "xeno-mk03",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk03.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/xeno.png",    icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-xeno",
    order = "zb"
}:add_unlock("xeno-mk03")

--mk04--
--WIP--

RECIPE {
    type = "recipe",
    name = "xeno-mk04",
    category = "rc",
    allowed_module_categories = {"xeno"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "xeno",                 amount = 2},
        {type = "item", name = "zinc-finger-proteins", amount = 1},
        {type = "item", name = "caged-mukmoux",        amount = 1},
        {type = "item", name = "bedding",              amount = 4},
        {type = "item", name = "bones",                amount = 10},
        {type = "item", name = "fish",                 amount = 10},
        {type = "item", name = "water-barrel",         amount = 6},
    },
    results = {
        {type = "item", name = "xeno-mk04", amount = 1, probability = 0.003},
        {type = "item", name = "barrel",    amount = 6},
        {type = "item", name = "xeno",      amount = 1, probability = 0.7,  ignored_by_productivity = 1},
        {type = "item", name = "cage",      amount = 1},
    },
    --main_product = "xeno-mk04",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk04.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/xeno.png",    icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-xeno",
    order = "zc"
}:add_unlock("xeno-mk04")

--MK02 REPLICATOR---

RECIPE {
    type = "recipe",
    name = "xeno-mk02r",
    category = "bio-printer",
    enabled = false,
    energy_required = 120,
    ingredients = {
        {type = "item",  name = "xeno-mk02",              amount = 4,  ignored_by_stats = 4},
        {type = "item",  name = "xeno-codex-mk02",        amount = 1},
        {type = "item",  name = "animal-sample-01",       amount = 2},
        {type = "item",  name = "cdna",                   amount = 2},
        {type = "item",  name = "strorix-unknown-sample", amount = 1},
        {type = "fluid", name = "sulfuric-acid",          amount = 200},
        {type = "fluid", name = "mutant-enzymes",         amount = 20},
        {type = "fluid", name = "xenogenic-cells",        amount = 150},
        {type = "item",  name = "bio-scafold",            amount = 5},
        {type = "item",  name = "adrenal-cortex",         amount = 1},
    },
    results = {
        {type = "item", name = "xeno-mk02", amount = 5, ignored_by_stats = 4, ignored_by_productivity = 4},
    },
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/xeno.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk02.png", icon_size = 64},
    },
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    icon_size = 64,
    subgroup = "py-alienlife-xeno",
    order = "za"
}:add_unlock("xeno-mk02")

RECIPE {
    type = "recipe",
    name = "compile-xeno-codex",
    category = "data-array",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "xeno-codex",     amount = 1},
        {type = "item", name = "neuroprocessor", amount = 1},
    },
    results = {
        {type = "item", name = "xeno-codex-mk02", amount = 1},
    },
    allowed_module_categories = {"data-array", "speed", "efficiency", "quality"},
}:add_unlock("xeno-mk02")

--MK03 REPLICATOR---

RECIPE {
    type = "recipe",
    name = "xeno-mk03r",
    category = "bio-printer",
    enabled = false,
    energy_required = 150,
    ingredients = {
        {type = "item",  name = "xeno-mk03",         amount = 4,  ignored_by_stats = 4},
        {type = "item",  name = "xeno-codex-mk03",   amount = 1},
        {type = "item",  name = "bio-scafold",       amount = 8},
        {type = "item",  name = "alien-sample-03",   amount = 1},
        {type = "item",  name = "alien-enzymes",     amount = 1},
        {type = "item",  name = "chimeric-proteins", amount = 1},
        {type = "item",  name = "cdna",              amount = 2},
        {type = "fluid", name = "psc",               amount = 100},
        {type = "fluid", name = "tholins",           amount = 50},
        {type = "fluid", name = "sulfuric-acid",     amount = 200},

    },
    results = {
        {type = "item", name = "xeno-mk03", amount = 5, ignored_by_stats = 4, ignored_by_productivity = 4},
    },
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/xeno.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk03.png", icon_size = 64},
    },
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    icon_size = 64,
    subgroup = "py-alienlife-xeno",
    order = "za"
}:add_unlock("xeno-mk03")


RECIPE {
    type = "recipe",
    name = "compile-xeno-im",
    category = "data-array",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "xeno-codex-mk02",   amount = 1},
        {type = "item", name = "neuromorphic-chip", amount = 1},
    },
    results = {
        {type = "item", name = "xeno-codex-mk03", amount = 1},
    },
    allowed_module_categories = {"data-array", "speed", "efficiency", "quality"},
}:add_unlock("xeno-mk03")

--MK04 REPLICATOR---

RECIPE {
    type = "recipe",
    name = "xeno-mk04r",
    category = "bio-printer",
    enabled = false,
    energy_required = 200,
    ingredients = {
        {type = "item",  name = "xeno-mk04",         amount = 4,  ignored_by_stats = 4},
        {type = "item",  name = "xeno-codex-mk04",   amount = 1},
        {type = "item",  name = "cdna",              amount = 2},
        {type = "item",  name = "bio-scafold",       amount = 8},
        {type = "item",  name = "nanochondria",      amount = 1},
        {type = "item",  name = "reca",              amount = 1},
        {type = "item",  name = "immunosupressants", amount = 1},
        {type = "fluid", name = "psc",               amount = 100},
        {type = "fluid", name = "sulfuric-acid",     amount = 250},
        {type = "fluid", name = "rich-gas",          amount = 200},
    },
    results = {
        {type = "item", name = "xeno-mk04", amount = 5, ignored_by_stats = 4, ignored_by_productivity = 4},
    },
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/xeno.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk04.png", icon_size = 64},
    },
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    icon_size = 64,
    subgroup = "py-alienlife-xeno",
    order = "za"
}:add_unlock("xeno-mk04"):add_ingredient {type = "fluid", name = "crude-enzyme", amount = 50}

RECIPE {
    type = "recipe",
    name = "compile-xeno-ai",
    category = "data-array",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "xeno-codex-mk03", amount = 1},
        {type = "item", name = "control-unit",    amount = 1},
    },
    results = {
        {type = "item", name = "xeno-codex-mk04", amount = 1},
    },
    allowed_module_categories = {"data-array", "speed", "efficiency", "quality"},
}:add_unlock("xeno-mk04")
