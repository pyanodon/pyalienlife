--------------------------AUOG-----------------------


----first----
RECIPE {
    type = "recipe",
    name = "auog",
    category = "creature-chamber",
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = "item",  name = "earth-generic-sample", amount = 2},
        {type = "item",  name = "bio-sample",           amount = 5},
        {type = "item",  name = "cdna",                 amount = 3},
        {type = "item",  name = "auog-codex",           amount = 1},
        {type = "item",  name = "earth-bear-sample",    amount = 1},
        {type = "fluid", name = "water",                amount = 1000}, --add alien sample from pyALiens mod here.
    },
    results = {
        {type = "item", name = "auog", amount = 1},
    },
}:add_unlock("auog")

RECIPE {
    type = "recipe",
    name = "auog-codex",
    category = "crafting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "glass",              amount = 2},
        {type = "item", name = "small-lamp",         amount = 5},
        {type = "item", name = "electronic-circuit", amount = 10},
        {type = "item", name = "tinned-cable",       amount = 20},
    },
    results = {
        {type = "item", name = "auog-codex", amount = 1},
    },
}:add_unlock("auog")

RECIPE {
    type = "recipe",
    name = "earth-bear-sample",
    category = "data-array",
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = "item", name = "earth-generic-sample",    amount = 1},
        {type = "item", name = "automation-science-pack", amount = 100},
        {type = "item", name = "auog-codex",              amount = 5},
    },
    results = {
        {type = "item", name = "earth-bear-sample", amount = 1},
    },
}:add_unlock("auog")

----food----
RECIPE {
    type = "recipe",
    name = "auog-food-01",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "plastic-bar",  amount = 2},
        {type = "item",  name = "native-flora", amount = 5},
        {type = "item",  name = "ralesia",      amount = 5},
        {type = "item",  name = "seaweed",      amount = 3},
        {type = "item",  name = "moss",         amount = 5},
        -- {type = 'item', name = 'starch', amount = 4},
        {type = "fluid", name = "steam",        amount = 100}
    },
    results = {
        {type = "item", name = "auog-food-01", amount = 3},
    },
}:add_unlock("auog")

RECIPE {
    type = "recipe",
    name = "auog-food-02",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "plastic-bar",  amount = 2},
        {type = "item",  name = "fawogae",      amount = 5},
        {type = "item",  name = "native-flora", amount = 10},
        {type = "item",  name = "ralesia",      amount = 5},
        {type = "item",  name = "casein",       amount = 10},
        {type = "item",  name = "wood-seeds",   amount = 1},
        {type = "item",  name = "ash",          amount = 10},
        {type = "item",  name = "moss",         amount = 10},
        {type = "item",  name = "seaweed",      amount = 5},
        {type = "item",  name = "starch",       amount = 4},
        {type = "fluid", name = "steam",        amount = 100}
    },
    results = {
        {type = "item", name = "auog-food-02", amount = 5},
    },
}:add_unlock("auog-mk02")

---breeding---

---pup maker---

---maturing---
--[[
RECIPE {
    type = 'recipe',
    name = 'auog-mature-01',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'auog-pup', amount = 10},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
        {type = 'item', name = 'cage', amount = 10},
    },
    results = {
        {type = 'item', name = 'caged-auog', amount = 10},
    },
    main_product = "caged-auog",
    subgroup = 'py-alienlife-auog',
    order = 'a',
}:add_unlock("assisted-embryology")

RECIPE {
    type = 'recipe',
    name = 'auog-mature-02',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'item', name = 'auog-pup', amount = 10},
        {type = 'item', name = 'gh', amount = 1},
        {type = 'item', name = 'resveratrol', amount = 2},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
        {type = 'item', name = 'cage', amount = 20},
    },
    results = {
        {type = 'item', name = 'caged-auog', amount = 20},
    },
    --main_product = "caged-auog",
    subgroup = 'py-alienlife-auog',
    order = 'a',
}:add_unlock("growth-hormone")
]] --
----adverse products----

----PROCESSING----

---caged---
RECIPE {
    type = "recipe",
    name = "caged-auog",
    category = "crafting",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "item", name = "auog", amount = 1},
        {type = "item", name = "cage", amount = 1},
    },
    results = {
        {type = "item", name = "caged-auog", amount = 1},
    },
}:add_unlock("auog")

RECIPE {
    type = "recipe",
    name = "uncaged-auog",
    category = "crafting",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "item", name = "caged-auog", amount = 1},
    },
    results = {
        {type = "item", name = "auog", amount = 1},
        {type = "item", name = "cage", amount = 1},
    },
    main_product = "auog",
}:add_unlock("auog")
