--------------------------ARQAD-----------------------


----first----
RECIPE {
    type = 'recipe',
    name = 'arqad',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = 'item', name = 'bio-sample', amount = 5},
        {type = 'item', name = 'cdna', amount = 3},
        {type = 'item', name = 'arqad-codex', amount = 1},
        {type = 'item', name = 'earth-bee-sample', amount = 1},
        {type = 'fluid', name = 'water', amount = 1000}, --add alien sample from pyALiens mod here.
    },
    results = {
        {type = 'item', name = 'arqad', amount = 1},
    },
}:add_unlock("arqad")

RECIPE {
    type = 'recipe',
    name = 'arqad-codex',
    category = 'crafting',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'glass', amount = 2},
        {type = 'item', name = 'small-lamp', amount = 5},
        {type = 'item', name = 'electronic-circuit', amount = 10},
        {type = 'item', name = 'tinned-cable', amount = 20},
    },
    results = {
        {type = 'item', name = 'arqad-codex', amount = 1},
    },
}:add_unlock("arqad")

RECIPE {
    type = 'recipe',
    name = 'earth-bee-sample',
    category = 'data-array',
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = 'item', name = 'steel-chest', amount = 1},
        {type = 'item', name = 'automation-science-pack', amount = 100},
        {type = 'item', name = 'arqad-codex', amount = 5},
    },
    results = {
        {type = 'item', name = 'earth-bee-sample', amount = 1},
    },
}:add_unlock("arqad")


----combs----
RECIPE {
    type = 'recipe',
    name = 'empty-comb',
    category = 'crafting-with-fluid',
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = 'item', name = 'tailings-dust', amount = 15},
        {type = 'item', name = 'coal-dust', amount = 4},
        {type = 'item', name = 'sand', amount = 5},
        {type = 'item', name = 'ash', amount = 5},
        {type = 'fluid', name = 'creosote', amount = 30},
    },
    results = {
        {type = 'item', name = 'empty-comb', amount = 1},
    },
}:add_unlock("arqad")

RECIPE {
    type = 'recipe',
    name = 'bitumen-comb',
    category = 'advanced-crafting',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'filled-comb', amount = 1},
    },
    results = {
        {type = 'item', name = 'used-comb', amount = 1},
        {type = 'fluid', name = 'tar', amount = 50},
    },
    main_product = "tar",
}:add_unlock("arqad")

RECIPE {
    type = 'recipe',
    name = 'empty-comb-2',
    category = 'casting',
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = 'fluid', name = 'wax', amount = 100},
    },
    results = {
        {type = 'item', name = 'empty-comb', amount = 8},
    },
}:add_unlock("arqad-mk02")

RECIPE {
    type = 'recipe',
    name = 'wax',
    category = 'hpf',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'used-comb', amount = 5},
        {type = 'fluid', name = 'steam', amount = 100},
    },
    results = {
        {type = 'fluid', name = 'wax', amount = 50},
    },
}:add_unlock("arqad-mk02"):replace_ingredient("steam","hot-air")

---products---

RECIPE {
    type = 'recipe',
    name = 'wax-2',
    category = 'arqad',
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = 'item', name = 'ralesia', amount = 3},
        {type = 'item', name = 'bhoddos-spore', amount = 2},
        {type = 'item', name = 'oleochemicals-barrel', amount = 3},
    },
    results = {
        {type = 'item', name = 'wax-barrel', amount = 3},
    },
    --main_product = "wax-barrel",
}:add_unlock("arqad")

RECIPE {
    type = 'recipe',
    name = 'arqad-jelly-01',
    category = 'arqad',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'rennea', amount = 1},
        {type = 'item', name = 'active-carbon', amount = 1},
        {type = 'item', name = 'oleochemicals-barrel', amount = 3},
    },
    results = {
        {type = 'item', name = 'arqad-jelly-barrel', amount = 3},  --FUTURE USE IN PESTICIDE PRODUCTION--
    },
    --main_product = "arqad-jelly-barrel",
}:add_unlock("arqad-mk02")

RECIPE {
    type = 'recipe',
    name = 'arqad-propolis-01',
    category = 'arqad',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'rennea', amount = 1},
        {type = 'item', name = 'saps', amount = 10},
        {type = 'item', name = 'wax-barrel', amount = 1},
        {type = 'item', name = 'naphtha-barrel', amount = 3},
    },
    results = {
        {type = 'item', name = 'arqad-propolis', amount = 2},  --FUTURE USE IN PESTICIDE PRODUCTION--
        {type = 'item', name = 'empty-barrel', amount = 4},
    },
    main_product = "arqad-propolis",
}:add_unlock("arqad-mk02")

RECIPE {
    type = 'recipe',
    name = 'propolis-diesel-01',
    category = 'olefin',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'arqad-propolis', amount = 1},
        {type = 'fluid', name = 'methanol', amount = 50},
    },
    results = {
        {type = 'fluid', name = 'diesel', amount = 300},
    },
    --main_product = "tar",
}:add_unlock("arqad-mk02")

RECIPE {
    type = 'recipe',
    name = 'jelly-to-kerosene-01',
    category = 'olefin',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'fluid', name = 'arqad-jelly', amount = 50},
        {type = 'fluid', name = 'crude-oil', amount = 150},
    },
    results = {
        {type = 'fluid', name = 'kerosene', amount = 400},
    },
    --main_product = "tar",
}:add_unlock("arqad-mk03")

