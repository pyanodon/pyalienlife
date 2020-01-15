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
    energy_required = 40,
    ingredients = {
        {type = 'item', name = 'xyhiphoe-cub', amount = 1},
        {type = 'item', name = 'xyhiphoe-codex', amount = 1},
        {type = 'item', name = 'earth-crustacean-sample', amount = 2},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'xyhiphoe', amount = 1},
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
    energy_required = 20,
    ingredients = {
        {type = 'item', name = 'xyhiphoe-cub', amount = 1},
        {type = 'item', name = 'resveratrol', amount = 1},
        {type = 'item', name = 'gh', amount = 1},
        {type = 'item', name = 'xyhiphoe-codex', amount = 1},
        {type = 'item', name = 'earth-crustacean-sample', amount = 1},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'xyhiphoe', amount = 2},
    },
    --main_product = "caged-xyhiphoe",
    subgroup = 'py-alienlife-xyhiphoe',
    order = 'a',
}:add_unlock("growth-hormone")




----PROCESSING----


