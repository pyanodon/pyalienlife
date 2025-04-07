--------------------------ULRIC-----------------------


----first----
RECIPE {
    type = "recipe",
    name = "ulric",
    category = "creature-chamber",
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = "item",  name = "alien-sample01",     amount = 4},
        {type = "item",  name = "cdna",               amount = 3},
        {type = "item",  name = "bio-sample",         amount = 10},
        {type = "item",  name = "ulric-codex",        amount = 1},
        {type = "item",  name = "earth-horse-sample", amount = 1},
        {type = "fluid", name = "water",              amount = 1000}, --add alien sample from pyALiens mod here.
    },
    results = {
        {type = "item", name = "ulric", amount = 1},
    },
}:add_unlock("ulric")

RECIPE {
    type = "recipe",
    name = "ulric-codex",
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
        {type = "item", name = "ulric-codex", amount = 1},
    },
}:add_unlock("ulric")

RECIPE {
    type = "recipe",
    name = "earth-horse-sample",
    category = "data-array",
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = "item", name = "earth-generic-sample",    amount = 1},
        {type = "item", name = "automation-science-pack", amount = 15},
        {type = "item", name = "ulric-codex",             amount = 5},
    },
    results = {
        {type = "item", name = "earth-horse-sample", amount = 1},
    },
}:add_unlock("ulric")

----food----
RECIPE {
    type = "recipe",
    name = "ulric-food-01",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "tin-plate",    amount = 2},
        {type = "item",  name = "fawogae",      amount = 5},
        {type = "item",  name = "ralesia",      amount = 5},
        {type = "item",  name = "wood-seeds",   amount = 10},
        {type = "item",  name = "native-flora", amount = 10},
        --        {type = 'item', name = 'guar', amount = 3},
        {type = "item",  name = "ash",          amount = 10},
        {type = "fluid", name = "steam",        amount = 100}
    },
    results = {
        {type = "item", name = "ulric-food-01", amount = 6},
    },
}:add_unlock("ulric")

RECIPE {
    type = "recipe",
    name = "ulric-food-02",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "tin-plate",    amount = 2},
        {type = "item",  name = "fawogae",      amount = 5},
        {type = "item",  name = "ralesia",      amount = 5},
        {type = "item",  name = "wood-seeds",   amount = 10},
        {type = "item",  name = "ash",          amount = 10},
        {type = "item",  name = "native-flora", amount = 15},
        {type = "item",  name = "guar-gum",     amount = 1},
        {type = "fluid", name = "arqad-honey",  amount = 50,  fluidbox_index = 1},
        {type = "item",  name = "seaweed",      amount = 10},
        {type = "item",  name = "starch",       amount = 4},
        {type = "fluid", name = "steam",        amount = 100, fluidbox_index = 2},
    },
    results = {
        {type = "item", name = "ulric-food-02", amount = 6},
    },
}:add_unlock("ulric-mk03")

---maturing---
--[[
RECIPE {
    type = 'recipe',
    name = 'ulric-mature-01',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'ulric-cub', amount = 10},
        {type = 'item', name = 'cage', amount = 10},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'caged-ulric', amount = 10},
    },
    main_product = "caged-ulric",
    subgroup = 'py-alienlife-ulric',
    order = 'a',
}:add_unlock("assisted-embryology")

RECIPE {
    type = 'recipe',
    name = 'ulric-mature-02',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = 'item', name = 'ulric-cub', amount = 10},
        {type = 'item', name = 'gh', amount = 1},
        {type = 'item', name = 'resveratrol', amount = 2},
        {type = 'item', name = 'cage', amount = 20},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'caged-ulric', amount = 20},
    },
    main_product = "caged-ulric",
    subgroup = 'py-alienlife-ulric',
    order = 'a',
}:add_unlock("growth-hormone")
]] --
----adverse products----




----PROCESSING----


---caged---
RECIPE {
    type = "recipe",
    name = "caged-ulric",
    category = "crafting",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "item", name = "ulric", amount = 1},
        {type = "item", name = "cage",  amount = 1},
    },
    results = {
        {type = "item", name = "caged-ulric", amount = 1},
    },
}:add_unlock("ulric")

RECIPE {
    type = "recipe",
    name = "uncaged-ulric",
    category = "crafting",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "item", name = "caged-ulric", amount = 1},
    },
    results = {
        {type = "item", name = "ulric", amount = 1},
        {type = "item", name = "cage",  amount = 1},
    },
    main_product = "ulric",
}:add_unlock("ulric")
