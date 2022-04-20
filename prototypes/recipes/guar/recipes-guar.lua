--------------------------GUAR-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'guar-sample',
    category = 'nursery',
    enabled = false,
    energy_required = 200,
    ingredients = {
        {type = 'item', name = 'bio-sample', amount = 5},
        {type = 'item', name = 'cdna', amount = 3},
        {type = 'item', name = 'ralesia-codex', amount = 1},
        {type = 'item', name = 'tuuphra-codex', amount = 1},
        {type = 'item', name = 'earth-flower-sample', amount = 1},
        {type = 'item', name = 'earth-potato-sample', amount = 1},
        {type = 'item', name = 'planter-box', amount = 1},
        {type = 'fluid', name = 'water', amount = 100},
    },
    results = {
        {type = 'item', name = 'guar', amount = 1},
    },
}:add_unlock("guar")

---breeding---


-----SEEDS----

RECIPE {
    type = "recipe",
    name = "guar-seeds",
    category = "nursery",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "guar", amount = 2},
    },
    results = {
        {type = "item", name = "guar-seeds", amount = 4}
    },
}:add_unlock("guar")
