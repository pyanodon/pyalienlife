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

RECIPE {
    type = 'recipe',
    name = 'vonix-',
    category = 'vonix',
    enabled = false,
    energy_required = 200,
    ingredients = {
        {type = 'item', name = 'caged-mukmoux', amount = 1},
        {type = 'item', name = 'water-barrel', amount = 15},
    },
    results = {
        {type = 'item', name = 'vonix-eggs', amount = 1},
        {type = 'item', name = 'empty-barrel', amount = 15},
    },
    main_product = "vonix-eggs",
    subgroup = 'py-alienlife-vonix',
    order = 'a',
}:add_unlock("vonix")

---maturing---

RECIPE {
    type = 'recipe',
    name = 'vonix-mature-01',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'vonix-eggs', amount = 1},
        {type = 'item', name = 'vonix-codex', amount = 1},
        {type = 'item', name = 'earth-sunflower-sample', amount = 1},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'vonix', amount = 1},
        {type = 'item', name = 'cage', amount = 1},
    },
    main_product = "vonix",
    subgroup = 'py-alienlife-vonix',
    order = 'a',
}:add_unlock("vonix"):add_ingredient({type = "item", name = "biopolymer", amount = 10})

----adverse products----




----PROCESSING----

RECIPE {
    type = 'recipe',
    name = 'vonix-full-rendering',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'item', name = 'vonix', amount = 1},
    },
    results = {
         {type = 'item', name = 'meat', amount = 6, probability = 0.5},
        {type = 'fluid', name = 'arthropod-blood', amount = 80},
        {type = 'item', name = 'mukmoux-fat', amount = 5, probability = 0.5},
        {type = 'item', name = 'skin', amount = 4, probability = 0.4},
        {type = 'item', name = 'brain', amount = 1},
        {type = 'item', name = 'guts', amount = 6, probability = 0.4},
        {type = 'item', name = 'venon-gland', amount = 1, probability = 0.3},
    },
    icon = '__pyalienlife__/graphics/icons/rendering-vonix.png',
    icon_size = 64,
    subgroup = 'py-alienlife-vonix',
    order = 'b',
}:add_unlock("vonix")

RECIPE {
    type = 'recipe',
    name = 'vonix-meat-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'vonix', amount = 1},
    },
    results = {
        {type = 'item', name = 'meat', amount = 10},
    },
    subgroup = 'py-alienlife-vonix',
    order = 'c',
}:add_unlock("vonix")

RECIPE {
    type = 'recipe',
    name = 'vonix-brain-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'vonix', amount = 1},
    },
    results = {
        {type = 'item', name = 'brain', amount = 1},
    },
    subgroup = 'py-alienlife-vonix',
    order = 'c',
}:add_unlock("vonix")

RECIPE {
    type = 'recipe',
    name = 'vonix-skin-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'vonix', amount = 1},
    },
    results = {
        {type = 'item', name = 'skin', amount = 6},
    },
    subgroup = 'py-alienlife-vonix',
    order = 'c',
}:add_unlock("vonix")

RECIPE {
    type = 'recipe',
    name = 'vonix-guts-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'vonix', amount = 1},
    },
    results = {
        {type = 'item', name = 'guts', amount = 12},
    },
    subgroup = 'py-alienlife-vonix',
    order = 'c',
}:add_unlock("vonix")

RECIPE {
    type = 'recipe',
    name = 'vonix-blood-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'vonix', amount = 1},
    },
    results = {
        {type = 'fluid', name = 'arthropod-blood', amount = 150},
    },
    subgroup = 'py-alienlife-vonix',
    order = 'c',
}:add_unlock("vonix")

RECIPE {
    type = 'recipe',
    name = 'vonix-fat-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'vonix', amount = 1},
    },
    results = {
        {type = 'item', name = 'mukmoux-fat', amount = 13},
    },
    subgroup = 'py-alienlife-vonix',
    order = 'c',
}:add_unlock("vonix")

RECIPE {
    type = 'recipe',
    name = 'vonix-venon',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'vonix', amount = 1},
    },
    results = {
        {type = 'item', name = 'venon-gland', amount = 1},
    },
    subgroup = 'py-alienlife-vonix',
    order = 'c',
}:add_unlock("vonix")

---caged---
