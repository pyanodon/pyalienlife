
--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--

RECIPE {
    type = 'recipe',
    name = 'fish-mk02',
    category = 'fish-farm',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'fish', amount = 20},
        {type = 'item', name = 'fish-food-01', amount = 2},
        {type = 'item', name = 'filtration-media', amount = 5},
        {type = 'item', name = "seaweed", amount = 10},
        {type = 'fluid', name = 'phytoplankton', amount = 60, fluidbox_index = 1},
        },
    results = {
        {type = 'item', name = 'fish-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'fish', amount = 10, probability = 0.5},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    main_product = "fish-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk02.png", icon_size = 64},
            {icon = "__pyalienlifegraphics__/graphics/icons/mip/fish-03.png", icon_size = 64, scale = 0.35},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-fish',
    order = 'za'
}:add_unlock("fish-mk02")

RECIPE {
    type = 'recipe',
    name = 'fish-egg-mk02-breeder',
    category = 'fish-farm',
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = 'item', name = 'fish-mk02', amount = 4},
        {type = 'fluid', name='phytoplankton', amount =50, fluidbox_index = 1},
        {type = 'fluid', name='water-saline', amount=100, fluidbox_index = 2},
        },
    results = {
        {type = 'item', name = 'fish-egg-mk02', amount = 10},
        {type = 'item', name = 'fish-egg-mk02', amount = 2, probability = 0.5},
        {type = 'item', name = 'fish-egg', amount = 2, probability = 0.5},
        {type = 'fluid', name = 'waste-water', amount = 100},
    },
    main_product = "fish-egg-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/fish-eggs.png", icon_size = 64},
            {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk02.png", icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    subgroup = 'py-alienlife-fish',
    order = 'za'
}:add_unlock("fish-mk02")

RECIPE {
    type = 'recipe',
    name = 'fish-mk02-breeder',
    category = 'fish-farm',
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = 'item', name = 'fish-egg-mk02', amount = 10},
        {type = 'item', name='small-lamp', amount = 5},
        {type = 'item', name='filtration-media', amount = 5},
        {type = 'item', name='seaweed', amount = 10},
        {type = 'fluid', name='water-saline', amount=100, fluidbox_index = 2},
        {type = 'fluid', name='fish-oil', amount = 60, fluidbox_index = 1},
        },
    results = {
        {type = 'item', name = 'fish-mk02', amount = 6},
        {type = 'item', name = 'fish-mk02', amount = 2, probability = 0.5},
        {type = 'item', name = 'fish', amount = 2, probability = 0.5},
        {type = 'fluid', name = 'waste-water', amount = 100},
    },
    main_product = "fish-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/mip/fish-03.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk02.png"},
    },
    icon_size = 64,
    subgroup = 'py-alienlife-fish',
    order = 'za'
}:add_unlock("fish-mk02")

--mk03--

RECIPE {
    type = 'recipe',
    name = 'fish-mk03',
    category = 'fish-farm',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'fish-mk02', amount = 20},
        {type = 'item', name = 'fish-food-02', amount = 3},
        {type = 'item', name = 'alien-sample-02', amount = 1},
        {type = 'item', name = 'filtration-media', amount = 5},
        {type = 'item', name = "seaweed", amount = 10},
        {type = 'fluid', name = 'phytoplankton', amount = 60, fluidbox_index = 1},
        },
    results = {
        {type = 'item', name = 'fish-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'fish', amount = 10, probability = 0.6},
    },
    main_product = "fish-mk03",
    icons =
        {
            {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk03.png", icon_size = 64},
            {icon = "__pyalienlifegraphics__/graphics/icons/mip/fish-03.png", icon_size = 64, scale = 0.35},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-fish',
    order = 'zb'
}:add_unlock("fish-mk03")

RECIPE {
    type = 'recipe',
    name = 'fish-egg-mk03-breeder',
    category = 'fish-farm',
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = 'item', name = 'fish-mk03', amount = 5},
        {type = 'fluid', name='phytoplankton', amount =50, fluidbox_index = 1},
        {type = 'fluid', name='water-saline', amount=100, fluidbox_index = 2},
        },
    results = {
        {type = 'item', name = 'fish-egg-mk03', amount = 10},
        {type = 'item', name = 'fish-egg-mk03', amount = 2, probability = 0.5},
        {type = 'item', name = 'fish-egg-mk02', amount = 2, probability = 0.5},
        {type = 'fluid', name = 'waste-water', amount = 100},
    },
    main_product = "fish-egg-mk03",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/fish-eggs.png", icon_size = 64},
            {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk03.png", icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    subgroup = 'py-alienlife-fish',
    order = 'za'
}:add_unlock("fish-mk03")

RECIPE {
    type = 'recipe',
    name = 'fish-mk03-breeder',
    category = 'fish-farm',
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = 'item', name = 'fish-egg-mk03', amount = 10},
        {type = 'item', name='small-lamp', amount = 5},
        {type = 'item', name='filtration-media', amount = 5},
        {type = 'item', name = 'alien-sample-02', amount = 2},
        {type = 'fluid', name='water-saline', amount=100, fluidbox_index = 2},
        {type = 'fluid', name='fish-hydrolysate', amount = 50, fluidbox_index = 1},
        },
    results = {
        {type = 'item', name = 'fish-mk03', amount = 6},
        {type = 'item', name = 'fish-mk03', amount = 2, probability = 0.25},
        {type = 'item', name = 'fish-mk02', amount = 2, probability = 0.75},
        {type = 'fluid', name = 'waste-water', amount = 100},
    },
    main_product = "fish-mk03",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/mip/fish-03.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk03.png"},
    },
    icon_size = 64,
    subgroup = 'py-alienlife-fish',
    order = 'za'
}:add_unlock("fish-mk03")

