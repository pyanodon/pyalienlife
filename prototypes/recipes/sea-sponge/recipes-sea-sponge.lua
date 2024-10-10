--------------------------SEA SPONGE-----------------------


----first----
RECIPE {
    type = "recipe",
    name = "sea-sponge",
    category = "creature-chamber",
    enabled = false,
    energy_required = 150,
    ingredients = {
        {type = "item",  name = "alien-sample01",          amount = 2},
        {type = "item",  name = "bio-sample",              amount = 10},
        {type = "item",  name = "cdna",                    amount = 3},
        {type = "item",  name = "sea-sponge-codex",        amount = 1},
        {type = "item",  name = "earth-sea-sponge-sample", amount = 1},
        {type = "fluid", name = "water",                   amount = 1000}, --add alien sample from pyALiens mod here.
    },
    results = {
        {type = "item", name = "sea-sponge", amount = 1},
    },
}:add_unlock("water-invertebrates-mk01")

RECIPE {
    type = "recipe",
    name = "sea-sponge-codex",
    category = "crafting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "glass",              amount = 2},
        {type = "item", name = "small-lamp",         amount = 5},
        {type = "item", name = "electronic-circuit", amount = 50},
        {type = "item", name = "tinned-cable",       amount = 20},
    },
    results = {
        {type = "item", name = "sea-sponge-codex", amount = 1},
    },
}:add_unlock("water-invertebrates-mk01")

RECIPE {
    type = "recipe",
    name = "earth-sea-sponge-sample",
    category = "data-array",
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = "item", name = "earth-generic-sample",    amount = 1},
        {type = "item", name = "automation-science-pack", amount = 100},
        {type = "item", name = "sea-sponge-codex",        amount = 1},
    },
    results = {
        {type = "item", name = "earth-sea-sponge-sample", amount = 1},
    },
}:add_unlock("water-invertebrates-mk01")

----food----

---breeding---
RECIPE {
    type = "recipe",
    name = "sea-sponge-1",
    category = "sponge",
    enabled = false,
    energy_required = 70,
    ingredients = {
        {type = "item",  name = "sea-sponge-sprouts", amount = 1},
        {type = "fluid", name = "dirty-water-light",  amount = 100},
        {type = "fluid", name = "zogna-bacteria",     amount = 40},
    },
    results = {
        {type = "item",  name = "sea-sponge",   amount = 1},
        {type = "fluid", name = "water-saline", amount = 100},
    },
    main_product = "sea-sponge",
}:add_unlock("water-invertebrates-mk01")

RECIPE {
    type = "recipe",
    name = "sea-sponge-2",
    category = "sponge",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = "item",  name = "sea-sponge-sprouts", amount = 1},
        {type = "fluid", name = "phytoplankton",      amount = 40},
        {type = "fluid", name = "zogna-bacteria",     amount = 40},
    },
    results = {
        {type = "item",  name = "sea-sponge",   amount = 3},
        {type = "fluid", name = "water-saline", amount = 50},
    },
    main_product = "sea-sponge",
}:add_unlock("water-invertebrates-mk02")

----adverse products----

RECIPE {
    type = "recipe",
    name = "sea-sponge-processing-01",
    category = "atomizer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "sea-sponge", amount = 1},
    },
    results = {
        {type = "item", name = "ore-quartz", amount = 10},
    },
    subgroup = "py-alienlife-items",
    order = "c",
}:add_unlock("water-invertebrates-mk01")

RECIPE {
    type = "recipe",
    name = "sea-sponge-sprouts-processing-01",
    category = "atomizer",
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "item", name = "sea-sponge-sprouts", amount = 1},
    },
    results = {
        {type = "item", name = "ore-quartz", amount = 7},
    },
    subgroup = "py-alienlife-items",
    order = "c",
}:add_unlock("water-invertebrates-mk01")


----PROCESSING----
RECIPE {
    type = "recipe",
    name = "sea-sponge-sprouts",
    category = "bio-reactor",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "sea-sponge", amount = 1},
    },
    results = {
        {type = "item", name = "sea-sponge-sprouts", amount = 2},
    },
}:add_unlock("water-invertebrates-mk01")

RECIPE {
    type = "recipe",
    name = "sea-sponge-sprouts-2",
    category = "bio-reactor",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "sea-sponge-mk02", amount = 1},
    },
    results = {
        {type = "item", name = "sea-sponge-sprouts", amount = 4},
    },
}:add_unlock("water-invertebrates-mk02")

RECIPE {
    type = "recipe",
    name = "sea-sponge-sprouts-3",
    category = "bio-reactor",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "sea-sponge-mk03", amount = 1},
    },
    results = {
        {type = "item", name = "sea-sponge-sprouts", amount = 6},
    },
}:add_unlock("water-invertebrates-mk03")

RECIPE {
    type = "recipe",
    name = "sea-sponge-sprouts-4",
    category = "bio-reactor",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "sea-sponge-mk04", amount = 1},
    },
    results = {
        {type = "item", name = "sea-sponge-sprouts", amount = 8},
    },
}:add_unlock("water-invertebrates-mk04")
