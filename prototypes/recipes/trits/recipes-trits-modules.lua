
--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'trits-mk02',
    category = 'rc',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'trits', amount = 2},
        {type = 'item', name = "seaweed", amount = 10},
        {type = 'item', name = 'filtration-media', amount = 5},
        {type = 'item', name = 'sodium-alginate', amount = 10},
        {type = 'item', name = 'sea-sponge', amount = 4},
        {type = 'fluid', name = 'water-saline', amount = 300},
        },
    results = {
        {type = 'item', name = 'trits-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'trits', amount = 1, probability = 0.5},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "trits-mk02",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk02.png", icon_size = 64},
        {icon = '__pyalienlifegraphics__/graphics/icons/trits.png', icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = 'py-alienlife-trits',
    order = 'za'
}:add_unlock("trits-mk02")

--mk03--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'trits-mk03',
    category = 'rc',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'trits', amount = 2},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = "seaweed", amount = 10},
        {type = 'item', name = 'filtration-media', amount = 5},
        {type = 'item', name = 'sodium-alginate', amount = 10},
        {type = 'item', name = 'sea-sponge', amount = 4},
        {type = 'fluid', name = 'water-saline', amount = 300},
        },
    results = {
        {type = 'item', name = 'trits-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'trits', amount = 1, probability = 0.6},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "trits-mk03",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk03.png", icon_size = 64},
        {icon = '__pyalienlifegraphics__/graphics/icons/trits.png', icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = 'py-alienlife-trits',
    order = 'zb'
}:add_unlock("trits-mk03")

--mk04--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'trits-mk04',
    category = 'rc',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'trits', amount = 2},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = "seaweed", amount = 10},
        {type = 'item', name = 'filtration-media', amount = 5},
        {type = 'item', name = 'sodium-alginate', amount = 10},
        {type = 'item', name = 'sea-sponge', amount = 4},
        {type = 'fluid', name = 'water-saline', amount = 300},
        },
    results = {
        {type = 'item', name = 'trits-mk04', amount = 1, probability = 0.003},
        {type = 'item', name = 'trits', amount = 1, probability = 0.7},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "trits-mk04",
    icons =
    {
        {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk04.png", icon_size = 64},
        {icon = '__pyalienlifegraphics__/graphics/icons/trits.png', icon_size = 64, scale = 0.35},
    },
    icon_size = 64,
    subgroup = 'py-alienlife-trits',
    order = 'zc'
}:add_unlock("trits-mk04")
