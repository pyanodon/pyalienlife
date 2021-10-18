--------------------------COTTONGUT-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'cottongut',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = 'item', name = 'earth-generic-sample', amount = 5},
        {type = 'item', name = 'earth-mouse-sample', amount = 1},
        {type = 'item', name = 'bio-sample', amount = 5},
        {type = 'item', name = 'cdna', amount = 3},
        {type = 'item', name = 'cottongut-codex', amount = 1},
        {type = 'fluid', name = 'water', amount = 1000}, --add alien sample from pyALiens mod here.
    },
    results = {
        {type = 'item', name = 'cottongut-mk01', amount = 1},
    },
}:add_unlock("cottongut-mk01")

RECIPE {
    type = 'recipe',
    name = 'cottongut-codex',
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
        {type = 'item', name = 'cottongut-codex', amount = 1},
    },
}:add_unlock("cottongut-mk01")

RECIPE {
    type = 'recipe',
    name = 'earth-mouse-sample',
    category = 'data-array',
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = 'item', name = 'steel-chest', amount = 1},
        {type = 'item', name = 'automation-science-pack', amount = 100},
        {type = 'item', name = 'cottongut-codex', amount = 1},
    },
    results = {
        {type = 'item', name = 'earth-mouse-sample', amount = 1},
    },
}:add_unlock("cottongut-mk01")

----food----
RECIPE {
    type = 'recipe',
    name = 'cottongut-food-01',
    category = 'crafting-with-fluid',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'tin-plate', amount = 2},
        {type = 'item', name = 'ralesia-seeds', amount = 2},
        {type = 'item', name = 'seaweed', amount = 5},
        {type = 'item', name = 'wood-seeds', amount = 5},
        {type = 'item', name = 'starch', amount = 4},
        {type = 'fluid', name = 'steam', amount = 100, minimum_temperature = 165}
    },
    results = {
        {type = 'item', name = 'cottongut-food-01', amount = 4},
    },
}:add_unlock("food-mk01")

RECIPE {
    type = 'recipe',
    name = 'cottongut-food-02',
    category = 'crafting-with-fluid',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'tin-plate', amount = 2},
        {type = 'item', name = 'ralesia-seeds', amount = 5},
        {type = 'item', name = 'native-flora', amount = 15},
        {type = 'item', name = 'rennea-seeds', amount = 10},
        {type = 'item', name = 'seaweed', amount = 10},
        {type = 'item', name = 'wood-seeds', amount = 15},
        {type = 'item', name = 'ash', amount = 10},
        {type = 'item', name = 'moondrop', amount = 10},
        {type = 'fluid', name = 'steam', amount = 100, minimum_temperature = 165}
    },
    results = {
        {type = 'item', name = 'cottongut-food-02', amount = 6},
    },
}:add_unlock("food-mk02")

---breeding---

---BASIC-MATURING---

RECIPE {
    type = 'recipe',
    name = 'cottongut-pup-mk01-raising',
    category = 'cottongut',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'cottongut-mk01', amount = 2},
        {type = 'item', name = 'bedding', amount = 1},
        {type = 'item', name = 'seaweed', amount = 10},
        {type = 'item', name = 'sea-sponge-sprouts', amount = 5},
        {type = 'item', name = 'cottongut-food-01', amount = 1},
        },
    results = {
        {type = 'item', name = 'cottongut-mk01', amount = 1},
        {type = 'item', name = 'cottongut-mk01', amount = 1, probability = 0.5},
        {type = 'item', name = 'cottongut-pup', amount = 1, probability = 0.5},
        {type = 'item', name = 'cottongut-pup-mk01', amount_min = 3, amount_max = 8, probability = 0.8},
    },
    main_product = "cottongut-pup-mk01",
    --icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-cottongut',
    order = 'za'
}:add_unlock("cottongut-mk01")


