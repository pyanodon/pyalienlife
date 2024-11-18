--------------------------KORLEX-----------------------


----first----
RECIPE {
    type = "recipe",
    name = "korlex",
    category = "creature-chamber",
    enabled = false,
    energy_required = 350,
    ingredients = {
        {type = "item",  name = "alien-sample01",   amount = 5},
        {type = "item",  name = "cdna",             amount = 5},
        {type = "item",  name = "bio-sample",       amount = 20},
        {type = "item",  name = "korlex-codex",     amount = 1},
        {type = "item",  name = "fish",             amount = 5},
        {type = "item",  name = "earth-cow-sample", amount = 3}, --add alien sample from pyALiens mod here.
        {type = "fluid", name = "fetal-serum",      amount = 100},
        {type = "fluid", name = "artificial-blood", amount = 100},
    },
    results = {
        {type = "item", name = "korlex", amount = 1},
    },
}:add_unlock("korlex")

RECIPE {
    type = "recipe",
    name = "korlex-codex",
    category = "crafting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "glass",              amount = 2},
        {type = "item", name = "small-lamp",         amount = 2},
        {type = "item", name = "electronic-circuit", amount = 10},
        {type = "item", name = "tinned-cable",       amount = 10},
    },
    results = {
        {type = "item", name = "korlex-codex", amount = 1},
    },
}:add_unlock("korlex")

----food----
RECIPE {
    type = "recipe",
    name = "korlex-food-01",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "tin-plate",    amount = 2},
        {type = "item",  name = "fish",         amount = 5},
        {type = "item",  name = "meat",         amount = 10},
        {type = "item",  name = "wood-seeds",   amount = 10},
        {type = "item",  name = "native-flora", amount = 5},
        {type = "item",  name = "seaweed",      amount = 10},
        {type = "item",  name = "salt",         amount = 10},
        {type = "item",  name = "fawogae",      amount = 10},
        {type = "fluid", name = "fish-oil",     amount = 100, fluidbox_index = 1},
        {type = "fluid", name = "steam",        amount = 100, fluidbox_index = 2},
    },
    results = {
        {type = "item", name = "korlex-food-01", amount = 3},
    },
}:add_unlock("korlex"):replace_ingredient("wood-seeds", "kicalk-seeds")

RECIPE {
    type = "recipe",
    name = "korlex-food-02",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "fish",         amount = 5},
        {type = "item",  name = "sea-sponge",   amount = 1},
        {type = "item",  name = "rennea",       amount = 5},
        {type = "item",  name = "casein",       amount = 5},
        {type = "item",  name = "meat",         amount = 10},
        {type = "item",  name = "salt",         amount = 10},
        {type = "item",  name = "guar-gum",     amount = 1},
        {type = "item",  name = "native-flora", amount = 20},
        {type = "item",  name = "yaedols",      amount = 4},
        {type = "item",  name = "tuuphra",      amount = 3},
        {type = "fluid", name = "steam",        amount = 100, fluidbox_index = 2},
        {type = "fluid", name = "fish-oil",     amount = 50, fluidbox_index = 1},
    },
    results = {
        {type = "item", name = "korlex-food-02", amount = 6},
    },
}:add_unlock("korlex-mk03"):add_ingredient {type = "item", name = "fiberboard", amount = 2}

---breeding---



---maturing---
--[[
RECIPE {
    type = 'recipe',
    name = 'korlex-mature-01',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'korlex-pup', amount = 10},
        {type = 'item', name = 'cage', amount = 10},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'caged-korlex', amount = 10},
    },
    main_product = "caged-korlex",
    subgroup = 'py-alienlife-korlex',
    order = 'a',
}:add_unlock("assisted-embryology")

RECIPE {
    type = 'recipe',
    name = 'korlex-mature-02',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = 'item', name = 'korlex-pup', amount = 10},
        {type = 'item', name = 'gh', amount = 1},
        {type = 'item', name = 'cage', amount = 20},
        {type = 'item', name = 'resveratrol', amount = 2},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'caged-korlex', amount = 20},
    },
    main_product = "caged-korlex",
    subgroup = 'py-alienlife-korlex',
    order = 'a',
}:add_unlock("growth-hormone")
]] --
----adverse products----


----PROCESSING----



---caged---
RECIPE {
    type = "recipe",
    name = "caged-korlex",
    category = "crafting",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "item", name = "korlex", amount = 1},
        {type = "item", name = "cage",   amount = 1},
    },
    results = {
        {type = "item", name = "caged-korlex", amount = 1},
    },
}:add_unlock("korlex")

RECIPE {
    type = "recipe",
    name = "uncaged-korlex",
    category = "crafting",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "item", name = "caged-korlex", amount = 1},
    },
    results = {
        {type = "item", name = "korlex", amount = 1},
        {type = "item", name = "cage",   amount = 1},
    },
    main_product = "korlex",
}:add_unlock("korlex")
