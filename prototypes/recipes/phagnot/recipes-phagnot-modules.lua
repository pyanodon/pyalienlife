
--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'phagnot-mk02',
    category = 'phagnot',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'phagnot', amount = 2},
        {type = 'item', name = 'phagnot-food-01', amount = 2},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'bhoddos', amount = 6},
        {type = 'item', name = 'water-barrel', amount = 5},
        },
    results = {
        {type = 'item', name = 'phagnot-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'empty-barrel', amount = 5},
        {type = 'item', name = 'phagnot', amount = 1, probability = 0.5},
    },
    --main_product = "phagnot-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-phagnot',
    order = 'za'
}:add_unlock("phagnot-mk02")

RECIPE {
    type = 'recipe',
    name = 'phagnot-mk02-breeder',
    category = 'phagnot',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'phagnot-mk02', amount = 2},
        {type = 'item', name = 'phagnot-food-01', amount = 3},
        {type = 'item', name = 'bedding', amount = 1},
        {type = 'item', name = 'bhoddos', amount = 6},
        {type = 'item', name = 'water-barrel', amount = 5},
        },
    results = {
        {type = 'item', name = 'phagnot-cub-mk02', amount = 1},
        {type = 'item', name = 'phagnot-cub-mk02', amount = 1, probability = 0.5},
        {type = 'item', name = 'empty-barrel', amount = 5},
        {type = 'item', name = 'phagnot-cub', amount = 1, probability = 0.5},
        {type = 'item', name = 'phagnot-mk02', amount_min = 0, amount_max = 2}
    },
    main_product = "phagnot-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-phagnot',
    order = 'za'
}:add_unlock("phagnot-mk02")

RECIPE {
    type = 'recipe',
    name = 'phagnot-mature-basic-mk02',
    category = 'phagnot',
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = 'item', name = 'phagnot-cub-mk02', amount = 1},
        {type = 'item', name = 'barrel-milk', amount = 1},
        {type = 'item', name = 'dried-grods', amount = 3},
        {type = 'item', name = 'fawogae', amount = 5},
    },
    results = {
        {type = 'item', name = 'phagnot-mk02', amount = 1},
        {type = 'item', name = 'empty-barrel-milk', amount = 1}
    },
    main_product = "phagnot-mk02",
    subgroup = 'py-alienlife-phagnot',
    order = 'a',
}:add_unlock("phagnot-mk02")

--mk03--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'phagnot-mk03',
    category = 'phagnot',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'phagnot-mk02', amount = 2},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'phagnot-food-02', amount = 3},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'bhoddos', amount = 6},
        {type = 'item', name = 'water-barrel', amount = 5},
        },
    results = {
        {type = 'item', name = 'phagnot-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'empty-barrel', amount = 5},
        {type = 'item', name = 'phagnot', amount = 1, probability = 0.6},
    },
    --main_product = "phagnot-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-phagnot',
    order = 'zb'
}:add_unlock("phagnot-mk03")

RECIPE {
    type = 'recipe',
    name = 'phagnot-mk03-breeder',
    category = 'phagnot',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'phagnot-mk03', amount = 2},
        {type = 'item', name = 'phagnot-food-02', amount = 2},
        {type = 'item', name = 'bedding', amount = 2},
        {type = 'item', name = 'tuuphra', amount = 6},
        {type = 'item', name = 'water-barrel', amount = 5},
        },
    results = {
        {type = 'item', name = 'phagnot-mk03', amount_min = 0, amount_max = 2},
        {type = 'item', name = 'phagnot-cub-mk03', amount = 1},
        {type = 'item', name = 'phagnot-cub-mk03', amount = 1, probability = 0.5},
        {type = 'item', name = 'phagnot-cub-mk02', amount = 1, probability = 0.25},
        {type = 'item', name = 'empty-barrel', amount = 5},
        {type = 'item', name = 'phagnot-cub', amount = 1, probability = 0.25},
    },
    main_product = "phagnot-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-phagnot',
    order = 'zb'
}:add_unlock("phagnot-mk03")

RECIPE {
    type = 'recipe',
    name = 'phagnot-mature-basic-mk03',
    category = 'phagnot',
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = 'item', name = 'phagnot-cub-mk03', amount = 1},
        {type = 'item', name = 'barrel-milk', amount = 1},
        {type = 'item', name = 'dried-grods', amount = 3},
        {type = 'item', name = 'fawogae', amount = 5},
    },
    results = {
        {type = 'item', name = 'phagnot-mk03', amount = 1},
        {type = 'item', name = 'empty-barrel-milk', amount = 1}
    },
    main_product = "phagnot-mk03",
    subgroup = 'py-alienlife-phagnot',
    order = 'a',
}:add_unlock("phagnot-mk03")

--mk04--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'phagnot-mk04',
    category = 'phagnot',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'phagnot-mk03', amount = 2},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'phagnot-food-02', amount = 3},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'bhoddos', amount = 6},
        {type = 'item', name = 'water-barrel', amount = 5},
        },
    results = {
        {type = 'item', name = 'phagnot-mk04', amount = 1, probability = 0.003},
        {type = 'item', name = 'empty-barrel', amount = 5},
        {type = 'item', name = 'phagnot', amount = 1, probability = 0.7},
    },
    --main_product = "phagnot-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-phagnot',
    order = 'zc'
}:add_unlock("phagnot-mk04")

RECIPE {
    type = 'recipe',
    name = 'phagnot-mk04-breeder',
    category = 'phagnot',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'phagnot-mk04', amount = 2},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'phagnot-food-02', amount = 3},
        {type = 'item', name = 'bedding', amount = 3},
        {type = 'item', name = 'bhoddos', amount = 6},
        {type = 'item', name = 'water-barrel', amount = 5},
        },
    results = {
        {type = 'item', name = 'phagnot-mk04', amount_min = 0, amount_max = 2},
        {type = 'item', name = 'phagnot-cub-mk04', amount = 1},
        {type = 'item', name = 'phagnot-cub-mk04', amount = 1, probability = 0.5},
        {type = 'item', name = 'phagnot-cub-mk03', amount = 1, probability = 0.4},
        {type = 'item', name = 'phagnot-cub-mk03', amount = 1, probability = 0.3},
        {type = 'item', name = 'empty-barrel', amount = 5},
        {type = 'item', name = 'phagnot-cub', amount = 1, probability = 0.25},
    },
    main_product = "phagnot-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-phagnot',
    order = 'zc'
}:add_unlock("phagnot-mk04")

RECIPE {
    type = 'recipe',
    name = 'phagnot-mature-basic-mk04',
    category = 'phagnot',
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = 'item', name = 'phagnot-cub-mk04', amount = 1},
        {type = 'item', name = 'barrel-milk', amount = 1},
        {type = 'item', name = 'dried-grods', amount = 3},
        {type = 'item', name = 'fawogae', amount = 5},
    },
    results = {
        {type = 'item', name = 'phagnot-mk04', amount = 1},
        {type = 'item', name = 'empty-barrel-milk', amount = 1}
    },
    main_product = "phagnot-mk04",
    subgroup = 'py-alienlife-phagnot',
    order = 'a',
}:add_unlock("phagnot-mk04")
