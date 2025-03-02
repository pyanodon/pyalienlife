--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--
--WIP--

RECIPE {
    type = "recipe",
    name = "zipir-mk02",
    category = "rc",
    allowed_module_categories = {"zipir"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "zipir1",            amount = 2},
        {type = "item",  name = "fawogae-substrate", amount = 15},
        {type = "item",  name = "filtration-media",  amount = 5},
        {type = "item",  name = "fish",              amount = 5},
        {type = "fluid", name = "pressured-water",   amount = 3000},
    },
    results = {
        {type = "item", name = "zipir2", amount = 1, probability = 0.005},
        {type = "item", name = "zipir1", amount = 1, probability = 0.5,  ignored_by_productivity = 1},
        --{type = 'item', name = 'barrel', amount = 7},
    },
    --main_product = "zipir-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk02.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/zipir.png",   icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-zipir",
    order = "za"
}:add_unlock("zipir-mk02"):add_ingredient {type = "item", name = "stone-wool", amount = 4}

--mk03--
--WIP--

RECIPE {
    type = "recipe",
    name = "zipir-mk03",
    category = "rc",
    allowed_module_categories = {"zipir"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "zipir2",           amount = 2},
        {type = "item",  name = "alien-sample-03",  amount = 1},
        {type = "item",  name = "filtration-media", amount = 5},
        {type = "item",  name = "fish",             amount = 5},
        {type = "fluid", name = "pressured-water",  amount = 3000},
    },
    results = {
        {type = "item", name = "zipir3", amount = 1, probability = 0.004},
        {type = "item", name = "zipir2", amount = 1, probability = 0.6,  ignored_by_productivity = 1},
        --{type = 'item', name = 'barrel', amount = 7},
    },
    --main_product = "zipir-mk03",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk03.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/zipir.png",   icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-zipir",
    order = "zb"
}:add_unlock("zipir-mk03"):replace_ingredient("saps", "blood-meal"):add_ingredient {type = "item", name = "stone-wool", amount = 4}

--mk04--
--WIP--

RECIPE {
    type = "recipe",
    name = "zipir-mk04",
    category = "rc",
    allowed_module_categories = {"zipir"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "zipir3",               amount = 2},
        {type = "item",  name = "zinc-finger-proteins", amount = 1},
        {type = "item",  name = "filtration-media",     amount = 5},
        {type = "item",  name = "fish",                 amount = 5},
        {type = "fluid", name = "pressured-water",      amount = 3000},
    },
    results = {
        {type = "item", name = "zipir4", amount = 1, probability = 0.003},
        {type = "item", name = "zipir3", amount = 1, probability = 0.7,  ignored_by_productivity = 1},
        --{type = 'item', name = 'barrel', amount = 7},
    },
    --main_product = "zipir-mk04",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk04.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/zipir.png",   icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-zipir",
    order = "zc"
}:add_unlock("zipir-mk04"):replace_ingredient("saps", "blood-meal"):add_ingredient {type = "item", name = "stone-wool", amount = 4}

--MK02 REPLICATOR---

RECIPE {
    type = "recipe",
    name = "zipir-mk02r",
    category = "bio-printer",
    enabled = false,
    energy_required = 200,
    ingredients = {
        {type = "item",  name = "zipir2",           amount = 4,  ignored_by_stats = 4},
        {type = "item",  name = "zipir-codex-mk02", amount = 1},
        {type = "item",  name = "bio-scafold",      amount = 5},
        {type = "item",  name = "animal-sample-01", amount = 2},
        {type = "item",  name = "cdna",             amount = 2},
        {type = "fluid", name = "fetal-serum",      amount = 80},
        {type = "fluid", name = "zogna-bacteria",   amount = 50},
        {type = "fluid", name = "water-saline",     amount = 500},
        {type = "item",  name = "moss-gen",         amount = 5},
        {type = "item",  name = "resveratrol",      amount = 3},
    },
    results = {
        {type = "item", name = "zipir2", amount = 5, ignored_by_stats = 4, ignored_by_productivity = 4},
    },
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/zipir.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk02.png", icon_size = 64},
    },
    icon_size = 64,
    subgroup = "py-alienlife-zipir",
    order = "za"
}:add_unlock("zipir-mk02")

