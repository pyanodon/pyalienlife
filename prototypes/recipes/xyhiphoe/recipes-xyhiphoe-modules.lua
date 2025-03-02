--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--

RECIPE {
    type = "recipe",
    name = "xyhiphoe-mk02",
    category = "rc",
    allowed_module_categories = {"xyhiphoe"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "xyhiphoe",         amount = 2},
        {type = "item",  name = "fish-food-02",     amount = 2},
        {type = "item",  name = "filtration-media", amount = 5},
        {type = "item",  name = "saps",             amount = 6},
        {type = "fluid", name = "pressured-water",  amount = 3000, fluidbox_index = 2},
    },
    results = {
        {type = "item", name = "xyhiphoe-mk02", amount = 1, probability = 0.005},
        {type = "item", name = "xyhiphoe",      amount = 1, probability = 0.5,  ignored_by_productivity = 1},
    },
    main_product = "xyhiphoe-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk02.png",  icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/xyhiphoe.png", icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-xyhiphoe",
    order = "za"
}:add_unlock("water-invertebrates-mk02"):replace_ingredient("saps", "blood-meal")

RECIPE {
    type = "recipe",
    name = "xyhiphoe-cub-mk02-breeder",
    category = "rc",
    allowed_module_categories = {"xyhiphoe"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "xyhiphoe-mk02",    amount = 1},
        {type = "item",  name = "filtration-media", amount = 5},
        {type = "item",  name = "saps",             amount = 6},
        {type = "item",  name = "fawogae-mk02",     amount = 1},
        {type = "item",  name = "fish-mk02",        amount = 1},
        {type = "fluid", name = "pressured-water",  amount = 3000, fluidbox_index = 2},
    },
    results = {
        {type = "item", name = "xyhiphoe-cub-mk02", amount = 2},
        {type = "item", name = "xyhiphoe-cub-mk02", amount = 1, probability = 0.3},
        {type = "item", name = "xyhiphoe-cub",      amount = 1, probability = 0.7},
    },
    main_product = "xyhiphoe-cub-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/xyhiphoe-cub.png",   icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk02.png", icon_size = 64, scale = 0.25, shift = {-7.5, -7.5}},
    },
    icon_size = 64,
    subgroup = "py-alienlife-xyhiphoe",
    order = "za"
}:add_unlock("water-invertebrates-mk02"):replace_ingredient("saps", "blood-meal")

RECIPE {
    type = "recipe",
    name = "xyhiphoe-mk02-breeder",
    category = "creature-chamber",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "xyhiphoe-cub-mk02", amount = 2},
        {type = "fluid", name = "fetal-serum",       amount = 50},
    },
    results = {
        {type = "item", name = "xyhiphoe-mk02", amount = 1},
        {type = "item", name = "xyhiphoe",      amount = 1},
    },
    main_product = "xyhiphoe-mk02",
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/xyhiphoe.png",       icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk02.png", icon_size = 64, scale = 0.25, shift = {-7.5, -7.5}},
    },
    icon_size = 64,
    subgroup = "py-alienlife-xyhiphoe",
    order = "za"
}:add_unlock("water-invertebrates-mk02")

--mk03--

RECIPE {
    type = "recipe",
    name = "xyhiphoe-mk03",
    category = "rc",
    allowed_module_categories = {"xyhiphoe"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "xyhiphoe-mk02",    amount = 2},
        {type = "item",  name = "alien-sample-03",  amount = 1},
        {type = "item",  name = "fish-food-02",     amount = 2},
        {type = "item",  name = "filtration-media", amount = 5},
        {type = "item",  name = "saps",             amount = 6},
        {type = "fluid", name = "pressured-water",  amount = 3000, fluidbox_index = 2},
    },
    results = {
        {type = "item", name = "xyhiphoe-mk03", amount = 1, probability = 0.004},
        {type = "item", name = "xyhiphoe",      amount = 1, probability = 0.6},
    },
    main_product = "xyhiphoe-mk03",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk03.png",  icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/xyhiphoe.png", icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-xyhiphoe",
    order = "zb"
}:add_unlock("water-invertebrates-mk03"):replace_ingredient("saps", "blood-meal")

