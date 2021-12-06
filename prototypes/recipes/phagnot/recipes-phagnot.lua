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
        {type = 'item', name = 'plastic-bar', amount = 2},
        {type = 'item', name = 'bhoddos', amount = 1},
        {type = 'item', name = 'fawogae', amount = 5},
        {type = 'item', name = 'native-flora', amount = 10},
        {type = 'item', name = 'guar', amount = 5},
        {type = 'item', name = 'ralesia-seeds', amount = 15},
        {type = 'item', name = 'tuuphra-seeds', amount = 15},
        {type = 'item', name = 'ash', amount = 10},
        {type = 'item', name = 'starch', amount = 4},
        {type = 'fluid', name = 'steam', amount = 100, minimum_temperature = 165}
    },
    results = {
        {type = 'item', name = 'phagnot-food-01', amount = 6},
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
        {type = 'item', name = 'plastic-bar', amount = 2},
        {type = 'item', name = 'bhoddos', amount = 1},
        {type = 'item', name = 'yotoi-fruit', amount = 5},
        {type = 'item', name = 'fawogae', amount = 5},
        {type = 'item', name = 'guar', amount = 5},
        {type = 'fluid', name = 'arqad-honey', amount = 100},
        {type = 'item', name = 'native-flora', amount = 15},
        {type = 'item', name = 'tuuphra-seeds', amount = 15},
        {type = 'item', name = 'ash', amount = 10},
        {type = 'item', name = 'moss', amount = 15},
        {type = 'item', name = "seaweed", amount = 10},
        {type = 'fluid', name = 'steam', amount = 100, minimum_temperature = 165}
    },
    results = {
        {type = 'item', name = 'phagnot-food-02', amount = 6},
    },
}:add_unlock("food-mk02"):add_ingredient({type = "item", name = "raw-fiber", amount = 10})

---maturing---

RECIPE {
    type = 'recipe',
    name = 'phagnot-mature-01',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'phagnot-cub', amount = 10},
        {type = 'item', name = 'cage', amount = 10},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'caged-phagnot', amount = 10},
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
    energy_required = 80,
    ingredients = {
        {type = 'item', name = 'phagnot-cub', amount = 10},
        {type = 'item', name = 'gh', amount = 1},
        {type = 'item', name = 'cage', amount = 20},
        {type = 'item', name = 'resveratrol', amount = 3},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'caged-phagnot', amount = 20},
    },
    main_product = "caged-phagnot",
    subgroup = 'py-alienlife-phagnot',
    order = 'a',
}:add_unlock("growth-hormone")

---BASIC-MATURING---

RECIPE {
    type = 'recipe',
    name = 'phagnot-mature-basic-01',
    category = 'phagnot',
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = 'item', name = 'phagnot-cub', amount = 1},
        {type = 'item', name = 'barrel-milk', amount = 1},
        {type = 'item', name = 'dried-grods', amount = 3},
        {type = 'item', name = 'fawogae', amount = 5},
    },
    results = {
        {type = 'item', name = 'phagnot', amount = 1, probability = 0.25},
        {type = 'item', name = 'empty-barrel-milk', amount = 1}
    },
    main_product = "phagnot",
    subgroup = 'py-alienlife-phagnot',
    order = 'a',
}:add_unlock("selective-breeding")


RECIPE {
    type = 'recipe',
    name = 'phagnot-mature-basic-mk02',
    category = 'phagnot',
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = 'item', name = 'phagnot-cub-mk02', amount = 1},
        {type = 'item', name = 'barrel-milk', amount = 1},
        {type = 'item', name = 'dried-grods', amount = 3},
        {type = 'item', name = 'fawogae', amount = 5},
    },
    results = {
        {type = 'item', name = 'phagnot-mk02', amount = 1},
        {type = 'item', name = 'empty-barrel-milk', amount = 1}
    },
    main_product = "phagnot-mk02",
    subgroup = 'py-alienlife-phagnot',
    order = 'a',
}:add_unlock("selective-breeding")


RECIPE {
    type = 'recipe',
    name = 'phagnot-mature-basic-mk03',
    category = 'phagnot',
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = 'item', name = 'phagnot-cub-mk03', amount = 1},
        {type = 'item', name = 'barrel-milk', amount = 1},
        {type = 'item', name = 'dried-grods', amount = 3},
        {type = 'item', name = 'fawogae', amount = 5},
    },
    results = {
        {type = 'item', name = 'phagnot-mk03', amount = 1},
        {type = 'item', name = 'empty-barrel-milk', amount = 1}
    },
    main_product = "phagnot-mk03",
    subgroup = 'py-alienlife-phagnot',
    order = 'a',
}:add_unlock("artificial-breeding")


RECIPE {
    type = 'recipe',
    name = 'phagnot-mature-basic-mk04',
    category = 'phagnot',
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = 'item', name = 'phagnot-cub-mk04', amount = 1},
        {type = 'item', name = 'barrel-milk', amount = 1},
        {type = 'item', name = 'dried-grods', amount = 3},
        {type = 'item', name = 'fawogae', amount = 5},
    },
    results = {
        {type = 'item', name = 'phagnot-mk04', amount = 1},
        {type = 'item', name = 'empty-barrel-milk', amount = 1}
    },
    main_product = "phagnot-mk04",
    subgroup = 'py-alienlife-phagnot',
    order = 'a',
}:add_unlock("biased-mutation")

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

