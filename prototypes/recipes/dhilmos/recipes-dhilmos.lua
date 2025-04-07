--------------------------DHILMOS-----------------------


----first----
RECIPE {
    type = "recipe",
    name = "dhilmos",
    category = "creature-chamber",
    enabled = false,
    energy_required = 150,
    ingredients = {
        {type = "item",  name = "alien-sample-03",         amount = 5},
        {type = "item",  name = "bio-sample",              amount = 10},
        {type = "item",  name = "cdna",                    amount = 5},
        {type = "item",  name = "fish",                    amount = 15},
        {type = "item",  name = "dhilmos-codex",           amount = 2},
        {type = "item",  name = "earth-crustacean-sample", amount = 1}, --add alien sample from pyALiens mod here.
        {type = "fluid", name = "fetal-serum",             amount = 100},
        {type = "fluid", name = "artificial-blood",        amount = 100},
    },
    results = {
        {type = "item", name = "dhilmos", amount = 1},
    },
}:add_unlock("dhilmos")

RECIPE {
    type = "recipe",
    name = "dhilmos-codex",
    category = "crafting",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "glass",            amount = 4},
        {type = "item", name = "small-lamp",       amount = 2},
        {type = "item", name = "advanced-circuit", amount = 5},
    },
    results = {
        {type = "item", name = "dhilmos-codex", amount = 2},
    },
}:add_unlock("dhilmos")

----food----

---breeding---


---growing---

RECIPE {
    type = "recipe",
    name = "dhilmos-grow-01",
    category = "incubator",
    enabled = false,
    energy_required = 24,
    ingredients = {
        {type = "item",  name = "dhilmos-egg", amount = 4},
        {type = "item",  name = "yotoi-seeds", amount = 4},
        {type = "fluid", name = "water",       amount = 400},
    },
    results = {
        {type = "item", name = "dhilmos-pup", amount = 4},
    },
    main_product = "dhilmos-pup",
    subgroup = "py-alienlife-dhilmos",
    order = "a",
}:add_unlock("assisted-embryology")

---maturing---
--[[
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
]] --

----food----

RECIPE {
    type = "recipe",
    name = "dhilmos-food-01",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "nickel-plate", amount = 2},
        {type = "item",  name = "plastic-bar",  amount = 2},
        {type = "item",  name = "seaweed",      amount = 3},
        {type = "item",  name = "yotoi-seeds",  amount = 10},
        {type = "item",  name = "guts",         amount = 5},
        {type = "item",  name = "skin",         amount = 3},
        {type = "item",  name = "guar-gum",     amount = 1},
        {type = "item",  name = "native-flora", amount = 10},
        {type = "fluid", name = "steam",        amount = 100}
    },
    results = {
        {type = "item", name = "dhilmos-food-01", amount = 6},
    },
}:add_unlock("dhilmos-mk02")

RECIPE {
    type = "recipe",
    name = "dhilmos-food-02",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "nickel-plate", amount = 2},
        {type = "item",  name = "plastic-bar",  amount = 2},
        {type = "item",  name = "navens",       amount = 1},
        {type = "item",  name = "seaweed",      amount = 3},
        {type = "item",  name = "native-flora", amount = 15},
        {type = "item",  name = "yotoi-seeds",  amount = 10},
        {type = "item",  name = "guar-gum",     amount = 1},
        {type = "item",  name = "skin",         amount = 3},
        {type = "item",  name = "bones",        amount = 3},
        {type = "fluid", name = "steam",        amount = 100, fluidbox_index = 2},
        {type = "fluid", name = "blood",        amount = 50,  fluidbox_index = 1},
    },
    results = {
        {type = "item", name = "dhilmos-food-02", amount = 6},
    },
}:add_unlock("dhilmos-mk03")
