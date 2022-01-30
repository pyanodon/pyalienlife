
--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'mukmoux-mk02',
    category = 'mukmoux',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'mukmoux-calf', amount = 2},
        {type = 'item', name = 'alien-sample-02', amount = 1},
        {type = 'item', name = 'mukmoux-food-02', amount = 2},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'ralesia-seeds', amount = 10},
        {type = 'item', name = 'fawogae', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 6},
        },
    results = {
        {type = 'item', name = 'mukmoux-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'manure', amount = 3},
        {type = 'item', name = 'empty-barrel', amount = 6},
        {type = 'item', name = 'mukmoux', amount = 1, probability = 0.5},
    },
    --main_product = "mukmoux-mk02",
    icons =
        {
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png', icon_size = 64},
            {icon = "__pyalienlifegraphics__/graphics/icons/mukmoux.png", icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-mukmoux',
    order = 'zaa'
}:add_unlock("mukmoux-breeding-1")

RECIPE {
    type = 'recipe',
    name = 'mukmoux-mk02-breeder',
    category = 'mukmoux',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'mukmoux-mk02', amount = 2},
        {type = 'item', name = 'mukmoux-food-02', amount = 2},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'ralesia-seeds', amount = 10},
        {type = 'item', name = 'fawogae', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 3},
        },
    results = {
        {type = 'item', name = 'mukmoux-calf-mk02', amount = 5},
        {type = 'item', name = 'manure', amount = 3},
        {type = 'item', name = 'empty-barrel', amount = 3},
    },
    --main_product = "mukmoux-calf-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/mukmoux.png"},
        {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png', scale = 0.25,shift = {-7.5,-7.5}},
    },
    icon_size = 64,
    subgroup = 'py-alienlife-mukmoux',
    order = 'zab'
}:add_unlock("mukmoux-breeding-1")

RECIPE {
    type = 'recipe',
    name = 'mukmoux-calf-mk02-breeder',
    category = 'mukmoux',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'mukmoux-calf-mk02', amount = 4},
        {type = 'item', name = 'mukmoux-food-02', amount = 2},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = "ralesia-seeds", amount = 10},
        {type = 'item', name = 'fawogae', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 3},
        },
    results = {
        {type = 'item', name = 'mukmoux-mk02', amount_min = 2, amount_max = 4},
        {type = 'item', name = 'manure', amount = 3},
        {type = 'item', name = 'empty-barrel', amount = 3},
    },
    --main_product = "mukmoux-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-calf.png"},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png', scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-mukmoux',
    order = 'zac'
}:add_unlock("mukmoux-breeding-1")

--mk03--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'mukmoux-mk03',
    category = 'mukmoux',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'mukmoux-calf-mk02', amount = 2},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'mukmoux-food-02', amount = 3},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'ralesia-seeds', amount = 10},
        {type = 'item', name = 'fawogae', amount = 10},
        {type = 'item', name = 'salt', amount = 5},
        {type = 'item', name = 'raw-fiber', amount = 4},
        {type = 'item', name = 'water-barrel', amount = 6},
        },
    results = {
        {type = 'item', name = 'mukmoux-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'manure', amount = 3},
        {type = 'item', name = 'empty-barrel', amount = 6},
        {type = 'item', name = 'mukmoux-mk02', amount = 1, probability = 0.6},
    },
    --main_product = "mukmoux-mk03",
    icons =
        {
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png', icon_size = 64},
            {icon = "__pyalienlifegraphics__/graphics/icons/mukmoux.png", icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-mukmoux',
    order = 'zba'
}:add_unlock("mukmoux-breeding-2")

RECIPE {
    type = 'recipe',
    name = 'mukmoux-mk03-breeder',
    category = 'mukmoux',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'mukmoux-mk03', amount = 2},
        {type = 'item', name = 'mukmoux-food-02', amount = 3},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'ralesia-seeds', amount = 10},
        {type = 'item', name = 'fawogae', amount = 10},
        {type = 'item', name = 'salt', amount = 5},
        {type = 'item', name = 'raw-fiber', amount = 4},
        {type = 'item', name = 'water-barrel', amount = 3},
        },
    results = {
        {type = 'item', name = 'mukmoux-calf-mk03', amount = 5},
        {type = 'item', name = 'manure', amount = 3},
        {type = 'item', name = 'empty-barrel', amount = 3},
    },
    --main_product = "mukmoux-calf-mk03",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/mukmoux.png"},
        {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png', scale = 0.25,shift = {-7.5,-7.5}},
    },
    icon_size = 64,
    subgroup = 'py-alienlife-mukmoux',
    order = 'zbb'
}:add_unlock("mukmoux-breeding-2")

