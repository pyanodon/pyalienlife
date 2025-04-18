--------------------------NAVENS-----------------------


----first----
RECIPE {
    type = "recipe",
    name = "navens-sample",
    category = "nursery",
    enabled = false,
    energy_required = 200,
    ingredients = {
        {type = "item",  name = "alien-sample-02",     amount = 2},
        {type = "item",  name = "earth-shroom-sample", amount = 1},
        {type = "item",  name = "cdna",                amount = 3},
        {type = "item",  name = "bio-sample",          amount = 10},
        {type = "item",  name = "navens-codex",        amount = 1},
        {type = "item",  name = "navens-spore",        amount = 100},
        {type = "fluid", name = "water",               amount = 1000},
    },
    results = {
        {type = "item", name = "navens", amount = 2},
    },
}:add_unlock("navens")

RECIPE {
    type = "recipe",
    name = "navens-codex",
    category = "crafting",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "glass",            amount = 2},
        {type = "item", name = "small-lamp",       amount = 5},
        {type = "item", name = "advanced-circuit", amount = 50},
    },
    results = {
        {type = "item", name = "navens-codex", amount = 1},
    },
}:add_unlock("navens")

RECIPE {
    type = "recipe",
    name = "navens-spore",
    category = "spore",
    enabled = false,
    energy_required = 20,
    ingredients = {
    },
    results = {
        {type = "item", name = "navens-spore", amount = 1},
    },
}:add_unlock("navens"):add_unlock("microfilters")

-- RECIPE {
--     type = "recipe",
--     name = "navens-spore-2",
--     category = "spore",
--     enabled = false,
--     energy_required = 15,
--     ingredients = {
--     },
--     results = {
--         {type = "item", name = "navens-spore", amount = 1},
--     },
-- }:add_unlock("microfilters")

-- RECIPE {
--     type = "recipe",
--     name = "navens-spore-3",
--     category = "spore",
--     enabled = false,
--     energy_required = 10,
--     ingredients = {
--     },
--     results = {
--         {type = "item", name = "navens-spore", amount = 1},
--     },
-- }:add_unlock("microfilters-mk02")

---breeding---

-----SPORES----
