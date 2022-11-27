--------------------------MUKMOUX-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'mukmoux',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 350,
    ingredients = {
        {type = 'item', name = 'alien-sample-02', amount = 2},
        {type = 'item', name = 'cdna', amount = 5},
        {type = 'item', name = 'bio-sample', amount = 5},
        {type = 'item', name = 'mukmoux-codex', amount = 1},
        {type = 'item', name = 'earth-cow-sample', amount = 1}, --add alien sample from pyALiens mod here.
        {type = 'fluid', name = 'fetal-serum', amount = 100},
        {type = 'fluid', name = 'artificial-blood', amount = 100},
    },
    results = {
        {type = 'item', name = 'mukmoux', amount = 1},
    },
}:add_unlock("mukmoux")

RECIPE {
    type = 'recipe',
    name = 'mukmoux-codex',
    category = 'crafting',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'glass', amount = 2},
        {type = 'item', name = 'small-lamp', amount = 2},
        {type = 'item', name = 'electronic-circuit', amount = 10},
        {type = 'item', name = 'tinned-cable', amount = 10},
    },
    results = {
        {type = 'item', name = 'mukmoux-codex', amount = 1},
    },
}:add_unlock("mukmoux")

RECIPE {
    type = 'recipe',
    name = 'earth-cow-sample',
    category = 'data-array',
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = 'item', name = 'earth-generic-sample', amount = 1},
        {type = 'item', name = 'logistic-science-pack', amount = 5},
        {type = 'item', name = 'korlex-codex', amount = 1},
    },
    results = {
        {type = 'item', name = 'earth-cow-sample', amount = 1},
    },
}:add_unlock("korlex")

----food----
RECIPE {
    type = 'recipe',
    name = 'mukmoux-food-01',
    category = 'crafting-with-fluid',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'tin-plate', amount = 2},
        {type = 'item', name = 'moss', amount = 5},
        {type = 'item', name = 'tuuphra', amount = 5},
        {type = 'item', name = 'native-flora', amount = 10},
        {type = 'item', name = "seaweed", amount = 5},
        {type = 'item', name = 'salt', amount = 10},
        {type = 'item', name = 'saps', amount = 5},
        {type = 'fluid', name = 'steam', amount = 100}
    },
    results = {
        {type = 'item', name = 'mukmoux-food-01', amount = 3},
    },
}:add_unlock("mukmoux")

RECIPE {
    type = 'recipe',
    name = 'mukmoux-food-02',
    category = 'crafting-with-fluid',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'tin-plate', amount = 2},
        {type = 'item', name = 'moss', amount = 5},
        {type = 'item', name = 'native-flora', amount = 20},
        {type = 'item', name = "seaweed", amount = 5},
        {type = 'item', name = 'rennea', amount = 8},
        {type = 'item', name = 'salt', amount = 10},
        {type = 'item', name = 'saps', amount = 5},
        {type = 'item', name = 'tuuphra', amount = 10},
        {type = 'item', name = 'starch', amount = 4},
        {type = 'fluid', name = 'steam', amount = 100}
    },
    results = {
        {type = 'item', name = 'mukmoux-food-02', amount = 5},
    },
}:add_unlock("mukmoux-mk03")

---breeding---



---calf maker---


---maturing---
--[[
RECIPE {
    type = 'recipe',
    name = 'mukmoux-mature-01',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = 'item', name = 'mukmoux-calf', amount = 10},
        {type = 'item', name = 'cage', amount = 10},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'caged-mukmoux', amount = 10},
    },
    main_product = "caged-mukmoux",
    subgroup = 'py-alienlife-mukmoux',
    order = 'a',
}:add_unlock("assisted-embryology")

RECIPE {
    type = 'recipe',
    name = 'mukmoux-mature-02',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'mukmoux-calf', amount = 10},
        {type = 'item', name = 'gh', amount = 1},
        {type = 'item', name = 'cage', amount = 20},
        {type = 'item', name = 'resveratrol', amount = 3},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'caged-mukmoux', amount = 20},
    },
    main_product = "caged-mukmoux",
    subgroup = 'py-alienlife-mukmoux',
    order = 'a',
}:add_unlock("growth-hormone")
]]--
----adverse products----


----PROCESSING----



---caged---
RECIPE {
    type = 'recipe',
    name = 'caged-mukmoux',
    category = 'crafting',
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = 'item', name = 'mukmoux', amount = 1},
        {type = 'item', name = 'cage', amount = 1},
    },
    results = {
        {type = 'item', name = 'caged-mukmoux', amount = 1},
    },
}:add_unlock("mukmoux")

RECIPE {
    type = 'recipe',
    name = 'uncaged-mukmoux',
    category = 'crafting',
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = 'item', name = 'caged-mukmoux', amount = 1},
    },
    results = {
        {type = 'item', name = 'mukmoux', amount = 1},
        {type = 'item', name = 'cage', amount = 1},
    },
    main_product = "mukmoux",
}:add_unlock("mukmoux")
