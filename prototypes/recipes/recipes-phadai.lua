--------------------------PHADAI-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'phadai',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 200,
    ingredients = {
        {type = 'item', name = 'alien-sample-03', amount = 10},
        {type = 'item', name = 'cdna', amount = 10},
        {type = 'item', name = 'cytostatics', amount = 5},
        {type = 'item', name = 'phadai-codex', amount = 2},
        {type = 'item', name = 'earth-tiger-sample', amount = 1},
        {type = 'fluid', name = 'fetal-serum', amount = 100},
        {type = 'fluid', name = 'artificial-blood', amount = 100},
    },
    results = {
        {type = 'item', name = 'phadai', amount = 1},
    },
}:add_unlock("phadai")

RECIPE {
    type = 'recipe',
    name = 'phadai-codex',
    category = 'crafting',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'glass', amount = 10},
        {type = 'item', name = 'small-lamp', amount = 2},
        {type = 'item', name = 'processing-unit', amount = 5},
        {type = 'item', name = 'green-wire', amount = 5},
    },
    results = {
        {type = 'item', name = 'phadai-codex', amount = 2},
    },
}:add_unlock("phadai")

RECIPE {
    type = 'recipe',
    name = 'earth-tiger-sample',
    category = 'data-array',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'steel-chest', amount = 1},
        {type = 'item', name = 'production-science-pack', amount = 2},
        {type = 'item', name = 'phadai-codex', amount = 1},
    },
    results = {
        {type = 'item', name = 'earth-tiger-sample', amount = 1},
    },
}:add_unlock("phadai")

----food----

RECIPE {
    type = 'recipe',
    name = 'phadai-food-01',
    category = 'crafting-with-fluid',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'plastic-bar', amount = 3},
        {type = 'item', name = 'meat', amount = 10},
        {type = 'item', name = 'rennea-seeds', amount = 10},
        {type = 'item', name = 'guts', amount = 5},
        {type = 'item', name = 'raw-fish', amount = 5},
        {type = 'item', name = 'ralesia', amount = 10},
        {type = 'item', name = 'bones', amount = 10},
        {type = 'fluid', name = 'steam', amount = 100},
    },
    results = {
        {type = 'item', name = 'phadai-food-01', amount = 1},
    },
}:add_unlock("food-mk03")

RECIPE {
    type = 'recipe',
    name = 'phadai-food-02',
    category = 'crafting-with-fluid',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'plastic-bar', amount = 3},
        {type = 'item', name = 'meat', amount = 10},
        {type = 'item', name = 'bones', amount = 10},
        {type = 'item', name = 'rennea-seeds', amount = 10},
        {type = 'item', name = 'guts', amount = 5},
        {type = 'item', name = 'yotoi-fruit', amount = 5},
        {type = 'item', name = 'mukmoux-fat', amount = 8},
        {type = 'item', name = 'ash', amount = 10},
        {type = 'item', name = 'raw-fish', amount = 5},
        {type = 'item', name = 'ralesia', amount = 10},
        {type = 'fluid', name = 'steam', amount = 100},
    },
    results = {
        {type = 'item', name = 'phadai-food-02', amount = 1},
    },
}:add_unlock("food-mk03")

---breeding---

RECIPE {
    type = 'recipe',
    name = 'phadai-sex-01',
    category = 'phadai',
    enabled = false,
    energy_required = 150,
    ingredients = {
        {type = 'item', name = 'caged-ulric', amount = 1},
        {type = 'item', name = 'programmable-speaker', amount = 1},
        {type = 'item', name = 'small-lamp', amount = 2},
        {type = 'item', name = 'water-barrel', amount = 5},
    },
    results = {
        {type = 'item', name = 'caged-phadai', amount = 1, probability = 0.5},
        {type = 'item', name = 'empty-barrel', amount = 5},
    },
    main_product = "caged-phadai",
    subgroup = 'py-alienlife-phadai',
    order = 'a',
}:add_unlock("phadai")

