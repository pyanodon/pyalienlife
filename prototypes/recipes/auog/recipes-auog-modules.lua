
--Secondary Upgrade Recipes--
--SUR--
--DONE--

--mk02--
--DONE--

RECIPE {
    type = 'recipe',
    name = 'auog-mk02',
    category = 'rc-auog',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'auog-pup', amount = 1},
        {type = 'item', name = 'casein', amount = 2},
        {type = 'item', name = 'energy-drink', amount =1},
        {type = 'item', name = 'albumin', amount =10},
        --{type = 'item', name = 'immunosupressants', amount =2},
        },
    results = {
        {type = 'item', name = 'auog', amount = 1, probability = 0.7},
        {type = 'item', name = 'charged-auog', amount = 1, probability = 0.1},
        {type = 'item', name = 'auog-mk02', amount = 1, probability = 0.005},
    },
    --main_product = "auog-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk02.png", icon_size = 64},
        {icon = '__pyalienlifegraphics__/graphics/icons/auog.png', icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = 'py-alienlife-auog',
    order = 'za'
}:add_unlock("auog-mk02")

RECIPE {
    type = 'recipe',
    name = 'auog-pup-01',
    category = 'rc-auog',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'auog', amount = 1},
        {type = 'item', name = 'native-flora', amount = 10},
        {type = 'item', name = 'moss', amount = 8},
        {type = 'item', name = 'water-barrel', amount = 2},
        {type = 'item', name = 'bedding', amount = 1},
        },
    results = {
        {type = 'item', name='auog-pup', probability = 0.25, amount_min = 1, amount_max = 4},
        {type = 'item', name = 'empty-barrel', amount = 2}
    },
    --main_product = "auog-mk02",
    icons =
        {
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png', icon_size = 64},
            {icon = "__pyalienlifegraphics__/graphics/icons/auog-pup.png", icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-auog',
    order = 'za'
}:add_unlock("auog-mk02")

RECIPE {
    type = 'recipe',
    name = 'auog-mk02-breeder',
    category = 'auog',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'auog-mk02', amount = 2},
        {type = 'item', name = 'auog-food-02', amount = 2},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'moss', amount = 10},
        {type = 'item', name = 'saps', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 3},
        },
    results = {
        {type = 'item', name = 'auog-pup-mk02', amount = 5},
        {type = 'item', name = 'empty-barrel', amount = 3},
    },
    --main_product = "auog-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/auog.png"},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png', scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-auog',
    order = 'za'
}:add_unlock("auog-mk02")

RECIPE {
    type = 'recipe',
    name = 'auog-pup-mk02-breeder',
    category = 'auog',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'auog-pup-mk02', amount = 4},
        {type = 'item', name = 'auog-food-02', amount = 2},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = "seaweed", amount = 10},
        {type = 'item', name = 'saps', amount = 10},
        {type = 'item', name = 'barrel-milk', amount = 2},
        {type = 'item', name = 'water-barrel', amount = 3},
        },
    results = {
        {type = 'item', name = 'auog-mk02', amount_min = 2, amount_max = 4},
        {type = 'item', name = 'empty-barrel', amount = 3},
        {type = 'item', name = 'empty-barrel-milk', amount = 2},
    },
    --main_product = "auog-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/auog-pup.png"},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png', scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-auog',
    order = 'za'
}:add_unlock("auog-mk02")

--MK03--
--DONE--

RECIPE {
    type = 'recipe',
    name = 'auog-mk03',
    category = 'rc-auog',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'auog-pup-mk02', amount = 1},
        {type = 'item', name = 'nanofibrils', amount = 2},
        {type = 'item', name = 'energy-drink', amount =1},
        {type = 'item', name = 'albumin', amount =10},
        {type = 'item', name = 'immunosupressants', amount =2},
        },
    results = {
        {type = 'item', name = 'auog-mk02', amount = 1, probability = 0.7},
        {type = 'item', name = 'charged-auog', amount = 1, probability = 0.1},
        {type = 'item', name = 'auog-mk03', amount = 1, probability = 0.005},
    },
    --main_product = "auog-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk03.png", icon_size = 64},
        {icon = '__pyalienlifegraphics__/graphics/icons/auog.png', icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = 'py-alienlife-auog',
    order = 'za'
}:add_unlock("auog-mk03")

