--------------------------AUOG-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'auog',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = 'item', name = 'alien-sample01', amount = 2},
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

RECIPE {
    type = 'recipe',
    name = 'auog-sex-00',
    category = 'auog',
    enabled = false,
    energy_required = 160,
    ingredients = {
        {type = 'item', name = 'cage', amount = 1},
        {type = 'item', name = 'biomass', amount = 1},
        {type = 'item', name = 'moss', amount = 5},
        {type = 'item', name = 'water-barrel', amount = 3},
    },
    results = {
        {type = 'item', name = 'caged-auog', amount = 1, probability = 0.5},
        {type = 'item', name = 'empty-barrel', amount = 3},
    },
    main_product = "caged-auog",
    subgroup = 'py-alienlife-auog',
    order = 'a',
}:add_unlock("auog")

RECIPE {
    type = 'recipe',
    name = 'auog-sex-food-01',
    category = 'auog',
    enabled = false,
    energy_required = 130,
    ingredients = {
        {type = 'item', name = 'cage', amount = 1},
        {type = 'item', name = 'auog-food-01', amount = 1},
        {type = 'item', name = 'water-barrel', amount = 3},
    },
    results = {
        {type = 'item', name = 'caged-auog', amount = 1, probability = 0.5},
        {type = 'item', name = 'empty-barrel', amount = 3},
    },
    main_product = "caged-auog",
    subgroup = 'py-alienlife-auog',
    order = 'a',
}:add_unlock("organic-breeding")


RECIPE {
    type = 'recipe',
    name = 'auog-sex-food-02',
    category = 'auog',
    enabled = false,
    energy_required = 110,
    ingredients = {
        {type = 'item', name = 'cage', amount = 1},
        {type = 'item', name = 'auog-food-02', amount = 1},
        {type = 'item', name = 'water-barrel', amount = 3},
    },
    results = {
        {type = 'item', name = 'caged-auog', amount = 1, probability = 0.5},
        {type = 'item', name = 'empty-barrel', amount = 3},
    },
    main_product = "caged-auog",
    subgroup = 'py-alienlife-auog',
    order = 'a',
}:add_unlock("organic-breeding")

---pup maker---

RECIPE {
    type = 'recipe',
    name = 'auog-sex-pup-01',
    category = 'auog',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'auog-food-01', amount = 1},
        {type = 'item', name = 'water-barrel', amount = 4},
    },
    results = {
        {type = 'item', name = 'auog-pup', amount = 1},
        {type = 'item', name = 'empty-barrel', amount = 4},
    },
    main_product = "auog-pup",
    subgroup = 'py-alienlife-auog',
    order = 'a',
}:add_unlock("assisted-embryology")

RECIPE {
    type = 'recipe',
    name = 'auog-sex-pup-02',
    category = 'auog',
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = 'item', name = 'auog-food-02', amount = 1},
        {type = 'item', name = 'water-barrel', amount = 4},
    },
    results = {
        {type = 'item', name = 'auog-pup', amount = 2},
        {type = 'item', name = 'empty-barrel', amount = 4},
    },
    main_product = "auog-pup",
    subgroup = 'py-alienlife-auog',
    order = 'a',
}:add_unlock("assisted-embryology")

---maturing---

RECIPE {
    type = 'recipe',
    name = 'auog-mature-01',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 70,
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

----adverse products----

RECIPE {
    type = 'recipe',
    name = 'auog-manure-00',
    category = 'auog',
    enabled = false,
    energy_required = 110,
    ingredients = {
        {type = 'item', name = 'biomass', amount = 1},
        {type = 'item', name = 'moss', amount = 3},
        {type = 'item', name = 'water-barrel', amount = 3},
    },
    results = {
        {type = 'item', name = 'manure', amount = 3},
        {type = 'item', name = 'empty-barrel', amount = 3},
    },
    main_product = "manure",
    subgroup = 'py-alienlife-auog',
    order = 'a',
}:add_unlock("auog")

RECIPE {
    type = 'recipe',
    name = 'auog-manure-01',
    category = 'auog',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'auog-food-01', amount = 1},
        {type = 'item', name = 'water-barrel', amount = 3},
    },
    results = {
        {type = 'item', name = 'manure', amount = 3},
        {type = 'item', name = 'empty-barrel', amount = 3},
    },
    main_product = "manure",
}:add_unlock("auog")

RECIPE {
    type = 'recipe',
    name = 'auog-manure-02',
    category = 'auog',
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = 'item', name = 'auog-food-01', amount = 1},
        {type = 'item', name = 'tuuphra', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 5},
    },
    results = {
        {type = 'item', name = 'manure', amount = 3},
        {type = 'item', name = 'empty-barrel', amount = 5},
    },
    main_product = "manure",
}:add_unlock("auog")

