--------------------------MOONDROP-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'moondrop-sample',
    category = 'nursery',
    enabled = false,
    energy_required = 200,
    ingredients = {
        --{type = 'item', name = 'alien-sample01', amount = 2},
        {type = 'item', name = 'cdna', amount = 3},
        {type = 'item', name = 'bio-sample', amount = 5},
        {type = 'item', name = 'moondrop-codex', amount = 1},
        {type = 'item', name = 'earth-flower-sample', amount = 2},
        {type = 'fluid', name = 'water', amount = 1000},
    },
    results = {
        {type = 'item', name = 'moondrop', amount = 4},
    },
}:add_unlock("moondrop")

RECIPE {
    type = 'recipe',
    name = 'moondrop-codex',
    category = 'crafting',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'glass', amount = 2},
        {type = 'item', name = 'small-lamp', amount = 5},
        {type = 'item', name = 'electronic-circuit', amount = 50},
        {type = 'item', name = 'tinned-cable', amount = 20},
    },
    results = {
        {type = 'item', name = 'moondrop-codex', amount = 1},
    },
}:add_unlock("moondrop")

--[[
RECIPE {
    type = 'recipe',
    name = 'earth-flower-sample',
    category = 'data-array',
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = 'item', name = 'earth-generic-sample', amount = 1},
        {type = 'item', name = 'automation-science-pack', amount = 100},
        {type = 'item', name = 'ralesia-codex', amount = 1},
    },
    results = {
        {type = 'item', name = 'earth-flower-sample', amount = 1},
    },
}:add_unlock("ralesia")
]]--

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
        {type = "item", name = "moondrop", amount = 2, catalyst_amount = 2},
        {type = "item", name = "moondrop", amount_min = 1, amount_max = 3, probability = 0.10, catalyst_amount = 3},
        {type = "item", name = "moondrop-seeds", amount= 7},
        {type = "item", name = "moondrop-seeds", amount_min = 1, amount_max = 3, probability = 0.25}
    },
    main_product = 'moondrop-seeds',
}:add_unlock("moondrop")
