--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--

RECIPE {
    type = "recipe",
    name = "sea-sponge-mk02",
    category = "sponge",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "sea-sponge",     amount = 2},
        {type = "fluid", name = "phytoplankton",  amount = 50},
        {type = "fluid", name = "zogna-bacteria", amount = 100},
    },
    results = {
        {type = "item",  name = "sea-sponge-mk02", amount = 1, probability = 0.005},
        {type = "fluid", name = "water-saline",    amount = 50},
        {type = "item",  name = "sea-sponge",      amount = 1, probability = 0.5},
    },
    main_product = "sea-sponge-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk02.png",    icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/sea-sponge.png", icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-sponge",
    order = "za"
}:add_unlock("water-invertebrates-mk02")

RECIPE {
    type = "recipe",
    name = "sea-sponge-mk02-breeder",
    category = "sponge",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "item",  name = "sea-sponge-sprouts-mk02", amount = 1},
        {type = "fluid", name = "slacked-lime",            amount = 50},
        {type = "fluid", name = "zogna-bacteria",          amount = 50},
    },
    results = {
        {type = "item",  name = "sea-sponge-mk02", amount = 1, probability = 0.8},
        {type = "fluid", name = "water-saline",    amount = 50},
    },
    main_product = "sea-sponge-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/sea-sponge.png",     icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk02.png", icon_size = 64, scale = 0.25, shift = {-7.5, -7.5}},
    },
    icon_size = 64,
    subgroup = "py-alienlife-sponge",
    order = "za"
}:add_unlock("water-invertebrates-mk02")

RECIPE {
    type = "recipe",
    name = "sea-sponge-sprouts-mk02-breeder",
    category = "bio-reactor",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "item", name = "sea-sponge-mk02", amount = 1},
    },
    results = {
        {type = "item", name = "sea-sponge-sprouts-mk02", amount = 3},
    },
    main_product = "sea-sponge-sprouts-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/sea-sponge-sprouts.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk02.png",     icon_size = 64, scale = 0.25, shift = {-7.5, -7.5}},
    },
    icon_size = 64,
    subgroup = "py-alienlife-sponge",
    order = "za"
}:add_unlock("water-invertebrates-mk02")

--mk03--

RECIPE {
    type = "recipe",
    name = "sea-sponge-mk03",
    category = "sponge",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "sea-sponge-mk02", amount = 2},
        {type = "item",  name = "alien-sample-03", amount = 1},
        {type = "fluid", name = "phytoplankton",   amount = 50},
        {type = "fluid", name = "zogna-bacteria",  amount = 100},
    },
    results = {
        {type = "item",  name = "sea-sponge-mk03", amount = 1, probability = 0.004},
        {type = "fluid", name = "water-saline",    amount = 50},
        {type = "item",  name = "sea-sponge",      amount = 1, probability = 0.5},
    },
    main_product = "sea-sponge-mk03",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk03.png",    icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/sea-sponge.png", icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-sponge",
    order = "zb"
}:add_unlock("water-invertebrates-mk03")

RECIPE {
    type = "recipe",
    name = "sea-sponge-mk03-breeder",
    category = "sponge",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "item",  name = "sea-sponge-sprouts-mk03", amount = 1},
        {type = "fluid", name = "quartz-pulp-01",          amount = 50},
        {type = "fluid", name = "manure-bacteria",         amount = 50},
    },
    results = {
        {type = "item",  name = "sea-sponge-mk03", amount = 1, probability = 0.7},
        {type = "fluid", name = "water-saline",    amount = 50},
    },
    main_product = "sea-sponge-mk03",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/sea-sponge.png",     icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk03.png", icon_size = 64, scale = 0.25, shift = {-7.5, -7.5}},
    },
    icon_size = 64,
    subgroup = "py-alienlife-sponge",
    order = "zb"
}:add_unlock("water-invertebrates-mk03")

RECIPE {
    type = "recipe",
    name = "sea-sponge-sprouts-mk03-breeder",
    category = "bio-reactor",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "item", name = "sea-sponge-mk03", amount = 1},
    },
    results = {
        {type = "item", name = "sea-sponge-sprouts-mk03", amount = 3},
    },
    main_product = "sea-sponge-sprouts-mk03",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/sea-sponge-sprouts.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk03.png",     icon_size = 64, scale = 0.25, shift = {-7.5, -7.5}},
    },
    icon_size = 64,
    subgroup = "py-alienlife-sponge",
    order = "zb"
}:add_unlock("water-invertebrates-mk03")

--mk04--
--WIP--

RECIPE {
    type = "recipe",
    name = "sea-sponge-mk04",
    category = "sponge",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "sea-sponge-mk03",      amount = 2},
        {type = "item",  name = "zinc-finger-proteins", amount = 1},
        {type = "fluid", name = "phytoplankton",        amount = 50},
        {type = "fluid", name = "zogna-bacteria",       amount = 100},
    },
    results = {
        {type = "item",  name = "sea-sponge-mk04", amount = 1, probability = 0.003},
        {type = "fluid", name = "water-saline",    amount = 50},
        {type = "item",  name = "sea-sponge",      amount = 1, probability = 0.5},
    },
    main_product = "sea-sponge-mk04",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk04.png",    icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/sea-sponge.png", icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = "py-alienlife-sponge",
    order = "zc"
}:add_unlock("water-invertebrates-mk04")

RECIPE {
    type = "recipe",
    name = "sea-sponge-mk04-breeder",
    category = "sponge",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "item",  name = "sea-sponge-sprouts-mk04", amount = 1},
        {type = "fluid", name = "high-grade-quartz-pulp",  amount = 50},
        {type = "fluid", name = "bacteria-1",              amount = 50},
    },
    results = {
        {type = "item",  name = "sea-sponge-mk04", amount = 1, probability = 0.6},
        {type = "fluid", name = "water-saline",    amount = 50},
    },
    main_product = "sea-sponge-mk04",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/sea-sponge.png",     icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk04.png", icon_size = 64, scale = 0.25, shift = {-7.5, -7.5}},
    },
    icon_size = 64,
    subgroup = "py-alienlife-sponge",
    order = "zc"
}:add_unlock("water-invertebrates-mk04"):replace_ingredient("bacteria-1", "bacteria-2")

RECIPE {
    type = "recipe",
    name = "sea-sponge-sprouts-mk04-breeder",
    category = "bio-reactor",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "item", name = "sea-sponge-mk04", amount = 1},
    },
    results = {
        {type = "item", name = "sea-sponge-sprouts-mk04", amount = 3},
    },
    main_product = "sea-sponge-sprouts-mk04",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/sea-sponge-sprouts.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk04.png",     icon_size = 64, scale = 0.25, shift = {-7.5, -7.5}},
    },
    icon_size = 64,
    subgroup = "py-alienlife-sponge",
    order = "zc"
}:add_unlock("water-invertebrates-mk04")
