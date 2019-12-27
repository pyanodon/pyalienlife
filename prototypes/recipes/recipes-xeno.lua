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
        {type = 'item', name = 'cage', amount = 1},
        {type = 'item', name = 'xeno-codex', amount = 1},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'caged-xeno', amount = 1},
    },
    main_product = "caged-xeno",
    subgroup = 'py-alienlife-xeno',
    order = 'a',
}:add_unlock("assisted-embryology")

RECIPE {
    type = 'recipe',
    name = 'xeno-mature-02',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'xeno-egg', amount = 1},
        {type = 'item', name = 'gh', amount = 1},
        {type = 'item', name = 'cage', amount = 1},
        {type = 'item', name = 'xeno-codex', amount = 1},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'caged-xeno', amount = 1},
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