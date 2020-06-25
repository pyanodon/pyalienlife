--------------------------DHILMOS-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'dhilmos',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 150,
    ingredients = {
        {type = 'item', name = 'alien-sample-03', amount = 5},
        {type = 'item', name = 'bio-sample', amount = 10},
        {type = 'item', name = 'cdna', amount = 5},
        {type = 'item', name = 'fish', amount = 15},
        {type = 'item', name = 'dhilmos-codex', amount = 2},
        {type = 'item', name = 'earth-crustacean-sample', amount = 1}, --add alien sample from pyALiens mod here.
        {type = 'fluid', name = 'fetal-serum', amount = 100},
        {type = 'fluid', name = 'artificial-blood', amount = 100},
    },
    results = {
        {type = 'item', name = 'dhilmos', amount = 1},
    },
}:add_unlock("dhilmos")

RECIPE {
    type = 'recipe',
    name = 'dhilmos-codex',
    category = 'crafting',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'glass', amount = 4},
        {type = 'item', name = 'small-lamp', amount = 2},
        {type = 'item', name = 'advanced-circuit', amount = 5},
        {type = 'item', name = 'green-wire', amount = 5},
    },
    results = {
        {type = 'item', name = 'dhilmos-codex', amount = 2},
    },
}:add_unlock("dhilmos")

----food----

---breeding---


---growing---

RECIPE {
    type = 'recipe',
    name = 'dhilmos-grow-01',
    category = 'incubator',
    enabled = false,
    energy_required = 24,
    ingredients = {
        {type = 'item', name = 'dhilmos-egg', amount = 4},
        {type = 'item', name = 'yotoi-seeds', amount = 4},
        {type = 'fluid', name = 'water', amount = 400},
    },
    results = {
        {type = 'item', name = 'dhilmos-pup', amount = 4},
    },
    main_product = "dhilmos-pup",
    subgroup = 'py-alienlife-dhilmos',
    order = 'a',
}:add_unlock("assisted-embryology")

---maturing---

RECIPE {
    type = 'recipe',
    name = 'dhilmos-mature-01',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = 'item', name = 'dhilmos-pup', amount = 10},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'dhilmos', amount = 10},
    },
    --main_product = "dhilmos",
    subgroup = 'py-alienlife-dhilmos',
    order = 'a',
}:add_unlock("assisted-embryology")

RECIPE {
    type = 'recipe',
    name = 'dhilmos-mature-02',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'dhilmos-pup', amount = 10},
        {type = 'item', name = 'gh', amount = 1},
        {type = 'item', name = 'cage', amount = 20},
        {type = 'item', name = 'resveratrol', amount = 3},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'dhilmos', amount = 20},
    },
    --main_product = "caged-dhilmos",
    subgroup = 'py-alienlife-dhilmos',
    order = 'a',
}:add_unlock("growth-hormone")

----food----

RECIPE {
    type = 'recipe',
    name = 'dhilmos-food-01',
    category = 'crafting-with-fluid',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'nickel-plate', amount = 2},
        {type = 'item', name = 'plastic-bar', amount = 2},
        {type = 'item', name = 'seaweed', amount = 3},
        {type = 'item', name = 'yotoi-seeds', amount = 10},
        {type = 'item', name = 'guts', amount = 5},
        {type = 'item', name = 'skin', amount = 3},
        {type = 'item', name = 'guar-gum', amount = 1},
        {type = 'item', name = 'biomass', amount = 10},
        {type = 'fluid', name = 'steam', amount = 100, temperature = 165}
    },
    results = {
        {type = 'item', name = 'dhilmos-food-01', amount = 6},
    },
}:add_unlock("food-mk01")

RECIPE {
    type = 'recipe',
    name = 'dhilmos-food-02',
    category = 'crafting-with-fluid',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'nickel-plate', amount = 2},
        {type = 'item', name = 'plastic-bar', amount = 2},
        {type = 'item', name = 'navens', amount = 1},
        {type = 'item', name = 'seaweed', amount = 3},
        {type = 'item', name = 'bio-sample', amount = 5},
        {type = 'item', name = 'yotoi-seeds', amount = 10},
        {type = 'item', name = 'guar-gum', amount = 1},
        {type = 'item', name = 'skin', amount = 3},
        {type = 'item', name = 'bones', amount = 3},
        {type = 'fluid', name = 'steam', amount = 100, temperature = 165}
        {type = 'fluid', name = 'blood', amount = 50},
    },
    results = {
        {type = 'item', name = 'dhilmos-food-02', amount = 6},
    },
}:add_unlock("food-mk02")


---UPDATES---
RECIPE {
    type = 'recipe',
    name = 'dhilmos-mk02',
    category = 'dhilmos',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'dhilmos', amount = 2},
        {type = 'item', name = 'dhilmos-food-02', amount = 2},
        {type = 'item', name = 'filtration-media', amount = 5},
        {type = 'item', name = 'seaweed', amount = 10},
        {type = 'fluid', name = 'phytoplankton', amount = 60},
        },
    results = {
        {type = 'item', name = 'dhilmos-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'dhilmos', amount = 1, probability = 0.5},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "dhilmos-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-dhilmos',
    order = 'za'
}:add_unlock("selective-breeding")

RECIPE {
    type = 'recipe',
    name = 'dhilmos-mk03',
    category = 'dhilmos',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'dhilmos', amount = 2},
        {type = 'item', name = 'dhilmos-food-02', amount = 3},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'filtration-media', amount = 5},
        {type = 'item', name = 'seaweed', amount = 10},
        {type = 'fluid', name = 'phytoplankton', amount = 60},
        },
    results = {
        {type = 'item', name = 'dhilmos-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'dhilmos', amount = 1, probability = 0.6},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "dhilmos-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-dhilmos',
    order = 'zb'
}:add_unlock("artificial-breeding")

RECIPE {
    type = 'recipe',
    name = 'dhilmos-mk04',
    category = 'dhilmos',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'dhilmos', amount = 2},
        {type = 'item', name = 'dhilmos-food-02', amount = 3},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'filtration-media', amount = 5},
        {type = 'item', name = 'seaweed', amount = 10},
        {type = 'fluid', name = 'phytoplankton', amount = 60},
        },
    results = {
        {type = 'item', name = 'dhilmos-mk04', amount = 1, probability = 0.003},
        {type = 'item', name = 'dhilmos', amount = 1, probability = 0.7},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "dhilmos-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-dhilmos',
    order = 'zc'
}:add_unlock("biased-mutation")

