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
        {type = 'item', name = 'earth-spider-sample', amount = 1},
        {type = 'item', name = 'strorix-unknown-sample', amount = 2},
        {type = 'item', name = 'earth-goat-sample', amount = 1},
        {type = 'fluid', name = 'fetal-serum', amount = 500},
        {type = 'fluid', name = 'artificial-blood', amount = 100},
    },
    results = {
        {type = 'item', name = 'zungror', amount = 1},
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




----adverse products----

--WIP. NOT CHANGED OR BALANCED YET--

RECIPE {
    type = 'recipe',
    name = 'zungror-mk02',
    category = 'zungror',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'zungror', amount = 2},
        {type = 'item', name = 'caged-mukmoux', amount = 1},
        {type = 'item', name = 'guts', amount = 5},
        {type = 'item', name = 'bedding', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 15},
        },
    results = {
        {type = 'item', name = 'zungror-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'empty-barrel', amount = 15},
        {type = 'item', name = 'zungror', amount = 1, probability = 0.5},
    },
    --main_product = "zungror-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-zungror',
    order = 'za'
}:add_unlock("selective-breeding")

RECIPE {
    type = 'recipe',
    name = 'zungror-mk03',
    category = 'zungror',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'zungror', amount = 2},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'caged-mukmoux', amount = 1},
        {type = 'item', name = 'guts', amount = 5},
        {type = 'item', name = 'bedding', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 15},
        },
    results = {
        {type = 'item', name = 'zungror-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'empty-barrel', amount = 15},
        {type = 'item', name = 'zungror', amount = 1, probability = 0.6},
    },
    --main_product = "zungror-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-zungror',
    order = 'zb'
}:add_unlock("artificial-breeding")

RECIPE {
    type = 'recipe',
    name = 'zungror-mk04',
    category = 'zungror',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'zungror', amount = 2},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'caged-mukmoux', amount = 1},
        {type = 'item', name = 'guts', amount = 5},
        {type = 'item', name = 'bedding', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 15},
        },
    results = {
        {type = 'item', name = 'zungror-mk04', amount = 1, probability = 0.003},
        {type = 'item', name = 'empty-barrel', amount = 15},
        {type = 'item', name = 'zungror', amount = 1, probability = 0.7},
    },
    --main_product = "zungror-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-zungror',
    order = 'zc'
}:add_unlock("biased-mutation")