RECIPE {
    type = "recipe",
    name = "compile-zipir-codex",
    category = "data-array",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "zipir-codex",    amount = 1},
        {type = "item", name = "neuroprocessor", amount = 1},
    },
    results = {
        {type = "item", name = "zipir-codex-mk02", amount = 1},
    },
}:add_unlock("zipir-mk02")

--MK03 REPLICATOR---

RECIPE {
    type = "recipe",
    name = "zipir-mk03r",
    category = "bio-printer",
    enabled = false,
    energy_required = 200,
    ingredients = {
        {type = "item",  name = "zipir3",           amount = 4, ignored_by_stats = 4},
        {type = "item",  name = "zipir-codex-mk03", amount = 1},
        {type = "item",  name = "bio-scafold",      amount = 8},
        {type = "item",  name = "cdna",             amount = 2},
        {type = "item",  name = "alien-sample-03",  amount = 1},
        {type = "item",  name = "cbp",              amount = 1},
        {type = "item",  name = "purine-analogues", amount = 1},
        {type = "fluid", name = "mutant-enzymes",   amount = 30},
        {type = "fluid", name = "tholins",          amount = 50},
    },
    results = {
        {type = "item", name = "zipir3", amount = 5, ignored_by_stats = 4, ignored_by_productivity = 4},
    },
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/zipir.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk03.png", icon_size = 64},
    },
    icon_size = 64,
    subgroup = "py-alienlife-zipir",
    order = "za"
}:add_unlock("zipir-mk03"):add_ingredient {type = "fluid", name = "fatty-acids", amount = 40}


RECIPE {
    type = "recipe",
    name = "compile-zipir-im",
    category = "data-array",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "zipir-codex-mk02",  amount = 1},
        {type = "item", name = "neuromorphic-chip", amount = 1},
    },
    results = {
        {type = "item", name = "zipir-codex-mk03", amount = 1},
    },
}:add_unlock("zipir-mk03")

--MK04 REPLICATOR---

RECIPE {
    type = "recipe",
    name = "zipir-mk04r",
    category = "bio-printer",
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = "item",  name = "zipir4",               amount = 4,  ignored_by_stats = 4},
        {type = "item",  name = "zipir-codex-mk04",     amount = 1},
        {type = "item",  name = "cdna",                 amount = 2},
        {type = "item",  name = "bio-scafold",          amount = 8},
        {type = "item",  name = "adam42-gen",           amount = 1},
        {type = "item",  name = "zinc-finger-proteins", amount = 1},
        {type = "item",  name = "zymogens",             amount = 1},
        {type = "fluid", name = "psc",                  amount = 100},
        {type = "fluid", name = "gta",                  amount = 50},
    },
    results = {
        {type = "item", name = "zipir4", amount = 5, ignored_by_stats = 4, ignored_by_productivity = 4},
    },
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/zipir.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk04.png", icon_size = 64},
    },
    icon_size = 64,
    subgroup = "py-alienlife-zipir",
    order = "za"
}:add_unlock("zipir-mk04"):add_ingredient {type = "fluid", name = "clean-organic-pulp", amount = 50}:add_ingredient {type = "item", name = "nanocarrier", amount = 1}

RECIPE {
    type = "recipe",
    name = "compile-zipir-ai",
    category = "data-array",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "zipir-codex-mk03", amount = 1},
        {type = "item", name = "control-unit",     amount = 1},
    },
    results = {
        {type = "item", name = "zipir-codex-mk04", amount = 1},
    },
}:add_unlock("zipir-mk04")