RECIPE {
    type = 'recipe',
    name = 'auog-manure-01-food',
    category = 'auog',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'auog-food-02', amount = 1},
        {type = 'item', name = 'water-barrel', amount = 3},
    },
    results = {
        {type = 'item', name = 'manure', amount = 5},
        {type = 'item', name = 'empty-barrel', amount = 3},
    },
    main_product = "manure",
}:add_unlock("auog")

RECIPE {
    type = 'recipe',
    name = 'auog-manure-02-food',
    category = 'auog',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'auog-food-02', amount = 1},
        {type = 'item', name = 'tuuphra', amount = 2},
        {type = 'item', name = 'water-barrel', amount = 5},
    },
    results = {
        {type = 'item', name = 'manure', amount = 7},
        {type = 'item', name = 'empty-barrel', amount = 5},
    },
    main_product = "manure",
}:add_unlock("auog")


----PROCESSING----


RECIPE {
    type = 'recipe',
    name = 'auog-full-rendering',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'caged-auog', amount = 1},
    },
    results = {
        {type = 'item', name = 'bones', amount = 4, probability = 0.3},
        {type = 'item', name = 'meat', amount = 5, probability = 0.4},
        {type = 'fluid', name = 'blood', amount = 50},
        {type = 'item', name = 'skin', amount = 2, probability = 0.3},
        {type = 'item', name = 'mukmoux-fat', amount = 1, probability = 0.3},
        {type = 'item', name = 'brain', amount = 1, probability = 0.4},
        {type = 'item', name = 'guts', amount = 1, probability = 0.4},
    },
    icon = '__pyalienlife__/graphics/icons/rendering-auog.png',
    icon_size = 64,
    subgroup = 'py-alienlife-auog',
    order = 'b'
}:add_unlock("auog")

RECIPE {
    type = 'recipe',
    name = 'auog-bonemeal-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-auog', amount = 1},
    },
    results = {
        {type = 'item', name = 'bonemeal', amount = 4},
    },
    subgroup = 'py-alienlife-auog',
    order = 'c',
}:add_unlock("auog")

RECIPE {
    type = 'recipe',
    name = 'auog-meat-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-auog', amount = 1},
    },
    results = {
        {type = 'item', name = 'meat', amount = 8},
    },
    subgroup = 'py-alienlife-auog',
    order = 'c',
}:add_unlock("auog")

RECIPE {
    type = 'recipe',
    name = 'auog-brain-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-auog', amount = 1},
    },
    results = {
        {type = 'item', name = 'brain', amount = 1},
    },
    subgroup = 'py-alienlife-auog',
    order = 'c',
}:add_unlock("auog")

RECIPE {
    type = 'recipe',
    name = 'auog-skin-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-auog', amount = 1},
    },
    results = {
        {type = 'item', name = 'skin', amount = 2},
    },
    subgroup = 'py-alienlife-auog',
    order = 'c',
}:add_unlock("auog")

RECIPE {
    type = 'recipe',
    name = 'auog-bones-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-auog', amount = 1},
    },
    results = {
        {type = 'item', name = 'bones', amount = 3},
    },
    subgroup = 'py-alienlife-auog',
    order = 'c',
}:add_unlock("auog")

RECIPE {
    type = 'recipe',
    name = 'auog-guts-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-auog', amount = 1},
    },
    results = {
        {type = 'item', name = 'guts', amount = 3},
    },
    subgroup = 'py-alienlife-auog',
    order = 'c',
}:add_unlock("auog")

RECIPE {
    type = 'recipe',
    name = 'auog-blood-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-auog', amount = 1},
    },
    results = {
        {type = 'fluid', name = 'blood', amount = 100},
    },
    subgroup = 'py-alienlife-auog',
    order = 'c',
}:add_unlock("auog")

RECIPE {
    type = 'recipe',
    name = 'auog-fat-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-auog', amount = 1},
    },
    results = {
        {type = 'item', name = 'mukmoux-fat', amount = 2},
    },
    subgroup = 'py-alienlife-auog',
    order = 'c',
}:add_unlock("auog")


---caged---
RECIPE {
    type = 'recipe',
    name = 'caged-auog',
    category = 'crafting',
    enabled = false,
    energy_required = 2,
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
    energy_required = 2,
    ingredients = {
        {type = 'item', name = 'caged-auog', amount = 1},
    },
    results = {
        {type = 'item', name = 'auog', amount = 1},
        {type = 'item', name = 'cage', amount = 1},
    },
    main_product = "auog",
}:add_unlock("auog")