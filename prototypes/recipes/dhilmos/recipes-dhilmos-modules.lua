--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--
--WIP--

RECIPE {
    type = "recipe",
    name = "dhilmos-mk02",
    category = "rc",
    allowed_module_categories = {"dhilmos"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "dhilmos",          amount = 2},
        {type = "item",  name = "dhilmos-food-01",  amount = 2},
        {type = "item",  name = "filtration-media", amount = 5},
        {type = "item",  name = "seaweed",          amount = 10},
        {type = "fluid", name = "phytoplankton",    amount = 60, fluidbox_index = 1},
    },
    results = {
        {type = "item", name = "dhilmos-mk02", amount = 1, probability = 0.005},
        {type = "item", name = "dhilmos",      amount = 1, probability = 0.5,  ignored_by_productivity = 1},
        --{type = 'item', name = 'barrel', amount = 7},
    },
    --main_product = "dhilmos-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk02.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/dhilmo.png",  icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-dhilmos",
    order = "za"
}:add_unlock("dhilmos-mk02")

--mk03--
--WIP--

RECIPE {
    type = "recipe",
    name = "dhilmos-mk03",
    category = "rc",
    allowed_module_categories = {"dhilmos"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "dhilmos",          amount = 2},
        {type = "item",  name = "dhilmos-food-02",  amount = 3},
        {type = "item",  name = "alien-sample-03",  amount = 1},
        {type = "item",  name = "filtration-media", amount = 5},
        {type = "item",  name = "seaweed",          amount = 10},
        {type = "fluid", name = "phytoplankton",    amount = 60, fluidbox_index = 1},
    },
    results = {
        {type = "item", name = "dhilmos-mk03", amount = 1, probability = 0.004},
        {type = "item", name = "dhilmos",      amount = 1, probability = 0.6,  ignored_by_productivity = 1},
        --{type = 'item', name = 'barrel', amount = 7},
    },
    --main_product = "dhilmos-mk03",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk03.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/dhilmo.png",  icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-dhilmos",
    order = "zb"
}:add_unlock("dhilmos-mk03")

--mk04--
--WIP--

RECIPE {
    type = "recipe",
    name = "dhilmos-mk04",
    category = "rc",
    allowed_module_categories = {"dhilmos"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "dhilmos",              amount = 2},
        {type = "item",  name = "dhilmos-food-02",      amount = 3},
        {type = "item",  name = "zinc-finger-proteins", amount = 1},
        {type = "item",  name = "filtration-media",     amount = 5},
        {type = "item",  name = "seaweed",              amount = 10},
        {type = "fluid", name = "phytoplankton",        amount = 60, fluidbox_index = 1},
    },
    results = {
        {type = "item", name = "dhilmos-mk04", amount = 1, probability = 0.003},
        {type = "item", name = "dhilmos",      amount = 1, probability = 0.7,  ignored_by_productivity = 1},
        --{type = 'item', name = 'barrel', amount = 7},
    },
    --main_product = "dhilmos-mk04",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk04.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/dhilmo.png",  icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-dhilmos",
    order = "zc"
}:add_unlock("dhilmos-mk04")



--MK02 REPLICATOR---

RECIPE {
    type = "recipe",
    name = "dhilmos-mk02r",
    category = "bio-printer",
    enabled = false,
    energy_required = 120,
    ingredients = {
        {type = "item",  name = "dhilmos-mk02",       amount = 3,   ignored_by_stats = 3},
        {type = "item",  name = "dhilmos-codex-mk02", amount = 1},
        {type = "item",  name = "animal-sample-01",   amount = 1},
        {type = "item",  name = "cdna",               amount = 2},
        {type = "item",  name = "bio-scafold",        amount = 3},
        {type = "fluid", name = "water-saline",       amount = 1000},
        {type = "fluid", name = "fetal-serum",        amount = 50},
        {type = "fluid", name = "xenogenic-cells",    amount = 100},
        {type = "item",  name = "bio-sample",         amount = 2},
    },
    results = {
        {type = "item", name = "dhilmos-mk02", amount = 4, ignored_by_stats = 3, ignored_by_productivity = 3},
    },
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/dhilmo.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk02.png", icon_size = 64},
    },
    icon_size = 64,
    subgroup = "py-alienlife-dhilmos",
    order = "za"
}:add_unlock("dhilmos-mk02")

