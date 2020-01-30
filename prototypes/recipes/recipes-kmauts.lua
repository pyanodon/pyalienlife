--------------------------KMAUTS-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'kmauts',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = 'item', name = 'alien-sample-02', amount = 2},
        {type = 'item', name = 'bio-sample', amount = 10},
        {type = 'item', name = 'cdna', amount = 3},
        {type = 'item', name = 'kmauts-codex', amount = 1},
        {type = 'item', name = 'cocoon', amount = 5},
        {type = 'fluid', name = 'water', amount = 1000}, --add alien sample from pyALiens mod here.
    },
    results = {
        {type = 'item', name = 'kmauts', amount = 1},
    },
}:add_unlock("kmauts")

RECIPE {
    type = 'recipe',
    name = 'kmauts-codex',
    category = 'crafting',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'glass', amount = 2},
        {type = 'item', name = 'small-lamp', amount = 5},
        {type = 'item', name = 'advanced-circuit', amount = 40},
        {type = 'item', name = 'tinned-cable', amount = 20},
    },
    results = {
        {type = 'item', name = 'kmauts-codex', amount = 1},
    },
}:add_unlock("kmauts")

----food----

---maturing---



RECIPE {
    type = 'recipe',
    name = 'kmauts-mature-01',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = 'item', name = 'kmauts-cub', amount = 1},
        {type = 'item', name = 'cage', amount = 1},
        {type = 'item', name = 'kmauts-codex', amount = 1},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
        {type = 'fluid', name = 'fish-oil', amount = 60},
    },
    results = {
        {type = 'item', name = 'caged-kmauts', amount = 1},
    },
    main_product = "caged-kmauts",
    subgroup = 'py-alienlife-kmauts',
    order = 'a',
}:add_unlock("assisted-embryology")

RECIPE {
    type = 'recipe',
    name = 'kmauts-mature-02',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = 'item', name = 'kmauts-cub', amount = 1},
        {type = 'item', name = 'gh', amount = 1},
        {type = 'item', name = 'cage', amount = 2},
        {type = 'item', name = 'resveratrol', amount = 1},
        {type = 'item', name = 'kmauts-codex', amount = 1},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
        {type = 'fluid', name = 'fish-oil', amount = 60},
    },
    results = {
        {type = 'item', name = 'caged-kmauts', amount = 2},
    },
    main_product = "caged-kmauts",
    subgroup = 'py-alienlife-kmauts',
    order = 'a',
}:add_unlock("growth-hormone")




----PROCESSING----


---caged---
RECIPE {
    type = 'recipe',
    name = 'caged-kmauts',
    category = 'crafting',
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = 'item', name = 'kmauts', amount = 1},
        {type = 'item', name = 'cage', amount = 1},
    },
    results = {
        {type = 'item', name = 'caged-kmauts', amount = 1},
    },
}:add_unlock("kmauts")

RECIPE {
    type = 'recipe',
    name = 'uncaged-kmauts',
    category = 'crafting',
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = 'item', name = 'caged-kmauts', amount = 1},
    },
    results = {
        {type = 'item', name = 'kmauts', amount = 1},
        {type = 'item', name = 'cage', amount = 1},
    },
    main_product = "kmauts",
}:add_unlock("kmauts")

---UPDATES---
RECIPE {
    type = 'recipe',
    name = 'kmauts-mk02',
    category = 'kmauts',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'kmauts', amount = 2},
        {type = 'item', name = 'kmauts-ration', amount = 2},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'rennea', amount = 5},
        {type = 'item', name = 'caged-ulric', amount = 1},
        {type = 'item', name = 'water-barrel', amount = 4},
        },
    results = {
        {type = 'item', name = 'kmauts-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'kmauts', amount = 1, probability = 0.5},
        {type = 'item', name = 'empty-barrel', amount = 4},
    },
    --main_product = "kmauts-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-kmauts',
    order = 'za'
}:add_unlock("selective-breeding")

RECIPE {
    type = 'recipe',
    name = 'kmauts-mk03',
    category = 'kmauts',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'kmauts', amount = 2},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'kmauts-ration', amount = 2},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'rennea', amount = 5},
        {type = 'item', name = 'caged-ulric', amount = 1},
        {type = 'item', name = 'water-barrel', amount = 4},
        },
    results = {
        {type = 'item', name = 'kmauts-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'kmauts', amount = 1, probability = 0.6},
        {type = 'item', name = 'empty-barrel', amount = 4},
    },
    --main_product = "kmauts-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-kmauts',
    order = 'zb'
}:add_unlock("artificial-breeding")

RECIPE {
    type = 'recipe',
    name = 'kmauts-mk04',
    category = 'kmauts',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'kmauts', amount = 2},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'kmauts-ration', amount = 2},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'rennea', amount = 5},
        {type = 'item', name = 'caged-ulric', amount = 1},
        {type = 'item', name = 'water-barrel', amount = 4},
        },
    results = {
        {type = 'item', name = 'kmauts-mk04', amount = 1, probability = 0.003},
        {type = 'item', name = 'kmauts', amount = 1, probability = 0.6},
        {type = 'item', name = 'empty-barrel', amount = 4},
    },
    --main_product = "kmauts-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-kmauts',
    order = 'zc'
}:add_unlock("biased-mutation")