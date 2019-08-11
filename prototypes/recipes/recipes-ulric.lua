--------------------------ULRIC-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'ulric',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = 'item', name = 'alien-sample-02', amount = 2},
        {type = 'item', name = 'cdna', amount = 3},
        {type = 'item', name = 'ulric-codex', amount = 1},
        {type = 'item', name = 'earth-horse-sample', amount = 1},
        {type = 'fluid', name = 'water', amount = 1000}, --add alien sample from pyALiens mod here.
    },
    results = {
        {type = 'item', name = 'ulric', amount = 1},
    },
}:add_unlock("ulric")

RECIPE {
    type = 'recipe',
    name = 'ulric-codex',
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
        {type = 'item', name = 'ulric-codex', amount = 1},
    },
}:add_unlock("ulric")

RECIPE {
    type = 'recipe',
    name = 'earth-horse-sample',
    category = 'data-array',
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = 'item', name = 'steel-chest', amount = 1},
        {type = 'item', name = 'automation-science-pack', amount = 100},
        {type = 'item', name = 'ulric-codex', amount = 1},
    },
    results = {
        {type = 'item', name = 'earth-horse-sample', amount = 1},
    },
}:add_unlock("ulric")

----food----
RECIPE {
    type = 'recipe',
    name = 'ulric-food-01',
    category = 'crafting-with-fluid',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'tin-plate', amount = 2},
        {type = 'item', name = 'fawogae', amount = 5},
        {type = 'item', name = 'ralesias', amount = 5},
        {type = 'item', name = 'wood-seeds', amount = 1},
        {type = 'item', name = 'ash', amount = 10},
        {type = 'fluid', name = 'steam', amount = 100},
    },
    results = {
        {type = 'item', name = 'ulric-food-01', amount = 1},
    },
}:add_unlock("food-mk01")

RECIPE {
    type = 'recipe',
    name = 'ulric-food-02',
    category = 'crafting-with-fluid',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'tin-plate', amount = 2},
        {type = 'item', name = 'fawogae', amount = 5},
        {type = 'item', name = 'ralesias', amount = 5},
        {type = 'item', name = 'wood-seeds', amount = 1},
        {type = 'item', name = 'ash', amount = 10},
        {type = 'item', name = 'moss', amount = 10},
        {type = 'item', name = 'seaweed', amount = 5},
        {type = 'fluid', name = 'steam', amount = 100},
    },
    results = {
        {type = 'item', name = 'ulric-food-02', amount = 1},
    },
}:add_unlock("food-mk02")

---breeding---

RECIPE {
    type = 'recipe',
    name = 'ulric-sex-01',
    category = 'ulric',
    enabled = false,
    energy_required = 130,
    ingredients = {
        {type = 'item', name = 'cage', amount = 1},
        {type = 'item', name = 'ulric-food-01', amount = 1},
        {type = 'item', name = 'water-barrel', amount = 3},
    },
    results = {
        {type = 'item', name = 'caged-ulric', amount = 1, probability = 0.5},
        {type = 'item', name = 'empty-barrel', amount = 3},
    },
    main_product = "caged-ulric",
    subgroup = 'py-alienlife-ulric',
    order = 'a',
}:add_unlock("organic-breeding")


RECIPE {
    type = 'recipe',
    name = 'ulric-sex-01-food',
    category = 'ulric',
    enabled = false,
    energy_required = 110,
    ingredients = {
        {type = 'item', name = 'cage', amount = 1},
        {type = 'item', name = 'ulric-food-02', amount = 1},
        {type = 'item', name = 'water-barrel', amount = 3},
    },
    results = {
        {type = 'item', name = 'caged-ulric', amount = 1, probability = 0.5},
        {type = 'item', name = 'empty-barrel', amount = 3},
    },
    main_product = "caged-ulric",
    subgroup = 'py-alienlife-ulric',
    order = 'a',
}:add_unlock("organic-breeding")

----adverse products----

RECIPE {
    type = 'recipe',
    name = 'ulric-manure-01',
    category = 'ulric',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'ulric-food-01', amount = 1},
        {type = 'item', name = 'water-barrel', amount = 3},
    },
    results = {
        {type = 'item', name = 'manure', amount = 5},
        {type = 'item', name = 'empty-barrel', amount = 3},
    },
    main_product = "manure",
}:add_unlock("ulric")

RECIPE {
    type = 'recipe',
    name = 'ulric-manure-02',
    category = 'ulric',
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = 'item', name = 'ulric-food-01', amount = 1},
        {type = 'item', name = 'salt', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 5},
    },
    results = {
        {type = 'item', name = 'manure', amount = 5},
        {type = 'item', name = 'empty-barrel', amount = 5},
    },
    main_product = "manure",
}:add_unlock("ulric")

RECIPE {
    type = 'recipe',
    name = 'ulric-manure-01-food',
    category = 'ulric',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'ulric-food-02', amount = 1},
        {type = 'item', name = 'water-barrel', amount = 3},
    },
    results = {
        {type = 'item', name = 'manure', amount = 8},
        {type = 'item', name = 'empty-barrel', amount = 3},
    },
    main_product = "manure",
}:add_unlock("ulric")

