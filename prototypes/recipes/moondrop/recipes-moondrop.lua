--------------------------MOONDROP-----------------------


----first----
RECIPE {
    type = "recipe",
    name = "moondrop-sample",
    category = "nursery",
    enabled = false,
    energy_required = 200,
    ingredients = {
        --{type = 'item', name = 'alien-sample01', amount = 2},
        -- {type = 'item', name = 'cdna', amount = 3},
        {type = "item",  name = "moondrop-codex", amount = 1},
        {type = "item",  name = "petri-dish",     amount = 2},
        {type = "item",  name = "planter-box",    amount = 1},
        {type = "fluid", name = "water",          amount = 1000},
    },
    results = {
        {type = "item", name = "moondrop", amount = 4},
    },
}:add_unlock("moondrop")

RECIPE {
    type = "recipe",
    name = "moondrop-codex",
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
        {type = "item", name = "moondrop-codex", amount = 1},
    },
}:add_unlock("moondrop")

---breeding---

-----SEEDS----

RECIPE {
    type = "recipe",
    name = "moondrop-seeds",
    category = "nursery",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "moondrop", amount = 5},
    },
    results = {
        {type = "item", name = "moondrop",       amount = 2,     ignored_by_productivity = 2, ignored_by_stats = 2},
        {type = "item", name = "moondrop",       amount_min = 1, amount_max = 3,              probability = 0.10,  ignored_by_productivity = 3, ignored_by_stats = 3},
        {type = "item", name = "moondrop-seeds", amount = 7},
        {type = "item", name = "moondrop-seeds", amount_min = 1, amount_max = 3,              probability = 0.25}
    },
    main_product = "moondrop-seeds",
}:add_unlock("moondrop")
