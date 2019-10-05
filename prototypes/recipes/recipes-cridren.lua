--------------------------CRIDREN-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'cridren-sample',
    category = 'nursery',
    enabled = false,
    energy_required = 200,
    ingredients = {
        {type = 'item', name = 'alien-sample-02', amount = 2},
        {type = 'item', name = 'cdna', amount = 3},
        {type = 'item', name = 'cridren-codex', amount = 1},
        {type = 'item', name = 'earth-venus-fly-sample', amount = 1},
        {type = 'fluid', name = 'water', amount = 1000},
    },
    results = {
        {type = 'item', name = 'cridren', amount = 2},
    },
}:add_unlock("cridren")

RECIPE {
    type = 'recipe',
    name = 'cridren-codex',
    category = 'crafting',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'glass', amount = 2},
        {type = 'item', name = 'small-lamp', amount = 5},
        {type = 'item', name = 'advanced-circuit', amount = 50},
        {type = 'item', name = 'green-wire', amount = 20},
    },
    results = {
        {type = 'item', name = 'cridren-codex', amount = 1},
    },
}:add_unlock("cridren")

RECIPE {
    type = 'recipe',
    name = 'earth-venus-fly-sample',
    category = 'data-array',
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = 'item', name = 'steel-chest', amount = 1},
        {type = 'item', name = 'automation-science-pack', amount = 100},
        {type = 'item', name = 'cridren-codex', amount = 2},
    },
    results = {
        {type = 'item', name = 'earth-venus-fly-sample', amount = 1},
    },
}:add_unlock("cridren")

-----SEEDS----

RECIPE {
    type = "recipe",
    name = "cridren-seeds",
    category = "nursery",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "cridren", amount = 1},
    },
    results = {
        {type = "item", name = "cridren-seeds", amount = 2}
    },
}:add_unlock("cridren")
