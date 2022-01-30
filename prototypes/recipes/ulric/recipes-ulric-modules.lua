
--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--
--DONE--

RECIPE {
    type = 'recipe',
    name = 'ulric-mk02',
    category = 'ulric',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'ulric', amount = 2},
        {type = 'item', name = 'ulric-food-02', amount = 2},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'water-barrel', amount = 7},
        },
    results = {
        {type = 'item', name = 'ulric-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'empty-barrel', amount = 7},
        {type = 'item', name = 'ulric', amount = 1, probability = 0.5},
    },
    --main_product = "ulric-mk02",
    icons =
        {
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png'},
            {icon = "__pyalienlifegraphics__/graphics/icons/ulric.png", icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-ulric',
    order = 'za'
}:add_unlock("selective-breeding"):add_ingredient({type = 'item', name = 'raw-fiber', amount = 6})

RECIPE {
    type = 'recipe',
    name = 'ulric-mk02-dna-sample',
    category = 'ulric',
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = 'item', name = 'ulric-mk02', amount = 1},
        {type = 'item', name = 'sample-cup', amount = 1},
        {type = 'item', name = 'latex', amount = 2},
        },
    results = {
        {type = 'item', name = 'ulric-mk02-dna-sample', amount = 1},
        {type = 'item', name = 'used-ulric-mk02', amount = 1},
    },
    --main_product = "ulric-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/sample-cup.png"},
            {icon = "__pyalienlifegraphics__/graphics/icons/ulric.png", scale = 0.25,shift = {7.5,7.5}},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png', icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-ulric',
    order = 'za'
}:add_unlock("selective-breeding")

RECIPE {
    type = 'recipe',
    name = 'ulric-mk02-dna-sample-02',
    category = 'ulric',
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = 'item', name = 'ulric-mk02', amount = 1},
        {type = 'item', name = 'sample-cup', amount = 6},
        {type = 'item', name = 'latex', amount = 2},
        {type = 'item', name = 'energy-drink', amount = 1},
        },
    results = {
        {type = 'item', name = 'ulric-mk02-dna-sample', amount = 6},
        {type = 'item', name = 'used-ulric-mk02', amount = 1},
    },
    --main_product = "ulric-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/sample-cup.png"},
            {icon = "__pyalienlifegraphics__/graphics/icons/ulric.png", scale = 0.25,shift = {7.5,7.5}},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png', scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-ulric',
    order = 'za'
}:add_unlock("selective-breeding")

RECIPE {
    type = 'recipe',
    name = 'ulric-mk02-breeding',
    category = 'ulric',
    enabled = false,
    energy_required = 120,
    ingredients = {
        {type = 'item', name = 'ulric-mk02', amount = 1},
        {type = 'item', name = 'ulric-food-02', amount = 4},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'water-barrel', amount = 7},
        {type = 'item', name = 'ulric-mk02-dna-sample', amount = 12},
        },
    results = {
        {type = 'item', name = 'ulric-cub-mk02', amount = 1},
        {type = 'item', name = 'used-ulric-mk02', amount = 1},
        {type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "ulric-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/ulric-cub.png"},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png', icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-ulric',
    order = 'za'
}:add_unlock("selective-breeding")

RECIPE {
    type = 'recipe',
    name = 'ulric-mk02-raising',
    category = 'ulric',
    enabled = false,
    energy_required = 90,
    ingredients = {
        {type = 'item', name = 'ulric-cub-mk02', amount = 4},
        {type = 'item', name = 'fawogae', amount =15},
        {type = 'item', name = 'ralesia-seeds', amount =15},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'barrel-milk', amount = 2},
        },
    results = {
        {type = 'item', name = 'ulric-mk02', amount = 1},
        {type = 'item', name = 'empty-barrel-milk', amount = 2},
    },
    --main_product = "ulric-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/ulric.png"},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png', icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-ulric',
    order = 'za'
}:add_unlock("selective-breeding"):add_ingredient({type = 'item', name = 'raw-fiber', amount = 8})

