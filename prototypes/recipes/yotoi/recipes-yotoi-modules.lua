
--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'yotoi-fruit-gmo-mk02',
    category = 'yotoi',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'yotoi', amount = 4},
        {type = 'fluid', name = 'carbon-dioxide', amount = 300},
        {type = 'item', name = 'enzyme-pks', amount = 2},
        {type = 'item', name = 'chimeric-proteins', amount = 5},
        {type = 'fluid', name = 'arqad-jelly', amount = 100},
        },
    results = {
        {type = 'item', name = 'yotoi-fruit-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'yotoi-fruit', amount = 1, probability = 0.5},
    },
    main_product = "yotoi-fruit-mk02",
    icons =
        {
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png'},
            {icon = "__pyalienlifegraphics__/graphics/icons/yotoi-fruit.png", scale = 0.25,shift = {-7.5,-7.5}}
        },
    icon_size = 64,
    subgroup = 'py-alienlife-yotoi',
    order = 'za'
}:add_unlock("yotoi-mk02")

RECIPE {
    type = 'recipe',
    name = 'yotoi-seeds-mk02',
    category = 'nursery',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'yotoi-fruit-mk02', amount = 1},
        {type = 'fluid', name = 'liquid-nitrogen', amount = 50},
        },
    results = {
        {type = 'item', name = 'yotoi-seeds-mk02', amount = 3},
        {type = 'item', name = 'biomass', amount = 2},
    },
    main_product = "yotoi-seeds-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/yotoi-seeds.png"},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png', scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-yotoi',
    order = 'za'
}:add_unlock("yotoi-mk02")

RECIPE {
    type = 'recipe',
    name = 'yotoi-mk02',
    category = 'yotoi',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'yotoi-seeds-mk02', amount = 5},
        {type = 'fluid', name = 'liquid-manure', amount = 70},
        {type = 'item', name = 'pure-sand', amount = 10},
        {type = 'item', name = 'biomass', amount = 15},
        },
    results = {
        {type = 'item', name = 'yotoi-mk02', amount = 2},
    },
    main_product = "yotoi-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/yotoi.png"},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png', scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-yotoi',
    order = 'za'
}:add_unlock("yotoi-mk02")

RECIPE {
    type = 'recipe',
    name = 'yotoi-fruit-mk02',
    category = 'nursery',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'yotoi-mk02', amount = 1},
        {type = 'fluid', name = 'nitrogen', amount = 50},
        },
    results = {
        {type = 'item', name = 'yotoi-fruit-mk02', amount = 2},
        {type = 'item', name = 'yotoi-leaves', amount = 5},
    },
    main_product = "yotoi-fruit-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/yotoi-fruit.png"},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png', scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-yotoi',
    order = 'za'
}:add_unlock("yotoi-mk02")

--mk03--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'yotoi-mk03',
    category = 'yotoi',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'yotoi', amount = 2},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'yotoi-seeds', amount = 10},
        {type = 'fluid', name = 'carbon-dioxide', amount = 300},
        {type = 'item', name = 'fertilizer', amount = 10},
        {type = 'item', name = 'sand', amount = 10},
        {type = 'item', name = 'small-lamp', amount = 10},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'yotoi-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'yotoi', amount = 1, probability = 0.6},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "yotoi-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-yotoi',
    order = 'zb'
}:add_unlock("yotoi-mk03")

--mk04--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'yotoi-mk04',
    category = 'yotoi',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'yotoi', amount = 2},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'yotoi-seeds', amount = 10},
        {type = 'fluid', name = 'carbon-dioxide', amount = 300},
        {type = 'item', name = 'fertilizer', amount = 10},
        {type = 'item', name = 'sand', amount = 10},
        {type = 'item', name = 'small-lamp', amount = 10},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'yotoi-mk04', amount = 1, probability = 0.003},
        {type = 'item', name = 'yotoi', amount = 1, probability = 0.7},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "yotoi-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-yotoi',
    order = 'zc'
}:add_unlock("yotoi-mk04")
