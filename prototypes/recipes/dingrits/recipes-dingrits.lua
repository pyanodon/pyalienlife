--------------------------dingrits-----------------------


----first----
RECIPE {
    type = "recipe",
    name = "dingrits",
    category = "creature-chamber",
    enabled = false,
    energy_required = 90,
    ingredients = {
        {type = "item",  name = "alien-sample-02",   amount = 2},
        {type = "item",  name = "cdna",              amount = 3},
        {type = "item",  name = "bio-sample",        amount = 15},
        {type = "item",  name = "dingrits-codex",    amount = 2},
        {type = "item",  name = "arthurian-egg",     amount = 10},
        {type = "item",  name = "earth-wolf-sample", amount = 1},
        {type = "fluid", name = "fetal-serum",       amount = 50},
        {type = "fluid", name = "artificial-blood",  amount = 50},
    },
    results = {
        {type = "item", name = "dingrits", amount = 1},
    },
}:add_unlock("dingrits")

RECIPE {
    type = "recipe",
    name = "dingrits-codex",
    category = "crafting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "glass",            amount = 2},
        {type = "item", name = "small-lamp",       amount = 2},
        {type = "item", name = "advanced-circuit", amount = 5},
    },
    results = {
        {type = "item", name = "dingrits-codex", amount = 1},
    },
}:add_unlock("dingrits")

RECIPE {
    type = "recipe",
    name = "earth-wolf-sample",
    category = "data-array",
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = "item", name = "earth-generic-sample",  amount = 1},
        {type = "item", name = "chemical-science-pack", amount = 20},
        {type = "item", name = "dingrits-codex",        amount = 1},
    },
    results = {
        {type = "item", name = "earth-wolf-sample", amount = 1},
    },
}:add_unlock("dingrits")

----food----
RECIPE {
    type = "recipe",
    name = "dingrits-food-01",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "plastic-bar",  amount = 6},
        {type = "item",  name = "meat",         amount = 10},
        {type = "item",  name = "bones",        amount = 10},
        {type = "item",  name = "tuuphra",      amount = 5},
        {type = "item",  name = "yotoi-fruit",  amount = 10},
        {type = "item",  name = "native-flora", amount = 5},
        {type = "item",  name = "guts",         amount = 10},
        {type = "item",  name = "guar-gum",     amount = 1},
        {type = "fluid", name = "steam",        amount = 100, fluidbox_index = 2},
        {type = "fluid", name = "fish-oil",     amount = 100, fluidbox_index = 1},
    },
    results = {
        {type = "item", name = "dingrits-food-01", amount = 6},
    },
}:add_unlock("dingrits")

RECIPE {
    type = "recipe",
    name = "dingrits-food-02",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "plastic-bar",  amount = 6},
        {type = "item",  name = "meat",         amount = 10},
        {type = "item",  name = "bones",        amount = 10},
        {type = "item",  name = "tuuphra",      amount = 5},
        {type = "item",  name = "yotoi-fruit",  amount = 10},
        {type = "item",  name = "native-flora", amount = 5},
        {type = "item",  name = "casein",       amount = 5},
        {type = "item",  name = "guts",         amount = 10},
        {type = "item",  name = "guar-gum",     amount = 1},
        {type = "item",  name = "skin",         amount = 15},
        {type = "fluid", name = "steam",        amount = 100, fluidbox_index = 2},
        {type = "fluid", name = "fish-oil",     amount = 100, fluidbox_index = 1},
    },
    results = {
        {type = "item", name = "dingrits-food-02", amount = 6},
    },
}:add_unlock("dingrits-mk02")

---breeding---


---maturing---
--[[

RECIPE {
    type = 'recipe',
    name = 'dingrits-mature-01',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 120,
    ingredients = {
        {type = 'item', name = 'dingrits-cub', amount = 10},
        {type = 'item', name = 'cage', amount = 10},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'caged-dingrits', amount = 10},
    },
    main_product = "caged-dingrits",
    subgroup = 'py-alienlife-dingrits',
    order = 'a',
}:add_unlock("assisted-embryology")

RECIPE {
    type = 'recipe',
    name = 'dingrits-mature-02',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'dingrits-cub', amount = 10},
        {type = 'item', name = 'gh', amount = 2},
        {type = 'item', name = 'resveratrol', amount = 2},
        {type = 'item', name = 'cage', amount = 20},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'caged-dingrits', amount = 20},
    },
    main_product = "caged-dingrits",
    subgroup = 'py-alienlife-dingrits',
    order = 'a',
}:add_unlock("growth-hormone")
]] --



----PROCESSING----


---caged---
RECIPE {
    type = "recipe",
    name = "caged-dingrits",
    category = "crafting",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "item", name = "dingrits", amount = 1},
        {type = "item", name = "cage",     amount = 1},
    },
    results = {
        {type = "item", name = "caged-dingrits", amount = 1},
    },
}:add_unlock("dingrits")

RECIPE {
    type = "recipe",
    name = "uncaged-dingrits",
    category = "crafting",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "item", name = "caged-dingrits", amount = 1},
    },
    results = {
        {type = "item", name = "dingrits", amount = 1},
        {type = "item", name = "cage",     amount = 1},
    },
    main_product = "dingrits",
}:add_unlock("dingrits")