RECIPE {
    type = 'recipe',
    name = 'ulric-recharge-mk02',
    category = 'bay',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'used-ulric-mk02', amount = 1},
        {type = 'item', name = 'ulric-food-01', amount = 2},
        {type = 'item', name = 'ulric-food-02', amount = 2},
    },
    results = {
        {type = 'item', name = 'ulric-mk02', amount = 1},
    },
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/ulric.png"},
            {icon = "__pyalienlifegraphics__/graphics/icons/tired.png"},
            {icon = "__pyalienlifegraphics__/graphics/icons/over-mk02.png"},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png', icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-ulric',
    order = 'za'
}:add_unlock("selective-breeding")

--MK03--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'ulric-mk03',
    category = 'ulric',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'ulric-mk02', amount = 2},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'ulric-food-02', amount = 3},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'water-barrel', amount = 7},
        },
    results = {
        {type = 'item', name = 'ulric-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'empty-barrel', amount = 7},
        {type = 'item', name = 'ulric-mk02', amount = 1, probability = 0.6},
    },
    --main_product = "ulric-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-ulric',
    order = 'zb'
}:add_unlock("artificial-breeding"):add_ingredient({type = 'item', name = 'raw-fiber', amount = 6})


RECIPE {
    type = 'recipe',
    name = 'ulric-mk03-dna-sample',
    category = 'ulric',
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = 'item', name = 'ulric-mk03', amount = 1},
        {type = 'item', name = 'sample-cup', amount = 1},
        {type = 'item', name = 'latex', amount = 2},
        },
    results = {
        {type = 'item', name = 'ulric-mk03-dna-sample', amount = 1},
        {type = 'item', name = 'used-ulric-mk03', amount = 1},
    },
    --main_product = "ulric-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-ulric',
    order = 'za'
}:add_unlock("artificial-breeding")

RECIPE {
    type = 'recipe',
    name = 'ulric-mk03-dna-sample-02',
    category = 'ulric',
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = 'item', name = 'ulric-mk03', amount = 1},
        {type = 'item', name = 'sample-cup', amount = 6},
        {type = 'item', name = 'latex', amount = 2},
        {type = 'item', name = 'energy-drink', amount = 1},
        },
    results = {
        {type = 'item', name = 'ulric-mk03-dna-sample', amount = 6},
        {type = 'item', name = 'used-ulric-mk03', amount = 1},
    },
    --main_product = "ulric-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-ulric',
    order = 'za'
}:add_unlock("artificial-breeding")

RECIPE {
    type = 'recipe',
    name = 'ulric-mk03-breeding',
    category = 'ulric',
    enabled = false,
    energy_required = 120,
    ingredients = {
        {type = 'item', name = 'ulric-mk03', amount = 1},
        {type = 'item', name = 'ulric-food-02', amount = 4},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'water-barrel', amount = 7},
        {type = 'item', name = 'ulric-mk03-dna-sample', amount = 12},
        },
    results = {
        {type = 'item', name = 'ulric-cub-mk03', amount = 1},
        {type = 'item', name = 'used-ulric-mk03', amount = 1},
        {type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "ulric-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-ulric',
    order = 'za'
}:add_unlock("artificial-breeding")

RECIPE {
    type = 'recipe',
    name = 'ulric-mk03-raising',
    category = 'ulric',
    enabled = false,
    energy_required = 90,
    ingredients = {
        {type = 'item', name = 'ulric-cub-mk03', amount = 4},
        {type = 'item', name = 'fawogae', amount =15},
        {type = 'item', name = 'ralesia-seeds', amount =15},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'barrel-milk', amount = 2},
        },
    results = {
        {type = 'item', name = 'ulric-mk03', amount = 1},
        {type = 'item', name = 'empty-barrel-milk', amount = 2},
    },
    --main_product = "ulric-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-ulric',
    order = 'za'
}:add_unlock("artificial-breeding"):add_ingredient({type = 'item', name = 'raw-fiber', amount = 8})