RECIPE {
    type = 'recipe',
    name = 'cottongut-mature-basic-01',
    category = 'cottongut',
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = 'item', name = 'cottongut-pup-mk01', amount = 1},
        {type = 'item', name = 'moondrop', amount = 3},
        {type = 'item', name = 'wood', amount = 1},
        {type = 'item', name = 'cottongut-food-01', amount = 1},
    },
    results = {
        {type = 'item', name = 'cottongut-mk01', amount = 1},
    },
    main_product = "cottongut-mk01",
    subgroup = 'py-alienlife-cottongut',
    order = 'a',
}:add_unlock("cottongut-mk01")

--Secondary Upgrade Recipes--
--SUR--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'cottongut-pup-mk02-raising',
    category = 'cottongut',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'cottongut-mk02', amount = 2},
        {type = 'item', name = 'bedding', amount = 1},
        {type = 'item', name = 'cocoon', amount = 1},
        {type = 'item', name = 'tuuphra-seeds', amount = 5},
        {type = 'item', name = 'cottongut-food-02', amount = 1},
        },
    results = {
        {type = 'item', name = 'cottongut-mk02', amount = 1},
        {type = 'item', name = 'cottongut-mk02', amount = 1, probability = 0.5},
        {type = 'item', name = 'cottongut-pup-mk02', amount_min = 3, amount_max = 8, probability = 0.7},
    },
    main_product = "cottongut-pup-mk02",
    --icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-cottongut',
    order = 'za'
}:add_unlock("cottongut-mk02")

RECIPE {
    type = 'recipe',
    name = 'cottongut-mature-basic-mk02',
    category = 'cottongut',
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = 'item', name = 'cottongut-pup-mk02', amount = 3},
        {type = 'item', name = 'dried-grods', amount = 3},
        {type = 'item', name = 'rennea', amount = 2},
        {type = 'item', name = "cadaveric-arum", amount = 1},
        {type = 'item', name = 'cottongut-food-02', amount = 1},
    },
    results = {
        {type = 'item', name = 'cottongut-mk02', amount = 2},
    },
    main_product = "cottongut-mk02",
    subgroup = 'py-alienlife-cottongut',
    order = 'a',
}:add_unlock("cottongut-mk02")

RECIPE {
    type = 'recipe',
    name = 'cottongut-pup-mk03-raising',
    category = 'cottongut',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'cottongut-mk03', amount = 2},
        {type = 'item', name = 'bedding', amount = 1},
        {type = 'item', name = 'dried-meat', amount = 3},
        {type = 'item', name = 'tuuphra-seeds', amount = 5},
        {type = 'item', name = 'cottongut-food-02', amount = 2},
        },
    results = {
        {type = 'item', name = 'cottongut-mk03', amount = 1},
        {type = 'item', name = 'cottongut-mk03', amount = 1, probability = 0.5},
        {type = 'item', name = 'cottongut-pup-mk03', amount_min = 3, amount_max = 8, probability = 0.7},
    },
    main_product = "cottongut-pup-mk03",
    --icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-cottongut',
    order = 'za'
}:add_unlock("cottongut-mk03")

RECIPE {
    type = 'recipe',
    name = 'cottongut-mature-basic-mk03',
    category = 'cottongut',
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = 'item', name = 'cottongut-pup-mk03', amount = 5},
        {type = 'item', name = 'dried-grods', amount = 3},
        {type = 'item', name = 'navens', amount = 3},
        {type = 'item', name = 'sugar', amount = 2},
        {type = 'item', name = 'cottongut-food-02', amount = 2},
    },
    results = {
        {type = 'item', name = 'cottongut-mk03', amount = 4},
    },
    main_product = "cottongut-mk03",
    subgroup = 'py-alienlife-cottongut',
    order = 'a',
}:add_unlock("cottongut-mk03")

RECIPE {
    type = 'recipe',
    name = 'cottongut-pup-mk04-raising',
    category = 'cottongut',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'cottongut-mk04', amount = 2},
        {type = 'item', name = 'bedding', amount = 1},
        {type = 'item', name = 'dhilmos-egg', amount = 2},
        {type = 'item', name = 'moondrop', amount = 5},
        {type = 'item', name = 'cottongut-food-02', amount = 3},
        },
    results = {
        {type = 'item', name = 'cottongut-mk04', amount = 1},
        {type = 'item', name = 'cottongut-mk04', amount = 1, probability = 0.5},
        {type = 'item', name = 'cottongut-pup-mk04', amount_min = 3, amount_max = 8, probability = 0.7},
    },
    main_product = "cottongut-pup-mk04",
    --icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-cottongut',
    order = 'za'
}:add_unlock("cottongut-mk04")

