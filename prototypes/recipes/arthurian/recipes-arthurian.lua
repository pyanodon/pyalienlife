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
        {type = 'item', name = 'bio-sample', amount = 5},
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
        {type = 'item', name = 'small-lamp', amount = 4},
        {type = 'item', name = 'electronic-circuit', amount = 10},
        {type = 'item', name = 'tinned-cable', amount = 10},
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
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'earth-generic-sample', amount = 1},
        {type = 'item', name = 'py-science-pack-2', amount = 5},
        {type = 'item', name = 'arthurian-codex', amount = 1},
    },
    results = {
        {type = 'item', name = 'earth-lizard-sample', amount = 1},
    },
}:add_unlock("arthurian")

----food----
RECIPE {
    type = 'recipe',
    name = 'arthurian-food-01',
    category = 'crafting-with-fluid',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'tin-plate', amount = 2},
        {type = 'item', name = 'fawogae', amount = 5},
        {type = 'item', name = 'native-flora', amount = 15},
        {type = 'item', name = 'ralesias', amount = 5},
        {type = 'item', name = 'tuuphra-seeds', amount = 1},
        {type = 'item', name = 'yotoi-leaves', amount = 5},
        {type = 'item', name = 'meat', amount = 10},
        {type = 'fluid', name = 'fish-oil', amount = 30},
        {type = 'fluid', name = 'steam', amount = 100}
    },
    results = {
        {type = 'item', name = 'arthurian-food-01', amount = 3},
    },
}:add_unlock("food-mk01")

RECIPE {
    type = 'recipe',
    name = 'arthurian-food-02',
    category = 'crafting-with-fluid',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'tin-plate', amount = 2},
        {type = 'item', name = 'grod', amount = 4},
        {type = 'item', name = 'tuuphra-seeds', amount = 1},
        {type = 'item', name = 'guar-gum', amount = 1},
        {type = 'item', name = 'meat', amount = 10},
        {type = 'item', name = 'casein', amount = 5},
        {type = 'item', name = 'ash', amount = 10},
        {type = 'item', name = 'native-flora', amount = 20},
        {type = 'item', name = 'moss', amount = 10},
        {type = 'item', name = 'guts', amount = 5},
        {type = 'item', name = 'starch', amount = 4},
        {type = 'fluid', name = 'fish-oil', amount = 30},
        {type = 'fluid', name = 'steam', amount = 100}
    },
    results = {
        {type = 'item', name = 'arthurian-food-02', amount = 6},
    },
}:add_unlock("food-mk02")


----adverse products----


---growing---

RECIPE {
    type = 'recipe',
    name = 'arthurian-grow-01',
    category = 'incubator',
    enabled = false,
    energy_required = 64,
    ingredients = {
        {type = 'item', name = 'arthurian-egg', amount = 4},
        {type = 'item', name = 'meat', amount = 4},
        {type = 'fluid', name = 'water', amount = 500},
    },
    results = {
        {type = 'item', name = 'arthurian-pup', amount = 4},
    },
    main_product = "arthurian-pup",
    subgroup = 'py-alienlife-arthurian',
    order = 'a',
}:add_unlock("assisted-embryology")

---maturing---
--[[
RECIPE {
    type = 'recipe',
    name = 'arthurian-mature-01',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'cage', amount = 10},
        {type = 'item', name = 'arthurian-pup', amount = 10},
        {type = 'fluid', name = 'fetal-serum', amount = 70},
    },
    results = {
        {type = 'item', name = 'caged-arthurian', amount = 10},
    },
    --main_product = "arthurian",
    subgroup = 'py-alienlife-arthurian',
    order = 'a',
}:add_unlock("assisted-embryology")

RECIPE {
    type = 'recipe',
    name = 'arthurian-mature-02',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = 'item', name = 'arthurian-pup', amount = 10},
        {type = 'item', name = 'gh', amount = 2},
        {type = 'item', name = 'resveratrol', amount = 7},
        {type = 'item', name = 'cage', amount = 20},
        {type = 'fluid', name = 'fetal-serum', amount = 70},
    },
    results = {
        {type = 'item', name = 'caged-arthurian', amount = 20},
    },
    main_product = "caged-arthurian",
    subgroup = 'py-alienlife-arthurian',
    order = 'a',
}:add_unlock("growth-hormone")
]]--

----PROCESSING----


---caged---
RECIPE {
    type = 'recipe',
    name = 'caged-arthurian',
    category = 'crafting',
    enabled = false,
    energy_required = 0.5,
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
    energy_required = 0.5,
    ingredients = {
        {type = 'item', name = 'caged-arthurian', amount = 1},
    },
    results = {
        {type = 'item', name = 'arthurian', amount = 1},
        {type = 'item', name = 'cage', amount = 1},
    },
    main_product = "arthurian",
}:add_unlock("arthurian")

--Secondary Upgrade Recipes--
--SUR--
--DONE--

--mk02--
--DONE--

