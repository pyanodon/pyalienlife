
--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--

RECIPE {
    type = 'recipe',
    name = 'yotoi-fruit-gmo-mk02',
    category = 'yotoi',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'yotoi', amount = 4},
        {type = 'fluid', name = 'carbon-dioxide', amount = 300, fluidbox_index = 2},
        {type = 'item', name = 'paragen', amount = 2},
        {type = 'item', name = 'solidified-sarcorus', amount = 5},
        {type = 'item', name = 'alien-sample-02', amount = 1},
        {type = 'fluid', name = 'milk', amount = 100, fluidbox_index = 1},
        },
    results = {
        {type = 'item', name = 'yotoi-fruit-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'yotoi-fruit', amount = 1, probability = 0.5},
    },
    main_product = "yotoi-fruit-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk02.png", icon_size = 64},
            {icon = "__pyalienlifegraphics__/graphics/icons/yotoi-fruit.png", icon_size = 64, scale = 0.35},
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
            {icon = "__pyalienlifegraphics__/graphics/icons/yotoi-seeds.png", icon_size = 64},
            {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk02.png", icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
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
            {icon = "__pyalienlifegraphics__/graphics/icons/yotoi.png", icon_size = 64},
            {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk02.png", icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
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
            {icon = "__pyalienlifegraphics__/graphics/icons/yotoi-fruit.png", icon_size = 64},
            {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk02.png", icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-yotoi',
    order = 'za'
}:add_unlock("yotoi-mk02")

--mk03--

RECIPE {
    type = 'recipe',
    name = 'yotoi-fruit-gmo-mk03',
    category = 'yotoi',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'yotoi-mk02', amount = 4},
        {type = 'fluid', name = 'carbon-dioxide', amount = 300, fluidbox_index = 2},
        {type = 'item', name = 'enzyme-pks', amount = 2},
        {type = 'item', name = 'chimeric-proteins', amount = 5},
        {type = 'fluid', name = 'arqad-jelly', amount = 100, fluidbox_index = 1},
        },
    results = {
        {type = 'item', name = 'yotoi-fruit-mk03', amount = 1, probability = 0.005},
        {type = 'item', name = 'yotoi-fruit', amount = 1, probability = 0.5},
    },
    main_product = "yotoi-fruit-mk03",
    icons =
        {
            {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk03.png", icon_size = 64},
            {icon = "__pyalienlifegraphics__/graphics/icons/yotoi-fruit.png", icon_size = 64, scale = 0.35},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-yotoi',
    order = 'zb'
}:add_unlock("yotoi-mk03")

RECIPE {
    type = 'recipe',
    name = 'yotoi-seeds-mk03',
    category = 'nursery',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'yotoi-fruit-mk03', amount = 1},
        {type = 'fluid', name = 'liquid-nitrogen', amount = 50},
        },
    results = {
        {type = 'item', name = 'yotoi-seeds-mk03', amount = 3},
        {type = 'item', name = 'biomass', amount = 2},
    },
    main_product = "yotoi-seeds-mk03",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/yotoi-seeds.png", icon_size = 64},
            {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk03.png", icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-yotoi',
    order = 'zb'
}:add_unlock("yotoi-mk03")

RECIPE {
    type = 'recipe',
    name = 'yotoi-mk03',
    category = 'yotoi',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'yotoi-seeds-mk03', amount = 5},
        {type = 'fluid', name = 'liquid-manure', amount = 70},
        {type = 'item', name = 'pure-sand', amount = 10},
        {type = 'item', name = 'nacl-biomass', amount = 10},
        {type = 'item', name = 'pb-biomass', amount = 10},
        },
    results = {
        {type = 'item', name = 'yotoi-mk03', amount = 2},
    },
    main_product = "yotoi-mk03",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/yotoi.png", icon_size = 64},
            {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk03.png", icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-yotoi',
    order = 'zb'
}:add_unlock("yotoi-mk03")

