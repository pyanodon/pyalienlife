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
        {type = 'item', name = 'earth-sunflower-sample', amount = 2},
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


---caged---
