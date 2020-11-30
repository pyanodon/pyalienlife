--------------------------BHODDOS-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'bhoddos-sample',
    category = 'nursery',
    enabled = false,
    energy_required = 35,
    ingredients = {
        {type = 'item', name = 'alien-sample-02', amount = 1},
        {type = 'item', name = 'bio-sample', amount = 5},
        {type = 'item', name = 'earth-shroom-sample', amount = 1},
        {type = 'item', name = 'cdna', amount = 3},
        {type = 'item', name = 'moss-gen', amount = 5},
        {type = 'item', name = 'bhoddos-codex', amount = 1},
        {type = 'item', name = 'bhoddos-spore', amount = 50},
        {type = 'item', name = 'fawogae-spore', amount = 20},
        {type = 'fluid', name = 'water', amount = 1000},
    },
    results = {
        {type = 'item', name = 'bhoddos', amount = 1},
    },
}:add_unlock("bhoddos")

RECIPE {
    type = 'recipe',
    name = 'bhoddos-codex',
    category = 'crafting',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'glass', amount = 2},
        {type = 'item', name = 'small-lamp', amount = 5},
        {type = 'item', name = 'electronic-circuit', amount = 20},
        {type = 'item', name = 'tinned-cable', amount = 20},
    },
    results = {
        {type = 'item', name = 'bhoddos-codex', amount = 1},
    },
}:add_unlock("bhoddos")

RECIPE {
    type = 'recipe',
    name = 'bhoddos-spore',
    category = 'spore',
    enabled = false,
    energy_required = 8,
    ingredients = {
    },
    results = {
        {type = 'item', name = 'bhoddos-spore', amount = 1, probability = 0.4},
    },
}:add_unlock("bhoddos")

--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'bhoddos-spore-mk02',
    category = 'bhoddos',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'bhoddos', amount = 2},
        {type = 'item', name = 'fuelrod-mk03', amount = 1},
        {type = 'item', name = 'fungal-substrate-02', amount = 5},
        {type = 'item', name = 'biomass', amount = 15},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'bhoddos-spore-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'bhoddos-spore', amount = 5, probability = 0.8}
    },
    --main_product = "bhoddos-mk02",
    icons =
        {
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png', icon_size = 64},
            {icon = "__pyalienlifegraphics3__/graphics/icons/bhoddos-spore.png", icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-bhoddos',
    order = 'za'
}:add_unlock("bhoddos-breeding-1")

RECIPE {
    type = 'recipe',
    name = 'bhoddos-mk02',
    category = 'bhoddos',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'bhoddos-spore-mk02', amount = 5},
        {type = 'item', name = 'fuelrod-mk02', amount = 1},
        {type = 'item', name = 'fungal-substrate-02', amount = 5},
        {type = 'item', name = '40-u-powder', amount = 5},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'bhoddos-mk02', amount = 1}
    },
    --main_product = "bhoddos-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics3__/graphics/icons/bhoddos.png", icon_size = 64},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png', icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-bhoddos',
    order = 'za'
}:add_unlock("bhoddos-breeding-1")

--mk03--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'bhoddos-spore-mk03',
    category = 'bhoddos',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'bhoddos-mk02', amount = 2},
        {type = 'item', name = 'fuelrod-mk04', amount = 1},
        {type = 'item', name = 'fungal-substrate-03', amount = 5},
        {type = 'item', name = 'biomass', amount = 15},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'bhoddos-spore-mk03', amount = 1, probability = 0.005},
        {type = 'item', name = 'bhoddos-spore-mk02', amount = 5, probability = 0.8}
    },
    --main_product = "bhoddos-mk02",
    icons =
        {
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png', icon_size = 64},
            {icon = "__pyalienlifegraphics3__/graphics/icons/bhoddos-spore.png", icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-bhoddos',
    order = 'za'
}:add_unlock("bhoddos-breeding-2")

RECIPE {
    type = 'recipe',
    name = 'bhoddos-mk03',
    category = 'bhoddos',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'bhoddos-spore-mk03', amount = 5},
        {type = 'item', name = 'fuelrod-mk03', amount = 1},
        {type = 'item', name = 'fungal-substrate-03', amount = 5},
        {type = 'item', name = '70-u-powder', amount = 5},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'bhoddos-mk03', amount = 1}
    },
    --main_product = "bhoddos-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics3__/graphics/icons/bhoddos.png", icon_size = 64},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png', icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-bhoddos',
    order = 'za'
}:add_unlock("bhoddos-breeding-2")

--mk04--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'bhoddos-spore-mk03',
    category = 'bhoddos',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'bhoddos-mk03', amount = 2},
        {type = 'item', name = 'fuelrod-mk05', amount = 1},
        {type = 'item', name = 'fungal-substrate-03', amount = 10},
        {type = 'item', name = 'biomass', amount = 15},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'bhoddos-spore-mk04', amount = 1, probability = 0.005},
        {type = 'item', name = 'bhoddos-spore-mk03', amount = 5, probability = 0.8}
    },
    --main_product = "bhoddos-mk02",
    icons =
        {
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png', icon_size = 64},
            {icon = "__pyalienlifegraphics3__/graphics/icons/bhoddos-spore.png", icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-bhoddos',
    order = 'za'
}:add_unlock("bhoddos-breeding-3")

RECIPE {
    type = 'recipe',
    name = 'bhoddos-mk03',
    category = 'bhoddos',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'bhoddos-spore-mk04', amount = 5},
        {type = 'item', name = 'fuelrod-mk04', amount = 1},
        {type = 'item', name = 'fungal-substrate-03', amount = 5},
        {type = 'item', name = 'yellow-cake', amount = 5},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'bhoddos-mk04', amount = 1}
    },
    --main_product = "bhoddos-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics3__/graphics/icons/bhoddos.png", icon_size = 64},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png', icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-bhoddos',
    order = 'za'
}:add_unlock("bhoddos-breeding-3")
