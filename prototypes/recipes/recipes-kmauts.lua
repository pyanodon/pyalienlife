--------------------------KMAUTS-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'kmauts',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = 'item', name = 'alien-sample-02', amount = 2},
        {type = 'item', name = 'cdna', amount = 3},
        {type = 'item', name = 'kmauts-codex', amount = 1},
        {type = 'item', name = 'cocoon', amount = 5},
        {type = 'fluid', name = 'water', amount = 1000}, --add alien sample from pyALiens mod here.
    },
    results = {
        {type = 'item', name = 'kmauts', amount = 1},
    },
}:add_unlock("kmauts")

RECIPE {
    type = 'recipe',
    name = 'kmauts-codex',
    category = 'crafting',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'glass', amount = 2},
        {type = 'item', name = 'small-lamp', amount = 5},
        {type = 'item', name = 'advanced-circuit', amount = 40},
        {type = 'item', name = 'tinned-cable', amount = 20},
    },
    results = {
        {type = 'item', name = 'kmauts-codex', amount = 1},
    },
}:add_unlock("kmauts")

----food----

---breeding---


----adverse products----




----PROCESSING----


---caged---
RECIPE {
    type = 'recipe',
    name = 'caged-kmauts',
    category = 'crafting',
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = 'item', name = 'kmauts', amount = 1},
        {type = 'item', name = 'cage', amount = 1},
    },
    results = {
        {type = 'item', name = 'caged-kmauts', amount = 1},
    },
}:add_unlock("kmauts")

RECIPE {
    type = 'recipe',
    name = 'uncaged-kmauts',
    category = 'crafting',
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = 'item', name = 'caged-kmauts', amount = 1},
    },
    results = {
        {type = 'item', name = 'kmauts', amount = 1},
        {type = 'item', name = 'cage', amount = 1},
    },
    main_product = "kmauts",
}:add_unlock("kmauts")