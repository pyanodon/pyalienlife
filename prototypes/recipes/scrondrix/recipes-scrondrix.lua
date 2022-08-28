--------------------------SCRONDRIX-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'scrondrix',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 150,
    ingredients = {
        {type = 'item', name = 'alien-sample-03', amount = 5},
        {type = 'item', name = 'cdna', amount = 10},
        {type = 'item', name = 'bio-sample', amount = 15},
        {type = 'item', name = 'arthurian-egg', amount = 5},
        {type = 'item', name = 'scrondrix-codex', amount = 2},
        {type = 'item', name = 'earth-lizard-sample', amount = 1},
        {type = 'item', name = 'earth-roadrunner-sample', amount = 1},
        {type = 'fluid', name = 'fetal-serum', amount = 100},
        {type = 'fluid', name = 'artificial-blood', amount = 100},
    },
    results = {
        {type = 'item', name = 'scrondrix', amount = 1},
    },
}:add_unlock("scrondrix")

RECIPE {
    type = 'recipe',
    name = 'scrondrix-codex',
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
        {type = 'item', name = 'scrondrix-codex', amount = 2},
    },
}:add_unlock("scrondrix")

RECIPE {
    type = 'recipe',
    name = 'earth-roadrunner-sample',
    category = 'data-array',
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = 'item', name = 'earth-generic-sample', amount = 1},
        {type = 'item', name = 'chemical-science-pack', amount = 5},
        {type = 'item', name = 'scrondrix-codex', amount = 1},
    },
    results = {
        {type = 'item', name = 'earth-roadrunner-sample', amount = 1},
    },
}:add_unlock("scrondrix")

----food----

---breeding---


---pup maker---


--[[-maturing---

RECIPE {
    type = 'recipe',
    name = 'scrondrix-mature-01',
    category = 'scrondrix',
    enabled = false,
    energy_required = 150,
    ingredients = {
        {type = 'item', name = 'scrondrix-pup', amount = 10},
        {type = 'item', name = 'cage', amount = 10},
        {type = 'item', name = 'fetal-serum-barrel', amount = 1},
    },
    results = {
        {type = 'item', name = 'caged-scrondrix', amount = 10},
        {type = 'item', name = 'empty-barrel', amount = 1},
    },
    main_product = "caged-scrondrix",
    subgroup = 'py-alienlife-scrondrix',
    order = 'a',
}:add_unlock("assisted-embryology")


RECIPE {
    type = 'recipe',
    name = 'scrondrix-mature-02',
    category = 'scrondrix',
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = 'item', name = 'scrondrix-pup', amount = 10},
        {type = 'item', name = 'gh', amount = 1},
        {type = 'item', name = 'resveratrol', amount = 3},
        {type = 'item', name = 'cage', amount = 20},
        {type = 'item', name = 'fetal-serum-barrel', amount = 1},
    },
    results = {
        {type = 'item', name = 'caged-scrondrix', amount = 20},
        {type = 'item', name = 'empty-barrel', amount = 1},
    },
    main_product = "caged-scrondrix",
    subgroup = 'py-alienlife-scrondrix',
    order = 'a',
}:add_unlock("growth-hormone")
]]--

----adverse products----

----PROCESSING----

---caged---
RECIPE {
    type = 'recipe',
    name = 'caged-scrondrix',
    category = 'crafting',
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = 'item', name = 'scrondrix', amount = 1},
        {type = 'item', name = 'cage', amount = 1},
    },
    results = {
        {type = 'item', name = 'caged-scrondrix', amount = 1},
    },
}:add_unlock("scrondrix")

RECIPE {
    type = 'recipe',
    name = 'uncaged-scrondrix',
    category = 'crafting',
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = 'item', name = 'caged-scrondrix', amount = 1},
    },
    results = {
        {type = 'item', name = 'scrondrix', amount = 1},
        {type = 'item', name = 'cage', amount = 1},
    },
    main_product = "scrondrix",
}:add_unlock("scrondrix")