RECIPE {
    type = 'recipe',
    name = 'ulric-manure-02-food',
    category = 'ulric',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'ulric-food-02', amount = 1},
        {type = 'item', name = 'salt', amount = 10},
        {type = 'item', name = 'water-barrel', amount = 5},
    },
    results = {
        {type = 'item', name = 'manure', amount = 10},
        {type = 'item', name = 'empty-barrel', amount = 5},
    },
    main_product = "manure",
}:add_unlock("ulric")


----PROCESSING----


RECIPE {
    type = 'recipe',
    name = 'ulric-full-rendering',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'caged-ulric', amount = 1},
    },
    results = {
        {type = 'item', name = 'bones', amount = 3, probability = 0.4},
        {type = 'item', name = 'meat', amount = 3, probability = 0.4},
        {type = 'fluid', name = 'blood', amount = 50},
        {type = 'item', name = 'skin', amount = 3, probability = 0.4},
        {type = 'item', name = 'mukmoux-fat', amount = 1, probability = 0.3},
        {type = 'item', name = 'brain', amount = 1, probability = 0.4},
        {type = 'item', name = 'guts', amount = 1, probability = 0.4},
    },
    icon = '__pyalienlife__/graphics/icons/rendering-ulric.png',
    icon_size = 64,
    subgroup = 'py-alienlife-ulric',
    order = 'b'
}:add_unlock("ulric")

RECIPE {
    type = 'recipe',
    name = 'ulric-bonemeal-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-ulric', amount = 1},
    },
    results = {
        {type = 'item', name = 'bonemeal', amount = 6},
    },
    subgroup = 'py-alienlife-ulric',
    order = 'c',
}:add_unlock("ulric")

RECIPE {
    type = 'recipe',
    name = 'ulric-meat-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-ulric', amount = 1},
    },
    results = {
        {type = 'item', name = 'meat', amount = 4},
    },
    subgroup = 'py-alienlife-ulric',
    order = 'c',
}:add_unlock("ulric")

RECIPE {
    type = 'recipe',
    name = 'ulric-brain-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-ulric', amount = 1},
    },
    results = {
        {type = 'item', name = 'brain', amount = 1},
    },
    subgroup = 'py-alienlife-ulric',
    order = 'c',
}:add_unlock("ulric")

RECIPE {
    type = 'recipe',
    name = 'ulric-skin-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-ulric', amount = 1},
    },
    results = {
        {type = 'item', name = 'skin', amount = 2},
    },
    subgroup = 'py-alienlife-ulric',
    order = 'c',
}:add_unlock("ulric")

RECIPE {
    type = 'recipe',
    name = 'ulric-bones-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-ulric', amount = 1},
    },
    results = {
        {type = 'item', name = 'bones', amount = 8},
    },
    subgroup = 'py-alienlife-ulric',
    order = 'c',
}:add_unlock("ulric")

RECIPE {
    type = 'recipe',
    name = 'ulric-guts-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-ulric', amount = 1},
    },
    results = {
        {type = 'item', name = 'guts', amount = 3},
    },
    subgroup = 'py-alienlife-ulric',
    order = 'c',
}:add_unlock("ulric")

RECIPE {
    type = 'recipe',
    name = 'ulric-blood-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-ulric', amount = 1},
    },
    results = {
        {type = 'fluid', name = 'blood', amount = 100},
    },
    subgroup = 'py-alienlife-ulric',
    order = 'c',
}:add_unlock("ulric")

RECIPE {
    type = 'recipe',
    name = 'ulric-fat-01',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'caged-ulric', amount = 1},
    },
    results = {
        {type = 'item', name = 'mukmoux-fat', amount = 3},
    },
    subgroup = 'py-alienlife-ulric',
    order = 'c',
}:add_unlock("ulric")

if not mods["pyhightech"] then

    RECIPE {
        type = 'recipe',
        name = 'bonemeal-from-bones',
        category = 'crusher',
        enabled = false,
        energy_required = 4,
        ingredients = {
            {type = 'item', name = 'bones', amount = 5},
        },
        results = {
            {type = 'item', name = 'bonemeal', amount = 4}
        }
    }:add_unlock('ulric')

end


---caged---
RECIPE {
    type = 'recipe',
    name = 'caged-ulric',
    category = 'crafting',
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = 'item', name = 'ulric', amount = 1},
        {type = 'item', name = 'cage', amount = 1},
    },
    results = {
        {type = 'item', name = 'caged-ulric', amount = 1},
    },
}:add_unlock("ulric")

RECIPE {
    type = 'recipe',
    name = 'uncaged-ulric',
    category = 'crafting',
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = 'item', name = 'caged-ulric', amount = 1},
    },
    results = {
        {type = 'item', name = 'ulric', amount = 1},
        {type = 'item', name = 'cage', amount = 1},
    },
    main_product = "ulric",
}:add_unlock("ulric")