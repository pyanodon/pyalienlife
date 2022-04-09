--------------------------zungror-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'zungror',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = 'item', name = 'alien-sample-03', amount = 10},
        {type = 'item', name = 'cdna', amount = 15},
        {type = 'item', name = 'bio-sample', amount = 50},
        {type = 'item', name = 'cocoon', amount = 5},
        {type = 'item', name = 'earth-spider-sample', amount = 2},
        {type = 'item', name = 'strorix-unknown-sample', amount = 2},
        {type = 'item', name = 'earth-goat-sample', amount = 1},
        {type = 'fluid', name = 'fetal-serum', amount = 500},
        {type = 'fluid', name = 'artificial-blood', amount = 100},
        {type = 'item', name = 'zungror-codex', amount = 1},
    },
    results = {
        {type = 'item', name = 'zungror', amount = 1},
    },
}:add_unlock("zungror")

RECIPE {
    type = 'recipe',
    name = 'earth-spider-sample',
    category = 'data-array',
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = 'item', name = 'earth-generic-sample', amount = 1},
        {type = 'item', name = 'py-science-pack-02', amount = 25},
        {type = 'item', name = 'neuromorphic-chip', amount = 4},
    },
    results = {
        {type = 'item', name = 'earth-spider-sample', amount = 1},
    },
}:add_unlock("zungror")

RECIPE {
    type = 'recipe',
    name = 'earth-goat-sample',
    category = 'data-array',
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = 'item', name = 'earth-generic-sample', amount = 100},
        {type = 'item', name = 'py-science-pack-02', amount = 25},
        {type = 'item', name = 'processing-unit', amount = 1},
    },
    results = {
        {type = 'item', name = 'earth-spider-sample', amount = 1},
    },
}:add_unlock("zungror")

RECIPE {
    type = 'recipe',
    name = 'zungror-codex',
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
        {type = 'item', name = 'zungror-codex', amount = 1},
    },
}:add_unlock("zungror")

---maturing---

RECIPE {
    type = 'recipe',
    name = 'zungror-mature-01',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = 'item', name = 'zungror-cocoon', amount = 1},
        {type = 'fluid', name = 'fetal-serum', amount = 100},
        {type = 'fluid', name = 'arqad-jelly', amount = 100},
    },
    results = {
        {type = 'item', name = 'zungror', amount = 1},
    },
    main_product = "zungror",
    subgroup = 'py-alienlife-zungror',
    order = 'a',
}:add_unlock("zungror")

RECIPE {
    type = 'recipe',
    name = 'zungror-mature-02',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'zungror-cocoon', amount = 1},
        {type = 'item', name = 'gh', amount = 2},
        {type = 'item', name = 'resveratrol', amount = 3},
        {type = 'fluid', name = 'fetal-serum', amount = 100},
        {type = 'fluid', name = 'arqad-jelly', amount = 100},
    },
    results = {
        {type = 'item', name = 'zungror', amount = 1},
    },
    --main_product = "caged-zungror",
    subgroup = 'py-alienlife-zungror',
    order = 'a',
}:add_unlock("growth-hormone")

---caged---
RECIPE {
    type = 'recipe',
    name = 'caged-zungror',
    category = 'crafting',
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = 'item', name = 'zungror', amount = 1},
        {type = 'item', name = 'cage', amount = 1},
    },
    results = {
        {type = 'item', name = 'caged-zungror', amount = 1},
    },
}:add_unlock("zungror")

RECIPE {
    type = 'recipe',
    name = 'uncaged-zungror',
    category = 'crafting',
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = 'item', name = 'caged-zungror', amount = 1},
    },
    results = {
        {type = 'item', name = 'zungror', amount = 1},
        {type = 'item', name = 'cage', amount = 1},
    },
    main_product = "zungror",
}:add_unlock("zungror")
