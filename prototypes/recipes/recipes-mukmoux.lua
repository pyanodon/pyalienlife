--------------------------MUKMOUX-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'mukmoux',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 350,
    ingredients = {
        {type = 'item', name = 'alien-sample-03', amount = 2},
        {type = 'item', name = 'cdna', amount = 5},
        {type = 'item', name = 'mukmoux-codex', amount = 1},
        {type = 'item', name = 'earth-cow-sample', amount = 1},
        {type = 'fluid', name = 'fetal-serum', amount = 100}, --add alien sample from pyALiens mod here.
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
        {type = 'item', name = 'small-lamp', amount = 5},
        {type = 'item', name = 'electronic-circuit', amount = 50},
        {type = 'item', name = 'tinned-cable', amount = 20},
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
        {type = 'item', name = 'steel-chest', amount = 1},
        {type = 'item', name = 'logistic-science-pack', amount = 100},
        {type = 'item', name = 'mukmoux-codex', amount = 1},
    },
    results = {
        {type = 'item', name = 'earth-cow-sample', amount = 1},
    },
}:add_unlock("mukmoux")

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
        {type = 'item', name = 'seaweed', amount = 5},
        {type = 'item', name = 'salt', amount = 10},
        {type = 'fluid', name = 'steam', amount = 100},
    },
    results = {
        {type = 'item', name = 'mukmoux-food-01', amount = 1},
    },
}:add_unlock("food-mk01")

RECIPE {
    type = 'recipe',
    name = 'mukmoux-food-02',
    category = 'crafting-with-fluid',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'tin-plate', amount = 2},
        {type = 'item', name = 'moss', amount = 5},
        {type = 'item', name = 'seaweed', amount = 5},
        {type = 'item', name = 'salt', amount = 10},
        {type = 'item', name = 'biomass', amount = 5},
        {type = 'item', name = 'ralesia-seeds', amount = 5},
        {type = 'fluid', name = 'steam', amount = 100},
    },
    results = {
        {type = 'item', name = 'mukmoux-food-02', amount = 1},
    },
}:add_unlock("food-mk02")

---breeding---

RECIPE {
    type = 'recipe',
    name = 'mukmoux-sex-01',
    category = 'mukmoux',
    enabled = false,
    energy_required = 130,
    ingredients = {
        {type = 'item', name = 'cage', amount = 1},
        {type = 'item', name = 'mukmoux-food-01', amount = 1},
    },
    results = {
        {type = 'item', name = 'caged-mukmoux', amount = 1, probability = 0.5},
    },
    subgroup = 'py-alienlife-mukmoux',
    order = 'a',
}:add_unlock("organic-breeding")

RECIPE {
    type = 'recipe',
    name = 'mukmoux-sex-01-food',
    category = 'mukmoux',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'cage', amount = 1},
        {type = 'item', name = 'mukmoux-food-02', amount = 1},
    },
    results = {
        {type = 'item', name = 'caged-mukmoux', amount = 1, probability = 0.5},
    },
    subgroup = 'py-alienlife-mukmoux',
    order = 'a',
}:add_unlock("organic-breeding")

----adverse products----

RECIPE {
    type = 'recipe',
    name = 'mukmoux-manure-01',
    category = 'mukmoux',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'mukmoux-food-01', amount = 1},
    },
    results = {
        {type = 'item', name = 'manure', amount = 6},
    },
}:add_unlock("mukmoux")

RECIPE {
    type = 'recipe',
    name = 'mukmoux-manure-02',
    category = 'mukmoux',
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = 'item', name = 'mukmoux-food-01', amount = 1},
        {type = 'item', name = 'salt', amount = 10},
    },
    results = {
        {type = 'item', name = 'manure', amount = 6},
    },
}:add_unlock("mukmoux")

RECIPE {
    type = 'recipe',
    name = 'mukmoux-manure-01-food',
    category = 'mukmoux',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'mukmoux-food-02', amount = 1},
    },
    results = {
        {type = 'item', name = 'manure', amount = 10},
    },
}:add_unlock("mukmoux")

