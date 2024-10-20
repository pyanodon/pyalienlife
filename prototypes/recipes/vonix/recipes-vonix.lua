--------------------------VONIX-----------------------


----first----
RECIPE {
    type = "recipe",
    name = "vonix",
    category = "creature-chamber",
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = "item",  name = "alien-sample-03",     amount = 2},
        {type = "item",  name = "cdna",                amount = 3},
        {type = "item",  name = "bio-sample",          amount = 5},
        {type = "item",  name = "vonix-codex",         amount = 2},
        {type = "item",  name = "arthurian-egg",       amount = 20},
        {type = "item",  name = "earth-wolf-sample",   amount = 1},
        {type = "item",  name = "earth-flower-sample", amount = 1},
        {type = "fluid", name = "fetal-serum",         amount = 50},
        {type = "fluid", name = "artificial-blood",    amount = 50},
    },
    results = {
        {type = "item", name = "vonix", amount = 1},
    },
}:add_unlock("vonix")

RECIPE {
    type = "recipe",
    name = "vonix-codex",
    category = "crafting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "glass",           amount = 2},
        {type = "item", name = "small-lamp",      amount = 2},
        {type = "item", name = "processing-unit", amount = 5},
    },
    results = {
        {type = "item", name = "vonix-codex", amount = 1},
    },
}:add_unlock("vonix")

---maturing---

-- RECIPE {
--     type = 'recipe',
--     name = 'vonix-mature-01',
--     category = 'creature-chamber',
--     enabled = false,
--     energy_required = 80,
--     ingredients = {
--         {type = 'item', name = 'vonix-cub', amount = 10},
--         {type = 'fluid', name = 'fetal-serum', amount = 100},
--     },
--     results = {
--         {type = 'item', name = 'vonix', amount = 10},
--     },
--     main_product = "vonix",
--     subgroup = 'py-alienlife-vonix',
--     order = 'a',
-- }:add_unlock("vonix"):add_ingredient({type = "item", name = "biopolymer", amount = 5})

-- RECIPE {
--     type = 'recipe',
--     name = 'vonix-mature-02',
--     category = 'creature-chamber',
--     enabled = false,
--     energy_required = 60,
--     ingredients = {
--         {type = 'item', name = 'vonix-cub', amount = 10},
--         {type = 'item', name = 'gh', amount = 2},
--         {type = 'item', name = 'resveratrol', amount = 3},
--         {type = 'fluid', name = 'fetal-serum', amount = 100},
--     },
--     results = {
--         {type = 'item', name = 'vonix', amount = 20},
--     },
--     --main_product = "caged-vonix",
--     subgroup = 'py-alienlife-vonix',
--     order = 'a',
-- }:add_unlock("vonix-mk02"):add_ingredient({type = "item", name = "biopolymer", amount = 5})
