--------------------------ARTHURIAN-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'arthurian',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 350,
    ingredients = {
        {type = 'item', name = 'alien-sample-02', amount = 3},
        {type = 'item', name = 'cdna', amount = 5},
        {type = 'item', name = 'arthurian-codex', amount = 2},
        {type = 'item', name = 'earth-lizard-sample', amount = 1}, --add alien sample from pyALiens mod here.
        {type = 'fluid', name = 'fetal-serum', amount = 100},
        {type = 'fluid', name = 'artificial-blood', amount = 100},
    },
    results = {
        {type = 'item', name = 'arthurian', amount = 1},
    },
}:add_unlock("arthurian")

RECIPE {
    type = 'recipe',
    name = 'arthurian-codex',
    category = 'crafting',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'glass', amount = 4},
        {type = 'item', name = 'small-lamp', amount = 5},
        {type = 'item', name = 'electronic-circuit', amount = 50},
        {type = 'item', name = 'tinned-cable', amount = 20},
    },
    results = {
        {type = 'item', name = 'arthurian-codex', amount = 1},
    },
}:add_unlock("arthurian")

RECIPE {
    type = 'recipe',
    name = 'earth-lizard-sample',
    category = 'data-array',
    enabled = false,
    energy_required = 350,
    ingredients = {
        {type = 'item', name = 'steel-chest', amount = 1},
        {type = 'item', name = 'py-science-pack', amount = 100},
        {type = 'item', name = 'arthurian-codex', amount = 1},
    },
    results = {
        {type = 'item', name = 'earth-lizard-sample', amount = 1},
    },
}:add_unlock("arthurian")

----food----

---breeding---

RECIPE {
    type = 'recipe',
    name = 'arthurian-sex-01',
    category = 'arthurian',
    enabled = false,
    energy_required = 130,
    ingredients = {
        {type = 'item', name = 'caged-ulric', amount = 1},
        {type = 'item', name = 'water-barrel', amount = 4},
    },
    results = {
        {type = 'item', name = 'caged-arthurian', amount = 1, probability = 0.5},
        {type = 'item', name = 'empty-barrel', amount = 4},
    },
    main_product = "caged-arthurian",
    subgroup = 'py-alienlife-arthurian',
    order = 'a',
}:add_unlock("arthurian")

RECIPE {
    type = 'recipe',
    name = 'arthurian-sex-01-mukmoux',
    category = 'arthurian',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'caged-mukmoux', amount = 1},
        {type = 'item', name = 'water-barrel', amount = 4},
    },
    results = {
        {type = 'item', name = 'caged-arthurian', amount = 1, probability = 0.5},
        {type = 'item', name = 'empty-barrel', amount = 4},
    },
    main_product = "caged-arthurian",
    subgroup = 'py-alienlife-arthurian',
    order = 'a',
}:add_unlock("arthurian")

----adverse products----

RECIPE {
    type = 'recipe',
    name = 'arthurian-egg-01',
    category = 'arthurian',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'caged-ulric', amount = 1},
        {type = 'item', name = 'water-barrel', amount = 2},
    },
    results = {
        {type = 'item', name = 'arthurian-egg', amount = 4},
        {type = 'item', name = 'empty-barrel', amount = 2},
    },
    main_product = "arthurian-egg",
}:add_unlock("arthurian")

RECIPE {
    type = 'recipe',
    name = 'arthurian-egg-02',
    category = 'arthurian',
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = 'item', name = 'caged-ulric', amount = 1},
        {type = 'item', name = 'cocoon', amount = 1},
        --add jute
        {type = 'item', name = 'water-barrel', amount = 5},
    },
    results = {
        {type = 'item', name = 'arthurian-egg', amount = 6},
        {type = 'item', name = 'empty-barrel', amount = 5},
    },
    main_product = "arthurian-egg",
}:add_unlock("arthurian")

RECIPE {
    type = 'recipe',
    name = 'arthurian-egg-01-mukmoux',
    category = 'arthurian',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'caged-mukmoux', amount = 1},
        {type = 'item', name = 'cocoon', amount = 1},
        --add jute
        {type = 'item', name = 'water-barrel', amount = 3},
    },
    results = {
        {type = 'item', name = 'arthurian-egg', amount = 10},
        {type = 'item', name = 'empty-barrel', amount = 3},
    },
    main_product = "arthurian-egg",
}:add_unlock("arthurian")

