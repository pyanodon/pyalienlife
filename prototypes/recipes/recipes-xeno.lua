--------------------------XENO-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'xeno',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = 'item', name = 'alien-sample-02', amount = 2},
        {type = 'item', name = 'bio-sample', amount = 20},
        {type = 'item', name = 'earth-generic-sample', amount = 5},
        {type = 'item', name = 'cdna', amount = 3},
        {type = 'item', name = 'xeno-codex', amount = 1},
        {type = 'fluid', name = 'artificial-blood', amount = 1000}, --add alien sample from pyALiens mod here.
    },
    results = {
        {type = 'item', name = 'xeno', amount = 1},
    },
}:add_unlock("xeno")

RECIPE {
    type = 'recipe',
    name = 'xeno-codex',
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
        {type = 'item', name = 'xeno-codex', amount = 1},
    },
}:add_unlock("xeno")


----food----

---maturing---

RECIPE {
    type = 'recipe',
    name = 'xeno-mature-01',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = 'item', name = 'xeno-egg', amount = 1},
        {type = 'item', name = 'xeno-codex', amount = 1},
        {type = 'item', name = 'caged-mukmoux', amount = 1},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'caged-xeno', amount = 1},
    },
    main_product = "caged-xeno",
    subgroup = 'py-alienlife-xeno',
    order = 'a',
}:add_unlock("xeno")

RECIPE {
    type = 'recipe',
    name = 'xeno-mature-02',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'xeno-egg', amount = 1},
        {type = 'item', name = 'resveratrol', amount = 1},
        {type = 'item', name = 'caged-mukmoux', amount = 1},
        {type = 'item', name = 'gh', amount = 1},
        {type = 'item', name = 'xeno-codex', amount = 1},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'caged-xeno', amount = 2},
    },
    main_product = "caged-xeno",
    subgroup = 'py-alienlife-xeno',
    order = 'a',
}:add_unlock("growth-hormone")

----adverse products----




----PROCESSING----



---caged---
RECIPE {
    type = 'recipe',
    name = 'caged-xeno',
    category = 'crafting',
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = 'item', name = 'xeno', amount = 1},
        {type = 'item', name = 'cage', amount = 1},
    },
    results = {
        {type = 'item', name = 'caged-xeno', amount = 1},
    },
}:add_unlock("xeno")

RECIPE {
    type = 'recipe',
    name = 'uncaged-xeno',
    category = 'crafting',
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = 'item', name = 'caged-xeno', amount = 1},
    },
    results = {
        {type = 'item', name = 'xeno', amount = 1},
        {type = 'item', name = 'cage', amount = 1},
    },
    main_product = "xeno",
}:add_unlock("xeno")


---UPDATES---
RECIPE {
    type = 'recipe',
    name = 'xeno-mk02',
    category = 'xeno',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'xeno', amount = 2},
        {type = 'item', name = 'caged-mukmoux', amount = 1},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'bones', amount = 10},
        {type = 'item', name = 'fish', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 6},
        },
    results = {
        {type = 'item', name = 'xeno-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'empty-barrel', amount = 6},
    },
    --main_product = "xeno-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-xeno',
    order = 'za'
}:add_unlock("selective-breeding")

RECIPE {
    type = 'recipe',
    name = 'xeno-mk03',
    category = 'xeno',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'xeno', amount = 2},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'caged-mukmoux', amount = 1},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'bones', amount = 10},
        {type = 'item', name = 'fish', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 6},
        },
    results = {
        {type = 'item', name = 'xeno-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'empty-barrel', amount = 6},
    },
    --main_product = "xeno-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-xeno',
    order = 'zb'
}:add_unlock("artificial-breeding")

RECIPE {
    type = 'recipe',
    name = 'xeno-mk04',
    category = 'xeno',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'xeno', amount = 2},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'caged-mukmoux', amount = 1},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'bones', amount = 10},
        {type = 'item', name = 'fish', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 6},
        },
    results = {
        {type = 'item', name = 'xeno-mk04', amount = 1, probability = 0.003},
        {type = 'item', name = 'empty-barrel', amount = 6},
    },
    --main_product = "xeno-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-xeno',
    order = 'zc'
}:add_unlock("biased-mutation")