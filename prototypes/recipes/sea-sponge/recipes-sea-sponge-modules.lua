
--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'sea-sponge-mk02',
    category = 'sponge',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'sea-sponge', amount = 2},
        {type = 'fluid', name = 'phytoplankton', amount = 50},
        {type = 'fluid', name = 'zogna-bacteria', amount = 100},
        },
    results = {
        {type = 'item', name = 'sea-sponge-mk02', amount = 1, probability = 0.005},
        {type = 'fluid', name = 'water-saline', amount = 50},
        {type = 'item', name = 'sea-sponge', amount = 1, probability = 0.5},
    },
    --main_product = "sea-sponge-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-sponge',
    order = 'za'
}:add_unlock("selective-breeding")

--mk03--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'sea-sponge-mk03',
    category = 'sponge',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'sea-sponge', amount = 2},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'fluid', name = 'phytoplankton', amount = 50},
        {type = 'fluid', name = 'zogna-bacteria', amount = 100},
        },
    results = {
        {type = 'item', name = 'sea-sponge-mk03', amount = 1, probability = 0.004},
        {type = 'fluid', name = 'water-saline', amount = 50},
        {type = 'item', name = 'sea-sponge', amount = 1, probability = 0.6},
    },
    --main_product = "sea-sponge-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-sponge',
    order = 'zb'
}:add_unlock("artificial-breeding")

--mk04--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'sea-sponge-mk04',
    category = 'sponge',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'sea-sponge', amount = 2},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'fluid', name = 'phytoplankton', amount = 50},
        {type = 'fluid', name = 'zogna-bacteria', amount = 100},
        },
    results = {
        {type = 'item', name = 'sea-sponge-mk04', amount = 1, probability = 0.003},
        {type = 'fluid', name = 'water-saline', amount = 50},
        {type = 'item', name = 'sea-sponge', amount = 1, probability = 0.7},
    },
    --main_product = "sea-sponge-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-sponge',
    order = 'zc'
}:add_unlock("biased-mutation")
