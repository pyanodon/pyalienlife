--------------------------TRITS-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'trits',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = 'item', name = 'alien-sample-02', amount = 2},
        {type = 'item', name = 'cdna', amount = 3},
        {type = 'item', name = 'bio-sample', amount = 15},
        {type = 'item', name = 'trits-codex', amount = 1},
        {type = 'item', name = 'cocoon', amount = 5},
        {type = 'item', name = 'earth-crustacean-sample', amount = 1},
        {type = 'item', name = 'earth-cow-sample', amount = 1},
        {type = 'fluid', name = 'water', amount = 1000},
        {type = 'fluid', name = 'fetal-serum', amount = 100},
    },
    results = {
        {type = 'item', name = 'trits', amount = 1},
    },
}:add_unlock("trits")

RECIPE {
    type = 'recipe',
    name = 'trits-codex',
    category = 'crafting',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'glass', amount = 2},
        {type = 'item', name = 'small-lamp', amount = 5},
        {type = 'item', name = 'advanced-circuit', amount = 40},
        {type = 'item', name = 'green-wire', amount = 5},
    },
    results = {
        {type = 'item', name = 'trits-codex', amount = 1},
    },
}:add_unlock("trits")

----food----

---breeding---


RECIPE {
    type = 'recipe',
    name = 'trits-mature-01',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'item', name = 'trits-pup', amount = 1},
        {type = 'item', name = 'cage', amount = 1},
        {type = 'item', name = 'trits-codex', amount = 1},
        {type = 'item', name = 'earth-crustacean-sample', amount = 1},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'trits', amount = 1},
    },
    --main_product = "caged-trits",
    subgroup = 'py-alienlife-trits',
    order = 'a',
}:add_unlock("assisted-embryology")

RECIPE {
    type = 'recipe',
    name = 'trits-mature-02',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = 'item', name = 'trits-pup', amount = 1},
        {type = 'item', name = 'gh', amount = 1},
        {type = 'item', name = 'resveratrol', amount = 1},
        {type = 'item', name = 'trits-codex', amount = 1},
        {type = 'item', name = 'earth-crustacean-sample', amount = 1},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'trits', amount = 2},
    },
    --main_product = "caged-trits",
    subgroup = 'py-alienlife-trits',
    order = 'a',
}:add_unlock("growth-hormone")



---UPDATES---
RECIPE {
    type = 'recipe',
    name = 'trits-mk02',
    category = 'trits',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'trits', amount = 2},
        {type = 'item', name = 'seaweed', amount = 10},
        {type = 'item', name = 'filtration-media', amount = 5},
        {type = 'item', name = 'sodium-alginate', amount = 10},
        {type = 'item', name = 'sea-sponge', amount = 4},
        {type = 'fluid', name = 'water-saline', amount = 300},
        },
    results = {
        {type = 'item', name = 'trits-mk02', amount = 1, probability = 0.005},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "trits-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-trits',
    order = 'za'
}:add_unlock("selective-breeding")

RECIPE {
    type = 'recipe',
    name = 'trits-mk03',
    category = 'trits',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'trits', amount = 2},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'seaweed', amount = 10},
        {type = 'item', name = 'filtration-media', amount = 5},
        {type = 'item', name = 'sodium-alginate', amount = 10},
        {type = 'item', name = 'sea-sponge', amount = 4},
        {type = 'fluid', name = 'water-saline', amount = 300},
        },
    results = {
        {type = 'item', name = 'trits-mk03', amount = 1, probability = 0.004},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "trits-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-trits',
    order = 'zb'
}:add_unlock("artificial-breeding")

RECIPE {
    type = 'recipe',
    name = 'trits-mk04',
    category = 'trits',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'trits', amount = 2},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'seaweed', amount = 10},
        {type = 'item', name = 'filtration-media', amount = 5},
        {type = 'item', name = 'sodium-alginate', amount = 10},
        {type = 'item', name = 'sea-sponge', amount = 4},
        {type = 'fluid', name = 'water-saline', amount = 300},
        },
    results = {
        {type = 'item', name = 'trits-mk04', amount = 1, probability = 0.003},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "trits-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-trits',
    order = 'zc'
}:add_unlock("biased-mutation")