RECIPE {
    type = 'recipe',
    name = 'phadai-sex-food-01',
    category = 'phadai',
    enabled = false,
    energy_required = 140,
    ingredients = {
        {type = 'item', name = 'caged-ulric', amount = 1},
        {type = 'item', name = 'programmable-speaker', amount = 1},
        {type = 'item', name = 'small-lamp', amount = 2},
        {type = 'item', name = 'phadai-food-01', amount = 2},
        {type = 'item', name = 'water-barrel', amount = 5},
    },
    results = {
        {type = 'item', name = 'caged-phadai', amount = 1, probability = 0.6},
        {type = 'item', name = 'empty-barrel', amount = 5},
    },
    main_product = "caged-phadai",
    subgroup = 'py-alienlife-phadai',
    order = 'a',
}:add_unlock("phadai")

RECIPE {
    type = 'recipe',
    name = 'phadai-sex-01-mukmoux',
    category = 'phadai',
    enabled = false,
    energy_required = 130,
    ingredients = {
        {type = 'item', name = 'caged-mukmoux', amount = 1},
        {type = 'item', name = 'programmable-speaker', amount = 1},
        {type = 'item', name = 'small-lamp', amount = 2},
        {type = 'item', name = 'water-barrel', amount = 5},
    },
    results = {
        {type = 'item', name = 'caged-phadai', amount = 1, probability = 0.5},
        {type = 'item', name = 'empty-barrel', amount = 5},
    },
    main_product = "caged-phadai",
    subgroup = 'py-alienlife-phadai',
    order = 'a',
}:add_unlock("phadai")

RECIPE {
    type = 'recipe',
    name = 'phadai-sex-food-02',
    category = 'phadai',
    enabled = false,
    energy_required = 130,
    ingredients = {
        {type = 'item', name = 'caged-mukmoux', amount = 1},
        {type = 'item', name = 'programmable-speaker', amount = 1},
        {type = 'item', name = 'small-lamp', amount = 2},
        {type = 'item', name = 'phadai-food-02', amount = 1},
        {type = 'item', name = 'water-barrel', amount = 5},
    },
    results = {
        {type = 'item', name = 'caged-phadai', amount = 1, probability = 0.6},
        {type = 'item', name = 'empty-barrel', amount = 5},
    },
    main_product = "caged-phadai",
    subgroup = 'py-alienlife-phadai',
    order = 'a',
}:add_unlock("phadai")

RECIPE {
    type = 'recipe',
    name = 'phadai-sex-01-scrondrix',
    category = 'phadai',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'caged-scrondrix', amount = 1},
        {type = 'item', name = 'programmable-speaker', amount = 1},
        {type = 'item', name = 'small-lamp', amount = 2},
        {type = 'item', name = 'water-barrel', amount = 5},
    },
    results = {
        {type = 'item', name = 'caged-phadai', amount = 1, probability = 0.5},
        {type = 'item', name = 'empty-barrel', amount = 5},
    },
    main_product = "caged-phadai",
    subgroup = 'py-alienlife-phadai',
    order = 'a',
}:add_unlock("phadai")

RECIPE {
    type = 'recipe',
    name = 'phadai-sex-scrondrix-food-01',
    category = 'phadai',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'caged-scrondrix', amount = 1},
        {type = 'item', name = 'programmable-speaker', amount = 1},
        {type = 'item', name = 'small-lamp', amount = 2},
        {type = 'item', name = 'phadai-food-01', amount = 2},
        {type = 'item', name = 'water-barrel', amount = 5},
    },
    results = {
        {type = 'item', name = 'caged-phadai', amount = 1, probability = 0.6},
        {type = 'item', name = 'empty-barrel', amount = 5},
    },
    main_product = "caged-phadai",
    subgroup = 'py-alienlife-phadai',
    order = 'a',
}:add_unlock("phadai")