RECIPE {
    type = 'recipe',
    name = 'ulric-recharge-mk03',
    category = 'bay',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'used-ulric-mk03', amount = 1},
        {type = 'item', name = 'ulric-food-01', amount = 2},
        {type = 'item', name = 'ulric-food-02', amount = 2},
    },
    results = {
        {type = 'item', name = 'ulric-mk03', amount = 1},
    },
}:add_unlock("artificial-breeding")

--MK04--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'ulric-mk04',
    category = 'ulric',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'ulric-mk03', amount = 2},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'ulric-food-02', amount = 3},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'water-barrel', amount = 7},
        },
    results = {
        {type = 'item', name = 'ulric-mk04', amount = 1, probability = 0.003},
        {type = 'item', name = 'empty-barrel', amount = 7},
        {type = 'item', name = 'ulric-mk03', amount = 1, probability = 0.7},
    },
    --main_product = "ulric-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-ulric',
    order = 'zc'
}:add_unlock("biased-mutation"):add_ingredient({type = 'item', name = 'raw-fiber', amount = 6})


RECIPE {
    type = 'recipe',
    name = 'ulric-mk04-dna-sample',
    category = 'ulric',
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = 'item', name = 'ulric-mk04', amount = 1},
        {type = 'item', name = 'sample-cup', amount = 1},
        {type = 'item', name = 'latex', amount = 2},
        },
    results = {
        {type = 'item', name = 'ulric-mk04-dna-sample', amount = 1}
    },
    --main_product = "ulric-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-ulric',
    order = 'za'
}:add_unlock("biased-mutation")

RECIPE {
    type = 'recipe',
    name = 'ulric-mk04-dna-sample-02',
    category = 'ulric',
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = 'item', name = 'ulric-mk04', amount = 1},
        {type = 'item', name = 'sample-cup', amount = 6},
        {type = 'item', name = 'latex', amount = 2},
        {type = 'item', name = 'energy-drink', amount = 1},
        },
    results = {
        {type = 'item', name = 'ulric-mk04-dna-sample', amount = 6},
        {type = 'item', name = 'used-ulric-mk04', amount = 1},
    },
    --main_product = "ulric-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-ulric',
    order = 'za'
}:add_unlock("biased-mutation")

RECIPE {
    type = 'recipe',
    name = 'ulric-mk04-breeding',
    category = 'ulric',
    enabled = false,
    energy_required = 120,
    ingredients = {
        {type = 'item', name = 'ulric-mk04', amount = 1},
        {type = 'item', name = 'ulric-food-02', amount = 4},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'water-barrel', amount = 7},
        {type = 'item', name = 'ulric-mk04-dna-sample', amount = 12},
        },
    results = {
        {type = 'item', name = 'ulric-cub-mk04', amount = 1},
        {type = 'item', name = 'used-ulric-mk04', amount = 1},
        {type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "ulric-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-ulric',
    order = 'za'
}:add_unlock("biased-mutation")

RECIPE {
    type = 'recipe',
    name = 'ulric-mk04-raising',
    category = 'ulric',
    enabled = false,
    energy_required = 90,
    ingredients = {
        {type = 'item', name = 'ulric-cub-mk04', amount = 4},
        {type = 'item', name = 'fawogae', amount =15},
        {type = 'item', name = 'ralesia-seeds', amount =15},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'barrel-milk', amount = 2},
        },
    results = {
        {type = 'item', name = 'ulric-mk04', amount = 1},
        {type = 'item', name = 'empty-barrel-milk', amount = 2},
    },
    --main_product = "ulric-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-ulric',
    order = 'za'
}:add_unlock("biased-mutation"):add_ingredient({type = 'item', name = 'raw-fiber', amount = 8})

RECIPE {
    type = 'recipe',
    name = 'ulric-recharge-mk04',
    category = 'bay',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'used-ulric-mk04', amount = 1},
        {type = 'item', name = 'ulric-food-01', amount = 2},
        {type = 'item', name = 'ulric-food-02', amount = 2},
    },
    results = {
        {type = 'item', name = 'ulric-mk04', amount = 1},
    },
}:add_unlock("biased-mutation")
