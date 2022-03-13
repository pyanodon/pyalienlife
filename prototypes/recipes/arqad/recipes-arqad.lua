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
        {type = 'item', name = 'arqad-codex', amount = 2},
        {type = 'item', name = 'earth-bee-sample', amount = 2},
        {type = 'fluid', name = 'coke-oven-gas', amount = 1000}, --add alien sample from pyALiens mod here.
    },
    results = {
        {type = 'item', name = 'arqad-queen', amount = 1},
        {type = 'item', name = 'arqad', amount = 6},
    },
    main_product = "arqad"
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
        {type = 'item', name = 'earth-generic-sample', amount = 1},
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
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'tailings-dust', amount = 15},
        {type = 'item', name = 'coal-dust', amount = 4},
        {type = 'item', name = 'sand', amount = 5},
        {type = 'item', name = 'ash', amount = 5},
        {type = 'fluid', name = 'creosote', amount = 30},
    },
    results = {
        {type = 'item', name = 'empty-comb', amount = 7},
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
    name = 'honey-comb',
    category = 'carbonfilter',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'honeycomb', amount = 1},
    },
    results = {
        {type = 'item', name = 'empty-honeycomb', amount = 1},
        {type = 'fluid', name = 'arqad-honey', amount = 50},
    },
    main_product = "arqad-honey",
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
    name = 'empty-honeycomb-2',
    category = 'casting',
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = 'fluid', name = 'wax', amount = 100},
    },
    results = {
        {type = 'item', name = 'empty-honeycomb', amount = 8},
    },
}:add_unlock("arqad")

RECIPE {
    type = 'recipe',
    name = 'wax',
    category = 'hpf',
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = 'item', name = 'used-comb', amount = 5},
        {type = 'fluid', name = 'steam', amount = 100}
    },
    results = {
        {type = 'fluid', name = 'wax', amount = 50},
    },
}:add_unlock("arqad-mk02"):remove_ingredient("steam"):add_ingredient({type = "fluid", name = "hot-air", amount = 25})

RECIPE {
    type = 'recipe',
    name = 'wax-honeycomb',
    category = 'hpf',
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = 'item', name = 'empty-honeycomb', amount = 5},
        {type = 'fluid', name = 'steam', amount = 100}
    },
    results = {
        {type = 'fluid', name = 'wax', amount = 50},
    },
}:add_unlock("arqad"):remove_ingredient("steam"):add_ingredient({type = "fluid", name = "hot-air", amount = 25})

---products---

RECIPE {
    type = 'recipe',
    name = 'wax-2',
    category = 'arqad',
    enabled = false,
    energy_required = 50,    --i think this one is a bit slow but atm not sure , this is a reminder [same for wax1]
    ingredients = {
        {type = 'item', name = 'ralesia', amount = 3},
        {type = 'item', name = 'bhoddos-spore', amount = 2},
        {type = 'item', name = 'oleochemicals-barrel', amount = 3},
    },
    results = {
        {type = 'item', name = 'empty-barrel', amount = 3},
        {type = 'item', name = 'empty-honeycomb', amount = 5},
    },
    main_product = "empty-honeycomb",
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
        {type = 'item', name = 'filled-canister-naphtha', amount = 3},
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

RECIPE {
    type = 'recipe',
    name = 'wax-to-lube',
    category = 'mixer',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'fluid', name = 'wax', amount = 120},
        {type = 'fluid', name = 'pressured-hydrogen', amount = 10},
    },
    results = {
        {type = 'fluid', name = 'lubricant', amount = 120},
    },
    subgroup = 'py-alienlife-fluids',
    order = 'b1',
}:add_unlock("arqad-mk02")

RECIPE {
    type = 'recipe',
    name = 'wax-to-tar',
    category = 'gasifier',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'fluid', name = 'wax', amount = 100},
        {type = 'fluid', name = 'oxygen', amount = 20},
    },
    results = {
        {type = 'fluid', name = 'tar', amount = 150},
    },
}:add_unlock("arqad-mk02")

RECIPE {
    type = 'recipe',
    name = 'honey-to-sugar',
    category = 'evaporator',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'fluid', name = 'arqad-honey', amount = 100},
    },
    results = {
        {type = 'item', name = 'sugar', amount = 4},
    },
}:add_unlock("arqad-mk02")

RECIPE {
    type = 'recipe',
    name = 'honey-to-ethanol',
    category = 'bio-reactor',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'fluid', name = 'arqad-honey', amount = 100},
        {type = 'fluid', name = 'water', amount = 500},
        {type = 'fluid', name = 'manure-bacteria', amount = 50},
    },
    results = {
        {type = 'fluid', name = 'ethanol', amount = 200},
    },
}:add_unlock("arqad")

---pup maker---

---maturing---
--[[
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
]]--
