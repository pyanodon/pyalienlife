--------------------------RENNEA-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'rennea-sample',
    category = 'nursery',
    enabled = false,
    energy_required = 200,
    ingredients = {
        {type = 'item', name = 'alien-sample-03', amount = 10},
        {type = 'item', name = 'cdna', amount = 10},
        {type = 'item', name = 'fertilizer', amount = 30},
        {type = 'item', name = 'rennea-codex', amount = 1},
        {type = 'item', name = 'earth-sunflower-sample', amount = 1},
        {type = 'fluid', name = 'water', amount = 1000},
    },
    results = {
        {type = 'item', name = 'rennea', amount = 1},
    },
}:add_unlock("rennea")

RECIPE {
    type = 'recipe',
    name = 'rennea-codex',
    category = 'crafting',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'glass', amount = 2},
        {type = 'item', name = 'small-lamp', amount = 5},
        {type = 'item', name = 'advanced-circuit', amount = 30},
        {type = 'item', name = 'tinned-cable', amount = 20},
    },
    results = {
        {type = 'item', name = 'rennea-codex', amount = 1},
    },
}:add_unlock("rennea")

RECIPE {
    type = 'recipe',
    name = 'earth-sunflower-sample',
    category = 'data-array',
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = 'item', name = 'steel-chest', amount = 1},
        {type = 'item', name = 'chemical-science-pack', amount = 100},
        {type = 'item', name = 'rennea-codex', amount = 1},
    },
    results = {
        {type = 'item', name = 'earth-sunflower-sample', amount = 1},
    },
}:add_unlock("rennea")

---breeding---

RECIPE {
    type = "recipe",
    name = "rennea-0",
    category = "rennea",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item", name = "rennea-seeds", amount = 5},
        {type = "fluid", name = "water", amount = 300},
        {type = "item", name = "soil", amount = 35}
    },
    results = {
        {type = "item", name = "rennea", amount = 10}
    },
}:add_unlock("rennea")

RECIPE {
    type = "recipe",
    name = "rennea-1",
    category = "rennea",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "fluid", name = "water", amount = 200},
        {type = "item", name = "soil", amount = 20},
        {type = "item", name = "rennea-seeds", amount = 5},
        {type = "item", name = "coarse", amount = 10},
    },
    results = {
        {type = "item", name = "rennea", amount = 10}
    },
}:add_unlock("rennea")

RECIPE {
    type = "recipe",
    name = "rennea-2",
    category = "rennea",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "fluid", name = "water", amount = 200},
        {type = "item", name = "soil", amount = 20},
        {type = "item", name = "rennea-seeds", amount = 5},
        {type = "item", name = "coarse", amount = 10},
        {type = "item", name = "fertilizer", amount = 10},
    },
    results = {
        {type = "item", name = "rennea", amount = 15}
    },
}:add_unlock("rennea")

RECIPE {
    type = "recipe",
    name = "rennea-3",
    category = "rennea",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "fluid", name = "water", amount = 200},
        {type = "item", name = "rennea-seeds", amount = 5},
        {type = "item", name = "soil", amount = 20},
        {type = "item", name = "fertilizer", amount = 10},
        {type = "item", name = "coarse", amount = 10},
        {type = "item", name = "small-lamp", amount = 2},
    },
    results = {
        {type = "item", name = "rennea", amount = 20}
    },
}:add_unlock("rennea")

-----SEEDS----

RECIPE {
    type = "recipe",
    name = "rennea-seeds",
    category = "crafting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "rennea", amount = 5},
    },
    results = {
        {type = "item", name = "rennea-seeds", amount = 10}
    },
}:add_unlock("rennea")