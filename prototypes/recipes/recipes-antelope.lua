--------------------------ANTELOPE-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'antelope',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = 'item', name = 'alien-sample-03', amount = 2},
        {type = 'item', name = 'cdna', amount = 5},
        {type = 'item', name = 'bio-sample', amount = 20},
        {type = 'item', name = 'antelope-codex', amount = 2},
        {type = 'item', name = 'earth-antelope-sample', amount = 1},
        {type = 'fluid', name = 'fetal-serum', amount = 100},
        {type = 'fluid', name = 'tritium', amount = 60},
    },
    results = {
        {type = 'item', name = 'antelope', amount = 1},
    },
}:add_unlock("schrodinger-antelope")

RECIPE {
    type = 'recipe',
    name = 'antelope-codex',
    category = 'crafting',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'glass', amount = 2},
        {type = 'item', name = 'small-lamp', amount = 2},
        {type = 'item', name = 'processing-unit', amount = 5},
        {type = 'item', name = 'green-wire', amount = 5},
    },
    results = {
        {type = 'item', name = 'antelope-codex', amount = 1},
    },
}:add_unlock("schrodinger-antelope")

RECIPE {
    type = 'recipe',
    name = 'earth-antelope-sample',
    category = 'data-array',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'steel-chest', amount = 1},
        {type = 'item', name = 'py-science-pack', amount = 5},
        {type = 'item', name = 'antelope-codex', amount = 1},
    },
    results = {
        {type = 'item', name = 'earth-antelope-sample', amount = 1},
    },
}:add_unlock("schrodinger-antelope")


----food----


---breeding---

---maturing---

----adverse products----




----PROCESSING----

---caged---

RECIPE {
    type = 'recipe',
    name = 'cage-antelope',
    category = 'crafting',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'titanium-plate', amount = 10},
        {type = 'item', name = 'ticocr-alloy', amount = 5},
        {type = 'item', name = 'diamond', amount = 10},
    },
    results = {
        {type = 'item', name = 'cage-antelope', amount = 1},
    },
    subgroup = 'py-alienlife-antelope',
    order = 'c',
}:add_unlock("schrodinger-antelope")

RECIPE {
    type = 'recipe',
    name = 'caged-antelope',
    category = 'crafting',
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = 'item', name = 'cage-antelope', amount = 1},
        {type = 'item', name = 'antelope', amount = 1},
    },
    results = {
        {type = 'item', name = 'caged-antelope', amount = 1},
    },
}:add_unlock("schrodinger-antelope")

RECIPE {
    type = 'recipe',
    name = 'uncage-antelope',
    category = 'crafting',
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = 'item', name = 'caged-antelope', amount = 1},
    },
    results = {
        {type = 'item', name = 'cage-antelope', amount = 1},
        {type = 'item', name = 'antelope', amount = 1, probability = 0.5},
    },
    main_product = "antelope",
}:add_unlock("schrodinger-antelope")