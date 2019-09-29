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
    energy_required = 20,
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
    energy_required = 6,
    ingredients = {
        {type = 'fluid', name = 'zogna-bacteria', amount = 20},
        {type = 'item', name = 'petri-dish-bacteria', amount = 1},
        {type = 'item', name = 'flask', amount = 1},
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
        {type = 'item', name = 'lab-instrument', amount = 1},
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
        {type = 'item', name = 'lab-instrument', amount = 1},
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
        {type = 'item', name = 'flask', amount = 3},
        {type = 'item', name = 'petri-dish-bacteria', amount = 1},
        {type = 'item', name = 'plasmids', amount = 1},
        {type = 'item', name = 'moss-gen', amount = 1},
        {type = 'item', name = 'lab-instrument', amount = 1},
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
        {type = 'item', name = 'lab-instrument', amount = 1},
        {type = 'fluid', name = 'phytoplankton', amount = 20},
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
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'retrovirus', amount = 1},
        {type = 'item', name = 'flask', amount = 2},
        {type = 'item', name = 'cocoon', amount = 1},
        {type = 'item', name = 'lab-instrument', amount = 1},
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
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'retrovirus', amount = 1},
        {type = 'item', name = 'flask', amount = 2},
        {type = 'item', name = 'lab-instrument', amount = 1},
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
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'primers', amount = 1},
        {type = 'item', name = 'alien-sample01', amount = 1},
        {type = 'item', name = 'dna-polymerase', amount = 1},
        {type = 'item', name = 'plastic-bar', amount = 1},
        {type = 'fluid', name = 'formamide', amount = 150},
        {type = 'item', name = 'flask', amount = 2},
    },
    results = {
        {type = 'item', name = 'alien-sample-02', amount = 1},
    },
}:add_unlock("genetics-mk02")

RECIPE {
    type = 'recipe',
    name = 'alien-sample-03',
    category = 'genlab',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'primers', amount = 2},
        {type = 'item', name = 'alien-sample01', amount = 2},
        {type = 'item', name = 'alien-sample-02', amount = 1},
        {type = 'item', name = 'dna-polymerase', amount = 2},
        {type = 'item', name = 'plastic-bar', amount = 5},
        {type = 'item', name = 'flask', amount = 2},
        {type = 'fluid', name = 'formamide', amount = 200},
        {type = 'item', name = 'arthurian-egg', amount = 10},
    },
    results = {
        {type = 'item', name = 'alien-sample-03', amount = 1},
    },
}:add_unlock("genetics-mk03")

RECIPE {
    type = 'recipe',
    name = 'gta',
    category = 'bio-reactor',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'fluid', name = 'flutec-pp6', amount = 50},
        {type = 'item', name = 'yaedols', amount = 2},
        {type = 'item', name = 'retrovirus', amount = 5},
        {type = 'fluid', name = 'ethanolamine', amount = 50},
        {type = 'item', name = 'flask', amount = 2},
        {type = 'item', name = 'dhilmos-egg', amount = 5},
    },
    results = {
        {type = 'fluid', name = 'gta', amount = 50},
    },
    --main_product = "cocoon",
}:add_unlock("genetics-mk04")

RECIPE {
    type = 'recipe',
    name = 'cysteine',
    category = 'genlab',
    enabled = false,
    energy_required = 25,
    ingredients = {
        {type = 'item', name = 'fur', amount = 20},
        {type = 'item', name = 'bacteria-1', amount = 100},
    },
    results = {
        {type = 'item', name = 'cysteine', amount = 1},
    },
}:add_unlock("genetics-mk04"):replace_ingredient("bacteria-1", "bacteria-2")

RECIPE {
    type = 'recipe',
    name = 'adam42-gen',
    category = 'genlab',
    enabled = false,
    energy_required = 25,
    ingredients = {
        {type = 'item', name = 'dna-polymerase', amount = 2},
        {type = 'item', name = 'plastic-bar', amount = 5},
        {type = 'item', name = 'flask', amount = 5},
        {type = 'item', name = 'lab-instrument', amount = 5},
        {type = 'fluid', name = 'gta', amount = 50},
        {type = 'item', name = 'primers', amount = 8},
        {type = 'item', name = 'cdna', amount = 8},
    },
    results = {
        {type = 'item', name = 'adam42-gen', amount = 1},
    },
}:add_unlock("genetics-mk04")

RECIPE {
    type = 'recipe',
    name = 'zinc-finger-proteins',
    category = 'genlab',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'adam42-gen', amount = 1},
        {type = 'item', name = 'cysteine', amount = 1},
        {type = 'item', name = 'meat', amount = 5},
        {type = 'item', name = 'lab-instrument', amount = 5},
        {type = 'fluid', name = 'gta', amount = 50},
        {type = 'item', name = 'zinc-plate', amount = 4},
        {type = 'item', name = 'flask', amount = 5},
    },
    results = {
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
    },
}:add_unlock("genetics-mk04")

RECIPE {
    type = 'recipe',
    name = 'anabolic-rna',
    category = 'incubator',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'adam42-gen', amount = 1},
        {type = 'item', name = 'cysteine', amount = 1},
        {type = 'item', name = 'alien-enzymes', amount = 1},
        {type = 'item', name = 'meat', amount = 5},
        {type = 'item', name = 'lab-instrument', amount = 5},
        {type = 'fluid', name = 'gta', amount = 50},
        {type = 'item', name = 'zinc-plate', amount = 4},
        {type = 'item', name = 'flask', amount = 5},
        {type = 'item', name = 'arthurian-egg', amount = 5},
    },
    results = {
        {type = 'item', name = 'anabolic-rna', amount = 1},
    },
}:add_unlock("anabolic-rna")

RECIPE {
    type = 'recipe',
    name = 'propeptides',
    category = 'genlab',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'sea-sponge', amount = 2},
        {type = 'item', name = 'chromium', amount = 2},
        {type = 'item', name = 'bonemeal', amount = 5},
        {type = 'item', name = 'plastic-bar', amount = 1},
        {type = 'item', name = 'flask', amount = 5},
        {type = 'item', name = 'lab-instrument', amount = 1},
    },
    results = {
        {type = 'item', name = 'propeptides', amount = 1}
    }
}:add_unlock('immunosupressants')

RECIPE {
    type = 'recipe',
    name = 'purine-analogues',
    category = 'hpf',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'fish', amount = 5},
        {type = 'fluid', name = 'formamide', amount = 50},
        {type = 'item', name = 'coke', amount = 5},
        {type = 'item', name = 'serine', amount = 5},
    },
    results = {
        {type = 'item', name = 'purine-analogues', amount = 1}
    }
}:add_unlock('immunosupressants')

RECIPE {
    type = 'recipe',
    name = 'immunosupressants',
    category = 'biofactory',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'cytostatics', amount = 1},
        {type = 'item', name = 'propeptides', amount = 1},
        {type = 'item', name = 'pacifastin', amount = 1},
        {type = 'item', name = 'purine-analogues', amount = 1},
        {type = 'fluid', name = 'nitrogen-mustard', amount = 100},
    },
    results = {
        {type = 'item', name = 'immunosupressants', amount = 1}
    }
}:add_unlock('immunosupressants')