--------------------------SCRONDRIX-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'scrondrix',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 150,
    ingredients = {
        {type = 'item', name = 'alien-sample-03', amount = 5},
        {type = 'item', name = 'cdna', amount = 10},
        {type = 'item', name = 'arthurian-egg', amount = 5},
        {type = 'item', name = 'scrondrix-codex', amount = 2},
        {type = 'item', name = 'earth-lizard-sample', amount = 1},
        {type = 'item', name = 'earth-roadrunner-sample', amount = 1},
        {type = 'fluid', name = 'fetal-serum', amount = 100},
        {type = 'fluid', name = 'artificial-blood', amount = 100},
    },
    results = {
        {type = 'item', name = 'scrondrix', amount = 1},
    },
}:add_unlock("scrondrix")

RECIPE {
    type = 'recipe',
    name = 'scrondrix-codex',
    category = 'crafting',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'glass', amount = 4},
        {type = 'item', name = 'small-lamp', amount = 2},
        {type = 'item', name = 'advanced-circuit', amount = 5},
        {type = 'item', name = 'green-wire', amount = 5},
    },
    results = {
        {type = 'item', name = 'scrondrix-codex', amount = 2},
    },
}:add_unlock("scrondrix")

RECIPE {
    type = 'recipe',
    name = 'earth-roadrunner-sample',
    category = 'data-array',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'steel-chest', amount = 1},
        {type = 'item', name = 'chemical-science-pack', amount = 5},
        {type = 'item', name = 'scrondrix-codex', amount = 1},
    },
    results = {
        {type = 'item', name = 'earth-roadrunner-sample', amount = 1},
    },
}:add_unlock("scrondrix")

----food----

---breeding---

RECIPE {
    type = 'recipe',
    name = 'scrondrix-sex-01',
    category = 'scrondrix',
    enabled = false,
    energy_required = 130,
    ingredients = {
        {type = 'item', name = 'caged-ulric', amount = 1},
        {type = 'item', name = 'water-barrel', amount = 5},
    },
    results = {
        {type = 'item', name = 'caged-scrondrix', amount = 1, probability = 0.5},
        {type = 'item', name = 'empty-barrel', amount = 5},
    },
    main_product = "caged-scrondrix",
    subgroup = 'py-alienlife-scrondrix',
    order = 'a',
}:add_unlock("scrondrix")

RECIPE {
    type = 'recipe',
    name = 'scrondrix-sex-01-mukmoux',
    category = 'scrondrix',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'caged-mukmoux', amount = 1},
        {type = 'item', name = 'water-barrel', amount = 5},
    },
    results = {
        {type = 'item', name = 'caged-scrondrix', amount = 1, probability = 0.5},
        {type = 'item', name = 'empty-barrel', amount = 5},
    },
    main_product = "caged-scrondrix",
    subgroup = 'py-alienlife-scrondrix',
    order = 'a',
}:add_unlock("scrondrix")

---pup maker---

RECIPE {
    type = 'recipe',
    name = 'scrondrix-sex-pup-01',
    category = 'scrondrix',
    enabled = false,
    energy_required = 100,
    ingredients = {
        --{type = 'item', name = 'scrondrix-food-01', amount = 1},
        {type = 'item', name = 'water-barrel', amount = 4},
    },
    results = {
        {type = 'item', name = 'scrondrix-pup', amount = 1},
        {type = 'item', name = 'empty-barrel', amount = 4},
    },
    main_product = "scrondrix-pup",
    subgroup = 'py-alienlife-scrondrix',
    order = 'a',
}:add_unlock("assisted-embryology")

RECIPE {
    type = 'recipe',
    name = 'scrondrix-sex-pup-02',
    category = 'scrondrix',
    enabled = false,
    energy_required = 80,
    ingredients = {
        --{type = 'item', name = 'scrondrix-food-02', amount = 1},
        {type = 'item', name = 'water-barrel', amount = 4},
    },
    results = {
        {type = 'item', name = 'scrondrix-pup', amount = 2},
        {type = 'item', name = 'empty-barrel', amount = 4},
    },
    main_product = "scrondrix-pup",
    subgroup = 'py-alienlife-scrondrix',
    order = 'a',
}:add_unlock("assisted-embryology")


---maturing---

RECIPE {
    type = 'recipe',
    name = 'scrondrix-mature-01',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 70,
    ingredients = {
        {type = 'item', name = 'scrondrix-pup', amount = 1},
        {type = 'item', name = 'scrondrix-codex', amount = 1},
        {type = 'item', name = 'earth-roadrunner-sample', amount = 1},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'scrondrix', amount = 1},
    },
    main_product = "scrondrix",
    subgroup = 'py-alienlife-scrondrix',
    order = 'a',
}:add_unlock("assisted-embryology")

----adverse products----

RECIPE {
    type = 'recipe',
    name = 'scrondrix-manure-00',
    category = 'scrondrix',
    enabled = false,
    energy_required = 120,
    ingredients = {
        {type = 'item', name = 'meat', amount = 5},
        {type = 'item', name = 'water-barrel', amount = 5},
    },
    results = {
        {type = 'item', name = 'manure', amount = 3},
        {type = 'item', name = 'empty-barrel', amount = 5},
    },
    main_product = "manure",
}:add_unlock("scrondrix")

