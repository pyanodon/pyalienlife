
RECIPE {
    type = 'recipe',
    name = 'moonshine-gasoline-1',
    category = 'moon',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'moondrop-seeds', amount = 10},
        {type = 'item', name = 'au-biomass', amount = 5},
        {type = 'fluid', name = 'methane', amount = 100},
    },
    results = {
        {type = 'item', name = 'moondrop-gas', amount = 15},
    },
}:add_unlock("moondrop-mk04")

RECIPE {
    type = 'recipe',
    name = 'moonshine-diesel-1',
    category = 'moon',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'moondrop-seeds', amount = 10},
        {type = 'item', name = 'co-biomass', amount = 5},
        {type = 'fluid', name = 'methane', amount = 100},
    },
    results = {
        {type = 'item', name = 'moondrop-diesel', amount = 15},
    },
}:add_unlock("moondrop-mk03")

RECIPE {
    type = 'recipe',
    name = 'moonshine-kerosene-1',
    category = 'moon',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'moondrop-seeds', amount = 10},
        {type = 'item', name = 'zn-biomass', amount = 5},
        {type = 'fluid', name = 'methane', amount = 100},
    },
    results = {
        {type = 'item', name = 'moondrop-kerosene', amount = 15},
    },
}:add_unlock("moondrop-mk03")

RECIPE {
    type = 'recipe',
    name = 'moonshine-fueloil-1',
    category = 'moon',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'moondrop-seeds', amount = 10},
        {type = 'item', name = 'fe-biomass', amount = 5},
        {type = 'fluid', name = 'methane', amount = 100},
    },
    results = {
        {type = 'item', name = 'moondrop-fueloil', amount = 15},
    },
}:add_unlock("moondrop-mk02")

------Pressing------

---MK01-----

RECIPE {
    type = 'recipe',
    name = 'moonshine-gasoline-pressing-1',
    category = 'hpf',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'moondrop-gas', amount = 5},
    },
    results = {
        {type = 'fluid', name = 'gasoline', amount = 500},
        {type = 'item', name = 'ash', amount = 10},
    },
    main_product = 'gasoline',
}:add_unlock("moondrop-mk04")

RECIPE {
    type = 'recipe',
    name = 'moonshine-diesel-pressing-1',
    category = 'hpf',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'moondrop-diesel', amount = 5},
    },
    results = {
        {type = 'fluid', name = 'diesel', amount = 400},
        {type = 'item', name = 'ash', amount = 10},
    },
    main_product = 'diesel',
}:add_unlock("moondrop-mk03")

RECIPE {
    type = 'recipe',
    name = 'moonshine-kerosene-pressing-1',
    category = 'hpf',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'moondrop-kerosene', amount = 5},
    },
    results = {
        {type = 'fluid', name = 'kerosene', amount = 500},
        {type = 'item', name = 'ash', amount = 10},
    },
    main_product = 'kerosene',
}:add_unlock("moondrop-mk03")

RECIPE {
    type = 'recipe',
    name = 'moonshine-fueloil-pressing-1',
    category = 'hpf',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'moondrop-fueloil', amount = 5},
    },
    results = {
        {type = 'fluid', name = 'fuel-oil', amount = 400},
        {type = 'item', name = 'ash', amount = 10},
    },
    main_product = 'fuel-oil',
}:add_unlock("moondrop-mk02")


table.insert(data.raw.module['moondrop'].limitation, "moonshine-gasoline-1")
table.insert(data.raw.module['moondrop'].limitation, "moonshine-diesel-1")
table.insert(data.raw.module['moondrop'].limitation, "moonshine-kerosene-1")
table.insert(data.raw.module['moondrop'].limitation, "moonshine-fueloil-1")

data.raw.module['moondrop-mk02'].limitation = table.deepcopy(data.raw.module['moondrop'].limitation)
data.raw.module['moondrop-mk03'].limitation = table.deepcopy(data.raw.module['moondrop'].limitation)
data.raw.module['moondrop-mk04'].limitation = table.deepcopy(data.raw.module['moondrop'].limitation)