RECIPE {
    type = 'recipe',
    name = 'yotoi-fruit-mk03',
    category = 'nursery',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'yotoi-mk03', amount = 1},
        {type = 'fluid', name = 'helium', amount = 50},
        },
    results = {
        {type = 'item', name = 'yotoi-fruit-mk03', amount = 2},
        {type = 'item', name = 'yotoi-leaves', amount = 5},
    },
    main_product = "yotoi-fruit-mk03",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/yotoi-fruit.png", icon_size = 64},
            {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk03.png", icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-yotoi',
    order = 'zb'
}:add_unlock("yotoi-mk03")

--mk04--

RECIPE {
    type = 'recipe',
    name = 'yotoi-fruit-gmo-mk04',
    category = 'yotoi',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'yotoi-mk03', amount = 4},
        {type = 'fluid', name = 'carbon-dioxide', amount = 300, fluidbox_index = 2},
        {type = 'item', name = 'cysteine', amount = 2},
        {type = 'item', name = 'denatured-seismite', amount = 5},
        {type = 'item', name = 'geostabilization-tissue', amount = 1},
        {type = 'fluid', name = 'simik-blood', amount = 100, fluidbox_index = 1},
        },
    results = {
        {type = 'item', name = 'yotoi-fruit-mk04', amount = 1, probability = 0.005},
        {type = 'item', name = 'yotoi-fruit', amount = 1, probability = 0.5},
    },
    main_product = "yotoi-fruit-mk04",
    icons =
        {
            {icon = "__pyalienlifegraphics2__/graphics/icons/c-mk04.png", icon_size = 64},
            {icon = "__pyalienlifegraphics__/graphics/icons/yotoi-fruit.png", icon_size = 64, scale = 0.35},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-yotoi',
    order = 'zc'
}:add_unlock("yotoi-mk04")

RECIPE {
    type = 'recipe',
    name = 'yotoi-seeds-mk04',
    category = 'nursery',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'yotoi-fruit-mk04', amount = 1},
        {type = 'fluid', name = 'liquid-nitrogen', amount = 50},
        },
    results = {
        {type = 'item', name = 'yotoi-seeds-mk04', amount = 3},
        {type = 'item', name = 'biomass', amount = 2},
    },
    main_product = "yotoi-seeds-mk04",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/yotoi-seeds.png", icon_size = 64},
            {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk04.png", icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-yotoi',
    order = 'zc'
}:add_unlock("yotoi-mk04")

RECIPE {
    type = 'recipe',
    name = 'yotoi-mk04',
    category = 'yotoi',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'yotoi-seeds-mk04', amount = 5},
        {type = 'fluid', name = 'liquid-manure', amount = 70},
        {type = 'item', name = 'pure-sand', amount = 10},
        {type = 'item', name = 'ag-biomass', amount = 10},
        {type = 'item', name = 's-biomass', amount = 10},
        {type = 'item', name = 'antiviral', amount = 2},
        
        },
    results = {
        {type = 'item', name = 'yotoi-mk04', amount = 2},
    },
    main_product = "yotoi-mk04",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/yotoi.png", icon_size = 64},
            {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk04.png", icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-yotoi',
    order = 'zc'
}:add_unlock("yotoi-mk04")

RECIPE {
    type = 'recipe',
    name = 'yotoi-fruit-mk04',
    category = 'nursery',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'yotoi-mk04', amount = 1},
        {type = 'fluid', name = 'liquid-helium', amount = 10},
        },
    results = {
        {type = 'item', name = 'yotoi-fruit-mk04', amount = 2},
        {type = 'item', name = 'yotoi-leaves', amount = 5},
    },
    main_product = "yotoi-fruit-mk04",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/yotoi-fruit.png", icon_size = 64},
            {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk04.png", icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-yotoi',
    order = 'zc'
}:add_unlock("yotoi-mk04")