RECIPE {
    type = 'recipe',
    name = 'phadai-sex-scrondrix-food-02',
    category = 'phadai',
    enabled = false,
    energy_required = 90,
    ingredients = {
        {type = 'item', name = 'caged-scrondrix', amount = 1},
        {type = 'item', name = 'programmable-speaker', amount = 1},
        {type = 'item', name = 'small-lamp', amount = 2},
        {type = 'item', name = 'phadai-food-02', amount = 2},
        {type = 'item', name = 'water-barrel', amount = 5},
    },
    results = {
        {type = 'item', name = 'caged-phadai', amount = 1, probability = 0.6},
        {type = 'item', name = 'empty-barrel', amount = 5},
    },
    main_product = "caged-phadai",
    subgroup = 'py-alienlife-phadai',
    order = 'a',
}:add_unlock("phadai")

---pup maker---

RECIPE {
    type = 'recipe',
    name = 'phadai-sex-pup-01',
    category = 'phadai',
    enabled = false,
    energy_required = 140,
    ingredients = {
        {type = 'item', name = 'phadai-food-01', amount = 1},
        {type = 'item', name = 'programmable-speaker', amount = 1},
        {type = 'item', name = 'small-lamp', amount = 2},
        {type = 'item', name = 'water-barrel', amount = 4},
    },
    results = {
        {type = 'item', name = 'phadai-pup', amount = 1},
        {type = 'item', name = 'empty-barrel', amount = 4},
    },
    main_product = "phadai-pup",
    subgroup = 'py-alienlife-phadai',
    order = 'a',
}:add_unlock("assisted-embryology")

RECIPE {
    type = 'recipe',
    name = 'phadai-sex-pup-02',
    category = 'phadai',
    enabled = false,
    energy_required = 120,
    ingredients = {
        {type = 'item', name = 'phadai-food-02', amount = 1},
        {type = 'item', name = 'programmable-speaker', amount = 1},
        {type = 'item', name = 'small-lamp', amount = 2},
        {type = 'item', name = 'water-barrel', amount = 4},
    },
    results = {
        {type = 'item', name = 'phadai-pup', amount = 2},
        {type = 'item', name = 'empty-barrel', amount = 4},
    },
    main_product = "phadai-pup",
    subgroup = 'py-alienlife-phadai',
    order = 'a',
}:add_unlock("assisted-embryology")


---maturing---

RECIPE {
    type = 'recipe',
    name = 'phadai-mature-01',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 70,
    ingredients = {
        {type = 'item', name = 'phadai-pup', amount = 1},
        {type = 'item', name = 'phadai-codex', amount = 1},
        {type = 'item', name = 'earth-tiger-sample', amount = 1},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'phadai', amount = 1},
    },
    main_product = "phadai",
    subgroup = 'py-alienlife-phadai',
    order = 'a',
}:add_unlock("assisted-embryology")

----adverse products----

RECIPE {
    type = 'recipe',
    name = 'phadai-carapace-00',
    category = 'phadai',
    enabled = false,
    energy_required = 120,
    ingredients = {
        {type = 'item', name = 'meat', amount = 10},
        {type = 'item', name = 'programmable-speaker', amount = 1},
        {type = 'item', name = 'small-lamp', amount = 2},
        {type = 'item', name = 'water-barrel', amount = 5},
    },
    results = {
        {type = 'item', name = 'carapace', amount = 3},
        {type = 'item', name = 'empty-barrel', amount = 5},
    },
    main_product = "carapace",
}:add_unlock("phadai")

RECIPE {
    type = 'recipe',
    name = 'phadai-carapace-01',
    category = 'phadai',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'phadai-food-01', amount = 1},
        {type = 'item', name = 'programmable-speaker', amount = 1},
        {type = 'item', name = 'small-lamp', amount = 2},
        {type = 'item', name = 'water-barrel', amount = 5},
    },
    results = {
        {type = 'item', name = 'carapace', amount = 4},
        {type = 'item', name = 'empty-barrel', amount = 5},
    },
    main_product = "carapace",
}:add_unlock("phadai")

RECIPE {
    type = 'recipe',
    name = 'phadai-carapace-02',
    category = 'phadai',
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = 'item', name = 'phadai-food-01', amount = 1},
        {type = 'item', name = 'programmable-speaker', amount = 1},
        {type = 'item', name = 'small-lamp', amount = 2},
        --jute
        {type = 'item', name = 'water-barrel', amount = 5},
    },
    results = {
        {type = 'item', name = 'carapace', amount = 4},
        {type = 'item', name = 'empty-barrel', amount = 5},
    },
    main_product = "carapace",
}:add_unlock("phadai")

