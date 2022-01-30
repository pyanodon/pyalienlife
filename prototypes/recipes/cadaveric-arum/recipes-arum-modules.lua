
--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--
--DONE--

RECIPE {
    type = 'recipe',
    name = 'cadaveric-arum-mk02-item',
    category = 'arum',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'cadaveric-arum-seeds', amount = 5},
        {type = 'fluid', name = 'refsyngas', amount = 100},
        {type = 'item', name = 'fertilizer', amount = 10},
        {type = 'item', name = 'sulfur', amount = 20},
        {type = 'fluid', name = 'acidgas', amount = 100},
        },
    results = {
        {type = 'item', name = 'cadaveric-arum-mk02-a', amount = 1, probability = 0.005},
        {type = 'item', name = 'cadaveric-arum', amount = 1, probability = 0.5},
    },
    --main_product = "cadaveric-arum-mk02",
    icons =
        {
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png'},
            {icon = "__pyalienlifegraphics__/graphics/icons/cadaveric-arum.png", icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}}
        },
    icon_size = 64,
    subgroup = 'py-alienlife-cadaveric',
    order = 'za'
}:add_unlock("arum-breeding-1")

RECIPE {
    type = 'recipe',
    name = 'cadaveric-arum-mk02-seeder',
    category = 'arum',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'cadaveric-arum-mk02-a', amount = 1},
        {type = 'fluid', name = 'coal-gas', amount = 500},
        {type = 'item', name = 'sulfur', amount = 10},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'fluid', name = 'cadaveric-arum-mk02-seed-juice', amount = 200},
    },
    --main_product = "cadaveric-arum-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/cadaveric-arum-mk02-seed-juice.png"},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png', scale = 0.25,shift = {-7.5,-7.5}}
        },
    icon_size = 64,
    subgroup = 'py-alienlife-cadaveric',
    order = 'za'
}:add_unlock("arum-breeding-1")

RECIPE {
    type = 'recipe',
    name = 'cadaveric-arum-mk02-juicer',
    category = 'pan',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'fluid', name = 'cadaveric-arum-mk02-seed-juice', amount = 75},
        {type = 'fluid', name = 'methanol', amount = 100},
        {type = 'item', name = 'sulfur', amount = 10},
        },
    results = {
        {type = 'item', name = 'cadaveric-arum-seeds-mk02', amount = 3},
        {type = 'fluid', name = 'dms', amount = 25},
        {type = 'fluid', name = 'acidgas', amount = 50}
    },
    --main_product = "cadaveric-arum-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/cadaveric-arum-seeds.png"},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png', icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}}
        },
    icon_size = 64,
    subgroup = 'py-alienlife-cadaveric',
    order = 'za'
}:add_unlock("arum-breeding-1")

RECIPE {
    type = 'recipe',
    name = 'cadaveric-arum-mk02-breeder',
    category = 'arum',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'cadaveric-arum-seeds-mk02', amount = 4},
        {type = 'fluid', name = 'coalbed-gas', amount = 75},
        {type = 'item', name = 'sulfur', amount = 10},
        {type = 'fluid', name = 'outlet-gas-01', amount = 200},
        },
    results = {
        {type = 'item', name = 'cadaveric-arum-mk02-a', amount = 1},
        {type = 'fluid', name = 'outlet-gas-02', amount = 50},
    },
    --main_product = "cadaveric-arum-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/cadaveric-arum.png"},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png', icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}}
        },
    icon_size = 64,
    subgroup = 'py-alienlife-cadaveric',
    order = 'za'
}:add_unlock("arum-breeding-1")

--MK03--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'cadaveric-arum-mk03-item',
    category = 'arum',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'cadaveric-arum-seeds-mk02', amount = 5},
        {type = 'fluid', name = 'coalbed-gas', amount = 500},
        {type = 'item', name = 'fertilizer', amount = 10},
        {type = 'item', name = 'sulfur', amount = 10},
        {type = 'fluid', name = 'natural-gas', amount = 500},
        },
    results = {
        {type = 'item', name = 'cadaveric-arum-mk03-a', amount = 1, probability = 0.004},
        {type = 'item', name = 'copper-ore', amount = 25, probability = 0.5},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "cadaveric-arum-mk03",
    icons =
        {
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png'},
            {icon = "__pyalienlifegraphics__/graphics/icons/cadaveric-arum.png", icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}}
        },
    icon_size = 64,
    subgroup = 'py-alienlife-cadaveric',
    order = 'zb'
}:add_unlock("arum-breeding-2")


RECIPE {
    type = 'recipe',
    name = 'cadaveric-arum-mk03-seeder',
    category = 'arum',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'cadaveric-arum-mk03-a', amount = 1},
        {type = 'fluid', name = 'carbon-dioxide', amount = 500},
        {type = 'item', name = 'sulfur', amount = 10},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'fluid', name = 'cadaveric-arum-mk03-seed-juice', amount = 225},
    },
    --main_product = "cadaveric-arum-mk03",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/cadaveric-arum-mk03-seed-juice.png"},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png', scale = 0.25,shift = {-7.5,-7.5}}
        },
    icon_size = 64,
    subgroup = 'py-alienlife-cadaveric',
    order = 'za'
}:add_unlock("arum-breeding-2")

