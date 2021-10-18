--------------------------XYHIPHOE-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'xyhiphoe',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = 'item', name = 'alien-sample01', amount = 2},
        {type = 'item', name = 'cdna', amount = 3},
        {type = 'item', name = 'bio-sample', amount = 15},
        {type = 'item', name = 'xyhiphoe-codex', amount = 1},
        {type = 'item', name = 'cocoon', amount = 5},
        {type = 'item', name = 'earth-crustacean-sample', amount = 1},
        {type = 'fluid', name = 'water', amount = 1000},
        {type = 'fluid', name = 'fetal-serum', amount = 100},
    },
    results = {
        {type = 'item', name = 'xyhiphoe', amount = 1},
    },
}:add_unlock("water-invertebrates-mk01")

RECIPE {
    type = 'recipe',
    name = 'xyhiphoe-codex',
    category = 'crafting',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'glass', amount = 2},
        {type = 'item', name = 'small-lamp', amount = 5},
        {type = 'item', name = 'electronic-circuit', amount = 25},
        {type = 'item', name = 'green-wire', amount = 5},
    },
    results = {
        {type = 'item', name = 'xyhiphoe-codex', amount = 1},
    },
}:add_unlock("water-invertebrates-mk01")

----food----

---breeding---


---maturing---

RECIPE {
    type = 'recipe',
    name = 'xyhiphoe-mature-01',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 120,
    ingredients = {
        {type = 'item', name = 'xyhiphoe-cub', amount = 10},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'xyhiphoe', amount = 10},
    },
    --main_product = "xyhiphoe",
    subgroup = 'py-alienlife-xyhiphoe',
    order = 'a',
}:add_unlock("assisted-embryology")

RECIPE {
    type = 'recipe',
    name = 'xyhiphoe-mature-02',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'xyhiphoe-cub', amount = 10},
        {type = 'item', name = 'resveratrol', amount = 5},
        {type = 'item', name = 'gh', amount = 1},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'xyhiphoe', amount = 20},
    },
    --main_product = "caged-xyhiphoe",
    subgroup = 'py-alienlife-xyhiphoe',
    order = 'a',
}:add_unlock("growth-hormone")




--Secondary Upgrade Recipes--
--SUR--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'xyhiphoe-mk02',
    category = 'xyhiphoe',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'xyhiphoe', amount = 2},
        {type = 'item', name = 'fish-food-02', amount = 2},
        {type = 'item', name = 'filtration-media', amount = 5},
        {type = 'item', name = 'saps', amount = 6},
        {type = 'fluid', name = 'pressured-water', amount = 3000},
        },
    results = {
        {type = 'item', name = 'xyhiphoe-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'xyhiphoe', amount = 1, probability = 0.5},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "xyhiphoe-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-xyhiphoe',
    order = 'za'
}:add_unlock("selective-breeding"):replace_ingredient("saps", "blood-meal")

RECIPE {
    type = 'recipe',
    name = 'xyhiphoe-mk03',
    category = 'xyhiphoe',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'xyhiphoe', amount = 2},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'fish-food-02', amount = 2},
        {type = 'item', name = 'filtration-media', amount = 5},
        {type = 'item', name = 'saps', amount = 6},
        {type = 'fluid', name = 'pressured-water', amount = 3000},
        },
    results = {
        {type = 'item', name = 'xyhiphoe-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'xyhiphoe', amount = 1, probability = 0.6},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "xyhiphoe-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-xyhiphoe',
    order = 'zb'
}:add_unlock("artificial-breeding"):replace_ingredient("saps", "blood-meal")

RECIPE {
    type = 'recipe',
    name = 'xyhiphoe-mk04',
    category = 'xyhiphoe',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'xyhiphoe', amount = 2},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'fish-food-02', amount = 2},
        {type = 'item', name = 'filtration-media', amount = 5},
        {type = 'item', name = 'saps', amount = 6},
        {type = 'fluid', name = 'pressured-water', amount = 3000},
        },
    results = {
        {type = 'item', name = 'xyhiphoe-mk04', amount = 1, probability = 0.003},
        {type = 'item', name = 'xyhiphoe', amount = 1, probability = 0.7},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "xyhiphoe-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-xyhiphoe',
    order = 'zc'
}:add_unlock("biased-mutation"):replace_ingredient("saps", "blood-meal")
