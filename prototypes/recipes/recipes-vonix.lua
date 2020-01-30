--------------------------VONIX-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'vonix',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = 'item', name = 'alien-sample-03', amount = 2},
        {type = 'item', name = 'cdna', amount = 3},
        {type = 'item', name = 'bio-sample', amount = 5},
        {type = 'item', name = 'vonix-codex', amount = 2},
        {type = 'item', name = 'arthurian-egg', amount = 20},
        {type = 'item', name = 'earth-wolf-sample', amount = 1},
        {type = 'item', name = 'earth-flower-sample', amount = 1},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
        {type = 'fluid', name = 'artificial-blood', amount = 50},
    },
    results = {
        {type = 'item', name = 'vonix', amount = 1},
    },
}:add_unlock("vonix")

RECIPE {
    type = 'recipe',
    name = 'vonix-codex',
    category = 'crafting',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'glass', amount = 2},
        {type = 'item', name = 'small-lamp', amount = 2},
        {type = 'item', name = 'processing-unit', amount = 5},
        {type = 'item', name = 'green-wire', amount = 5},
    },
    results = {
        {type = 'item', name = 'vonix-codex', amount = 1},
    },
}:add_unlock("vonix")



----food----


---breeding---

---growing---

RECIPE {
    type = 'recipe',
    name = 'vonix-grow-01',
    category = 'incubator',
    enabled = false,
    energy_required = 25,
    ingredients = {
        {type = 'item', name = 'vonix-eggs', amount = 1},
        {type = 'item', name = 'meat', amount = 4},
        {type = 'fluid', name = 'water', amount = 500},
    },
    results = {
        {type = 'item', name = 'vonix-cub', amount = 1},
    },
    --main_product = "vonix-pup",
    subgroup = 'py-alienlife-vonix',
    order = 'a',
}:add_unlock("assisted-embryology")

---maturing---

RECIPE {
    type = 'recipe',
    name = 'vonix-mature-01',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'item', name = 'vonix-cub', amount = 1},
        {type = 'item', name = 'vonix-codex', amount = 1},
        {type = 'item', name = 'earth-sunflower-sample', amount = 2},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'vonix', amount = 1},
    },
    main_product = "vonix",
    subgroup = 'py-alienlife-vonix',
    order = 'a',
}:add_unlock("vonix"):add_ingredient({type = "item", name = "biopolymer", amount = 10})

RECIPE {
    type = 'recipe',
    name = 'vonix-mature-02',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = 'item', name = 'vonix-cub', amount = 1},
        {type = 'item', name = 'gh', amount = 1},
        {type = 'item', name = 'resveratrol', amount = 1},
        {type = 'item', name = 'cage', amount = 1},
        {type = 'item', name = 'vonix-codex', amount = 1},
        {type = 'item', name = 'earth-sunflower-sample', amount = 1},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'vonix', amount = 2},
    },
    --main_product = "caged-vonix",
    subgroup = 'py-alienlife-vonix',
    order = 'a',
}:add_unlock("growth-hormone"):add_ingredient({type = "item", name = "biopolymer", amount = 5})


----adverse products----




---UPDATES---
RECIPE {
    type = 'recipe',
    name = 'vonix-mk02',
    category = 'vonix',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'vonix', amount = 2},
        {type = 'item', name = 'caged-mukmoux', amount = 1},
        {type = 'item', name = 'guts', amount = 5},
        {type = 'item', name = 'bedding', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 15},
        },
    results = {
        {type = 'item', name = 'vonix-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'empty-barrel', amount = 15},
        {type = 'item', name = 'vonix', amount = 1, probability = 0.5},
    },
    --main_product = "vonix-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-vonix',
    order = 'za'
}:add_unlock("selective-breeding")

RECIPE {
    type = 'recipe',
    name = 'vonix-mk03',
    category = 'vonix',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'vonix', amount = 2},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'caged-mukmoux', amount = 1},
        {type = 'item', name = 'guts', amount = 5},
        {type = 'item', name = 'bedding', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 15},
        },
    results = {
        {type = 'item', name = 'vonix-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'empty-barrel', amount = 15},
        {type = 'item', name = 'vonix', amount = 1, probability = 0.6},
    },
    --main_product = "vonix-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-vonix',
    order = 'zb'
}:add_unlock("artificial-breeding")

RECIPE {
    type = 'recipe',
    name = 'vonix-mk04',
    category = 'vonix',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'vonix', amount = 2},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'caged-mukmoux', amount = 1},
        {type = 'item', name = 'guts', amount = 5},
        {type = 'item', name = 'bedding', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 15},
        },
    results = {
        {type = 'item', name = 'vonix-mk04', amount = 1, probability = 0.003},
        {type = 'item', name = 'empty-barrel', amount = 15},
        {type = 'item', name = 'vonix', amount = 1, probability = 0.7},
    },
    --main_product = "vonix-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-vonix',
    order = 'zc'
}:add_unlock("biased-mutation")
