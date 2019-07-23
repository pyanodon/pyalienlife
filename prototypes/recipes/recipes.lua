RECIPE {
    type = 'recipe',
    name = 'biomass-1',
    category = 'evaporator',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'fluid', name = 'phytoplankton', amount = 20},
    },
    results = {
        {type = 'item', name = 'biomass', amount = 7},
    },
    --main_product = "silicon-wafer",
    icon = '__pyalienlife__/graphics/icons/biomass.png',
    icon_size = 32,
    subgroup = 'py-alienlife-plants',
    order = 'a'
}:add_unlock("microbiology-mk01")

RECIPE {
    type = 'recipe',
    name = 'biomass-2',
    category = 'evaporator',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'fluid', name = 'phytoplankton', amount = 20},
        {type = 'item', name = 'fawogae', amount = 5},
    },
    results = {
        {type = 'item', name = 'biomass', amount = 10},
    },
    --main_product = "silicon-wafer",
    icon = '__pyalienlife__/graphics/icons/biomass.png',
    icon_size = 32,
    subgroup = 'py-alienlife-plants',
    order = 'a'
}:add_unlock("mycology-mk02")

RECIPE {
    type = 'recipe',
    name = 'fungal-substrate',
    category = 'crafting-with-fluid',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'fluid', name = 'water', amount = 50},
        {type = 'item', name = 'log', amount = 1},
    },
    results = {
        {type = 'item', name = 'fungal-substrate', amount = 5},
    },
}:add_unlock("mycology-mk01")

RECIPE {
    type = 'recipe',
    name = 'fawogae-spore',
    category = 'spore',
    enabled = false,
    energy_required = 20,
    ingredients = {
    },
    results = {
        {type = 'item', name = 'fawogae-spore', amount = 1, probability = 0.3},
    },
}:add_unlock("mycology-mk01")

RECIPE {
    type = 'recipe',
    name = 'wood-seedling',
    category = 'nursery',
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = 'item', name = 'wood-seeds', amount = 1},
        {type = 'item', name = 'moss', amount = 5},
        {type = 'fluid', name = 'water', amount = 100},
    },
    results = {
        {type = 'item', name = 'wood-seedling', amount = 3},
    },
}:add_unlock("botany-mk01")

RECIPE {
    type = 'recipe',
    name = 'wood-seeds',
    category = 'crafting',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'wood', amount = 5},
    },
    results = {
        {type = 'item', name = 'wood-seeds', amount = 2},
    },
}:add_unlock("botany-mk01")

RECIPE {
    type = 'recipe',
    name = 'empty-petri-dish',
    category = 'crafting',
    enabled = true,
    energy_required = 3,
    ingredients = {
        {type = 'item', name = 'glass', amount = 2},
    },
    results = {
        {type = 'item', name = 'empty-petri-dish', amount = 1},
    },
}

RECIPE {
    type = 'recipe',
    name = 'petri-dish-bacteria',
    category = 'micro-mine',
    enabled = true,
    hidden = true,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'petri-dish', amount = 1},
    },
    results = {
        {type = 'item', name = 'petri-dish-bacteria', amount = 1},
    },
}

RECIPE {
    type = 'recipe',
    name = 'coke-co2',
    category = 'hpf',
    enabled = true,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'coke', amount = 2},
    },
    results = {
        {type = 'fluid', name = 'carbon-dioxide', amount = 80},
    },
}

RECIPE {
    type = 'recipe',
    name = 'agar',
    category = 'hpf',
    enabled = true,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'seaweed', amount = 5},
        {type = 'fluid', name = 'steam', amount = 100, temperature = 165},
    },
    results = {
        {type = 'item', name = 'agar', amount = 1},
    },
}

RECIPE {
    type = 'recipe',
    name = 'petri-dish',
    category = 'crafting',
    enabled = true,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'agar', amount = 1},
        {type = 'item', name = 'empty-petri-dish', amount = 1},
    },
    results = {
        {type = 'item', name = 'petri-dish', amount = 1},
    },
}

RECIPE {
    type = 'recipe',
    name = 'moss-gen',
    category = 'biofactory',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'glass', amount = 1},
        {type = 'item', name = 'moss', amount = 20},
    },
    results = {
        {type = 'item', name = 'moss-gen', amount = 1},
    },
}:add_unlock("biotech-mk01")

RECIPE {
    type = 'recipe',
    name = 'plasmids',
    category = 'biofactory',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'fluid', name = 'zogna-bacteria', amount = 20},
        {type = 'item', name = 'petri-dish-bacteria', amount = 1},
        {type = 'item', name = 'lab-instrument', amount = 1},
    },
    results = {
        {type = 'item', name = 'plasmids', amount = 1},
    },
    --main_product = "cocoon",
}:add_unlock("genetics-mk01")

RECIPE {
    type = 'recipe',
    name = 'retrovirus',
    category = 'incubator',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'cocoon', amount = 1},
        {type = 'item', name = 'steel-plate', amount = 1},
        {type = 'item', name = 'petri-dish', amount = 1},
        {type = 'item', name = 'flask', amount = 1},
    },
    results = {
        {type = 'item', name = 'retrovirus', amount = 1},
    },
}:add_unlock("genetics-mk01")

RECIPE {
    type = 'recipe',
    name = 'cdna',
    category = 'genlab',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'retrovirus', amount = 1},
        {type = 'item', name = 'petri-dish-bacteria', amount = 1},
        {type = 'item', name = 'plasmids', amount = 1},
        {type = 'item', name = 'moss-gen', amount = 1},
        {type = 'item', name = 'fawogae-substrate', amount = 4},
    },
    results = {
        {type = 'item', name = 'cdna', amount = 1},
    },
}:add_unlock("biotech-mk01")