RECIPE {
    type = 'recipe',
    name = 'auog-mk03-breeder',
    category = 'auog',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'auog-mk03', amount = 2},
        {type = 'item', name = 'auog-food-02', amount = 2},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'moss', amount = 10},
        {type = 'item', name = 'saps', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 3},
        },
    results = {
        {type = 'item', name = 'auog-pup-mk03', amount = 5},
        {type = 'item', name = 'empty-barrel', amount = 3},
    },
    --main_product = "auog-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/auog.png"},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png', scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-auog',
    order = 'za'
}:add_unlock("auog-mk03")

RECIPE {
    type = 'recipe',
    name = 'auog-pup-mk03-breeder',
    category = 'auog',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'auog-pup-mk03', amount = 4},
        {type = 'item', name = 'auog-food-02', amount = 2},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = "seaweed", amount = 10},
        {type = 'item', name = 'saps', amount = 10},
        {type = 'item', name = 'barrel-milk', amount = 2},
        {type = 'item', name = 'water-barrel', amount = 3},
        },
    results = {
        {type = 'item', name = 'auog-mk03', amount_min = 1, amount_max = 4},
        {type = 'item', name = 'empty-barrel', amount = 3},
        {type = 'item', name = 'empty-barrel-milk', amount = 2},
    },
    --main_product = "auog-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/auog-pup.png"},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png', scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-auog',
    order = 'za'
}:add_unlock("auog-mk03")

--MK04--
--DONE--

RECIPE {
    type = 'recipe',
    name = 'auog-mk04',
    category = 'rc-auog',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'auog-pup-mk03', amount = 1},
        {type = 'item', name = 'nanofibrils', amount = 2},
        {type = 'item', name = 'energy-drink', amount =1},
        {type = 'item', name = 'albumin', amount =10},
        {type = 'item', name = 'immunosupressants', amount =2},
        },
    results = {
        {type = 'item', name = 'auog-mk03', amount = 1, probability = 0.7},
        {type = 'item', name = 'charged-auog', amount = 1, probability = 0.1},
        {type = 'item', name = 'auog-mk04', amount = 1, probability = 0.005},
    },
    --main_product = "auog-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk04.png", icon_size = 64},
        {icon = '__pyalienlifegraphics__/graphics/icons/auog.png', icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = 'py-alienlife-auog',
    order = 'za'
}:add_unlock("auog-mk04")

RECIPE {
    type = 'recipe',
    name = 'auog-mk04-breeder',
    category = 'auog',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'auog-mk04', amount = 2},
        {type = 'item', name = 'auog-food-02', amount = 2},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'moss', amount = 10},
        {type = 'item', name = 'saps', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 3},
        },
    results = {
        {type = 'item', name = 'auog-pup-mk04', amount = 5},
        {type = 'item', name = 'empty-barrel', amount = 3},
    },
    --main_product = "auog-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/auog.png"},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png', scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-auog',
    order = 'za'
}:add_unlock("auog-mk04")

RECIPE {
    type = 'recipe',
    name = 'auog-pup-mk04-breeder',
    category = 'auog',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'auog-pup-mk04', amount = 4},
        {type = 'item', name = 'auog-food-02', amount = 2},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = "seaweed", amount = 10},
        {type = 'item', name = 'saps', amount = 10},
        {type = 'item', name = 'barrel-milk', amount = 2},
        {type = 'item', name = 'water-barrel', amount = 3},
        },
    results = {
        {type = 'item', name = 'auog-mk04', amount_min = 1, amount_max = 4},
        {type = 'item', name = 'empty-barrel', amount = 3},
        {type = 'item', name = 'empty-barrel-milk', amount = 2},
    },
    --main_product = "auog-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/auog-pup.png"},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png', scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-auog',
    order = 'za'
}:add_unlock("auog-mk04")
