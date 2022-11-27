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
        {type = 'item', name = 'electronic-circuit', amount = 40},
        {type = 'item', name = 'green-wire', amount = 5},
    },
    results = {
        {type = 'item', name = 'trits-codex', amount = 1},
    },
}:add_unlock("trits")

----food----

---breeding---

--[[
RECIPE {
    type = 'recipe',
    name = 'trits-mature-01',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 120,
    ingredients = {
        {type = 'item', name = 'trits-pup', amount = 10},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'trits', amount = 10},
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
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'trits-pup', amount = 10},
        {type = 'item', name = 'gh', amount =2},
        {type = 'item', name = 'resveratrol', amount = 3},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'trits', amount = 20},
    },
    --main_product = "caged-trits",
    subgroup = 'py-alienlife-trits',
    order = 'a',
}:add_unlock("growth-hormone")
]]--