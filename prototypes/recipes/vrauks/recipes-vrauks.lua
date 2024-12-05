RECIPE {
    type = "recipe",
    name = "vrauks",
    category = "creature-chamber",
    enabled = true,
    energy_required = 400,
    ingredients = {
        {type = "item", name = "native-flora",         amount = 10},
        {type = "item", name = "moss-gen",             amount = 3},
        {type = "item", name = "vrauks-codex",         amount = 1},
        {type = "item", name = "earth-generic-sample", amount = 2},
        {type = "item", name = "petri-dish",           amount = 10},
    },
    results = {
        {type = "item", name = "vrauks", amount = 1},
    },
}:add_unlock("vrauks")

RECIPE {
    type = "recipe",
    name = "vrauks-codex",
    category = "crafting",
    enabled = true,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "glass",              amount = 5},
        {type = "item", name = "electronic-circuit", amount = 5},
        {type = "item", name = "tinned-cable",       amount = 10},
    },
    results = {
        {type = "item", name = "vrauks-codex", amount = 1},
    },
}:add_unlock("vrauks")

----food----
RECIPE {
    type = "recipe",
    name = "vrauks-food-01",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "tin-plate",  amount = 1},
        {type = "item",  name = "fawogae",    amount = 5},
        {type = "item",  name = "moss",       amount = 10},
        {type = "item",  name = "wood-seeds", amount = 6},
        {type = "item",  name = "agar",       amount = 4},
        {type = "item",  name = "cellulose",  amount = 3},
        {type = "fluid", name = "steam",      amount = 100}
    },
    results = {
        {type = "item", name = "vrauks-food-01", amount = 4},
    },
}:add_unlock("vrauks-mk02")

RECIPE {
    type = "recipe",
    name = "vrauks-food-02",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "grod",          amount = 1},
        {type = "item",  name = "tuuphra-seeds", amount = 3},
        {type = "item",  name = "ralesia",       amount = 5},
        {type = "item",  name = "wood-seeds",    amount = 10},
        {type = "item",  name = "agar",          amount = 6},
        {type = "item",  name = "casein",        amount = 2},
        {type = "item",  name = "native-flora",  amount = 5},
        {type = "item",  name = "moss",          amount = 10},
        {type = "item",  name = "guts",          amount = 2},
        {type = "item",  name = "starch",        amount = 4},
        {type = "fluid", name = "fish-oil",      amount = 30, fluidbox_index = 1},
        {type = "fluid", name = "steam",         amount = 100, fluidbox_index = 2},
    },
    results = {
        {type = "item", name = "vrauks-food-02", amount = 6},
    },
}:add_unlock("vrauks-mk03"):add_ingredient {type = "item", name = "fiberboard", amount = 2}

---caged---
RECIPE {
    type = "recipe",
    name = "caged-vrauks",
    category = "crafting",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "item", name = "vrauks", amount = 1},
        {type = "item", name = "cage",   amount = 1},
    },
    results = {
        {type = "item", name = "caged-vrauks", amount = 1},
    },
}:add_unlock("vrauks")

RECIPE {
    type = "recipe",
    name = "uncaged-vrauks",
    category = "crafting",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "item", name = "caged-vrauks", amount = 1},
    },
    results = {
        {type = "item", name = "vrauks", amount = 1},
        {type = "item", name = "cage",   amount = 1},
    },
    main_product = "vrauks",
}:add_unlock("vrauks")

---maturing---
--[[
RECIPE {
    type = 'recipe',
    name = 'vrauks-mature-01',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = 'item', name = 'cocoon', amount = 10},
        {type = 'item', name = 'cage', amount = 10},
        {type = 'fluid', name = 'water', amount = 500},
    },
    results = {
        {type = 'item', name = 'caged-vrauks', amount = 10},
    },
    main_product = "caged-vrauks",
    subgroup = 'py-alienlife-vrauks',
    order = 'a',
}:add_unlock("assisted-embryology")

RECIPE {
    type = 'recipe',
    name = 'vrauks-mature-02',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'cocoon', amount = 10},
        {type = 'item', name = 'gh', amount = 1},
        {type = 'item', name = 'cage', amount = 30},
        {type = 'item', name = 'resveratrol', amount = 5},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'caged-vrauks', amount = 30}, --it was 3 so is is 30 now
    },
    main_product = "caged-vrauks",
    subgroup = 'py-alienlife-vrauks',
    order = 'a',
}:add_unlock("growth-hormone")
]] --