RECIPE {
    type = 'recipe',
    name = 'arthurian-egg-02-mukmoux',
    category = 'arthurian',
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = 'item', name = 'caged-mukmoux', amount = 1},
        {type = 'item', name = 'cocoon', amount = 1},
        {type = 'item', name = 'tuuphra-seeds', amount = 5},
        --add jute
        {type = 'item', name = 'water-barrel', amount = 5},
    },
    results = {
        {type = 'item', name = 'arthurian-egg', amount = 10},
        {type = 'item', name = 'empty-barrel', amount = 5},
    },
    main_product = "arthurian-egg",
}:add_unlock("arthurian")


----PROCESSING----


RECIPE {
    type = 'recipe',
    name = 'arthurian-full-rendering',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'caged-arthurian', amount = 1},
    },
    results = {
        {type = 'item', name = 'bones', amount = 2, probability = 0.3},
        {type = 'item', name = 'meat', amount = 3, probability = 0.4},
        {type = 'fluid', name = 'blood', amount = 20},
        {type = 'item', name = 'mukmoux-fat', amount = 1, probability = 0.2},
        {type = 'item', name = 'skin', amount = 2, probability = 0.4},
        {type = 'item', name = 'brain', amount = 2, probability = 0.6},
        {type = 'item', name = 'guts', amount = 2, probability = 0.4},
    },
    icon = '__pyalienlife__/graphics/icons/rendering-arthurian.png',
    icon_size = 64,
    subgroup = 'py-alienlife-arthurian',
    order = 'b',
}:add_unlock("arthurian")

RECIPE {
    type = 'recipe',
    name = 'arthurian-bonemeal-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-arthurian', amount = 1},
    },
    results = {
        {type = 'item', name = 'bonemeal', amount = 5},
    },
    subgroup = 'py-alienlife-arthurian',
    order = 'c',
}:add_unlock("arthurian")

RECIPE {
    type = 'recipe',
    name = 'arthurian-meat-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-arthurian', amount = 1},
    },
    results = {
        {type = 'item', name = 'meat', amount = 5},
    },
    subgroup = 'py-alienlife-arthurian',
    order = 'c',
}:add_unlock("arthurian")

RECIPE {
    type = 'recipe',
    name = 'arthurian-brain-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-arthurian', amount = 1},
    },
    results = {
        {type = 'item', name = 'brain', amount = 2},
    },
    subgroup = 'py-alienlife-arthurian',
    order = 'c',
}:add_unlock("arthurian")

RECIPE {
    type = 'recipe',
    name = 'arthurian-skin-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-arthurian', amount = 1},
    },
    results = {
        {type = 'item', name = 'skin', amount = 2},
    },
    subgroup = 'py-alienlife-arthurian',
    order = 'c',
}:add_unlock("arthurian")

RECIPE {
    type = 'recipe',
    name = 'arthurian-bones-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-arthurian', amount = 1},
    },
    results = {
        {type = 'item', name = 'bones', amount = 4},
    },
    subgroup = 'py-alienlife-arthurian',
    order = 'c',
}:add_unlock("arthurian")

RECIPE {
    type = 'recipe',
    name = 'arthurian-guts-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-arthurian', amount = 1},
    },
    results = {
        {type = 'item', name = 'guts', amount = 4},
    },
    subgroup = 'py-alienlife-arthurian',
    order = 'c',
}:add_unlock("arthurian")

RECIPE {
    type = 'recipe',
    name = 'arthurian-blood-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-arthurian', amount = 1},
    },
    results = {
        {type = 'fluid', name = 'blood', amount = 50},
    },
    subgroup = 'py-alienlife-arthurian',
    order = 'c',
}:add_unlock("arthurian")

RECIPE {
    type = 'recipe',
    name = 'arthurian-fat-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-arthurian', amount = 1},
    },
    results = {
        {type = 'item', name = 'mukmoux-fat', amount = 1},
    },
    subgroup = 'py-alienlife-arthurian',
    order = 'c',
}:add_unlock("arthurian")

---caged---
RECIPE {
    type = 'recipe',
    name = 'caged-arthurian',
    category = 'crafting',
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = 'item', name = 'arthurian', amount = 1},
        {type = 'item', name = 'cage', amount = 1},
    },
    results = {
        {type = 'item', name = 'caged-arthurian', amount = 1},
    },
}:add_unlock("arthurian")

RECIPE {
    type = 'recipe',
    name = 'uncaged-arthurian',
    category = 'crafting',
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = 'item', name = 'caged-arthurian', amount = 1},
    },
    results = {
        {type = 'item', name = 'arthurian', amount = 1},
        {type = 'item', name = 'cage', amount = 1},
    },
    main_product = "arthurian",
}:add_unlock("arthurian")