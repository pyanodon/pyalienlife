RECIPE {
    type = 'recipe',
    name = 'fetal-serum-01',
    category = 'biofactory',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'guts', amount = 15},
        {type = 'item', name = 'flask', amount = 1},
        {type = 'item', name = 'silver-plate', amount = 2},
    },
    results = {
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    --main_product = "cocoon",
}:add_unlock("biotech-mk02")

RECIPE {
    type = 'recipe',
    name = 'vrauks',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = 'item', name = 'bio-sample', amount = 30},
        {type = 'item', name = 'moss-gen', amount = 3},
        {type = 'item', name = 'vrauks-codex', amount = 1},
        {type = 'item', name = 'earth-generic-sample', amount = 2},
        {type = 'item', name = 'petri-dish', amount = 5},
        {type = 'item', name = 'flask', amount = 10},
    },
    results = {
        {type = 'item', name = 'vrauks', amount = 1},
    },
}:add_unlock("vrauks")

RECIPE {
    type = 'recipe',
    name = 'vrauks-codex',
    category = 'crafting',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'glass', amount = 10},
        {type = 'item', name = 'small-lamp', amount = 4},
        {type = 'item', name = 'electronic-circuit', amount = 20},
        {type = 'item', name = 'tinned-cable', amount = 20},
    },
    results = {
        {type = 'item', name = 'vrauks-codex', amount = 1},
    },
}:add_unlock("xenobiology")

RECIPE {
    type = 'recipe',
    name = 'earth-generic-sample',
    category = 'data-array',
    enabled = false,
    energy_required = 25,
    ingredients = {
        {type = 'item', name = 'steel-chest', amount = 1},
        {type = 'item', name = 'automation-science-pack', amount = 15},
        {type = 'item', name = 'bio-sample', amount = 10},
    },
    results = {
        {type = 'item', name = 'earth-generic-sample', amount = 1},
    },
}:add_unlock("xenobiology")

----food----
RECIPE {
    type = 'recipe',
    name = 'vrauks-food-01',
    category = 'crafting-with-fluid',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'fawogae', amount = 5},
        {type = 'item', name = 'moss', amount = 10},
        {type = 'item', name = 'wood-seeds', amount = 10},
        {type = 'item', name = 'agar', amount = 10},
        {type = 'item', name = 'cellulose', amount = 5},
        {type = 'fluid', name = 'steam', amount = 100},
    },
    results = {
        {type = 'item', name = 'vrauks-food-01', amount = 4},
    },
}:add_unlock("food-mk01"):add_ingredient({type = "item", name = "fiberboard", amount = 1})

RECIPE {
    type = 'recipe',
    name = 'vrauks-food-02',
    category = 'crafting-with-fluid',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'grod', amount = 4},
        {type = 'item', name = 'tuuphra-seeds', amount = 1},
        {type = 'item', name = 'ralesia', amount = 6},
        {type = 'item', name = 'wood-seeds', amount = 10},
        {type = 'item', name = 'agar', amount = 10},
        {type = 'item', name = 'casein', amount = 5},
        {type = 'item', name = 'moss', amount = 10},
        {type = 'item', name = 'guts', amount = 5},
        {type = 'fluid', name = 'fish-oil', amount = 50},
        {type = 'fluid', name = 'steam', amount = 100},
    },
    results = {
        {type = 'item', name = 'vrauks-food-02', amount = 6},
    },
}:add_unlock("food-mk02"):add_ingredient({type = "item", name = "fiberboard", amount = 2})

---caged---
RECIPE {
    type = 'recipe',
    name = 'caged-vrauks',
    category = 'crafting',
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = 'item', name = 'vrauks', amount = 1},
        {type = 'item', name = 'cage', amount = 1},
    },
    results = {
        {type = 'item', name = 'caged-vrauks', amount = 1},
    },
}:add_unlock("vrauks")

RECIPE {
    type = 'recipe',
    name = 'uncaged-vrauks',
    category = 'crafting',
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = 'item', name = 'caged-vrauks', amount = 1},
    },
    results = {
        {type = 'item', name = 'vrauks', amount = 1},
        {type = 'item', name = 'cage', amount = 1},
    },
    main_product = "vrauks",
}:add_unlock("vrauks")

---maturing---

RECIPE {
    type = 'recipe',
    name = 'vrauks-mature-01',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'item', name = 'cocoon', amount = 1},
        {type = 'item', name = 'cage', amount = 1},
        {type = 'item', name = 'vrauks-codex', amount = 1},
        {type = 'item', name = 'earth-generic-sample', amount = 1},
        {type = 'fluid', name = 'water', amount = 500},
    },
    results = {
        {type = 'item', name = 'caged-vrauks', amount = 1},
    },
    main_product = "caged-vrauks",
    subgroup = 'py-alienlife-vrauks',
    order = 'a',
}:add_unlock("assisted-embryology")

RECIPE {
    type = 'recipe',
    name = 'vrauks-mature-02',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = 'item', name = 'cocoon', amount = 1},
        {type = 'item', name = 'gh', amount = 1},
        {type = 'item', name = 'cage', amount = 3},
        {type = 'item', name = 'resveratrol', amount = 1},
        {type = 'item', name = 'vrauks-codex', amount = 1},
        {type = 'item', name = 'earth-generic-sample', amount = 1},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'caged-vrauks', amount = 3},
    },
    main_product = "caged-vrauks",
    subgroup = 'py-alienlife-vrauks',
    order = 'a',
}:add_unlock("growth-hormone")

---UPDATES---
RECIPE {
    type = 'recipe',
    name = 'vrauks-mk02',
    category = 'vrauks',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'vrauks', amount = 2},
        {type = 'item', name = 'vrauks-food-01', amount = 2},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'saps', amount = 8},
        {type = 'item', name = 'biomass', amount = 15},
        {type = 'item', name = 'water-barrel', amount = 5},
        },
    results = {
        {type = 'item', name = 'vrauks-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'vrauks', amount = 1, probability = 0.5},
        {type = 'item', name = 'empty-barrel', amount = 5},
    },
    --main_product = "vrauks-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-vrauks',
    order = 'za'
}:add_unlock("selective-breeding")

RECIPE {
    type = 'recipe',
    name = 'vrauks-mk03',
    category = 'vrauks',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'vrauks', amount = 2},
        {type = 'item', name = 'vrauks-food-02', amount = 3},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'saps', amount = 8},
        {type = 'item', name = 'biomass', amount = 15},
        {type = 'item', name = 'water-barrel', amount = 5},
        },
    results = {
        {type = 'item', name = 'vrauks-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'vrauks', amount = 1, probability = 0.6},
        {type = 'item', name = 'empty-barrel', amount = 5},
    },
    --main_product = "vrauks-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-vrauks',
    order = 'zb'
}:add_unlock("artificial-breeding")

RECIPE {
    type = 'recipe',
    name = 'vrauks-mk04',
    category = 'vrauks',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'vrauks', amount = 2},
        {type = 'item', name = 'vrauks-food-02', amount = 3},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'saps', amount = 8},
        {type = 'item', name = 'biomass', amount = 15},
        {type = 'item', name = 'water-barrel', amount = 5},
        },
    results = {
        {type = 'item', name = 'vrauks-mk04', amount = 1, probability = 0.003},
        {type = 'item', name = 'vrauks', amount = 1, probability = 0.7},
        {type = 'item', name = 'empty-barrel', amount = 5},
    },
    --main_product = "vrauks-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-vrauks',
    order = 'zc'
}:add_unlock("biased-mutation")