RECIPE {
    type = 'recipe',
    name = 'cadaveric-arum-mk03-juicer',
    category = 'pan',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'fluid', name = 'cadaveric-arum-mk03-seed-juice', amount = 75},
        {type = 'fluid', name = 'pure-natural-gas', amount = 175},
        {type = 'item', name = 'sulfur', amount = 10},
        },
    results = {
        {type = 'item', name = 'cadaveric-arum-seeds-mk03', amount = 3},
        {type = 'fluid', name = 'methane', amount = 100},
        {type = 'fluid', name = 'residual-gas', amount = 50}
    },
    --main_product = "cadaveric-arum-mk03",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/cadaveric-arum-seeds.png"},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png', icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}}
        },
    icon_size = 64,
    subgroup = 'py-alienlife-cadaveric',
    order = 'za'
}:add_unlock("arum-breeding-2")

RECIPE {
    type = 'recipe',
    name = 'cadaveric-arum-mk03-breeder',
    category = 'arum',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'cadaveric-arum-seeds-mk03', amount = 4},
        {type = 'fluid', name = 'coalbed-gas', amount = 75},
        {type = 'item', name = 'sulfur', amount = 10},
        {type = 'fluid', name = 'outlet-gas-02', amount = 200},
        },
    results = {
        {type = 'item', name = 'cadaveric-arum-mk03-a', amount = 1},
        {type = 'fluid', name = 'outlet-gas-03', amount = 50},
    },
    --main_product = "cadaveric-arum-mk03",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/cadaveric-arum.png"},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png', icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}}
        },
    icon_size = 64,
    subgroup = 'py-alienlife-cadaveric',
    order = 'za'
}:add_unlock("arum-breeding-2")


--MK04--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'cadaveric-arum-mk04-item',
    category = 'arum',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'cadaveric-arum', amount = 2},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'cadaveric-arum-seeds', amount = 10},
        {type = 'fluid', name = 'coal-gas', amount = 500},
        {type = 'item', name = 'fertilizer', amount = 10},
        {type = 'item', name = 'ash', amount = 20},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'cadaveric-arum-mk04-a', amount = 1, probability = 0.003},
        {type = 'item', name = 'cadaveric-arum', amount = 1, probability = 0.7},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "cadaveric-arum-mk04",
    icons =
        {
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png'},
            {icon = "__pyalienlifegraphics__/graphics/icons/cadaveric-arum.png", icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}}
        },
    icon_size = 64,
    subgroup = 'py-alienlife-cadaveric',
    order = 'zc'
}:add_unlock("arum-breeding-3")


RECIPE {
    type = 'recipe',
    name = 'cadaveric-arum-mk04-seeder',
    category = 'arum',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'cadaveric-arum-mk04-a', amount = 1},
        {type = 'fluid', name = 'coal-gas', amount = 500},
        {type = 'item', name = 'sulfur', amount = 10},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'fluid', name = 'cadaveric-arum-mk04-seed-juice', amount = 200},
    },
    --main_product = "cadaveric-arum-mk04",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/cadaveric-arum-mk04-seed-juice.png"},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png', scale = 0.25,shift = {-7.5,-7.5}}
        },
    icon_size = 64,
    subgroup = 'py-alienlife-cadaveric',
    order = 'za'
}:add_unlock("arum-breeding-3")

RECIPE {
    type = 'recipe',
    name = 'cadaveric-arum-mk04-juicer',
    category = 'pan',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'fluid', name = 'cadaveric-arum-mk04-seed-juice', amount = 75},
        {type = 'fluid', name = 'coal-gas', amount = 500},
        {type = 'item', name = 'sulfur', amount = 10},
        },
    results = {
        {type = 'item', name = 'cadaveric-arum-seeds-mk04', amount = 3},
        {type = 'fluid', name = 'dms', amount = 25},
        {type = 'fluid', name = 'acidgas', amount = 50}
    },
    --main_product = "cadaveric-arum-mk04",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/cadaveric-arum-seeds.png"},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png', icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}}
        },
    icon_size = 64,
    subgroup = 'py-alienlife-cadaveric',
    order = 'za'
}:add_unlock("arum-breeding-3")

RECIPE {
    type = 'recipe',
    name = 'cadaveric-arum-mk04-breeder',
    category = 'arum',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'cadaveric-arum-seeds-mk04', amount = 4},
        {type = 'fluid', name = 'coalbed-gas', amount = 75},
        {type = 'item', name = 'sulfur', amount = 10},
        {type = 'fluid', name = 'outlet-gas-03', amount = 200},
        },
    results = {
        {type = 'item', name = 'cadaveric-arum-mk04-a', amount = 1},
        {type = 'fluid', name = 'outlet-gas-04', amount = 50},
    },
    --main_product = "cadaveric-arum-mk04",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/cadaveric-arum.png"},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png', icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}}
        },
    icon_size = 64,
    subgroup = 'py-alienlife-cadaveric',
    order = 'za'
}:add_unlock("arum-breeding-3")
