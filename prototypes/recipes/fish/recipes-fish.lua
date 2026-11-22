--------------------------FISH-----------------------
----first----

----food----

RECIPE {
    type = "recipe",
    name = "fish-food-01",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "plastic-bar",  amount = 6},
        {type = "item",  name = "fawogae",      amount = 10},
        {type = "item",  name = "native-flora", amount = 10},
        {type = "item",  name = "mukmoux-fat",  amount = 4},
        {type = "item",  name = "seaweed",      amount = 5},
        {type = "item",  name = "skin",         amount = 5},
        {type = "item",  name = "fish",         amount = 2},
        {type = "item",  name = "bones",        amount = 5},
        {type = "fluid", name = "steam",        amount = 100}
    },
    results = {
        {type = "item", name = "fish-food-01", amount = 3},
    },
}:add_unlock("fish-mk02")

RECIPE {
    type = "recipe",
    name = "fish-food-02",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "plastic-bar",  amount = 6},
        {type = "item",  name = "fawogae",      amount = 10},
        {type = "item",  name = "mukmoux-fat",  amount = 4},
        {type = "item",  name = "yotoi-fruit",  amount = 3},
        {type = "item",  name = "native-flora", amount = 10},
        {type = "item",  name = "ash",          amount = 10},
        {type = "item",  name = "seaweed",      amount = 5},
        {type = "item",  name = "skin",         amount = 5},
        {type = "item",  name = "fish",         amount = 2},
        {type = "item",  name = "bones",        amount = 5},
        {type = "item",  name = "starch",       amount = 4},
        {type = "fluid", name = "steam",        amount = 100},
        {type = "fluid", name = "blood",        amount = 50},
    },
    results = {
        {type = "item", name = "fish-food-02", amount = 5},
    },
}:add_unlock("fish-mk03")

---breeding---


---pup maker---



---maturing---
--[[
RECIPE {
    type = 'recipe',
    name = 'fish-mature-01',
    category = 'incubator',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'fish-egg', amount = 5},
        {type = 'item', name = 'filtration-media', amount = 1},
        {type = 'item', name = 'resveratrol', amount = 1},
        {type = 'item', name = 'moss-gen', amount = 1},
        {type = 'fluid', name = 'fetal-serum', amount = 20},
    },
    results = {
        {type = 'item', name = 'fish', amount = 10},
    },
    main_product = "fish",
    subgroup = 'py-alienlife-fish',
    order = 'a',
}:add_unlock("assisted-embryology")
]] --