---UPGRADES---

---STARTER---

RECIPE {
    type = 'recipe',
    name = 'phagnot-mk02',
    category = 'phagnot',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'phagnot', amount = 2},
        {type = 'item', name = 'phagnot-food-02', amount = 2},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'bhoddos', amount = 6},
        {type = 'item', name = 'water-barrel', amount = 5},
        },
    results = {
        {type = 'item', name = 'phagnot-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'empty-barrel', amount = 5},
        {type = 'item', name = 'phagnot', amount = 1, probability = 0.5},
    },
    --main_product = "phagnot-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-phagnot',
    order = 'za'
}:add_unlock("selective-breeding")

RECIPE {
    type = 'recipe',
    name = 'phagnot-mk03',
    category = 'phagnot',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'phagnot-mk02', amount = 2},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'phagnot-food-02', amount = 3},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'bhoddos', amount = 6},
        {type = 'item', name = 'water-barrel', amount = 5},
        },
    results = {
        {type = 'item', name = 'phagnot-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'empty-barrel', amount = 5},
        {type = 'item', name = 'phagnot', amount = 1, probability = 0.6},
    },
    --main_product = "phagnot-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-phagnot',
    order = 'zb'
}:add_unlock("artificial-breeding")

RECIPE {
    type = 'recipe',
    name = 'phagnot-mk04',
    category = 'phagnot',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'phagnot-mk03', amount = 2},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'phagnot-food-02', amount = 3},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'bhoddos', amount = 6},
        {type = 'item', name = 'water-barrel', amount = 5},
        },
    results = {
        {type = 'item', name = 'phagnot-mk04', amount = 1, probability = 0.003},
        {type = 'item', name = 'empty-barrel', amount = 5},
        {type = 'item', name = 'phagnot', amount = 1, probability = 0.7},
    },
    --main_product = "phagnot-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-phagnot',
    order = 'zc'
}:add_unlock("biased-mutation")

---Duplicators---

RECIPE {
    type = 'recipe',
    name = 'phagnot-mk02-breeder',
    category = 'phagnot',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'phagnot-mk02', amount = 2},
        {type = 'item', name = 'phagnot-food-01', amount = 3},
        {type = 'item', name = 'bedding', amount = 1},
        {type = 'item', name = 'bhoddos', amount = 6},
        {type = 'item', name = 'water-barrel', amount = 5},
        },
    results = {
        {type = 'item', name = 'phagnot-cub-mk02', amount = 1},
        {type = 'item', name = 'phagnot-cub-mk02', amount = 1, probability = 0.5},
        {type = 'item', name = 'empty-barrel', amount = 5},
        {type = 'item', name = 'phagnot-cub', amount = 1, probability = 0.5},
        {type = 'item', name = 'phagnot-mk02', amount_min = 0, amount_max = 2}
    },
    main_product = "phagnot-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-phagnot',
    order = 'za'
}:add_unlock("selective-breeding")

RECIPE {
    type = 'recipe',
    name = 'phagnot-mk03-breeder',
    category = 'phagnot',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'phagnot-mk03', amount = 2},
        {type = 'item', name = 'phagnot-food-02', amount = 2},
        {type = 'item', name = 'bedding', amount = 2},
        {type = 'item', name = 'tuuphra', amount = 6},
        {type = 'item', name = 'water-barrel', amount = 5},
        },
    results = {
        {type = 'item', name = 'phagnot-mk03', amount_min = 0, amount_max = 2},
        {type = 'item', name = 'phagnot-cub-mk03', amount = 1},
        {type = 'item', name = 'phagnot-cub-mk03', amount = 1, probability = 0.5},
        {type = 'item', name = 'phagnot-cub-mk02', amount = 1, probability = 0.25},
        {type = 'item', name = 'empty-barrel', amount = 5},
        {type = 'item', name = 'phagnot-cub', amount = 1, probability = 0.25},
    },
    main_product = "phagnot-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-phagnot',
    order = 'zb'
}:add_unlock("artificial-breeding")

RECIPE {
    type = 'recipe',
    name = 'phagnot-mk04-breeder',
    category = 'phagnot',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'phagnot-mk04', amount = 2},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'phagnot-food-02', amount = 3},
        {type = 'item', name = 'bedding', amount = 3},
        {type = 'item', name = 'bhoddos', amount = 6},
        {type = 'item', name = 'water-barrel', amount = 5},
        },
    results = {
        {type = 'item', name = 'phagnot-mk04', amount_min = 0, amount_max = 2},
        {type = 'item', name = 'phagnot-cub-mk04', amount = 1},
        {type = 'item', name = 'phagnot-cub-mk04', amount = 1, probability = 0.5},
        {type = 'item', name = 'phagnot-cub-mk03', amount = 1, probability = 0.4},
        {type = 'item', name = 'phagnot-cub-mk03', amount = 1, probability = 0.3},
        {type = 'item', name = 'empty-barrel', amount = 5},
        {type = 'item', name = 'phagnot-cub', amount = 1, probability = 0.25},
    },
    main_product = "phagnot-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-phagnot',
    order = 'zc'
}:add_unlock("biased-mutation")
