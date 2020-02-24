
RECIPE {
    type = 'recipe',
    name = 'moonshine-gasoline-1',
    category = 'moon',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'moondrop-seeds', amount = 15},
        {type = 'item', name = 'au-biomass', amount = 5},
        {type = 'fluid', name = 'methane', amount = 100},
    },
    results = {
        {type = 'item', name = 'moondrop-gas', amount = 10},
    },
}:add_unlock("moondrop-mk04")

RECIPE {
    type = 'recipe',
    name = 'moonshine-diesel-1',
    category = 'moon',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'moondrop-seeds', amount = 15},
        {type = 'item', name = 'co-biomass', amount = 5},
        {type = 'fluid', name = 'methane', amount = 100},
    },
    results = {
        {type = 'item', name = 'moondrop-diesel', amount = 10},
    },
}:add_unlock("moondrop-mk03")

RECIPE {
    type = 'recipe',
    name = 'moonshine-kerosene-1',
    category = 'moon',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'moondrop-seeds', amount = 15},
        {type = 'item', name = 'zn-biomass', amount = 5},
        {type = 'fluid', name = 'methane', amount = 100},
    },
    results = {
        {type = 'item', name = 'moondrop-kerosene', amount = 10},
    },
}:add_unlock("moondrop-mk03")

RECIPE {
    type = 'recipe',
    name = 'moonshine-fueloil-1',
    category = 'moon',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'moondrop-seeds', amount = 15},
        {type = 'item', name = 'fe-biomass', amount = 5},
        {type = 'fluid', name = 'methane', amount = 100},
    },
    results = {
        {type = 'item', name = 'moondrop-fueloil', amount = 10},
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
        {type = 'item', name = 'moondrop-gas', amount = 20},
    },
    results = {
        {type = 'fluid', name = 'gasoline', amount = 300},
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
        {type = 'item', name = 'moondrop-diesel', amount = 20},
    },
    results = {
        {type = 'fluid', name = 'diesel', amount = 200},
        {type = 'item', name = 'ash', amount = 10},
    },
    main_product = 'diesel',
}:add_unlock("moondrop-mk03")

RECIPE {
    type = 'recipe',
    name = 'moonshine-kerosene-pressing-1',
    category = 'hpf',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'moondrop-kerosene', amount = 20},
    },
    results = {
        {type = 'fluid', name = 'kerosene', amount = 400},
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
        {type = 'item', name = 'moondrop-fueloil', amount = 20},
    },
    results = {
        {type = 'fluid', name = 'fuel-oil', amount = 250},
        {type = 'item', name = 'ash', amount = 10},
    },
    main_product = 'fuel-oil',
}:add_unlock("moondrop-mk02")
