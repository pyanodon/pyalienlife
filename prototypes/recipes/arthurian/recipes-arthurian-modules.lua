
--Secondary Upgrade Recipes--
--SUR--
--DONE--

--mk02--
--DONE--

RECIPE {
    type = 'recipe',
    name = 'arthurian-egg-mk02-gmo',
    category = 'rc-arthurian',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'arthurian', amount = 2},
        {type = 'item', name = 'caged-ulric', amount = 1},
        {type = 'item', name = 'bedding', amount = 3},
        {type = 'item', name = 'cocoon', amount = 2},
        {type = 'item', name = 'water-barrel', amount = 4},
        },
    results = {
        {type = 'item', name = 'arthurian-egg-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'arthurian-egg', amount = 1, probability = 0.5},
        {type = 'item', name = 'empty-barrel', amount = 4},
    },
    --main_product = "arthurian-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk02.png", icon_size = 64},
        {icon = '__pyalienlifegraphics__/graphics/icons/arthurian.png', icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = 'py-alienlife-arthurian',
    order = 'za'
}:add_unlock("arthurian-mk02")

RECIPE {
    type = 'recipe',
    name = 'arthurian-pup-mk02',
    category = 'incubator',
    enabled = false,
    energy_required = 45,
    ingredients = {
        {type = 'item', name = 'arthurian-egg-mk02', amount = 1},
        {type = 'fluid', name = 'gta', amount = 150},
        },
    results = {
        {type = 'item', name = 'arthurian-pup-mk02', amount = 1, probability = 0.5},
    },
    --main_product = "arthurian-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/arthurian-pup.png"},
            {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk02.png", scale = 0.25, shift = {-7.5,-7.5}}
        },
    icon_size = 64,
    subgroup = 'py-alienlife-arthurian',
    order = 'za'
}:add_unlock("arthurian-mk02")

RECIPE {
    type = 'recipe',
    name = 'arthurian-mk02',
    category = 'arthurian',
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = 'item', name = 'arthurian-pup-mk02', amount = 1},
        {type = 'item', name = 'arthurian-food-01', amount = 3},
        {type = 'item', name = 'dhilmos-pup', amount = 4},
        {type = 'item', name = 'syrup-01-barrel', amount = 3},
        },
    results = {
        {type = 'item', name = 'arthurian-mk02', amount = 1},
        {type = 'item', name = 'empty-barrel', amount = 3},
    },
    --main_product = "arthurian-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/arthurian.png"},
            {icon = "__pyalienlifegraphics__/graphics/icons/over-mk02.png"},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-arthurian',
    order = 'za'
}:add_unlock("arthurian-mk02")

RECIPE {
    type = 'recipe',
    name = 'arthurian-egg-mk02',
    category = 'arthurian',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'arthurian-mk02', amount = 1},
        {type = 'item', name = 'arthurian-food-01', amount = 4},
        {type = 'item', name = 'fish-egg', amount = 25},
        {type = 'item', name = 'dried-meat', amount = 5},
        },
    results = {
        {type = 'item', name = 'arthurian-egg-mk02', amount = 3},
    },
    --main_product = "arthurian-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/arthurian-egg.png"},
            {icon = "__pyalienlifegraphics__/graphics/icons/over-mk02.png"},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-arthurian',
    order = 'za'
}:add_unlock("arthurian-mk02")

--MK03--
--DONE--

RECIPE {
    type = 'recipe',
    name = 'arthurian-egg-mk03-gmo',
    category = 'rc-arthurian',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'arthurian', amount = 2},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'caged-ulric', amount = 1},
        {type = 'item', name = 'bedding', amount = 3},
        {type = 'item', name = 'cocoon', amount = 2},
        {type = 'item', name = 'water-barrel', amount = 4},
        },
    results = {
        {type = 'item', name = 'arthurian-egg-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'arthurian-egg-mk02', amount = 1, probability = 0.4},
        {type = 'item', name = 'arthurian-egg', amount = 1, probability = 0.3},
        {type = 'item', name = 'empty-barrel', amount = 4},
    },
    main_product = "arthurian-egg-mk03",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk03.png", icon_size = 64},
        {icon = '__pyalienlifegraphics__/graphics/icons/arthurian.png', icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = 'py-alienlife-arthurian',
    order = 'zb'
}:add_unlock("arthurian-mk03")

RECIPE {
    type = 'recipe',
    name = 'arthurian-pup-mk03',
    category = 'incubator',
    enabled = false,
    energy_required = 45,
    ingredients = {
        {type = 'item', name = 'arthurian-egg-mk03', amount = 1},
        {type = 'fluid', name = 'autoantigens', amount = 250},
    },
    results = {
        {type = 'item', name = 'arthurian-pup-mk03', amount = 1, probability = 0.5},
    },
    --main_product = "arthurian-mk03",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/arthurian-pup.png"},
            {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk03.png", scale = 0.25, shift = {-7.5,-7.5}}
        },
    icon_size = 64,
    subgroup = 'py-alienlife-arthurian',
    order = 'za'
}:add_unlock("arthurian-mk03")

RECIPE {
    type = 'recipe',
    name = 'arthurian-mk03',
    category = 'arthurian',
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = 'item', name = 'arthurian-pup-mk03', amount = 1},
        {type = 'item', name = 'arthurian-food-02', amount = 3},
        {type = 'item', name = 'dhilmos-pup', amount = 4},
        {type = 'item', name = 'syrup-01-barrel', amount = 3},
        },
    results = {
        {type = 'item', name = 'arthurian-mk03', amount = 1},
        {type = 'item', name = 'empty-barrel', amount = 3},
    },
    --main_product = "arthurian-mk03",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/arthurian.png"},
            {icon = "__pyalienlifegraphics__/graphics/icons/over-mk03.png"},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-arthurian',
    order = 'za'
}:add_unlock("arthurian-mk03")