RECIPE {
    type = 'recipe',
    name = 'arthurian-egg-mk02-gmo',
    category = 'arthurian',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'arthurian', amount = 2},
        {type = 'item', name = 'caged-ulric', amount = 1},
        {type = 'item', name = 'bedding', amount = 3},
        {type = 'item', name = 'cocoon', amount = 2},
        {type = 'item', name = 'water-barrel', amount = 4},
        },
    results = {
        {type = 'item', name = 'arthurian-egg-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'arthurian-egg', amount = 1, probability = 0.5},
        {type = 'item', name = 'empty-barrel', amount = 4},
    },
    --main_product = "arthurian-mk02",
    icons =
        {
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png'},
            {icon = "__pyalienlifegraphics__/graphics/icons/arthurian.png", scale = 0.25, shift = {-7.5,-7.5}}
        },
    icon_size = 64,
    subgroup = 'py-alienlife-arthurian',
    order = 'za'
}:add_unlock("arthurian-breeding-1")

RECIPE {
    type = 'recipe',
    name = 'arthurian-pup-mk02',
    category = 'incubator',
    enabled = false,
    energy_required = 45,
    ingredients = {
        {type = 'item', name = 'arthurian-egg-mk02', amount = 1},
        {type = 'fluid', name = 'gta', amount = 150},
        },
    results = {
        {type = 'item', name = 'arthurian-pup-mk02', amount = 1, probability = 0.5},
    },
    --main_product = "arthurian-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/arthurian-pup.png"},
            {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk02.png", scale = 0.25, shift = {-7.5,-7.5}}
        },
    icon_size = 64,
    subgroup = 'py-alienlife-arthurian',
    order = 'za'
}:add_unlock("arthurian-breeding-1")

RECIPE {
    type = 'recipe',
    name = 'arthurian-mk02',
    category = 'arthurian',
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = 'item', name = 'arthurian-pup-mk02', amount = 1},
        {type = 'item', name = 'arthurian-food-02', amount = 3},
        {type = 'item', name = 'dhilmos-pup', amount = 4},
        {type = 'item', name = 'syrup-01-barrel', amount = 3},
        },
    results = {
        {type = 'item', name = 'arthurian-mk02', amount = 1},
        {type = 'item', name = 'empty-barrel', amount = 3},
    },
    --main_product = "arthurian-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/arthurian.png"},
            {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk02.png", scale = 0.25, shift = {-7.5,-7.5}}
        },
    icon_size = 64,
    subgroup = 'py-alienlife-arthurian',
    order = 'za'
}:add_unlock("arthurian-breeding-1")

RECIPE {
    type = 'recipe',
    name = 'arthurian-egg-mk02',
    category = 'arthurian',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'arthurian-mk02', amount = 1},
        {type = 'item', name = 'arthurian-food-01', amount = 4},
        {type = 'item', name = 'fish-egg', amount = 25},
        {type = 'item', name = 'dried-meat', amount = 5},
        },
    results = {
        {type = 'item', name = 'arthurian-egg-mk02', amount = 3},
    },
    --main_product = "arthurian-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/arthurian-egg.png"},
            {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk02.png", scale = 0.25, shift = {-7.5,-7.5}}
        },
    icon_size = 64,
    subgroup = 'py-alienlife-arthurian',
    order = 'za'
}:add_unlock("arthurian-breeding-1")

--MK03--
--DONE--

RECIPE {
    type = 'recipe',
    name = 'arthurian-egg-mk02-gmo',
    category = 'arthurian',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'arthurian', amount = 2},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'caged-ulric', amount = 1},
        {type = 'item', name = 'bedding', amount = 3},
        {type = 'item', name = 'cocoon', amount = 2},
        {type = 'item', name = 'water-barrel', amount = 4},
        },
    results = {
        {type = 'item', name = 'arthurian-egg-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'arthurian-egg-mk02', amount = 1, probability = 0.4},
        {type = 'item', name = 'arthurian-egg', amount = 1, probability = 0.3},
        {type = 'item', name = 'empty-barrel', amount = 4},
    },
    --main_product = "arthurian-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-arthurian',
    order = 'zb'
}:add_unlock("arthurian-breeding-2")

RECIPE {
    type = 'recipe',
    name = 'arthurian-pup-mk03',
    category = 'incubator',
    enabled = false,
    energy_required = 45,
    ingredients = {
        {type = 'item', name = 'arthurian-egg-mk03', amount = 1},
        {type = 'fluid', name = 'autoantigens', amount = 250},
    },
    results = {
        {type = 'item', name = 'arthurian-pup-mk03', amount = 1, probability = 0.5},
    },
    --main_product = "arthurian-mk03",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/arthurian-pup.png"},
            {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk03.png", scale = 0.25, shift = {-7.5,-7.5}}
        },
    icon_size = 64,
    subgroup = 'py-alienlife-arthurian',
    order = 'za'
}:add_unlock("arthurian-breeding-2")