RECIPE {
    type = 'recipe',
    name = 'mukmoux-calf-mk03-breeder',
    category = 'mukmoux',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'mukmoux-calf-mk03', amount = 4},
        {type = 'item', name = 'mukmoux-food-02', amount = 3},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'ralesia-seeds', amount = 10},
        {type = 'item', name = 'fawogae', amount = 10},
        {type = 'item', name = 'salt', amount = 5},
        {type = 'item', name = 'raw-fiber', amount = 4},
        {type = 'item', name = 'water-barrel', amount = 3},
        },
    results = {
        {type = 'item', name = 'mukmoux-mk03', amount_min = 2, amount_max = 4},
        {type = 'item', name = 'manure', amount = 3},
        {type = 'item', name = 'empty-barrel', amount = 3},
    },
    --main_product = "mukmoux-mk03",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-calf.png"},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png', scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-mukmoux',
    order = 'zbc'
}:add_unlock("mukmoux-breeding-2")

--mk04--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'mukmoux-mk04',
    category = 'mukmoux',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'mukmoux-calf-mk03', amount = 2},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'mukmoux-food-02', amount = 4},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'ralesia-seeds', amount = 10},
        {type = 'item', name = 'fawogae', amount = 10},
        {type = 'item', name = 'salt', amount = 5},
        {type = 'item', name = 'raw-fiber', amount = 4},
        {type = 'item', name = 'barrel-milk', amount = 2},
        {type = 'item', name = 'water-barrel', amount = 6},
        },
    results = {
        {type = 'item', name = 'mukmoux-mk04', amount = 1, probability = 0.003},
        {type = 'item', name = 'manure', amount = 3},
        {type = 'item', name = 'empty-barrel', amount = 6},
        {type = 'item', name = 'empty-barrel-milk', amount = 2},
        {type = 'item', name = 'mukmoux-mk03', amount = 1, probability = 0.7},
    },
    --main_product = "mukmoux-mk04",
    icons =
        {
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png', icon_size = 64},
            {icon = "__pyalienlifegraphics__/graphics/icons/mukmoux.png", icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-mukmoux',
    order = 'zca'
}:add_unlock("mukmoux-breeding-3")

RECIPE {
    type = 'recipe',
    name = 'mukmoux-mk04-breeder',
    category = 'mukmoux',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'mukmoux-mk04', amount = 2},
        {type = 'item', name = 'mukmoux-food-02', amount = 4},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'ralesia-seeds', amount = 10},
        {type = 'item', name = 'fawogae', amount = 10},
        {type = 'item', name = 'salt', amount = 5},
        {type = 'item', name = 'raw-fiber', amount = 4},
        {type = 'item', name = 'water-barrel', amount = 3},
        },
    results = {
        {type = 'item', name = 'mukmoux-calf-mk04', amount = 5},
        {type = 'item', name = 'manure', amount = 3},
        {type = 'item', name = 'empty-barrel', amount = 3},
    },
    --main_product = "mukmoux-calf-mk04",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/mukmoux.png"},
        {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png', scale = 0.25,shift = {-7.5,-7.5}},
    },
    icon_size = 64,
    subgroup = 'py-alienlife-mukmoux',
    order = 'zcb'
}:add_unlock("mukmoux-breeding-3")

RECIPE {
    type = 'recipe',
    name = 'mukmoux-calf-mk04-breeder',
    category = 'mukmoux',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'mukmoux-calf-mk04', amount = 4},
        {type = 'item', name = 'mukmoux-food-02', amount = 4},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'ralesia-seeds', amount = 10},
        {type = 'item', name = 'fawogae', amount = 10},
        {type = 'item', name = 'salt', amount = 5},
        {type = 'item', name = 'raw-fiber', amount = 4},
        {type = 'item', name = 'barrel-milk', amount = 2},
        {type = 'item', name = 'water-barrel', amount = 3},
        },
    results = {
        {type = 'item', name = 'mukmoux-mk04', amount_min = 2, amount_max = 4},
        {type = 'item', name = 'manure', amount = 3},
        {type = 'item', name = 'empty-barrel', amount = 3},
        {type = 'item', name = 'empty-barrel-milk', amount = 2},
    },
    --main_product = "mukmoux-mk04",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-calf.png"},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png', scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-mukmoux',
    order = 'zcc'
}:add_unlock("mukmoux-breeding-3")


table.insert(data.raw.module["mukmoux"].limitation, "mukmoux-mk02")
table.insert(data.raw.module["mukmoux"].limitation, "mukmoux-mk02-breeder")
table.insert(data.raw.module["mukmoux"].limitation, "mukmoux-calf-mk02-breeder")
table.insert(data.raw.module["mukmoux"].limitation, "mukmoux-mk03")
table.insert(data.raw.module["mukmoux"].limitation, "mukmoux-mk03-breeder")
table.insert(data.raw.module["mukmoux"].limitation, "mukmoux-calf-mk03-breeder")
table.insert(data.raw.module["mukmoux"].limitation, "mukmoux-mk04")
table.insert(data.raw.module["mukmoux"].limitation, "mukmoux-mk04-breeder")
table.insert(data.raw.module["mukmoux"].limitation, "mukmoux-calf-mk04-breeder")

data.raw.module['mukmoux-mk02'].limitation = table.deepcopy(data.raw.module['mukmoux'].limitation)
data.raw.module['mukmoux-mk03'].limitation = table.deepcopy(data.raw.module['mukmoux'].limitation)
data.raw.module['mukmoux-mk04'].limitation = table.deepcopy(data.raw.module['mukmoux'].limitation)