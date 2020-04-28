--------------------------RENNEA-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'rennea-sample',
    category = 'nursery',
    enabled = false,
    energy_required = 200,
    ingredients = {
        {type = 'item', name = 'alien-sample-02', amount = 10},
        {type = 'item', name = 'cdna', amount = 10},
        {type = 'item', name = 'bio-sample', amount = 20},
        {type = 'item', name = 'fertilizer', amount = 30},
        {type = 'item', name = 'rennea-codex', amount = 1},
        {type = 'item', name = 'earth-sunflower-sample', amount = 1},
        {type = 'fluid', name = 'water', amount = 1000},
    },
    results = {
        {type = 'item', name = 'rennea', amount = 1},
    },
}:add_unlock("rennea")

RECIPE {
    type = 'recipe',
    name = 'rennea-codex',
    category = 'crafting',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'glass', amount = 2},
        {type = 'item', name = 'small-lamp', amount = 5},
        {type = 'item', name = 'advanced-circuit', amount = 30},
        {type = 'item', name = 'tinned-cable', amount = 20},
    },
    results = {
        {type = 'item', name = 'rennea-codex', amount = 1},
    },
}:add_unlock("rennea")

RECIPE {
    type = 'recipe',
    name = 'earth-sunflower-sample',
    category = 'data-array',
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = 'item', name = 'steel-chest', amount = 1},
        {type = 'item', name = 'logistic-science-pack', amount = 100},
        {type = 'item', name = 'rennea-codex', amount = 1},
    },
    results = {
        {type = 'item', name = 'earth-sunflower-sample', amount = 1},
    },
}:add_unlock("rennea")

---breeding---

-----SEEDS----

RECIPE {
    type = "recipe",
    name = "rennea-seeds",
    category = "nursery",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "rennea", amount = 5},
    },
    results = {
        {type = "item", name = "rennea-seeds", amount = 7}
    },
}:add_unlock("rennea")


RECIPE {
    type = 'recipe',
    name = 'replicator-rennea',
    category = 'advanced-crafting',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'rennea-codex', amount = 1},
        {type = 'item', name = 'rennea-seeds', amount = 200},
        {type = 'item', name = 'titanium-plate', amount = 100},
        {type = 'item', name = 'metallic-glass', amount = 2},
        {type = 'item', name = 'biofilm', amount = 20},
        {type = 'item', name = 'plastic-bar', amount = 100},
        {type = 'item', name = 'blanket-chassi', amount = 1},
        {type = 'item', name = 'fertilizer', amount = 20},
    },
    results = {
        {type = 'item', name = 'replicator-rennea', amount = 1},
    },
}:add_unlock("mega-farm-rennea"):add_ingredient({type = "item", name = "nems", amount = 10}):add_ingredient({type = "item", name = "carbon-nanotube", amount = 10})

--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--
--DONE--

RECIPE {
    type = 'recipe',
    name = 'rennea-mk02',
    category = 'rennea',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'rennea', amount = 4},
        {type = 'fluid', name = 'carbon-dioxide', amount = 300},
        {type = 'item', name = 'stone-wool', amount = 5},
        {type = 'item', name = 'manure', amount = 15},
        {type = 'item', name = 'coarse', amount = 10},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'rennea-seeds-mk02', amount_min = 1, amount_max = 20, probability = 0.005},
        {type = 'item', name = 'rennea-seeds', amount = 1, probability = 0.5},
    },
    main_product = "rennea-seeds-mk02",
    icons =
        {
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png'},
            {icon = "__pyalienlifegraphics__/graphics/icons/rennea-seeds.png", scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-rennea',
    order = 'za'
}:add_unlock("selective-breeding")

RECIPE{
    type = 'recipe',
    name = 'rennea-mk02-dingrit-pup-digestion',
    category = 'dingrits',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'dingrits-cub', amount = 3},
        {type = 'item', name = 'rennea-seeds-mk02', amount = 10},
        {type = 'item', name = 'tuuphra', amount = 20},
        },
    results = {
        {type = 'item', name = 'dingrits', amount_min = 1, amount_max = 3},
        {type = 'item', name = 'digested-rennea-seeds-mk02', amount = 10},
    },
    main_product = "digested-rennea-seeds-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/mip/rennea-manure-01.png"},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png', scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-rennea',
    order = 'za'
}:add_unlock("selective-breeding")