RECIPE {
    type = "recipe",
    name = "xyhiphoe-cub-mk03-breeder",
    category = "rc",
    allowed_module_categories = {"xyhiphoe"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "xyhiphoe-mk03",    amount = 1},
        {type = "item",  name = "filtration-media", amount = 5},
        {type = "item",  name = "saps",             amount = 6},
        {type = "item",  name = "fawogae-mk03",     amount = 1},
        {type = "item",  name = "fish-mk03",        amount = 1},
        {type = "fluid", name = "pressured-water",  amount = 3000, fluidbox_index = 2},
    },
    results = {
        {type = "item", name = "xyhiphoe-cub-mk03", amount = 2},
        {type = "item", name = "xyhiphoe-cub-mk03", amount = 1, probability = 0.3},
        {type = "item", name = "xyhiphoe-cub-mk02", amount = 1, probability = 0.7},
    },
    main_product = "xyhiphoe-cub-mk03",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/xyhiphoe-cub.png",   icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk03.png", icon_size = 64, scale = 0.25, shift = {-7.5, -7.5}},
    },
    icon_size = 64,
    subgroup = "py-alienlife-xyhiphoe",
    order = "zb"
}:add_unlock("water-invertebrates-mk03"):replace_ingredient("saps", "blood-meal")

RECIPE {
    type = "recipe",
    name = "xyhiphoe-mk03-breeder",
    category = "creature-chamber",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "xyhiphoe-cub-mk03", amount = 2},
        {type = "fluid", name = "fetal-serum",       amount = 50},
    },
    results = {
        {type = "item", name = "xyhiphoe-mk03", amount = 1},
        {type = "item", name = "xyhiphoe-mk02", amount = 1},
    },
    main_product = "xyhiphoe-mk03",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/xyhiphoe.png",       icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk03.png", icon_size = 64, scale = 0.25, shift = {-7.5, -7.5}},
    },
    icon_size = 64,
    subgroup = "py-alienlife-xyhiphoe",
    order = "zb"
}:add_unlock("water-invertebrates-mk03")

--mk04--
--WIP--

RECIPE {
    type = "recipe",
    name = "xyhiphoe-mk04",
    category = "rc",
    allowed_module_categories = {"xyhiphoe"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "xyhiphoe-mk03",        amount = 2},
        {type = "item",  name = "zinc-finger-proteins", amount = 1},
        {type = "item",  name = "fish-food-02",         amount = 2},
        {type = "item",  name = "filtration-media",     amount = 5},
        {type = "item",  name = "saps",                 amount = 6},
        {type = "fluid", name = "pressured-water",      amount = 3000, fluidbox_index = 2},
    },
    results = {
        {type = "item", name = "xyhiphoe-mk04", amount = 1, probability = 0.003},
        {type = "item", name = "xyhiphoe",      amount = 1, probability = 0.7},
    },
    main_product = "xyhiphoe-mk04",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk04.png",  icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/xyhiphoe.png", icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-xyhiphoe",
    order = "zc"
}:add_unlock("water-invertebrates-mk04"):replace_ingredient("saps", "blood-meal")

RECIPE {
    type = "recipe",
    name = "xyhiphoe-cub-mk04-breeder",
    category = "rc",
    allowed_module_categories = {"xyhiphoe"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "xyhiphoe-mk04",    amount = 1},
        {type = "item",  name = "filtration-media", amount = 5},
        {type = "item",  name = "saps",             amount = 6},
        {type = "item",  name = "fawogae-mk04",     amount = 1},
        {type = "item",  name = "fish-mk04",        amount = 1},
        {type = "fluid", name = "pressured-water",  amount = 3000, fluidbox_index = 2},
    },
    results = {
        {type = "item", name = "xyhiphoe-cub-mk04", amount = 2},
        {type = "item", name = "xyhiphoe-cub-mk04", amount = 1, probability = 0.3},
        {type = "item", name = "xyhiphoe-cub-mk03", amount = 1, probability = 0.7},
    },
    main_product = "xyhiphoe-cub-mk04",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/xyhiphoe-cub.png",   icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk04.png", icon_size = 64, scale = 0.25, shift = {-7.5, -7.5}},
    },
    icon_size = 64,
    subgroup = "py-alienlife-xyhiphoe",
    order = "zc"
}:add_unlock("water-invertebrates-mk04"):replace_ingredient("saps", "blood-meal")

RECIPE {
    type = "recipe",
    name = "xyhiphoe-mk04-breeder",
    category = "creature-chamber",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "xyhiphoe-cub-mk04", amount = 2},
        {type = "fluid", name = "fetal-serum",       amount = 50},
    },
    results = {
        {type = "item", name = "xyhiphoe-mk04", amount = 1},
        {type = "item", name = "xyhiphoe-mk03", amount = 1},
    },
    main_product = "xyhiphoe-mk04",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/xyhiphoe.png",       icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk04.png", icon_size = 64, scale = 0.25, shift = {-7.5, -7.5}},
    },
    icon_size = 64,
    subgroup = "py-alienlife-xyhiphoe",
    order = "zc"
}:add_unlock("water-invertebrates-mk04")
