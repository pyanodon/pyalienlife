--------------------------PHADAI-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'phadai',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 200,
    ingredients = {
        {type = 'item', name = 'alien-sample-03', amount = 10},
        {type = 'item', name = 'cdna', amount = 10},
        {type = 'item', name = 'bio-sample', amount = 10},
        {type = 'item', name = 'cytostatics', amount = 5},
        {type = 'item', name = 'phadai-codex', amount = 2},
        {type = 'item', name = 'earth-tiger-sample', amount = 1},
        {type = 'fluid', name = 'fetal-serum', amount = 100},
        {type = 'fluid', name = 'artificial-blood', amount = 100},
    },
    results = {
        {type = 'item', name = 'phadai', amount = 1},
    },
}:add_unlock("phadai")

RECIPE {
    type = 'recipe',
    name = 'phadai-codex',
    category = 'crafting',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'glass', amount = 10},
        {type = 'item', name = 'small-lamp', amount = 2},
        {type = 'item', name = 'processing-unit', amount = 5},
        {type = 'item', name = 'green-wire', amount = 5},
    },
    results = {
        {type = 'item', name = 'phadai-codex', amount = 2},
    },
}:add_unlock("phadai")

RECIPE {
    type = 'recipe',
    name = 'earth-tiger-sample',
    category = 'data-array',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'steel-chest', amount = 1},
        {type = 'item', name = 'py-science-pack', amount = 2},
        {type = 'item', name = 'phadai-codex', amount = 1},
    },
    results = {
        {type = 'item', name = 'earth-tiger-sample', amount = 1},
    },
}:add_unlock("phadai")

----food----

RECIPE {
    type = 'recipe',
    name = 'phadai-food-01',
    category = 'crafting-with-fluid',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'plastic-bar', amount = 6},
        {type = 'item', name = 'meat', amount = 10},
        {type = 'item', name = 'rennea-seeds', amount = 10},
        {type = 'item', name = 'guts', amount = 5},
        {type = 'item', name = 'fish', amount = 5},
        {type = 'item', name = 'guar-gum', amount = 2},
        {type = 'item', name = 'casein', amount = 10},
        {type = 'item', name = 'ralesia', amount = 10},
        {type = 'item', name = 'bones', amount = 10},
        {type = 'fluid', name = 'steam', amount = 100, minimum_temperature = 165}
    },
    results = {
        {type = 'item', name = 'phadai-food-01', amount = 6},
    },
}:add_unlock("food-mk03")

RECIPE {
    type = 'recipe',
    name = 'phadai-food-02',
    category = 'crafting-with-fluid',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'plastic-bar', amount = 6},
        {type = 'item', name = 'meat', amount = 10},
        {type = 'item', name = 'bones', amount = 10},
        {type = 'item', name = 'bio-sample', amount = 5},
        {type = 'item', name = 'rennea-seeds', amount = 10},
        {type = 'item', name = 'guts', amount = 5},
        {type = 'item', name = 'yotoi-fruit', amount = 5},
        {type = 'item', name = 'mukmoux-fat', amount = 8},
        {type = 'item', name = 'casein', amount = 10},
        {type = 'item', name = 'ash', amount = 10},
        {type = 'item', name = 'fish', amount = 5},
        {type = 'item', name = 'ralesia', amount = 10},
        {type = 'fluid', name = 'steam', amount = 100, minimum_temperature = 165}
    },
    results = {
        {type = 'item', name = 'phadai-food-02', amount = 5},
    },
}:add_unlock("food-mk03")

---breeding---



---pup maker---


---maturing---

RECIPE {
    type = 'recipe',
    name = 'phadai-mature-01',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = 'item', name = 'phadai-pup', amount = 7},
        {type = 'item', name = 'cage', amount = 7},
        {type = 'fluid', name = 'fetal-serum', amount = 100},
    },
    results = {
        {type = 'item', name = 'caged-phadai', amount = 7},
    },
    --main_product = "phadai",
    subgroup = 'py-alienlife-phadai',
    order = 'a',
}:add_unlock("assisted-embryology")