RECIPE {
    type = 'recipe',
    name = 'abraded-rennea-seed-filtering-mk02',
    category = 'bio-reactor',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'fluid', name = 'water', amount = 500},
        {type = 'item', name = 'digested-rennea-seeds-mk02', amount = 7},
        {type = 'item', name = 'filtration-media', amount = 2},
    },
    results = {
        {type = 'fluid', name = 'liquid-manure', amount = 100},
        {type = 'item', name = 'abraded-rennea-seeds-mk02', amount = 7},
    },
    --main_product = "cocoon",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/rennea-seeds.png"},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png', scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-rennea',
    order = 'za'
}:add_unlock("selective-breeding")

RECIPE {
    type = 'recipe',
    name = 'rennea-mk02-breeding',
    category = 'rennea',
    enabled = false,
    energy_required = 90,
    ingredients = {
        {type = 'item', name = 'abraded-rennea-seeds-mk02', amount = 6},
        {type = 'fluid', name = 'carbon-dioxide', amount = 300},
        {type = 'fluid', name = 'nitrogen', amount = 100},
        {type = 'item', name = 'stone-wool', amount = 10},
        {type = 'item', name = 'phosphoric-acid-barrel', amount = 2},
        {type = 'item', name = 'coarse', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 10},
        },
    results = {
        {type = 'item', name = 'rennea-mk02', amount = 4},
        {type = 'item', name = 'empty-barrel', amount = 12},
    },
    main_product = "rennea-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/rennea.png"},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png', scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-rennea',
    order = 'za'
}:add_unlock("selective-breeding")

RECIPE {
    type = 'recipe',
    name = 'rennea-mk02-seed-seperation',
    category = 'leaching',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'rennea-mk02', amount = 4},
        },
    results = {
        {type = 'item', name = 'rennea-seeds-mk02', amount_min = 10, amount_max = 15},
        {type = 'fluid', name = 'tall-oil', amount = 10},
        {type = 'fluid', name = 'black-liquor', amount = 10}
    },
    main_product = "rennea-seeds-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/rennea-seeds.png"},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png', scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-rennea',
    order = 'za'
}:add_unlock("selective-breeding")

--mk03--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'rennea-mk03',
    category = 'rennea',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'rennea-mk02', amount = 4},
        {type = 'fluid', name = 'carbon-dioxide', amount = 300},
        {type = 'item', name = 'stone-wool', amount = 5},
        {type = 'item', name = 'manure', amount = 15},
        {type = 'item', name = 'coarse', amount = 10},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'rennea-seeds-mk03', amount_min = 1, amount_max = 20, probability = 0.005},
        {type = 'item', name = 'rennea-seeds', amount = 1, probability = 0.5},
    },
    main_product = "rennea-seeds-mk03",
    icons =
        {
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png'},
            {icon = "__pyalienlifegraphics__/graphics/icons/rennea-seeds.png", scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-rennea',
    order = 'za'
}:add_unlock("artificial-breeding")

RECIPE{
    type = 'recipe',
    name = 'rennea-mk03-dingrit-pup-digestion',
    category = 'dingrits',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'dingrits-cub', amount = 3},
        {type = 'item', name = 'rennea-seeds-mk03', amount = 10},
        {type = 'item', name = 'tuuphra', amount = 20},
        },
    results = {
        {type = 'item', name = 'dingrits', amount_min = 1, amount_max = 3},
        {type = 'item', name = 'digested-rennea-seeds-mk03', amount = 10},
    },
    main_product = "digested-rennea-seeds-mk03",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/mip/rennea-manure-01.png"},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png', scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-rennea',
    order = 'za'
}:add_unlock("artificial-breeding")

RECIPE {
    type = 'recipe',
    name = 'abraded-rennea-seed-filtering-mk03',
    category = 'bio-reactor',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'fluid', name = 'water', amount = 500},
        {type = 'item', name = 'digested-rennea-seeds-mk03', amount = 7},
        {type = 'item', name = 'filtration-media', amount = 2},
    },
    results = {
        {type = 'fluid', name = 'liquid-manure', amount = 100},
        {type = 'item', name = 'abraded-rennea-seeds-mk03', amount = 7},
    },
    --main_product = "cocoon",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/rennea-seeds.png"},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png', scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-rennea',
    order = 'za'
}:add_unlock("artificial-breeding")

RECIPE {
    type = 'recipe',
    name = 'rennea-mk03-breeding',
    category = 'rennea',
    enabled = false,
    energy_required = 90,
    ingredients = {
        {type = 'item', name = 'abraded-rennea-seeds-mk03', amount = 6},
        {type = 'fluid', name = 'carbon-dioxide', amount = 300},
        {type = 'fluid', name = 'nitrogen', amount = 100},
        {type = 'item', name = 'stone-wool', amount = 10},
        {type = 'item', name = 'phosphoric-acid-barrel', amount = 2},
        {type = 'item', name = 'coarse', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 10},
        },
    results = {
        {type = 'item', name = 'rennea-mk03', amount = 4},
        {type = 'item', name = 'empty-barrel', amount = 12},
    },
    main_product = "rennea-mk03",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/rennea.png"},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png', scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-rennea',
    order = 'za'
}:add_unlock("artificial-breeding")