RECIPE {
    type = 'recipe',
    name = 'arthurian-mk03',
    category = 'arthurian',
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = 'item', name = 'arthurian-pup-mk03', amount = 1},
        {type = 'item', name = 'arthurian-food-02', amount = 3},
        {type = 'item', name = 'dhilmos-pup', amount = 4},
        {type = 'item', name = 'syrup-01-barrel', amount = 3},
        },
    results = {
        {type = 'item', name = 'arthurian-mk03', amount = 1},
        {type = 'item', name = 'empty-barrel', amount = 3},
    },
    --main_product = "arthurian-mk03",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/arthurian.png"},
            {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk03.png", scale = 0.25, shift = {-7.5,-7.5}}
        },
    icon_size = 64,
    subgroup = 'py-alienlife-arthurian',
    order = 'za'
}:add_unlock("arthurian-breeding-2")

RECIPE {
    type = 'recipe',
    name = 'arthurian-egg-mk03',
    category = 'arthurian',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'arthurian-mk03', amount = 1},
        {type = 'item', name = 'arthurian-food-01', amount = 4},
        {type = 'item', name = 'fish-egg', amount = 25},
        {type = 'item', name = 'dried-meat', amount = 5},
        },
    results = {
        {type = 'item', name = 'arthurian-egg-mk03', amount = 3},
    },
    --main_product = "arthurian-mk03",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/arthurian-egg.png"},
            {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk03.png", scale = 0.25, shift = {-7.5,-7.5}}
        },
    icon_size = 64,
    subgroup = 'py-alienlife-arthurian',
    order = 'za'
}:add_unlock("arthurian-breeding-2")

--MK04--
--DONE--

RECIPE {
    type = 'recipe',
    name = 'arthurian-egg-mk04-gmo',
    category = 'arthurian',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'arthurian', amount = 2},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'caged-ulric', amount = 1},
        {type = 'item', name = 'bedding', amount = 3},
        {type = 'item', name = 'cocoon', amount = 2},
        {type = 'item', name = 'water-barrel', amount = 4},
        },
    results = {
        {type = 'item', name = 'arthurian-egg-mk04', amount = 1, probability = 0.003},
        {type = 'item', name = 'arthurian-egg-mk03', amount = 1, probability = 0.45},
        {type = 'item', name = 'arthurian-egg-mk02', amount = 1, probability = 0.35},
        {type = 'item', name = 'arthurian-egg', amount = 1, probability = 0.25},
        {type = 'item', name = 'empty-barrel', amount = 4},
    },
    --main_product = "arthurian-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-arthurian',
    order = 'zc'
}:add_unlock("arthurian-breeding-3")

RECIPE {
    type = 'recipe',
    name = 'arthurian-pup-mk04',
    category = 'incubator',
    enabled = false,
    energy_required = 45,
    ingredients = {
        {type = 'item', name = 'arthurian-egg-mk04', amount = 1},
        {type = 'fluid', name = 'autoantigens', amount = 250},
    },
    results = {
        {type = 'item', name = 'arthurian-pup-mk04', amount = 1, probability = 0.5},
    },
    --main_product = "arthurian-mk04",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/arthurian-pup.png"},
            {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk04.png", scale = 0.25, shift = {-7.5,-7.5}}
        },
    icon_size = 64,
    subgroup = 'py-alienlife-arthurian',
    order = 'za'
}:add_unlock("arthurian-breeding-3")

RECIPE {
    type = 'recipe',
    name = 'arthurian-mk04',
    category = 'arthurian',
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = 'item', name = 'arthurian-pup-mk04', amount = 1},
        {type = 'item', name = 'arthurian-food-02', amount = 3},
        {type = 'item', name = 'dhilmos-pup', amount = 4},
        {type = 'item', name = 'syrup-01-barrel', amount = 3},
        },
    results = {
        {type = 'item', name = 'arthurian-mk04', amount = 1},
        {type = 'item', name = 'empty-barrel', amount = 3},
    },
    --main_product = "arthurian-mk04",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/arthurian.png"},
            {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk04.png", scale = 0.25, shift = {-7.5,-7.5}}
        },
    icon_size = 64,
    subgroup = 'py-alienlife-arthurian',
    order = 'za'
}:add_unlock("arthurian-breeding-3")

RECIPE {
    type = 'recipe',
    name = 'arthurian-egg-mk04',
    category = 'arthurian',
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = 'item', name = 'arthurian-mk04', amount = 1},
        {type = 'item', name = 'arthurian-food-01', amount = 4},
        {type = 'item', name = 'fish-egg', amount = 25},
        {type = 'item', name = 'dried-meat', amount = 5},
        },
    results = {
        {type = 'item', name = 'arthurian-egg-mk04', amount = 3},
    },
    --main_product = "arthurian-mk04",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/arthurian-egg.png"},
            {icon = "__pyalienlifegraphics__/graphics/icons/evolution-mk04.png", scale = 0.25, shift = {-7.5,-7.5}}
        },
    icon_size = 64,
    subgroup = 'py-alienlife-arthurian',
    order = 'za'
}:add_unlock("arthurian-breeding-3")