--mk04--

RECIPE {
    type = 'recipe',
    name = 'fish-mk04',
    category = 'fish-farm',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'fish-mk03', amount = 20},
        {type = 'item', name = 'fish-food-02', amount = 3},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'filtration-media', amount = 5},
        {type = 'item', name = "seaweed", amount = 10},
        {type = 'fluid', name = 'phytoplankton', amount = 60, fluidbox_index = 1},
        },
    results = {
        {type = 'item', name = 'fish-mk04', amount = 10, probability = 0.003},
        {type = 'item', name = 'fish', amount = 1, probability = 0.7},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "fish-mk04",
    icons =
        {
            {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk04.png", icon_size = 64},
            {icon = "__pyalienlifegraphics__/graphics/icons/mip/fish-03.png", icon_size = 64, scale = 0.35},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-fish',
    order = 'zc'
}:add_unlock("fish-mk04")

RECIPE {
    type = 'recipe',
    name = 'fish-egg-mk04-breeder',
    category = 'fish-farm',
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = 'item', name = 'fish-mk04', amount = 6},
        {type = 'item', name = 'fishmeal', amount = 15},
        {type = 'fluid', name='phytoplankton', amount =50, fluidbox_index = 1},
        {type = 'fluid', name='water-saline', amount=100, fluidbox_index = 2},
        },
    results = {
        {type = 'item', name = 'fish-egg-mk04', amount = 10},
        {type = 'item', name = 'fish-egg-mk04', amount = 2, probability = 0.5},
        {type = 'item', name = 'fish-egg-mk03', amount = 2, probability = 0.5},
        {type = 'fluid', name = 'waste-water', amount = 100},
    },
    main_product = "fish-egg-mk04",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/fish-eggs.png", icon_size = 64},
            {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk04.png", icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    subgroup = 'py-alienlife-fish',
    order = 'za'
}:add_unlock("fish-mk04")

RECIPE {
    type = 'recipe',
    name = 'fish-mk04-breeder',
    category = 'fish-farm',
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = 'item', name = 'fish-egg-mk04', amount = 10},
        {type = 'item', name='small-lamp', amount = 5},
        {type = 'item', name='filtration-media', amount = 5},
        {type = 'item', name = 'alien-sample-03', amount = 2},
        {type = 'fluid', name='water-saline', amount=100, fluidbox_index = 2},
        {type = 'fluid', name='fish-emulsion', amount = 40, fluidbox_index = 1},
        },
    results = {
        {type = 'item', name = 'fish-mk04', amount = 6},
        {type = 'item', name = 'fish-mk04', amount = 2, probability = 0.25},
        {type = 'item', name = 'fish-mk03', amount = 2, probability = 0.75},
        {type = 'fluid', name = 'waste-water', amount = 100},
    },
    main_product = "fish-mk04",
    icons =
    {
        {icon = "__pyalienlifegraphics__/graphics/icons/mip/fish-03.png", icon_size = 64},
        {icon = "__pyalienlifegraphics__/graphics/icons/over-mk04.png"},
    },
    icon_size = 64,
    subgroup = 'py-alienlife-fish',
    order = 'za'
}:add_unlock("fish-mk04")