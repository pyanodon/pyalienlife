--------------------------NAVENS-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'navens-sample',
    category = 'nursery',
    enabled = false,
    energy_required = 200,
    ingredients = {
        {type = 'item', name = 'alien-sample-02', amount = 2},
        {type = 'item', name = 'cdna', amount = 3},
        {type = 'item', name = 'navens-codex', amount = 1},
        {type = 'item', name = 'navens-spore', amount = 100},
        {type = 'fluid', name = 'water', amount = 1000},
    },
    results = {
        {type = 'item', name = 'navens', amount = 2},
    },
}:add_unlock("navens")

RECIPE {
    type = 'recipe',
    name = 'navens-codex',
    category = 'crafting',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'glass', amount = 2},
        {type = 'item', name = 'small-lamp', amount = 5},
        {type = 'item', name = 'advanced-circuit', amount = 50},
        {type = 'item', name = 'red-wire', amount = 20},
    },
    results = {
        {type = 'item', name = 'navens-codex', amount = 1},
    },
}:add_unlock("navens")

RECIPE {
    type = 'recipe',
    name = 'navens-spore',
    category = 'spore',
    enabled = false,
    energy_required = 15,
    ingredients = {
    },
    results = {
        {type = 'item', name = 'navens-spore', amount = 1, probability = 0.4},
    },
}:add_unlock("navens")

---breeding---

RECIPE {
    type = "recipe",
    name = "navens-0",
    category = "navens",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "item", name = "navens-spore", amount = 2},
        {type = "fluid", name = "water", amount = 300},
        {type = "item", name = "biomass", amount = 30},
        {type = "item", name = "manure", amount = 15},
    },
    results = {
        {type = "item", name = "navens", amount = 2}
    },
}:add_unlock("navens")

RECIPE {
    type = "recipe",
    name = "navens-1",
    category = "navens",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "item", name = "navens-spore", amount = 2},
        {type = "fluid", name = "water", amount = 300},
        {type = "item", name = "biomass", amount = 30},
        {type = "item", name = "manure", amount = 15},
        {type = "item", name = "fungal-substrate", amount = 7},
    },
    results = {
        {type = "item", name = "navens", amount = 5}
    },
}:add_unlock("navens")

RECIPE {
    type = "recipe",
    name = "navens-2",
    category = "navens",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "item", name = "navens-spore", amount = 2},
        {type = "fluid", name = "water", amount = 300},
        {type = "item", name = "biomass", amount = 30},
        {type = "item", name = "fungal-substrate", amount = 7},
        {type = "item", name = "guts", amount = 5},
    },
    results = {
        {type = "item", name = "navens", amount = 7}
    },
}:add_unlock("navens")

RECIPE {
    type = "recipe",
    name = "navens-3",
    category = "navens",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "item", name = "navens-spore", amount = 2},
        {type = "fluid", name = "water", amount = 300},
        {type = "item", name = "biomass", amount = 30},
        {type = "item", name = "fungal-substrate", amount = 7},
        {type = "item", name = "guts", amount = 5},
        {type = "fluid", name = "nitrogen", amount = 200},
    },
    results = {
        {type = "item", name = "navens", amount = 10}
    },
}:add_unlock("navens")



-----SPORES----

RECIPE {
    type = "recipe",
    name = "navens-spore",
    category = "spore",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "navens", amount = 2},
    },
    results = {
        {type = "item", name = "navens-spore", amount = 5}
    },
}:add_unlock("navens")