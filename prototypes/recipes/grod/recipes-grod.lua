--------------------------GROD-----------------------


----first----
RECIPE {
    type = "recipe",
    name = "grod-sample",
    category = "nursery",
    enabled = false,
    energy_required = 200,
    ingredients = {
        {type = "item",  name = "alien-sample01",    amount = 4},
        {type = "item",  name = "bio-sample",        amount = 5},
        {type = "item",  name = "cdna",              amount = 3},
        {type = "item",  name = "grod-codex",        amount = 1},
        {type = "item",  name = "earth-jute-sample", amount = 1},
        {type = "item",  name = "planter-box",       amount = 1},
        {type = "fluid", name = "water",             amount = 1000},
    },
    results = {
        {type = "item", name = "grod", amount = 1},
    },
}:add_unlock("grod")

RECIPE {
    type = "recipe",
    name = "grod-codex",
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
        {type = "item", name = "grod-codex", amount = 1},
    },
}:add_unlock("grod")

RECIPE {
    type = "recipe",
    name = "earth-jute-sample",
    category = "data-array",
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = "item", name = "earth-generic-sample",  amount = 1},
        {type = "item", name = "logistic-science-pack", amount = 50},
        {type = "item", name = "grod-codex",            amount = 1},
    },
    results = {
        {type = "item", name = "earth-jute-sample", amount = 1},
    },
}:add_unlock("grod")

---breeding---


-----SEEDS----

RECIPE {
    type = "recipe",
    name = "grod-seeds",
    category = "nursery",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "grod", amount = 2},
    },
    results = {
        {type = "item", name = "grod-seeds", amount = 4}
    },
}:add_unlock("grod")


RECIPE {
    type = "recipe",
    name = "replicator-grod",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "grod-codex",     amount = 1},
        {type = "item", name = "grod-seeds",     amount = 200},
        {type = "item", name = "titanium-plate", amount = 100},
        {type = "item", name = "metallic-glass", amount = 2},
        {type = "item", name = "biofilm",        amount = 20},
        {type = "item", name = "plastic-bar",    amount = 100},
        {type = "item", name = "blanket-chassi", amount = 1},
        {type = "item", name = "fertilizer",     amount = 40},
    },
    results = {
        {type = "item", name = "replicator-grod", amount = 1},
    },
}:add_unlock("mega-farm-grod"):add_ingredient {type = "item", name = "nems", amount = 10}:add_ingredient {type = "item", name = "carbon-nanotube", amount = 10}
