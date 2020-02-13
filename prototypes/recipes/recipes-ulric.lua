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
        {type = 'item', name = 'bio-sample', amount = 10},
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
    energy_required = 25,
    ingredients = {
        {type = 'item', name = 'steel-chest', amount = 1},
        {type = 'item', name = 'automation-science-pack', amount = 15},
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
        {type = 'item', name = 'wood-seeds', amount = 10},
        {type = 'item', name = 'ash', amount = 10},
        {type = 'fluid', name = 'steam', amount = 100},
    },
    results = {
        {type = 'item', name = 'ulric-food-01', amount = 3},
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
        {type = 'item', name = 'wood-seeds', amount = 10},
        {type = 'item', name = 'ash', amount = 10},
        {type = 'item', name = 'bio-sample', amount = 5},
        {type = 'item', name = 'moss', amount = 10},
        {type = 'item', name = 'seaweed', amount = 10},
        {type = 'fluid', name = 'steam', amount = 100},
    },
    results = {
        {type = 'item', name = 'ulric-food-02', amount = 5},
    },
}:add_unlock("food-mk02")

---maturing---

RECIPE {
    type = 'recipe',
    name = 'ulric-mature-01',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 45,
    ingredients = {
        {type = 'item', name = 'ulric-cub', amount = 1},
        {type = 'item', name = 'cage', amount = 1},
        {type = 'item', name = 'ulric-codex', amount = 1},
        {type = 'item', name = 'earth-horse-sample', amount = 1},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'caged-ulric', amount = 1},
    },
    main_product = "caged-ulric",
    subgroup = 'py-alienlife-ulric',
    order = 'a',
}:add_unlock("assisted-embryology")

RECIPE {
    type = 'recipe',
    name = 'ulric-mature-02',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'ulric-cub', amount = 1},
        {type = 'item', name = 'gh', amount = 1},
        {type = 'item', name = 'resveratrol', amount = 1},
        {type = 'item', name = 'cage', amount = 2},
        {type = 'item', name = 'ulric-codex', amount = 1},
        {type = 'item', name = 'earth-horse-sample', amount = 1},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'caged-ulric', amount = 2},
    },
    main_product = "caged-ulric",
    subgroup = 'py-alienlife-ulric',
    order = 'a',
}:add_unlock("growth-hormone")

----adverse products----




----PROCESSING----



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
    energy_required = 0.5,
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
    energy_required = 0.5,
    ingredients = {
        {type = 'item', name = 'caged-ulric', amount = 1},
    },
    results = {
        {type = 'item', name = 'ulric', amount = 1},
        {type = 'item', name = 'cage', amount = 1},
    },
    main_product = "ulric",
}:add_unlock("ulric")


---UPDATES---
RECIPE {
    type = 'recipe',
    name = 'ulric-mk02',
    category = 'ulric',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'ulric', amount = 2},
        {type = 'item', name = 'ulric-food-02', amount = 2},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'raw-fiber', amount = 6},
        {type = 'item', name = 'water-barrel', amount = 7},
        },
    results = {
        {type = 'item', name = 'ulric-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'empty-barrel', amount = 7},
        {type = 'item', name = 'ulric', amount = 1, probability = 0.5},
    },
    --main_product = "ulric-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-ulric',
    order = 'za'
}:add_unlock("selective-breeding")

RECIPE {
    type = 'recipe',
    name = 'ulric-mk03',
    category = 'ulric',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'ulric', amount = 2},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'ulric-food-02', amount = 3},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'raw-fiber', amount = 6},
        {type = 'item', name = 'water-barrel', amount = 7},
        },
    results = {
        {type = 'item', name = 'ulric-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'empty-barrel', amount = 7},
        {type = 'item', name = 'ulric', amount = 1, probability = 0.6},
    },
    --main_product = "ulric-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-ulric',
    order = 'zb'
}:add_unlock("artificial-breeding")

RECIPE {
    type = 'recipe',
    name = 'ulric-mk04',
    category = 'ulric',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'ulric', amount = 2},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'ulric-food-02', amount = 3},
        {type = 'item', name = 'bedding', amount = 4},
        {type = 'item', name = 'raw-fiber', amount = 6},
        {type = 'item', name = 'water-barrel', amount = 7},
        },
    results = {
        {type = 'item', name = 'ulric-mk04', amount = 1, probability = 0.003},
        {type = 'item', name = 'empty-barrel', amount = 7},
        {type = 'item', name = 'ulric', amount = 1, probability = 0.7},
    },
    --main_product = "ulric-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-ulric',
    order = 'zc'
}:add_unlock("biased-mutation")