RECIPE {
    type = 'recipe',
    name = 'phadai-carapace-01-food',
    category = 'phadai',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'phadai-food-02', amount = 1},
        {type = 'item', name = 'programmable-speaker', amount = 1},
        {type = 'item', name = 'small-lamp', amount = 2},
        --jute
        {type = 'item', name = 'water-barrel', amount = 3},
    },
    results = {
        {type = 'item', name = 'carapace', amount = 8},
        {type = 'item', name = 'empty-barrel', amount = 3},
    },
    main_product = "carapace",
}:add_unlock("phadai")


----PROCESSING----


RECIPE {
    type = 'recipe',
    name = 'phadai-full-rendering',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'caged-phadai', amount = 1},
    },
    results = {
        {type = 'item', name = 'meat', amount = 3, probability = 0.3},
        {type = 'item', name = 'bones', amount = 3, probability = 0.3},
        {type = 'item', name = 'brain', amount = 1, probability = 0.4},
        {type = 'item', name = 'carapace', amount = 1, probability = 0.4},
        {type = 'item', name = 'guts', amount = 3, probability = 0.5},
        {type = 'fluid', name = 'blood', amount = 35},
    },
    icon = '__pyalienlife__/graphics/icons/rendering-phadai.png',
    icon_size = 64,
    subgroup = 'py-alienlife-phadai',
    order = 'b',
}:add_unlock("phadai")

RECIPE {
    type = 'recipe',
    name = 'phadai-carapace-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-phadai', amount = 1},
    },
    results = {
        {type = 'item', name = 'carapace', amount = 12},
    },
    subgroup = 'py-alienlife-phadai',
    order = 'c',
}:add_unlock("phadai")

RECIPE {
    type = 'recipe',
    name = 'phadai-meat-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-phadai', amount = 1},
    },
    results = {
        {type = 'item', name = 'meat', amount = 5},
    },
    subgroup = 'py-alienlife-phadai',
    order = 'c',
}:add_unlock("phadai")

RECIPE {
    type = 'recipe',
    name = 'phadai-guts-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-phadai', amount = 1},
    },
    results = {
        {type = 'item', name = 'guts', amount = 4},
    },
    subgroup = 'py-alienlife-phadai',
    order = 'c',
}:add_unlock("phadai")

RECIPE {
    type = 'recipe',
    name = 'phadai-blood-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'phadai', amount = 1},
    },
    results = {
        {type = 'fluid', name = 'blood', amount = 50},
    },
    subgroup = 'py-alienlife-phadai',
    order = 'c',
}:add_unlock("phadai")

RECIPE {
    type = 'recipe',
    name = 'phadai-bones-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-phadai', amount = 1},
    },
    results = {
        {type = 'item', name = 'bones', amount = 4},
    },
    subgroup = 'py-alienlife-phadai',
    order = 'c',
}:add_unlock("phadai")

RECIPE {
    type = 'recipe',
    name = 'phadai-brain-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-phadai', amount = 1},
    },
    results = {
        {type = 'item', name = 'brain', amount = 1},
    },
    subgroup = 'py-alienlife-phadai',
    order = 'c',
}:add_unlock("phadai")

---caged---
RECIPE {
    type = 'recipe',
    name = 'caged-phadai',
    category = 'crafting',
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = 'item', name = 'phadai', amount = 1},
        {type = 'item', name = 'cage', amount = 1},
    },
    results = {
        {type = 'item', name = 'caged-phadai', amount = 1},
    },
}:add_unlock("phadai")

RECIPE {
    type = 'recipe',
    name = 'uncaged-phadai',
    category = 'crafting',
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = 'item', name = 'caged-phadai', amount = 1},
    },
    results = {
        {type = 'item', name = 'phadai', amount = 1},
        {type = 'item', name = 'cage', amount = 1},
    },
    main_product = "phadai",
}:add_unlock("phadai")