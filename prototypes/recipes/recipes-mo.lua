RECIPE {
    type = 'recipe',
    name = 'fawogae-spore',
    category = 'spore',
    enabled = false,
    energy_required = 15,
    ingredients = {
    },
    results = {
        {type = 'item', name = 'fawogae-spore', amount = 1, probability = 0.4},
    },
}:add_unlock("mycology-mk01")

RECIPE {
    type = 'recipe',
    name = 'petri-dish-bacteria',
    category = 'micro-mine',
    enabled = true,
    hidden = true,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'petri-dish', amount = 1},
    },
    results = {
        {type = 'item', name = 'petri-dish-bacteria', amount = 1},
    },
}

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
    name = 'retrovirus-2',
    category = 'incubator',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'cocoon', amount = 1},
        {type = 'item', name = 'steel-plate', amount = 1},
        {type = 'item', name = 'petri-dish', amount = 1},
        {type = 'item', name = 'flask', amount = 1},
        {type = 'fluid', name = 'liquid-nitrogen', amount = 20},
    },
    results = {
        {type = 'item', name = 'retrovirus', amount = 3},
    },
}:add_unlock("genetics-mk02")

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

RECIPE {
    type = 'recipe',
    name = 'primers',
    category = 'biofactory',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'petri-dish-bacteria', amount = 1},
        {type = 'item', name = 'fawogae', amount = 5},
    },
    results = {
        {type = 'item', name = 'primers', amount = 1, probability = 0.7},
    },
}:add_unlock("genetics-mk02")

RECIPE {
    type = 'recipe',
    name = 'dna-polymerase',
    category = 'genlab',
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = 'item', name = 'retrovirus', amount = 1},
        {type = 'item', name = 'flask', amount = 2},
        {type = 'item', name = 'cocoon', amount = 1},
    },
    results = {
        {type = 'item', name = 'dna-polymerase', amount = 1},
    },
}:add_unlock("genetics-mk02")

RECIPE {
    type = 'recipe',
    name = 'dna-polymerase-2',
    category = 'genlab',
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = 'item', name = 'retrovirus', amount = 1},
        {type = 'item', name = 'flask', amount = 2},
        {type = 'item', name = 'arthurian-egg', amount = 10},
    },
    results = {
        {type = 'item', name = 'dna-polymerase', amount = 2},
    },
}:add_unlock("genetics-mk03")

RECIPE {
    type = 'recipe',
    name = 'alien-sample-02',
    category = 'genlab',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'primers', amount = 1},
        {type = 'item', name = 'alien-sample01', amount = 1},
        {type = 'item', name = 'dna-polymerase', amount = 1},
        {type = 'item', name = 'plastic-bar', amount = 1},
        {type = 'fluid', name = 'formamide', amount = 150},
    },
    results = {
        {type = 'item', name = 'alien-sample-02', amount = 1},
    },
}:add_unlock("genetics-mk02")