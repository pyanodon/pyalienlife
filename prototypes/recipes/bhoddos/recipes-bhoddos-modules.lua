--Secondary Upgrade Recipes--
--SUR--
--DONE--

--mk02--
--DONE--

RECIPE {
    type = "recipe",
    name = "bhoddos-spore-mk02",
    category = "bhoddos",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "bhoddos",             amount = 2},
        {type = "item",  name = "fuelrod-mk02",        amount = 1},
        {type = "item",  name = "fungal-substrate-02", amount = 5},
        {type = "item",  name = "biomass",             amount = 15},
        {type = "fluid", name = "water",               amount = 1000},
    },
    results = {
        {type = "item", name = "bhoddos-spore-mk02", amount = 1, probability = 0.005},
        {type = "item", name = "bhoddos-spore",      amount = 5, probability = 0.8}
    },
    --main_product = "bhoddos-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk02.png",       icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/bhoddos-spore.png", icon_size = 64, scale = 0.35},

    },
    icon_size = 64,
    subgroup = "py-alienlife-bhoddos",
    order = "za"
}:add_unlock("bhoddos-mk02")

RECIPE {
    type = "recipe",
    name = "bhoddos-mk02",
    category = "bhoddos",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "bhoddos-spore-mk02",  amount = 5},
        {type = "item",  name = "fuelrod-mk02",        amount = 1},
        {type = "item",  name = "fungal-substrate-02", amount = 5},
        {type = "item",  name = "40-u-powder",         amount = 5},
        {type = "fluid", name = "water",               amount = 1000},
    },
    results = {
        {type = "item", name = "bhoddos-mk02", amount = 1}
    },
    --main_product = "bhoddos-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk02.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/bhoddos.png", icon_size = 64, scale = 0.35},

    },
    icon_size = 64,
    subgroup = "py-alienlife-bhoddos",
    order = "za"
}:add_unlock("bhoddos-mk02")

RECIPE {
    type = "recipe",
    name = "bhoddos-spore-mk02-breeding",
    category = "bhoddos",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "bhoddos-mk02",        amount = 1},
        {type = "item",  name = "fungal-substrate-02", amount = 5},
        {type = "fluid", name = "liquid-manure",       amount = 50},
    },
    results = {
        {type = "item", name = "bhoddos-spore-mk02", amount = 6, extra_count_fraction = 0.4},
    },
    --main_product = "bhoddos-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/bhoddos-spore.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk02.png",     icon_size = 64},
    },
    icon_size = 64,
    subgroup = "py-alienlife-bhoddos",
    order = "za"
}:add_unlock("bhoddos-mk02")

--mk03--
--DONE--

RECIPE {
    type = "recipe",
    name = "bhoddos-spore-mk03",
    category = "bhoddos",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "bhoddos-mk02",        amount = 2},
        {type = "item",  name = "fuelrod-mk03",        amount = 1},
        {type = "item",  name = "fungal-substrate-03", amount = 5},
        {type = "item",  name = "biomass",             amount = 15},
        {type = "item",  name = "alien-sample-03",     amount = 1},
        {type = "fluid", name = "water",               amount = 1000},
    },
    results = {
        {type = "item", name = "bhoddos-spore-mk03", amount = 1, probability = 0.005},
        {type = "item", name = "bhoddos-spore-mk02", amount = 5, probability = 0.8}
    },
    --main_product = "bhoddos-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk03.png",       icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/bhoddos-spore.png", icon_size = 64, scale = 0.35},

    },
    icon_size = 64,
    subgroup = "py-alienlife-bhoddos",
    order = "za"
}:add_unlock("bhoddos-mk03")