---pup maker---

---maturing---

RECIPE {
    type = 'recipe',
    name = 'arqad-mature-01',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'arqad-maggot', amount = 10},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'arqad', amount = 10},
    },
    main_product = "arqad",
    subgroup = 'py-alienlife-arqad',
    order = 'a',
}:add_unlock("assisted-embryology")

RECIPE {
    type = 'recipe',
    name = 'arqad-mature-02',
    category = 'creature-chamber',
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'item', name = 'arqad-maggot', amount = 10},
        {type = 'item', name = 'gh', amount = 1},
        {type = 'item', name = 'resveratrol', amount = 2},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'arqad', amount = 20},
    },
    --main_product = "caged-arqad",
    subgroup = 'py-alienlife-arqad',
    order = 'a',
}:add_unlock("growth-hormone")

----adverse products----

----PROCESSING----
--[[
---caged---
RECIPE {
    type = 'recipe',
    name = 'caged-arqad',
    category = 'crafting',
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = 'item', name = 'arqad', amount = 1},
        {type = 'item', name = 'cage', amount = 1},
    },
    results = {
        {type = 'item', name = 'caged-arqad', amount = 1},
    },
}:add_unlock("arqad")

RECIPE {
    type = 'recipe',
    name = 'uncaged-arqad',
    category = 'crafting',
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = 'item', name = 'caged-arqad', amount = 1},
    },
    results = {
        {type = 'item', name = 'arqad', amount = 1},
        {type = 'item', name = 'cage', amount = 1},
    },
    main_product = "arqad",
}:add_unlock("arqad")
]]--

--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'arqad-mk02',
    category = 'arqad',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'arqad-maggot', amount = 25},
        {type = 'item', name = 'crude-oil-barrel', amount = 250},
        {type = 'item', name = 'raw-coal', amount = 5},
        {type = 'item', name = 'mutant-enzymes-barrel', amount = 2},
        },
    results = {
        {type = 'item', name = 'arqad-mk02', probability = 0.005, amount = 1},
        {type = 'item', name = 'arqad', probability = 0.8, amount = 1},
    },
    --main_product = "arqad-mk02",
    icons =
        {
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png', icon_size = 64},
            {icon = "__pyalienlifegraphics3__/graphics/icons/arqad.png", icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-arqad',
    order = 'za'
}:add_unlock("selective-breeding"):replace_ingredient('crude-oil-barrel', 'moondrop-fueloil'):add_ingredient('moondrop-diesel')

RECIPE {
    type = 'recipe',
    name = 'arqad-mk02-breeding',
    category = 'arqad',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'arqad-mk02', amount = 1},
        {type = 'item', name = 'ulric', amount = 2},
        {type = 'item', name = 'filled-comb', amount = 5},
        },
    results = {
        {type = 'item', name = 'arqad-egg-nest', amount = 1},
    },
    --main_product = "arqad-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics__/graphics/icons/ulric.png"},
            {icon = "__pyalienlifegraphics3__/graphics/icons/arqad-egg.png", scale = 0.25,shift = {-7.5,-7.5}},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png', scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-arqad',
    order = 'za'
}:add_unlock("selective-breeding")

RECIPE {
    type = 'recipe',
    name = 'arqad-mk02-incubating',
    category = 'ulric',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'arqad-egg-nest', amount = 1},
        {type = 'item', name = 'bedding', amount = 2},
        {type = 'item', name = 'barrel-milk', amount = 1},
        {type = 'item', name = 'ulric-food-01', amount = 1},
        },
    results = {
        {type = 'item', name ='arqad-egg', amount = 20},
    },
    --main_product = "arqad-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics3__/graphics/icons/arqad-egg.png"},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png', scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-arqad',
    order = 'za'
}:add_unlock("selective-breeding")

RECIPE {
    type = 'recipe',
    name = 'arqad-mk02-hatching',
    category = 'glassworks',
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = 'item', name = 'arqad-egg', amount = 5},
        },
    results = {
        {type = 'item', name ='arqad-maggot', amount = 4},
    },
    --main_product = "arqad-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics3__/graphics/icons/mip/arqad-maggot-01.png"},
            --{icon = "__pyalienlifegraphics__/graphics/icons/over-mk02.png"},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png', scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-arqad',
    order = 'za'
}:add_unlock("selective-breeding")

RECIPE {
    type = 'recipe',
    name = 'arqad-mk02-maturing',
    category = 'arqad',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'arqad-maggot', amount = 9},
        {type = 'item', name = 'meat', amount = 10},
        {type = 'item', name = 'zipir-pup', amount = 2},
        },
    results = {
        {type = 'item', name ='arqad-mk02', amount_min = 3, amount_max = 13},
    },
    --main_product = "arqad-mk02",
    icons =
        {
            {icon = "__pyalienlifegraphics3__/graphics/icons/arqad.png"},
            --{icon = "__pyalienlifegraphics__/graphics/icons/over-mk02.png"},
            {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png', scale = 0.25,shift = {-7.5,-7.5}},
        },
    icon_size = 64,
    subgroup = 'py-alienlife-arqad',
    order = 'za'
}:add_unlock("selective-breeding")

--MK03--
--WIP--

--MK04--
--WIP--