RECIPE {
    type = "recipe",
    name = "compile-dhilmos-codex",
    category = "data-array",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "dhilmos-codex",  amount = 1},
        {type = "item", name = "neuroprocessor", amount = 1},
    },
    results = {
        {type = "item", name = "dhilmos-codex-mk02", amount = 1},
    },
}:add_unlock("dhilmos-mk02")

--MK03 REPLICATOR---

RECIPE {
    type = "recipe",
    name = "dhilmos-mk03r",
    category = "bio-printer",
    enabled = false,
    energy_required = 150,
    ingredients = {
        {type = "item",  name = "dhilmos-mk03",       amount = 3,  ignored_by_stats = 3},
        {type = "item",  name = "dhilmos-codex-mk03", amount = 1},
        {type = "item",  name = "alien-sample-03",    amount = 1},
        {type = "item",  name = "cdna",               amount = 2},
        {type = "item",  name = "bio-scafold",        amount = 5},
        {type = "fluid", name = "psc",                amount = 100},
        {type = "fluid", name = "artificial-blood",   amount = 50},
        {type = "item",  name = "cbp",                amount = 1},
        {type = "item",  name = "resveratrol",        amount = 1},
    },
    results = {
        {type = "item", name = "dhilmos-mk03", amount = 4, ignored_by_stats = 3, ignored_by_productivity = 3},
    },
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/dhilmo.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk03.png", icon_size = 64},
    },
    icon_size = 64,
    subgroup = "py-alienlife-dhilmos",
    order = "za"
}:add_unlock("dhilmos-mk03"):add_ingredient {type = "fluid", name = "fatty-acids", amount = 50}


RECIPE {
    type = "recipe",
    name = "compile-dhilmos-im",
    category = "data-array",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "dhilmos-codex-mk02", amount = 1},
        {type = "item", name = "neuromorphic-chip",  amount = 1},
    },
    results = {
        {type = "item", name = "dhilmos-codex-mk03", amount = 1},
    },
}:add_unlock("dhilmos-mk03")

--MK04 REPLICATOR---

RECIPE {
    type = "recipe",
    name = "dhilmos-mk04r",
    category = "bio-printer",
    enabled = false,
    energy_required = 200,
    ingredients = {
        {type = "item",  name = "dhilmos-mk04",        amount = 4,  ignored_by_stats = 4},
        {type = "item",  name = "dhilmos-codex-mk04",  amount = 1},
        {type = "item",  name = "cdna",                amount = 2},
        {type = "item",  name = "biomimetic-skin",     amount = 5},
        {type = "item",  name = "cysteine",            amount = 1},
        {type = "item",  name = "solidified-sarcorus", amount = 2},
        {type = "item",  name = "enediyne",            amount = 1},
        {type = "fluid", name = "tholins",             amount = 50},
        {type = "fluid", name = "gta",                 amount = 50},
        {type = "fluid", name = "rich-gas",            amount = 250},
    },
    results = {
        {type = "item", name = "dhilmos-mk04", amount = 5, ignored_by_stats = 4, ignored_by_productivity = 4},
    },
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/dhilmo.png"},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk04.png", icon_size = 64},
    },
    icon_size = 64,
    subgroup = "py-alienlife-dhilmos",
    order = "za"
}:add_unlock("dhilmos-mk04")

RECIPE {
    type = "recipe",
    name = "compile-dhilmos-ai",
    category = "data-array",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "dhilmos-codex-mk03", amount = 1},
        {type = "item", name = "control-unit",       amount = 1},
    },
    results = {
        {type = "item", name = "dhilmos-codex-mk04", amount = 1},
    },
}:add_unlock("dhilmos-mk04")