RECIPE {
    type = 'recipe',
    name = 'phadai-mature-02',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 70,
    ingredients = {
        {type = 'item', name = 'phadai-pup', amount = 7},
        {type = 'item', name = 'gh', amount = 1},
        {type = 'item', name = 'cage', amount = 14},
        {type = 'item', name = 'resveratrol', amount = 3},
        {type = 'fluid', name = 'fetal-serum', amount = 100},
    },
    results = {
        {type = 'item', name = 'caged-phadai', amount = 14},
    },
    --main_product = "caged-phadai",
    subgroup = 'py-alienlife-phadai',
    order = 'a',
}:add_unlock("growth-hormone")


----adverse products----



----PROCESSING----



---caged---
RECIPE {
    type = 'recipe',
    name = 'caged-phadai',
    category = 'crafting',
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = 'item', name = 'phadai', amount = 1},
        {type = 'item', name = 'cage', amount = 1},
    },
    results = {
        {type = 'item', name = 'caged-phadai', amount = 1},
    },
}:add_unlock("phadai")

RECIPE {
    type = 'recipe',
    name = 'uncaged-phadai',
    category = 'crafting',
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = 'item', name = 'caged-phadai', amount = 1},
    },
    results = {
        {type = 'item', name = 'phadai', amount = 1},
        {type = 'item', name = 'cage', amount = 1},
    },
    main_product = "phadai",
}:add_unlock("phadai")

---UPDATES---
RECIPE {
    type = 'recipe',
    name = 'phadai-mk02',
    category = 'phadai',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'phadai', amount = 2},
        {type = 'item', name = 'phadai-food-02', amount = 1},
        {type = 'item', name = 'programmable-speaker', amount = 3},
        {type = 'item', name = 'energy-drink', amount = 2},
        {type = 'item', name = 'small-lamp', amount = 5},
        {type = 'item', name = 'water-barrel', amount = 7},
        {type = 'item', name = 'meat', amount = 5},
        },
    results = {
        {type = 'item', name = 'phadai-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'empty-barrel', amount = 7},
        {type = 'item', name = 'phadai', amount = 1, probability = 0.5},
    },
    --main_product = "phadai-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-phadai',
    order = 'za'
}:add_unlock("selective-breeding")

RECIPE {
    type = 'recipe',
    name = 'phadai-mk03',
    category = 'phadai',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'phadai', amount = 2},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'phadai-food-02', amount = 1},
        {type = 'item', name = 'programmable-speaker', amount = 3},
        {type = 'item', name = 'energy-drink', amount = 2},
        {type = 'item', name = 'small-lamp', amount = 5},
        {type = 'item', name = 'water-barrel', amount = 7},
        {type = 'item', name = 'meat', amount = 5},
        },
    results = {
        {type = 'item', name = 'phadai-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'empty-barrel', amount = 7},
        {type = 'item', name = 'phadai', amount = 1, probability = 0.6},
    },
    --main_product = "phadai-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-phadai',
    order = 'zb'
}:add_unlock("artificial-breeding")

RECIPE {
    type = 'recipe',
    name = 'phadai-mk04',
    category = 'phadai',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'phadai', amount = 2},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'phadai-food-02', amount = 1},
        {type = 'item', name = 'programmable-speaker', amount = 3},
        {type = 'item', name = 'energy-drink', amount = 2},
        {type = 'item', name = 'small-lamp', amount = 5},
        {type = 'item', name = 'water-barrel', amount = 7},
        {type = 'item', name = 'meat', amount = 5},
        },
    results = {
        {type = 'item', name = 'phadai-mk04', amount = 1, probability = 0.003},
        {type = 'item', name = 'empty-barrel', amount = 7},
        {type = 'item', name = 'phadai', amount = 1, probability = 0.7},
    },
    --main_product = "phadai-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-phadai',
    order = 'zc'
}:add_unlock("biased-mutation")