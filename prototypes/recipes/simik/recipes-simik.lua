--------------------------SIMIK-----------------------


----first----
RECIPE {
    type = "recipe",
    name = "simik",
    category = "creature-chamber",
    enabled = false,
    energy_required = 350,
    ingredients = {
        {type = "item",  name = "alien-sample01",         amount = 5},
        {type = "item",  name = "cdna",                   amount = 5},
        {type = "item",  name = "bio-sample",             amount = 30},
        {type = "item",  name = "simik-codex",            amount = 1},
        {type = "item",  name = "earth-tiger-sample",     amount = 1},
        {type = "item",  name = "earth-lizard-sample",    amount = 1},
        {type = "item",  name = "strorix-unknown-sample", amount = 5}, --add alien sample from pyALiens mod here.
        {type = "fluid", name = "fetal-serum",            amount = 100},
        {type = "fluid", name = "blood",                  amount = 700},
        {type = "fluid", name = "artificial-blood",       amount = 200},
    },
    results = {
        {type = "item", name = "simik", amount = 1},
    },
}:add_unlock("simik-mk01")

RECIPE {
    type = "recipe",
    name = "strorix-unknown-sample",
    category = "data-array",
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = "item", name = "earth-generic-sample",  amount = 1},
        {type = "item", name = "logistic-science-pack", amount = 100},
        {type = "item", name = "simik-codex",           amount = 5},
    },
    results = {
        {type = "item", name = "strorix-unknown-sample", amount = 1},
    },
}:add_unlock("simik-mk01")

RECIPE {
    type = "recipe",
    name = "simik-codex",
    category = "crafting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "glass",            amount = 2},
        {type = "item", name = "small-lamp",       amount = 2},
        {type = "item", name = "advanced-circuit", amount = 10},
        {type = "item", name = "tinned-cable",     amount = 10},
    },
    results = {
        {type = "item", name = "simik-codex", amount = 1},
    },
}:add_unlock("simik-mk01")

----food----
RECIPE {
    type = "recipe",
    name = "simik-food-01",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "lead-plate",  amount = 2},
        {type = "item",  name = "xyhiphoe",    amount = 1},
        {type = "item",  name = "coal-dust",   amount = 10},
        {type = "item",  name = "uranium-ore", amount = 10},
        {type = "item",  name = "skin",        amount = 10},
        {type = "item",  name = "albumin",     amount = 2},
        {type = "item",  name = "sulfur",      amount = 10},
        {type = "item",  name = "navens",      amount = 1},
        {type = "item",  name = "starch",      amount = 4},
        {type = "fluid", name = "olefin",      amount = 50},
    },
    results = {
        {type = "item", name = "simik-food-01", amount = 6},
    },
}:add_unlock("simik-mk01")

RECIPE {
    type = "recipe",
    name = "simik-food-02",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "lead-plate",   amount = 2},
        {type = "item",  name = "xyhiphoe",     amount = 1},
        {type = "item",  name = "albumin",      amount = 2},
        {type = "item",  name = "coal-dust",    amount = 10},
        {type = "item",  name = "uranium-ore",  amount = 10},
        {type = "item",  name = "skin",         amount = 10},
        {type = "item",  name = "sulfur",       amount = 10},
        {type = "item",  name = "navens",       amount = 1},
        {type = "item",  name = "native-flora", amount = 10},
        {type = "item",  name = "yaedols",      amount = 2},
        {type = "item",  name = "starch",       amount = 4},
        {type = "fluid", name = "olefin",       amount = 50, fluidbox_index = 2},
        {type = "fluid", name = "blood",        amount = 100, fluidbox_index = 1},
    },
    results = {
        {type = "item", name = "simik-food-02", amount = 10},
    },
}:add_unlock("simik-mk03")

---breeding---



---maturing---
--[[

RECIPE {
    type = 'recipe',
    name = 'simik-mature-01',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'simik-pup', amount = 10},
        {type = 'item', name = 'cage', amount = 10},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'caged-simik', amount = 10},
    },
    main_product = "caged-simik",
    subgroup = 'py-alienlife-simik',
    order = 'a',
}:add_unlock("assisted-embryology")

RECIPE {
    type = 'recipe',
    name = 'simik-mature-02',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = 'item', name = 'simik-pup', amount = 10},
        {type = 'item', name = 'gh', amount = 1},
        {type = 'item', name = 'cage', amount = 20},
        {type = 'item', name = 'resveratrol', amount = 2},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'caged-simik', amount = 20},
    },
    main_product = "caged-simik",
    subgroup = 'py-alienlife-simik',
    order = 'a',
}:add_unlock("growth-hormone")
]] --
----adverse products----


----PROCESSING----

RECIPE {
    type = "recipe",
    name = "simik-blood-to-tar",
    category = "tar",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "simik-blood", amount = 50},
    },
    results = {
        {type = "fluid", name = "tar", amount = 45},
    },
    crafting_machine_tint =
    {
        primary = {r = 0.290, g = 0.388, b = 0.172},
        secondary = {r = 1, g = 1, b = 1},
        tertiary = {r = 0.290, g = 0.388, b = 0.172},
        quaternary = {r = 0.290, g = 0.388, b = 0.172},
    }
}:add_unlock("simik-mk01")

RECIPE {
    type = "recipe",
    name = "simik-blood-to-oleochemicals",
    category = "olefin",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "simik-blood", amount = 50},
    },
    results = {
        {type = "fluid", name = "oleochemicals", amount = 40},
    },
}:add_unlock("simik-mk02")

RECIPE {
    type = "recipe",
    name = "simik-blood-to-kimberlite",
    category = "pan",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "simik-blood", amount = 50},
    },
    results = {
        {type = "fluid", name = "kimberlite-pulp", amount = 40},
    },
}:add_unlock("simik-mk02")

---caged---
RECIPE {
    type = "recipe",
    name = "caged-simik",
    category = "crafting",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "item", name = "simik", amount = 1},
        {type = "item", name = "cage",  amount = 1},
    },
    results = {
        {type = "item", name = "caged-simik", amount = 1},
    },
}:add_unlock("simik-mk01")

RECIPE {
    type = "recipe",
    name = "uncaged-simik",
    category = "crafting",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "item", name = "caged-simik", amount = 1},
    },
    results = {
        {type = "item", name = "simik", amount = 1},
        {type = "item", name = "cage",  amount = 1},
    },
    main_product = "simik",
}:add_unlock("simik-mk01")
