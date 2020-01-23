--------------------------AUOG-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'auog',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = 'item', name = 'earth-generic-sample', amount = 2},
        {type = 'item', name = 'bio-sample', amount = 5},
        {type = 'item', name = 'cdna', amount = 3},
        {type = 'item', name = 'auog-codex', amount = 1},
        {type = 'item', name = 'earth-bear-sample', amount = 1},
        {type = 'fluid', name = 'water', amount = 1000}, --add alien sample from pyALiens mod here.
    },
    results = {
        {type = 'item', name = 'auog', amount = 1},
    },
}:add_unlock("auog")

RECIPE {
    type = 'recipe',
    name = 'auog-codex',
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
        {type = 'item', name = 'auog-codex', amount = 1},
    },
}:add_unlock("auog")

RECIPE {
    type = 'recipe',
    name = 'earth-bear-sample',
    category = 'data-array',
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = 'item', name = 'steel-chest', amount = 1},
        {type = 'item', name = 'automation-science-pack', amount = 100},
        {type = 'item', name = 'auog-codex', amount = 1},
    },
    results = {
        {type = 'item', name = 'earth-bear-sample', amount = 1},
    },
}:add_unlock("auog")

----food----
RECIPE {
    type = 'recipe',
    name = 'auog-food-01',
    category = 'crafting-with-fluid',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'tin-plate', amount = 2},
        {type = 'item', name = 'fawogae', amount = 5},
        {type = 'item', name = 'seaweed', amount = 5},
        {type = 'item', name = 'moss', amount = 5},
        {type = 'fluid', name = 'steam', amount = 100},
    },
    results = {
        {type = 'item', name = 'auog-food-01', amount = 1},
    },
}:add_unlock("food-mk01")

RECIPE {
    type = 'recipe',
    name = 'auog-food-02',
    category = 'crafting-with-fluid',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'tin-plate', amount = 2},
        {type = 'item', name = 'fawogae', amount = 5},
        {type = 'item', name = 'ralesias', amount = 5},
        {type = 'item', name = 'wood-seeds', amount = 1},
        {type = 'item', name = 'ash', amount = 10},
        {type = 'item', name = 'moss', amount = 10},
        {type = 'item', name = 'seaweed', amount = 5},
        {type = 'fluid', name = 'steam', amount = 100},
    },
    results = {
        {type = 'item', name = 'auog-food-02', amount = 1},
    },
}:add_unlock("food-mk02")

---breeding---

---pup maker---

---maturing---

RECIPE {
    type = 'recipe',
    name = 'auog-mature-01',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'auog-pup', amount = 1},
        {type = 'item', name = 'auog-codex', amount = 1},
        {type = 'item', name = 'earth-bear-sample', amount = 1},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'auog', amount = 1},
    },
    main_product = "auog",
    subgroup = 'py-alienlife-auog',
    order = 'a',
}:add_unlock("assisted-embryology")

RECIPE {
    type = 'recipe',
    name = 'auog-mature-02',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = 'item', name = 'auog-pup', amount = 1},
        {type = 'item', name = 'gh', amount = 1},
        {type = 'item', name = 'auog-codex', amount = 1},
        {type = 'item', name = 'resveratrol', amount = 1},
        {type = 'item', name = 'earth-bear-sample', amount = 1},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'auog', amount = 2},
    },
    --main_product = "caged-auog",
    subgroup = 'py-alienlife-auog',
    order = 'a',
}:add_unlock("growth-hormone")

----adverse products----


----PROCESSING----


---caged---
RECIPE {
    type = 'recipe',
    name = 'caged-auog',
    category = 'crafting',
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = 'item', name = 'auog', amount = 1},
        {type = 'item', name = 'cage', amount = 1},
    },
    results = {
        {type = 'item', name = 'caged-auog', amount = 1},
    },
}:add_unlock("auog")

RECIPE {
    type = 'recipe',
    name = 'uncaged-auog',
    category = 'crafting',
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = 'item', name = 'caged-auog', amount = 1},
    },
    results = {
        {type = 'item', name = 'auog', amount = 1},
        {type = 'item', name = 'cage', amount = 1},
    },
    main_product = "auog",
}:add_unlock("auog")

---charged---
RECIPE {
    type = 'recipe',
    name = 'charged-auog',
    category = 'crafting',
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = 'item', name = 'auog', amount = 1},
        {type = 'item', name = 'energy-drink', amount = 1},
    },
    results = {
        {type = 'item', name = 'charged-auog', amount = 1},
    },
}:add_unlock("energy-drink")

---UPDATES---
RECIPE {
    type = 'recipe',
    name = 'auog-mk02',
    category = 'auog',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'auog', amount = 2},
        {type = 'item', name = 'auog-food-02', amount = 2},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'moss', amount = 10},
        {type = 'item', name = 'saps', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 3},
        },
    results = {
        {type = 'item', name = 'auog-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'empty-barrel', amount = 3},
    },
    --main_product = "auog-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-auog',
    order = 'za'
}:add_unlock("selective-breeding")

RECIPE {
    type = 'recipe',
    name = 'auog-mk03',
    category = 'auog',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'auog', amount = 2},
        {type = 'item', name = 'auog-food-02', amount = 3},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'moss', amount = 10},
        {type = 'item', name = 'saps', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 3},
        },
    results = {
        {type = 'item', name = 'auog-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'empty-barrel', amount = 3},
    },
    --main_product = "auog-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-auog',
    order = 'zb'
}:add_unlock("artificial-breeding")

RECIPE {
    type = 'recipe',
    name = 'auog-mk04',
    category = 'auog',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'auog', amount = 2},
        {type = 'item', name = 'auog-food-02', amount = 3},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'moss', amount = 10},
        {type = 'item', name = 'saps', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 3},
        },
    results = {
        {type = 'item', name = 'auog-mk04', amount = 1, probability = 0.003},
        {type = 'item', name = 'empty-barrel', amount = 3},
    },
    --main_product = "auog-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-auog',
    order = 'zc'
}:add_unlock("biased-mutation")