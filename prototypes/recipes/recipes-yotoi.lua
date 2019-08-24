--------------------------YOTOIS-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'yotoi-sample',
    category = 'nursery',
    enabled = false,
    energy_required = 250,
    ingredients = {
        {type = 'item', name = 'alien-sample-02', amount = 2},
        {type = 'item', name = 'cdna', amount = 3},
        {type = 'item', name = 'wood-seedling', amount = 5},
        {type = 'item', name = 'yotoi-codex', amount = 1},
        {type = 'item', name = 'earth-tropical-tree-sample', amount = 1},
        {type = 'fluid', name = 'water', amount = 1000},
    },
    results = {
        {type = 'item', name = 'yotoi', amount = 2},
    },
}:add_unlock("yotoi")

RECIPE {
    type = 'recipe',
    name = 'yotoi-codex',
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
        {type = 'item', name = 'yotoi-codex', amount = 1},
    },
}:add_unlock("yotoi")

RECIPE {
    type = 'recipe',
    name = 'earth-tropical-tree-sample',
    category = 'data-array',
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = 'item', name = 'steel-chest', amount = 1},
        {type = 'item', name = 'logistic-science-pack', amount = 100},
        {type = 'item', name = 'yotoi-codex', amount = 1},
    },
    results = {
        {type = 'item', name = 'earth-tropical-tree-sample', amount = 1},
    },
}:add_unlock("yotoi")

---breeding---

RECIPE {
    type = "recipe",
    name = "yotoi-0",
    category = "yotoi",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "item", name = "yotoi-seeds", amount = 5},
        {type = "fluid", name = "water", amount = 300},
        {type = "item", name = "sand", amount = 35},
        {type = "item", name = "limestone", amount = 5},
        {type = "item", name = "fertilizer", amount = 8},
    },
    results = {
        {type = "item", name = "yotoi", amount = 2}
    },
}:add_unlock("yotoi")

RECIPE {
    type = "recipe",
    name = "yotoi-1",
    category = "yotoi",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "item", name = "yotoi-seeds", amount = 5},
        {type = "fluid", name = "water", amount = 300},
        {type = "fluid", name = "carbon-dioxide", amount = 150},
        {type = "item", name = "sand", amount = 35},
        {type = "item", name = "limestone", amount = 5},
        {type = "item", name = "fertilizer", amount = 8},
    },
    results = {
        {type = "item", name = "yotoi", amount = 3}
    },
}:add_unlock("yotoi")

---fruits---

RECIPE {
    type = "recipe",
    name = "yotoi-fruit-0",
    category = "yotoi",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "fluid", name = "water", amount = 300},
        {type = "item", name = "soil", amount = 20},
        {type = "item", name = "limestone", amount = 5},
        {type = "item", name = "manure", amount = 8},
    },
    results = {
        {type = "item", name = "yotoi-fruit", amount = 4}
    },
}:add_unlock("yotoi")

RECIPE {
    type = "recipe",
    name = "yotoi-fruit-1",
    category = "yotoi",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "fluid", name = "water", amount = 300},
        {type = "fluid", name = "carbon-dioxide", amount = 150},
        {type = "item", name = "soil", amount = 20},
        {type = "item", name = "limestone", amount = 5},
        {type = "item", name = "fertilizer", amount = 8},
    },
    results = {
        {type = "item", name = "yotoi-fruit", amount = 6}
    },
}:add_unlock("yotoi")

RECIPE {
    type = "recipe",
    name = "yotoi-fruit-2",
    category = "yotoi",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "fluid", name = "water", amount = 300},
        {type = "fluid", name = "carbon-dioxide", amount = 150},
        {type = "item", name = "sand", amount = 35},
        {type = "item", name = "ash", amount = 20},
        {type = "item", name = "limestone", amount = 5},
        {type = "item", name = "fertilizer", amount = 8},
    },
    results = {
        {type = "item", name = "yotoi-fruit", amount = 8}
    },
}:add_unlock("yotoi")


-----SEEDS----

RECIPE {
    type = "recipe",
    name = "yotoi-seeds",
    category = "crafting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "yotoi-fruit", amount = 2},
    },
    results = {
        {type = "item", name = "yotoi-seeds", amount = 5}
    },
}:add_unlock("yotoi")