--------------------------PHAGNOT-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'phagnot',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = 'item', name = 'alien-sample-02', amount = 5},
        {type = 'item', name = 'cdna', amount = 5},
        {type = 'item', name = 'bio-sample', amount = 5},
        {type = 'item', name = 'phagnot-codex', amount = 2},
        {type = 'item', name = 'earth-giraffe-sample', amount = 1},
        {type = 'fluid', name = 'water', amount = 1000}, --add alien sample from pyALiens mod here.
    },
    results = {
        {type = 'item', name = 'phagnot', amount = 1},
    },
}:add_unlock("phagnot")

RECIPE {
    type = 'recipe',
    name = 'phagnot-codex',
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
        {type = 'item', name = 'phagnot-codex', amount = 1},
    },
}:add_unlock("phagnot")

RECIPE {
    type = 'recipe',
    name = 'earth-giraffe-sample',
    category = 'data-array',
    enabled = false,
    energy_required = 150,
    ingredients = {
        {type = 'item', name = 'steel-chest', amount = 1},
        {type = 'item', name = 'automation-science-pack', amount = 15},
        {type = 'item', name = 'phagnot-codex', amount = 1},
    },
    results = {
        {type = 'item', name = 'earth-giraffe-sample', amount = 1},
    },
}:add_unlock("phagnot")

----food----
RECIPE {
    type = 'recipe',
    name = 'phagnot-food-01',
    category = 'crafting-with-fluid',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'tin-plate', amount = 2},
        {type = 'item', name = 'fawogae', amount = 5},
        {type = 'item', name = 'ralesia-seeds', amount = 15},
        {type = 'item', name = 'tuuphra-seeds', amount = 15},
        {type = 'item', name = 'ash', amount = 10},
        {type = 'fluid', name = 'steam', amount = 100},
    },
    results = {
        {type = 'item', name = 'phagnot-food-01', amount = 1},
    },
}:add_unlock("food-mk01"):add_ingredient({type = "item", name = "raw-fiber", amount = 10})

RECIPE {
    type = 'recipe',
    name = 'phagnot-food-02',
    category = 'crafting-with-fluid',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'tin-plate', amount = 2},
        {type = 'item', name = 'fawogae', amount = 5},
        {type = 'item', name = 'ralesia-seeds', amount = 15},
        {type = 'item', name = 'tuuphra-seeds', amount = 15},
        {type = 'item', name = 'ash', amount = 10},
        {type = 'item', name = 'moss', amount = 15},
        {type = 'item', name = 'seaweed', amount = 10},
        {type = 'fluid', name = 'steam', amount = 100},
    },
    results = {
        {type = 'item', name = 'phagnot-food-02', amount = 1},
    },
}:add_unlock("food-mk02"):add_ingredient({type = "item", name = "raw-fiber", amount = 10})

---maturing---

RECIPE {
    type = 'recipe',
    name = 'phagnot-mature-01',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = 'item', name = 'phagnot-cub', amount = 1},
        {type = 'item', name = 'cage', amount = 1},
        {type = 'item', name = 'phagnot-codex', amount = 1},
        {type = 'item', name = 'earth-giraffe-sample', amount = 1},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'caged-phagnot', amount = 1},
    },
    main_product = "caged-phagnot",
    subgroup = 'py-alienlife-phagnot',
    order = 'a',
}:add_unlock("assisted-embryology")

RECIPE {
    type = 'recipe',
    name = 'phagnot-mature-02',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 35,
    ingredients = {
        {type = 'item', name = 'phagnot-cub', amount = 1},
        {type = 'item', name = 'gh', amount = 1},
        {type = 'item', name = 'cage', amount = 1},
        {type = 'item', name = 'phagnot-codex', amount = 1},
        {type = 'item', name = 'earth-giraffe-sample', amount = 1},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'caged-phagnot', amount = 1},
    },
    main_product = "caged-phagnot",
    subgroup = 'py-alienlife-phagnot',
    order = 'a',
}:add_unlock("growth-hormone")

----adverse products----




----PROCESSING----



---caged---
RECIPE {
    type = 'recipe',
    name = 'caged-phagnot',
    category = 'crafting',
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = 'item', name = 'phagnot', amount = 1},
        {type = 'item', name = 'cage', amount = 1},
    },
    results = {
        {type = 'item', name = 'caged-phagnot', amount = 1},
    },
}:add_unlock("phagnot")

RECIPE {
    type = 'recipe',
    name = 'uncaged-phagnot',
    category = 'crafting',
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = 'item', name = 'caged-phagnot', amount = 1},
    },
    results = {
        {type = 'item', name = 'phagnot', amount = 1},
        {type = 'item', name = 'cage', amount = 1},
    },
    main_product = "phagnot",
}:add_unlock("phagnot")