RECIPE {
    type = "recipe",
    name = "bhoddos-mk03",
    category = "bhoddos",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "bhoddos-spore-mk03",  amount = 5},
        {type = "item",  name = "fuelrod-mk03",        amount = 1},
        {type = "item",  name = "fungal-substrate-03", amount = 5},
        {type = "item",  name = "70-u-powder",         amount = 5},
        {type = "fluid", name = "water",               amount = 1000},
    },
    results = {
        {type = "item", name = "bhoddos-mk03", amount = 1}
    },
    --main_product = "bhoddos-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk03.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/bhoddos.png", icon_size = 64, scale = 0.35},

    },
    icon_size = 64,
    subgroup = "py-alienlife-bhoddos",
    order = "za"
}:add_unlock("bhoddos-mk03")

RECIPE {
    type = "recipe",
    name = "bhoddos-spore-mk03-breeding",
    category = "bhoddos",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "bhoddos-mk03",        amount = 1},
        {type = "item",  name = "fungal-substrate-03", amount = 5},
        {type = "fluid", name = "bacteria-1",          amount = 75},
    },
    results = {
        {type = "item", name = "bhoddos-spore-mk03", amount = 6, extra_count_fraction = 0.3},
    },
    --main_product = "bhoddos-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/bhoddos-spore.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk03.png",     icon_size = 64},
    },
    icon_size = 64,
    subgroup = "py-alienlife-bhoddos",
    order = "za"
}:add_unlock("bhoddos-mk03")

--mk04--
--DONE--

RECIPE {
    type = "recipe",
    name = "bhoddos-spore-mk04",
    category = "bhoddos",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "bhoddos-mk03",         amount = 2},
        {type = "item",  name = "fuelrod-mk04",         amount = 1},
        {type = "item",  name = "fungal-substrate-03",  amount = 10},
        {type = "item",  name = "biomass",              amount = 15},
        {type = "item",  name = "zinc-finger-proteins", amount = 1},
        {type = "fluid", name = "water",                amount = 1000},
    },
    results = {
        {type = "item", name = "bhoddos-spore-mk04", amount = 1, probability = 0.005},
        {type = "item", name = "bhoddos-spore-mk03", amount = 5, probability = 0.8}
    },
    --main_product = "bhoddos-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk04.png",       icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/bhoddos-spore.png", icon_size = 64, scale = 0.35},

    },
    icon_size = 64,
    subgroup = "py-alienlife-bhoddos",
    order = "za"
}:add_unlock("bhoddos-mk04")

RECIPE {
    type = "recipe",
    name = "bhoddos-mk04",
    category = "bhoddos",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "bhoddos-spore-mk04",  amount = 5},
        {type = "item",  name = "fuelrod-mk04",        amount = 1},
        {type = "item",  name = "fungal-substrate-03", amount = 5},
        {type = "item",  name = "yellow-cake",         amount = 5},
        {type = "fluid", name = "water",               amount = 1000},
    },
    results = {
        {type = "item", name = "bhoddos-mk04", amount = 1}
    },
    --main_product = "bhoddos-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk04.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/bhoddos.png", icon_size = 64, scale = 0.35},

    },
    icon_size = 64,
    subgroup = "py-alienlife-bhoddos",
    order = "za"
}:add_unlock("bhoddos-mk04")

RECIPE {
    type = "recipe",
    name = "bhoddos-spore-mk04-breeding",
    category = "bhoddos",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "bhoddos-mk04",        amount = 1},
        {type = "item",  name = "fungal-substrate-03", amount = 5},
        {type = "item",  name = "gh",                  amount = 2},
        {type = "fluid", name = "bacteria-1",          amount = 100},
    },
    results = {
        {type = "item", name = "bhoddos-spore-mk04", amount = 6, extra_count_fraction = 0.75},
    },
    --main_product = "bhoddos-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/bhoddos-spore.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk04.png",     icon_size = 64},
    },
    icon_size = 64,
    subgroup = "py-alienlife-bhoddos",
    order = "za"
}:add_unlock("bhoddos-mk04"):replace_ingredient("bacteria-1", "bacteria-2")