RECIPE {
    type = 'recipe',
    name = 'scrondrix-manure-01',
    category = 'scrondrix',
    enabled = false,
    energy_required = 100,
    ingredients = {
        --food1
        {type = 'item', name = 'water-barrel', amount = 5},
    },
    results = {
        {type = 'item', name = 'manure', amount = 4},
        {type = 'item', name = 'empty-barrel', amount = 5},
    },
    main_product = "manure",
}:add_unlock("scrondrix")

RECIPE {
    type = 'recipe',
    name = 'scrondrix-manure-02',
    category = 'scrondrix',
    enabled = false,
    energy_required = 80,
    ingredients = {
        --food2
        --jute
        {type = 'item', name = 'water-barrel', amount = 5},
    },
    results = {
        {type = 'item', name = 'manure', amount = 4},
        {type = 'item', name = 'empty-barrel', amount = 5},
    },
    main_product = "manure",
}:add_unlock("scrondrix")

RECIPE {
    type = 'recipe',
    name = 'scrondrix-manure-01-food',
    category = 'scrondrix',
    enabled = false,
    energy_required = 60,
    ingredients = {
        --food1
        --jute
        {type = 'item', name = 'water-barrel', amount = 3},
    },
    results = {
        {type = 'item', name = 'manure', amount = 8},
        {type = 'item', name = 'empty-barrel', amount = 3},
    },
    main_product = "manure",
}:add_unlock("scrondrix")

RECIPE {
    type = 'recipe',
    name = 'scrondrix-manure-02-food',
    category = 'scrondrix',
    enabled = false,
    energy_required = 50,
    ingredients = {
        --food2
        --jute
        {type = 'item', name = 'water-barrel', amount = 5},
    },
    results = {
        {type = 'item', name = 'manure', amount = 8},
        {type = 'item', name = 'empty-barrel', amount = 5},
    },
    main_product = "manure",
}:add_unlock("scrondrix")

----PROCESSING----


RECIPE {
    type = 'recipe',
    name = 'scrondrix-full-rendering',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'caged-scrondrix', amount = 1},
    },
    results = {
        {type = 'item', name = 'meat', amount = 4, probability = 0.3},
        {type = 'item', name = 'brain', amount = 1, probability = 0.4},
        {type = 'item', name = 'mukmoux-fat', amount = 2, probability = 0.3},
        {type = 'item', name = 'pineal-gland', amount = 1, probability = 0.4},
        {type = 'item', name = 'guts', amount = 3, probability = 0.5},
        {type = 'fluid', name = 'blood', amount = 30},
    },
    icon = '__pyalienlife__/graphics/icons/rendering-scrondrix.png',
    icon_size = 64,
    subgroup = 'py-alienlife-scrondrix',
    order = 'b',
}:add_unlock("scrondrix")

RECIPE {
    type = 'recipe',
    name = 'scrondrix-pineal-gland-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-scrondrix', amount = 1},
    },
    results = {
        {type = 'item', name = 'pineal-gland', amount = 1},
    },
    subgroup = 'py-alienlife-scrondrix',
    order = 'c',
}:add_unlock("scrondrix")

RECIPE {
    type = 'recipe',
    name = 'scrondrix-meat-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-scrondrix', amount = 1},
    },
    results = {
        {type = 'item', name = 'meat', amount = 4},
    },
    subgroup = 'py-alienlife-scrondrix',
    order = 'c',
}:add_unlock("scrondrix")

RECIPE {
    type = 'recipe',
    name = 'scrondrix-guts-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-scrondrix', amount = 1},
    },
    results = {
        {type = 'item', name = 'guts', amount = 3},
    },
    subgroup = 'py-alienlife-scrondrix',
    order = 'c',
}:add_unlock("scrondrix")

RECIPE {
    type = 'recipe',
    name = 'scrondrix-blood-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-scrondrix', amount = 1},
    },
    results = {
        {type = 'fluid', name = 'blood', amount = 50},
    },
    subgroup = 'py-alienlife-scrondrix',
    order = 'c',
}:add_unlock("scrondrix")

RECIPE {
    type = 'recipe',
    name = 'scrondrix-fat-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-scrondrix', amount = 1},
    },
    results = {
        {type = 'item', name = 'mukmoux-fat', amount = 2},
    },
    subgroup = 'py-alienlife-scrondrix',
    order = 'c',
}:add_unlock("scrondrix")

RECIPE {
    type = 'recipe',
    name = 'scrondrix-brain-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-scrondrix', amount = 1},
    },
    results = {
        {type = 'item', name = 'brain', amount = 1},
    },
    subgroup = 'py-alienlife-scrondrix',
    order = 'c',
}:add_unlock("scrondrix")

---caged---
RECIPE {
    type = 'recipe',
    name = 'caged-scrondrix',
    category = 'crafting',
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = 'item', name = 'scrondrix', amount = 1},
        {type = 'item', name = 'cage', amount = 1},
    },
    results = {
        {type = 'item', name = 'caged-scrondrix', amount = 1},
    },
}:add_unlock("scrondrix")

RECIPE {
    type = 'recipe',
    name = 'uncaged-scrondrix',
    category = 'crafting',
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = 'item', name = 'caged-scrondrix', amount = 1},
    },
    results = {
        {type = 'item', name = 'scrondrix', amount = 1},
        {type = 'item', name = 'cage', amount = 1},
    },
    main_product = "scrondrix",
}:add_unlock("scrondrix")