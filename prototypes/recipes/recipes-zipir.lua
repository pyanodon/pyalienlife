--------------------------ZIPIR-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'zipir1',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 150,
    ingredients = {
        {type = 'item', name = 'alien-sample01', amount = 5},
        {type = 'item', name = 'cdna', amount = 5},
        {type = 'item', name = 'fish', amount = 10},
        {type = 'item', name = 'bio-sample', amount = 10},
        {type = 'item', name = 'zipir-codex', amount = 2},
        {type = 'item', name = 'earth-crustacean-sample', amount = 1}, --add alien sample from pyALiens mod here.
        {type = 'fluid', name = 'fetal-serum', amount = 100},
        {type = 'fluid', name = 'artificial-blood', amount = 100},
    },
    results = {
        {type = 'item', name = 'zipir1', amount = 1},
    },
}:add_unlock("zipir")

RECIPE {
    type = 'recipe',
    name = 'zipir-codex',
    category = 'crafting',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'glass', amount = 4},
        {type = 'item', name = 'small-lamp', amount = 2},
        {type = 'item', name = 'electronic-circuit', amount = 5},
        {type = 'item', name = 'tinned-cable', amount = 5},
    },
    results = {
        {type = 'item', name = 'zipir-codex', amount = 2},
    },
}:add_unlock("zipir")

RECIPE {
    type = 'recipe',
    name = 'earth-crustacean-sample',
    category = 'data-array',
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = 'item', name = 'steel-chest', amount = 1},
        {type = 'item', name = 'chemical-science-pack', amount = 5},
        {type = 'item', name = 'zipir-codex', amount = 1},
    },
    results = {
        {type = 'item', name = 'earth-crustacean-sample', amount = 1},
    },
}:add_unlock("zipir")

----food----

RECIPE {
    type = 'recipe',
    name = 'zipir-food-01',
    category = 'crafting-with-fluid',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'plastic-bar', amount = 5},
        {type = 'item', name = 'seaweed', amount = 20},
        {type = 'item', name = 'ralesia-seeds', amount = 10},
        {type = 'item', name = 'fish', amount = 10},
        {type = 'item', name = 'bones', amount = 5},
        {type = 'item', name = 'biomass', amount = 10},
        {type = 'fluid', name = 'steam', amount = 100},
    },
    results = {
        {type = 'item', name = 'zipir-food-01', amount = 5},
    },
}:add_unlock("food-mk01")

RECIPE {
    type = 'recipe',
    name = 'zipir-food-02',
    category = 'crafting-with-fluid',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'plastic-bar', amount = 5},
        {type = 'item', name = 'navens', amount = 1},
        {type = 'item', name = 'seaweed', amount = 20},
        {type = 'item', name = 'fish', amount = 8},
        {type = 'item', name = 'rennea', amount = 15},
        {type = 'item', name = 'fawogae', amount = 10},
        {type = 'item', name = 'tuuphra', amount = 3},
        {type = 'fluid', name = 'steam', amount = 100},
        {type = 'fluid', name = 'blood', amount = 50},
    },
    results = {
        {type = 'item', name = 'zipir-food-02', amount = 5},
    },
}:add_unlock("food-mk02")

---growing---

RECIPE {
    type = 'recipe',
    name = 'zipir-grow-01',
    category = 'incubator',
    enabled = false,
    energy_required = 25,
    ingredients = {
        {type = 'item', name = 'zipir-eggs', amount = 1},
        {type = 'item', name = 'rennea-seeds', amount = 4},
        {type = 'fluid', name = 'phytoplankton', amount = 50},
    },
    results = {
        {type = 'item', name = 'zipir-pup', amount = 1},
    },
    main_product = "zipir-pup",
    subgroup = 'py-alienlife-zipir',
    order = 'a',
}:add_unlock("assisted-embryology")

---maturing---

RECIPE {
    type = 'recipe',
    name = 'zipir-mature-01',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'item', name = 'zipir-pup', amount = 1},
        {type = 'item', name = 'zipir-codex', amount = 1},
        {type = 'item', name = 'earth-crustacean-sample', amount = 2},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'zipir1', amount = 1},
    },
    --main_product = "zipir",
    subgroup = 'py-alienlife-zipir',
    order = 'a',
}:add_unlock("assisted-embryology")

RECIPE {
    type = 'recipe',
    name = 'zipir-mature-02',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = 'item', name = 'zipir-pup', amount = 1},
        {type = 'item', name = 'resveratrol', amount = 1},
        {type = 'item', name = 'gh', amount = 1},
        {type = 'item', name = 'zipir-codex', amount = 1},
        {type = 'item', name = 'earth-crustacean-sample', amount = 1},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'zipir1', amount = 2},
    },
    --main_product = "caged-zipir",
    subgroup = 'py-alienlife-zipir',
    order = 'a',
}:add_unlock("growth-hormone")

---UPDATES---
RECIPE {
    type = 'recipe',
    name = 'zipir-mk02',
    category = 'zipir',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'zipir1', amount = 2},
        {type = 'item', name = 'fawogae-substrate', amount = 15},
        {type = 'item', name = 'filtration-media', amount = 5},
        {type = 'item', name = 'stone-wool', amount = 4},
        {type = 'item', name = 'fish', amount = 5},
        {type = 'fluid', name = 'pressured-water', amount = 3000},
        },
    results = {
        {type = 'item', name = 'zipir2', amount = 1, probability = 0.005},
        {type = 'item', name = 'zipir1', amount = 1, probability = 0.5},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "zipir-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-zipir',
    order = 'za'
}:add_unlock("selective-breeding")

RECIPE {
    type = 'recipe',
    name = 'zipir-mk03',
    category = 'zipir',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'zipir1', amount = 2},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'filtration-media', amount = 5},
        {type = 'item', name = 'stone-wool', amount = 4},
        {type = 'item', name = 'fish', amount = 5},
        {type = 'fluid', name = 'pressured-water', amount = 3000},
        },
    results = {
        {type = 'item', name = 'zipir3', amount = 1, probability = 0.004},
        {type = 'item', name = 'zipir1', amount = 1, probability = 0.6},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "zipir-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-zipir',
    order = 'zb'
}:add_unlock("artificial-breeding"):replace_ingredient("saps", "blood-meal")

RECIPE {
    type = 'recipe',
    name = 'zipir-mk04',
    category = 'zipir',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'zipir1', amount = 2},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'filtration-media', amount = 5},
        {type = 'item', name = 'stone-wool', amount = 4},
        {type = 'item', name = 'fish', amount = 5},
        {type = 'fluid', name = 'pressured-water', amount = 3000},
        },
    results = {
        {type = 'item', name = 'zipir4', amount = 1, probability = 0.003},
        {type = 'item', name = 'zipir1', amount = 1, probability = 0.7},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "zipir-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-zipir',
    order = 'zc'
}:add_unlock("biased-mutation"):replace_ingredient("saps", "blood-meal")