RECIPE {
    type = 'recipe',
    name = 'cottongut-mature-basic-mk04',
    category = 'cottongut',
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = 'item', name = 'cottongut-pup-mk04', amount = 9},
        {type = 'item', name = 'xeno-egg', amount = 2},
        {type = 'item', name = 'navens', amount = 5},
        {type = 'item', name = 'sugar', amount = 5},
        {type = 'item', name = 'cottongut-food-02', amount = 4},
    },
    results = {
        {type = 'item', name = 'cottongut-mk04', amount = 7},
    },
    main_product = "cottongut-mk04",
    subgroup = 'py-alienlife-cottongut',
    order = 'a',
}:add_unlock("cottongut-mk04")


---pup maker---

---maturing---

RECIPE {
    type = 'recipe',
    name = 'cottongut-mature-01',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'cottongut-pup', amount = 1},
        {type = 'item', name = 'cottongut-codex', amount = 1},
        {type = 'item', name = 'earth-mouse-sample', amount = 1},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'cottongut', amount = 2},
    },
    main_product = "cottongut",
    subgroup = 'py-alienlife-cottongut',
    order = 'a',
}:add_unlock("assisted-embryology")

RECIPE {
    type = 'recipe',
    name = 'cottongut-mature-02',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = 'item', name = 'cottongut-pup', amount = 1},
        {type = 'item', name = 'gh', amount = 1},
        {type = 'item', name = 'cottongut-codex', amount = 1},
        {type = 'item', name = 'resveratrol', amount = 1},
        {type = 'item', name = 'earth-mouse-sample', amount = 1},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'cottongut', amount = 3},
    },
    --main_product = "caged-cottongut",
    subgroup = 'py-alienlife-cottongut',
    order = 'a',
}:add_unlock("growth-hormone")

----adverse products----

----PROCESSING----

---caged---

---charged---

---UPGRADES---
RECIPE {
    type = 'recipe',
    name = 'cottongut-mk02',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'cottongut-pup-mk01', amount = 1},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
        {type = 'fluid', name = 'psc', amount = 25},
        {type = 'fluid', name = 'artificial-blood', amount = 20}
        },
    results = {
        {type = 'item', name = 'cottongut-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'cottongut-mk01', amount = 1, probability = 0.5},
    },
    --main_product = "cottongut-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-cottongut',
    order = 'za'
}:add_unlock("cottongut-mk02")

RECIPE {
    type = 'recipe',
    name = 'cottongut-mk03',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'cottongut-pup-mk02', amount = 1},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
        {type = 'fluid', name = 'psc', amount = 25},
        {type = 'fluid', name = 'artificial-blood', amount = 20},
        {type = 'item', name = 'alien-enzymes', amount = 5},
        },
    results = {
        {type = 'item', name = 'cottongut-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'cottongut-mk02', amount = 1, probability = 0.6},
    },
    --main_product = "cottongut-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-cottongut',
    order = 'zb'
}:add_unlock("cottongut-mk03")

RECIPE {
    type = 'recipe',
    name = 'cottongut-mk04',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'cottongut-pup-mk03', amount = 1},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
        {type = 'item', name = 'gh', amount = 5},
        {type = 'fluid', name = 'artificial-blood', amount = 20},
        {type = 'item', name = 'antitumor', amount = 5},
        },
    results = {
        {type = 'item', name = 'cottongut-mk04', amount = 1, probability = 0.003},
        {type = 'item', name = 'cottongut-mk03', amount = 1, probability = 0.7},
    },
    --main_product = "cottongut-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-cottongut',
    order = 'zc'
}:add_unlock("cottongut-mk04")
