--------------------------DHILMOS-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'dhilmos',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 350,
    ingredients = {
        {type = 'item', name = 'alien-sample-03', amount = 5},
        {type = 'item', name = 'cdna', amount = 5},
        {type = 'item', name = 'raw-fish', amount = 1},
        {type = 'item', name = 'dhilmos-codex', amount = 2},
        {type = 'item', name = 'earth-crustacean-sample', amount = 1}, --add alien sample from pyALiens mod here.
        {type = 'fluid', name = 'fetal-serum', amount = 100},
        {type = 'fluid', name = 'artificial-blood', amount = 100},
    },
    results = {
        {type = 'item', name = 'dhilmos', amount = 1},
    },
}:add_unlock("dhilmos")

RECIPE {
    type = 'recipe',
    name = 'dhilmos-codex',
    category = 'crafting',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'glass', amount = 4},
        {type = 'item', name = 'small-lamp', amount = 5},
        {type = 'item', name = 'advanced-circuit', amount = 50},
        {type = 'item', name = 'green-wire', amount = 20},
    },
    results = {
        {type = 'item', name = 'dhilmos-codex', amount = 1},
    },
}:add_unlock("dhilmos")

RECIPE {
    type = 'recipe',
    name = 'earth-crustacean-sample',
    category = 'data-array',
    enabled = false,
    energy_required = 350,
    ingredients = {
        {type = 'item', name = 'steel-chest', amount = 1},
        {type = 'item', name = 'chemical-science-pack', amount = 100},
        {type = 'item', name = 'dhilmos-codex', amount = 2},
    },
    results = {
        {type = 'item', name = 'earth-crustacean-sample', amount = 1},
    },
}:add_unlock("dhilmos")

----food----

---breeding---

RECIPE {
    type = 'recipe',
    name = 'dhilmos-sex-01',
    category = 'dhilmos',
    enabled = false,
    energy_required = 130,
    ingredients = {
        {type = 'item', name = 'dhilmos', amount = 2},
        {type = 'fluid', name = 'water-saline', amount = 100},
        {type = 'fluid', name = 'phytoplankton', amount = 50},
    },
    results = {
        {type = 'item', name = 'dhilmos', amount = 3, probability = 0.8},
        {type = 'fluid', name = 'dirty-water', amount = 100},
    },
    main_product = "dhilmos",
    subgroup = 'py-alienlife-dhilmos',
    order = 'a',
}:add_unlock("dhilmos")

----adverse products----



----PROCESSING----


RECIPE {
    type = 'recipe',
    name = 'dhilmos-full-rendering',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'dhilmos', amount = 1},
    },
    results = {
        {type = 'item', name = 'meat', amount = 1, probability = 0.2},
        {type = 'item', name = 'mukmoux-fat', amount = 1, probability = 0.1},
        {type = 'item', name = 'chitin', amount = 2, probability = 0.5},
        {type = 'item', name = 'guts', amount = 1, probability = 0.3},
    },
    icon = '__pyalienlife__/graphics/icons/rendering-dhilmos.png',
    icon_size = 64,
    subgroup = 'py-alienlife-dhilmos',
    order = 'b',
}:add_unlock("dhilmos")

RECIPE {
    type = 'recipe',
    name = 'dhilmos-chitin-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'dhilmos', amount = 1},
    },
    results = {
        {type = 'item', name = 'chitin', amount = 3},
    },
    subgroup = 'py-alienlife-dhilmos',
    order = 'c',
}:add_unlock("dhilmos")

RECIPE {
    type = 'recipe',
    name = 'dhilmos-meat-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'dhilmos', amount = 1},
    },
    results = {
        {type = 'item', name = 'meat', amount = 1},
    },
    subgroup = 'py-alienlife-dhilmos',
    order = 'c',
}:add_unlock("dhilmos")

RECIPE {
    type = 'recipe',
    name = 'dhilmos-guts-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'dhilmos', amount = 1},
    },
    results = {
        {type = 'item', name = 'guts', amount = 1},
    },
    subgroup = 'py-alienlife-dhilmos',
    order = 'c',
}:add_unlock("dhilmos")

RECIPE {
    type = 'recipe',
    name = 'dhilmos-blood-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'dhilmos', amount = 1},
    },
    results = {
        {type = 'fluid', name = 'arthropod-blood', amount = 30},
    },
    subgroup = 'py-alienlife-dhilmos',
    order = 'c',
}:add_unlock("dhilmos")

RECIPE {
    type = 'recipe',
    name = 'dhilmos-fat-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'dhilmos', amount = 1},
    },
    results = {
        {type = 'item', name = 'mukmoux-fat', amount = 1},
    },
    subgroup = 'py-alienlife-dhilmos',
    order = 'c',
}:add_unlock("dhilmos")