RECIPE {
    type = 'recipe',
    name = 'rennea-mk03-seed-seperation',
    category = 'leaching',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'rennea-mk03', amount = 4},
        },
    results = {
        {type = 'item', name = 'rennea-seeds-mk03', amount_min = 10, amount_max = 15},
        {type = 'fluid', name = 'tall-oil', amount = 10},
        {type = 'fluid', name = 'black-liquor', amount = 10}
    },
    main_product = "rennea-seeds-mk03",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/rennea-seeds.png"},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png', scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-rennea',
    order = 'za'
}:add_unlock("artificial-breeding")

--mk04--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'rennea-mk04',
    category = 'rennea',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'rennea-mk03', amount = 4},
        {type = 'fluid', name = 'carbon-dioxide', amount = 300},
        {type = 'item', name = 'stone-wool', amount = 5},
        {type = 'item', name = 'manure', amount = 15},
        {type = 'item', name = 'coarse', amount = 10},
        {type = 'fluid', name = 'water', amount = 1000},
        },
    results = {
        {type = 'item', name = 'rennea-seeds-mk04', amount_min = 1, amount_max = 20, probability = 0.005},
        {type = 'item', name = 'rennea-seeds', amount = 1, probability = 0.5},
    },
    main_product = "rennea-seeds-mk04",
    icons =
        {
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png'},
            {icon = "__pyalienlifegraphics__/graphics/icons/rennea-seeds.png", scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-rennea',
    order = 'za'
}:add_unlock("biased-mutation")

RECIPE{
    type = 'recipe',
    name = 'rennea-mk04-dingrit-pup-digestion',
    category = 'dingrits',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'dingrits-cub', amount = 3},
        {type = 'item', name = 'rennea-seeds-mk04', amount = 10},
        {type = 'item', name = 'tuuphra', amount = 20},
        },
    results = {
        {type = 'item', name = 'dingrits', amount_min = 1, amount_max = 3},
        {type = 'item', name = 'digested-rennea-seeds-mk04', amount = 10},
    },
    main_product = "digested-rennea-seeds-mk04",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/mip/rennea-manure-01.png"},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png', scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-rennea',
    order = 'za'
}:add_unlock("biased-mutation")

RECIPE {
    type = 'recipe',
    name = 'abraded-rennea-seed-filtering-mk04',
    category = 'bio-reactor',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'fluid', name = 'water', amount = 500},
        {type = 'item', name = 'digested-rennea-seeds-mk04', amount = 7},
        {type = 'item', name = 'filtration-media', amount = 2},
    },
    results = {
        {type = 'fluid', name = 'liquid-manure', amount = 100},
        {type = 'item', name = 'abraded-rennea-seeds-mk04', amount = 7},
    },
    --main_product = "cocoon",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/rennea-seeds.png"},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png', scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-rennea',
    order = 'za'
}:add_unlock("biased-mutation")

RECIPE {
    type = 'recipe',
    name = 'rennea-mk04-breeding',
    category = 'rennea',
    enabled = false,
    energy_required = 90,
    ingredients = {
        {type = 'item', name = 'abraded-rennea-seeds-mk04', amount = 6},
        {type = 'fluid', name = 'carbon-dioxide', amount = 300},
        {type = 'fluid', name = 'nitrogen', amount = 100},
        {type = 'item', name = 'stone-wool', amount = 10},
        {type = 'item', name = 'phosphoric-acid-barrel', amount = 2},
        {type = 'item', name = 'coarse', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 10},
        },
    results = {
        {type = 'item', name = 'rennea-mk04', amount = 4},
        {type = 'item', name = 'empty-barrel', amount = 12},
    },
    main_product = "rennea-mk04",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/rennea.png"},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png', scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-rennea',
    order = 'za'
}:add_unlock("biased-mutation")

RECIPE {
    type = 'recipe',
    name = 'rennea-mk04-seed-seperation',
    category = 'leaching',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'rennea-mk04', amount = 4},
        },
    results = {
        {type = 'item', name = 'rennea-seeds-mk04', amount_min = 10, amount_max = 15},
        {type = 'fluid', name = 'tall-oil', amount = 10},
        {type = 'fluid', name = 'black-liquor', amount = 10}
    },
    main_product = "rennea-seeds-mk04",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/rennea-seeds.png"},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png', scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-rennea',
    order = 'za'
}:add_unlock("biased-mutation")