RECIPE {
    type = 'recipe',
    name = 'arthurian-egg-mk03',
    category = 'arthurian',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'arthurian-mk03', amount = 1},
        {type = 'item', name = 'arthurian-food-01', amount = 4},
        {type = 'item', name = 'fish-egg', amount = 25},
        {type = 'item', name = 'dried-meat', amount = 5},
        },
    results = {
        {type = 'item', name = 'arthurian-egg-mk03', amount = 3},
    },
    --main_product = "arthurian-mk03",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/arthurian-egg.png"},
            {icon = "__pyalienlifegraphics__/graphics/icons/over-mk03.png"},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-arthurian',
    order = 'za'
}:add_unlock("arthurian-mk03")

--MK04--
--DONE--

RECIPE {
    type = 'recipe',
    name = 'arthurian-egg-mk04-gmo',
    category = 'rc-arthurian',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'arthurian', amount = 2},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'caged-ulric', amount = 1},
        {type = 'item', name = 'bedding', amount = 3},
        {type = 'item', name = 'cocoon', amount = 2},
        {type = 'item', name = 'water-barrel', amount = 4},
        },
    results = {
        {type = 'item', name = 'arthurian-egg-mk04', amount = 1, probability = 0.003},
        {type = 'item', name = 'arthurian-egg-mk03', amount = 1, probability = 0.45},
        {type = 'item', name = 'arthurian-egg-mk02', amount = 1, probability = 0.35},
        {type = 'item', name = 'arthurian-egg', amount = 1, probability = 0.25},
        {type = 'item', name = 'empty-barrel', amount = 4},
    },
    main_product = "arthurian-egg-mk04",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk04.png", icon_size = 64},
        {icon = '__pyalienlifegraphics__/graphics/icons/arthurian.png', icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = 'py-alienlife-arthurian',
    order = 'zc'
}:add_unlock("arthurian-mk04")

RECIPE {
    type = 'recipe',
    name = 'arthurian-pup-mk04',
    category = 'incubator',
    enabled = false,
    energy_required = 45,
    ingredients = {
        {type = 'item', name = 'arthurian-egg-mk04', amount = 1},
        {type = 'fluid', name = 'autoantigens', amount = 250},
    },
    results = {
        {type = 'item', name = 'arthurian-pup-mk04', amount = 1, probability = 0.5},
    },
    --main_product = "arthurian-mk04",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/arthurian-pup.png"},
            {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk04.png", scale = 0.25, shift = {-7.5,-7.5}}
        },
    icon_size = 64,
    subgroup = 'py-alienlife-arthurian',
    order = 'za'
}:add_unlock("arthurian-mk04")

RECIPE {
    type = 'recipe',
    name = 'arthurian-mk04',
    category = 'arthurian',
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = 'item', name = 'arthurian-pup-mk04', amount = 1},
        {type = 'item', name = 'arthurian-food-02', amount = 3},
        {type = 'item', name = 'dhilmos-pup', amount = 4},
        {type = 'item', name = 'syrup-01-barrel', amount = 3},
        },
    results = {
        {type = 'item', name = 'arthurian-mk04', amount = 1},
        {type = 'item', name = 'empty-barrel', amount = 3},
    },
    --main_product = "arthurian-mk04",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/arthurian.png"},
            {icon = "__pyalienlifegraphics__/graphics/icons/over-mk04.png"},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-arthurian',
    order = 'za'
}:add_unlock("arthurian-mk04")

RECIPE {
    type = 'recipe',
    name = 'arthurian-egg-mk04',
    category = 'arthurian',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'arthurian-mk04', amount = 1},
        {type = 'item', name = 'arthurian-food-01', amount = 4},
        {type = 'item', name = 'fish-egg', amount = 25},
        {type = 'item', name = 'dried-meat', amount = 5},
        },
    results = {
        {type = 'item', name = 'arthurian-egg-mk04', amount = 3},
    },
    --main_product = "arthurian-mk04",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/arthurian-egg.png"},
            {icon = "__pyalienlifegraphics__/graphics/icons/over-mk04.png"},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-arthurian',
    order = 'za'
}:add_unlock("arthurian-mk04")