RECIPE {
    type = 'recipe',
    name = 'mukmoux-manure-02-food',
    category = 'mukmoux',
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = 'item', name = 'mukmoux-food-02', amount = 1},
        {type = 'item', name = 'salt', amount = 10},
    },
    results = {
        {type = 'item', name = 'manure', amount = 10},
    },
}:add_unlock("mukmoux")


----PROCESSING----


RECIPE {
    type = 'recipe',
    name = 'mukmoux-full-rendering',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'caged-mukmoux', amount = 1},
    },
    results = {
        {type = 'item', name = 'bones', amount = 2, probability = 0.4},
        {type = 'item', name = 'meat', amount = 4, probability = 0.4},
        {type = 'fluid', name = 'blood', amount = 50},
        {type = 'item', name = 'mukmoux-fat', amount = 5, probability = 0.8},
        {type = 'item', name = 'skin', amount = 4, probability = 0.4},
        {type = 'item', name = 'brain', amount = 1, probability = 0.4},
        {type = 'item', name = 'guts', amount = 4, probability = 0.4},
    },
    icon = '__pyalienlife__/graphics/icons/rendering-mukmoux.png',
    icon_size = 64,
    subgroup = 'py-alienlife-mukmoux',
    order = 'b',
}:add_unlock("mukmoux")

RECIPE {
    type = 'recipe',
    name = 'mukmoux-bonemeal-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-mukmoux', amount = 1},
    },
    results = {
        {type = 'item', name = 'bonemeal', amount = 4},
    },
    subgroup = 'py-alienlife-mukmoux',
    order = 'c',
}:add_unlock("mukmoux")

RECIPE {
    type = 'recipe',
    name = 'mukmoux-meat-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-mukmoux', amount = 1},
    },
    results = {
        {type = 'item', name = 'meat', amount = 5},
    },
    subgroup = 'py-alienlife-mukmoux',
    order = 'c',
}:add_unlock("mukmoux")

RECIPE {
    type = 'recipe',
    name = 'mukmoux-brain-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-mukmoux', amount = 1},
    },
    results = {
        {type = 'item', name = 'brain', amount = 1},
    },
    subgroup = 'py-alienlife-mukmoux',
    order = 'c',
}:add_unlock("mukmoux")

RECIPE {
    type = 'recipe',
    name = 'mukmoux-skin-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-mukmoux', amount = 1},
    },
    results = {
        {type = 'item', name = 'skin', amount = 4},
    },
    subgroup = 'py-alienlife-mukmoux',
    order = 'c',
}:add_unlock("mukmoux")

RECIPE {
    type = 'recipe',
    name = 'mukmoux-bones-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-mukmoux', amount = 1},
    },
    results = {
        {type = 'item', name = 'bones', amount = 4},
    },
    subgroup = 'py-alienlife-mukmoux',
    order = 'c',
}:add_unlock("mukmoux")

RECIPE {
    type = 'recipe',
    name = 'mukmoux-guts-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-mukmoux', amount = 1},
    },
    results = {
        {type = 'item', name = 'guts', amount = 8},
    },
    subgroup = 'py-alienlife-mukmoux',
    order = 'c',
}:add_unlock("mukmoux")

RECIPE {
    type = 'recipe',
    name = 'mukmoux-blood-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-mukmoux', amount = 1},
    },
    results = {
        {type = 'fluid', name = 'blood', amount = 130},
    },
    subgroup = 'py-alienlife-mukmoux',
    order = 'c',
}:add_unlock("mukmoux")

RECIPE {
    type = 'recipe',
    name = 'mukmoux-fat-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-mukmoux', amount = 1},
    },
    results = {
        {type = 'item', name = 'mukmoux-fat', amount = 10},
    },
    subgroup = 'py-alienlife-mukmoux',
    order = 'c',
}:add_unlock("mukmoux")

---caged---
RECIPE {
    type = 'recipe',
    name = 'caged-mukmoux',
    category = 'crafting',
    enabled = false,
    energy_required = 2,
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
    energy_required = 2,
    ingredients = {
        {type = 'item', name = 'caged-mukmoux', amount = 1},
    },
    results = {
        {type = 'item', name = 'mukmoux', amount = 1},
        {type = 'item', name = 'cage', amount = 1},
    },
    main_product = "mukmoux",
}:add_unlock("mukmoux")