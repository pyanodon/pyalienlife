
RECIPE {
    type = 'recipe',
    name = 'petri-dish-bacteria',
    category = 'micro-mine',
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = 'item', name = 'petri-dish', amount = 1},
    },
    results = {
        {type = 'item', name = 'petri-dish-bacteria', amount = 1},
    },
}:add_unlock("basic-substrate")

RECIPE {
    type = 'recipe',
    name = 'plasmids',
    category = 'biofactory',
    enabled = false,
    energy_required = 8,
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
}:add_unlock("genetics-mk02")

RECIPE {
    type = 'recipe',
    name = 'retrovirus',
    category = 'incubator',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'cocoon', amount = 4},
        {type = 'item', name = 'steel-plate', amount = 1},
        {type = 'item', name = 'petri-dish', amount = 1},
        {type = 'item', name = 'flask', amount = 1},
        {type = 'item', name = 'lab-instrument', amount = 1},
    },
    results = {
        {type = 'item', name = 'retrovirus', amount = 1},
    },
}:add_unlock("genetics-mk02")

RECIPE {
    type = 'recipe',
    name = 'retrovirus-2',
    category = 'incubator',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'cocoon', amount = 4},
        {type = 'item', name = 'steel-plate', amount = 1},
        {type = 'item', name = 'petri-dish', amount = 1},
        {type = 'item', name = 'flask', amount = 1},
        {type = 'item', name = 'lab-instrument', amount = 1},
        {type = 'fluid', name = 'liquid-nitrogen', amount = 20},
    },
    results = {
        {type = 'item', name = 'retrovirus', amount = 3},
    },
}:add_unlock("genetics-mk03")

RECIPE {
    type = 'recipe',
    name = 'cdna',
    category = 'genlab',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'retrovirus', amount = 1},
        {type = 'item', name = 'flask', amount = 3},
        {type = 'item', name = 'bio-sample', amount = 5},
        {type = 'item', name = 'petri-dish-bacteria', amount = 5},
        {type = 'item', name = 'plasmids', amount = 1},
        {type = 'item', name = 'moss-gen', amount = 5},
        {type = 'item', name = 'lab-instrument', amount = 1},
        {type = 'item', name = 'fawogae-substrate', amount = 4},
    },
    results = {
        {type = 'item', name = 'cdna', amount = 1},
    },
}:add_unlock("genetics-mk02")

RECIPE {
    type = 'recipe',
    name = 'primers',
    category = 'biofactory',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'petri-dish-bacteria', amount = 10},
        {type = 'item', name = 'fawogae', amount = 5},
        {type = 'item', name = 'saps', amount = 5},
        {type = 'item', name = 'lab-instrument', amount = 1},
        {type = 'fluid', name = 'phytoplankton', amount = 80},
    },
    results = {
        {type = 'item', name = 'primers', amount = 1, probability = 0.7},
    },
}:add_unlock("genetics-mk03")

RECIPE {
    type = 'recipe',
    name = 'primers-02',
    category = 'biofactory',
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = 'item', name = 'petri-dish-bacteria', amount = 10},
        {type = 'item', name = 'fawogae', amount = 5},
        {type = 'item', name = 'saps', amount = 5},
        {type = 'item', name = 'sea-sponge', amount = 1},
        {type = 'item', name = 'lab-instrument', amount = 1},
        {type = 'fluid', name = 'phytoplankton', amount = 80},
    },
    results = {
        {type = 'item', name = 'primers', amount = 1},
    },
}:add_unlock("genetics-mk04")

RECIPE {
    type = 'recipe',
    name = 'primers-03',
    category = 'biofactory',
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = 'item', name = 'petri-dish-bacteria', amount = 10},
        {type = 'item', name = 'fawogae', amount = 5},
        {type = 'item', name = 'saps', amount = 5},
        {type = 'item', name = 'sea-sponge', amount = 1},
        {type = 'item', name = 'lab-instrument', amount = 1},
        {type = 'fluid', name = 'phytoplankton', amount = 80},
        {type = 'fluid', name = 'simik-blood', amount = 50},
    },
    results = {
        {type = 'item', name = 'primers', amount = 3},
    },
}:add_unlock("genetics-mk05")

RECIPE {
    type = 'recipe',
    name = 'dna-polymerase',
    category = 'genlab',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'retrovirus', amount = 1},
        {type = 'fluid', name = 'arqad-honey', amount = 50},
        {type = 'item', name = 'flask', amount = 2},
        {type = 'item', name = 'cocoon', amount = 10},
        {type = 'item', name = 'lab-instrument', amount = 1},
    },
    results = {
        {type = 'item', name = 'dna-polymerase', amount = 1},
    },
}:add_unlock("genetics-mk03")

RECIPE {
    type = 'recipe',
    name = 'dna-polymerase-2',
    category = 'genlab',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'fluid', name = 'arqad-honey', amount = 50},
        {type = 'item', name = 'retrovirus', amount = 1},
        {type = 'item', name = 'flask', amount = 2},
        {type = 'item', name = 'lab-instrument', amount = 1},
        {type = 'item', name = 'arthurian-egg', amount = 10},
    },
    results = {
        {type = 'item', name = 'dna-polymerase', amount = 2},
    },
}:add_unlock("genetics-mk04")

RECIPE {
    type = 'recipe',
    name = 'alien-sample-02',
    category = 'genlab',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'item', name = 'primers', amount = 1},
        {type = 'item', name = 'alien-sample01', amount = 1},
        {type = 'item', name = 'bio-sample', amount = 10},
        {type = 'item', name = 'dna-polymerase', amount = 1},
        {type = 'fluid', name = 'milk', amount = 100},
        {type = 'item', name = 'plastic-bar', amount = 10},
        {type = 'fluid', name = 'formamide', amount = 150},
        {type = 'item', name = 'flask', amount = 2},
    },
    results = {
        {type = 'item', name = 'alien-sample-02', amount = 1},
    },
}:add_unlock("genetics-mk03")

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
        {type = 'item', name = 'bio-sample', amount = 20},
        {type = 'item', name = 'dna-polymerase', amount = 3},
        {type = 'item', name = 'plastic-bar', amount = 15},
        {type = 'item', name = 'flask', amount = 5},
        {type = 'item', name = 'chitin', amount = 5},
        {type = 'fluid', name = 'formamide', amount = 200},
        {type = 'item', name = 'arthurian-egg', amount = 10},
    },
    results = {
        {type = 'item', name = 'alien-sample-03', amount = 1},
    },
}:add_unlock("genetics-mk04")

RECIPE {
    type = 'recipe',
    name = 'gta',
    category = 'bio-reactor',
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = 'fluid', name = 'flutec-pp6', amount = 50},
        {type = 'item', name = 'yaedols', amount = 2},
        {type = 'item', name = 'denatured-seismite', amount = 1},
        {type = 'item', name = 'retrovirus', amount = 5},
        {type = 'fluid', name = 'ethanolamine', amount = 100},
        {type = 'item', name = 'flask', amount = 5},
        {type = 'item', name = 'cridren', amount = 5},
        {type = 'item', name = 'dhilmos-egg', amount = 5},
    },
    results = {
        {type = 'fluid', name = 'gta', amount = 50},
    },
    --main_product = "cocoon",
}:add_unlock("genetics-mk05")

RECIPE {
    type = 'recipe',
    name = 'cysteine',
    category = 'genlab',
    enabled = false,
    energy_required = 25,
    ingredients = {
        {type = 'item', name = 'fur', amount = 10},
        {type = 'item', name = 'chitin', amount = 5},
        {type = 'item', name = 'keratin', amount = 2},
        {type = 'fluid', name = 'bacteria-1', amount = 100},
        {type = 'fluid', name = 'oleochemicals', amount = 100},
    },
    results = {
        {type = 'item', name = 'cysteine', amount = 5},
    },
}:add_unlock("genetics-mk05"):replace_ingredient("bacteria-1", "bacteria-2")

RECIPE {
    type = 'recipe',
    name = 'adam42-gen',
    category = 'genlab',
    enabled = false,
    energy_required = 25,
    ingredients = {
        {type = 'item', name = 'dna-polymerase', amount = 2},
        {type = 'item', name = 'plastic-bar', amount = 20},
        {type = 'item', name = 'flask', amount = 5},
        {type = 'item', name = 'zymogens', amount = 1},
        {type = 'item', name = 'yaedols', amount = 12},
        {type = 'item', name = 'lab-instrument', amount = 5},
        {type = 'fluid', name = 'gta', amount = 50},
        {type = 'fluid', name = 'oleochemicals', amount = 100},
        {type = 'item', name = 'primers', amount = 8},
        {type = 'item', name = 'chimeric-proteins', amount = 4},
        {type = 'item', name = 'cdna', amount = 8},
    },
    results = {
        {type = 'item', name = 'adam42-gen', amount = 1},
    },
}:add_unlock("genetics-mk05")

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
        {type = 'item', name = 'carapace', amount = 5},
        {type = 'item', name = 'serine', amount = 30},
        {type = 'item', name = 'lab-instrument', amount = 5},
        {type = 'fluid', name = 'gta', amount = 50},
        {type = 'item', name = 'zinc-plate', amount = 4},
        {type = 'item', name = 'flask', amount = 5},
    },
    results = {
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
    },
}:add_unlock("genetics-mk05")

RECIPE {
    type = 'recipe',
    name = 'anabolic-rna',
    category = 'research',
    enabled = false,
    energy_required = 380,
    ingredients = {
        {type = 'item', name = 'adam42-gen', amount = 3},
        {type = 'item', name = 'cysteine', amount = 3},
        {type = 'item', name = 'alien-enzymes', amount = 3},
        {type = 'item', name = 'meat', amount = 60},
        {type = 'item', name = 'adrenal-cortex', amount = 25},
        {type = 'item', name = 'lab-instrument', amount = 50},
        {type = 'fluid', name = 'gta', amount = 150},
        {type = 'item', name = 'flask', amount = 50},
        {type = 'item', name = 'purine-analogues', amount = 3},
    },
    results = {
        {type = 'item', name = 'anabolic-rna', amount = 200},
    },
}:add_unlock("anabolic-rna")

RECIPE {
    type = 'recipe',
    name = 'anabolic-rna-2',
    category = 'research',
    enabled = false,
    energy_required = 380,
    ingredients = {
        {type = 'item', name = 'adam42-gen', amount = 3},
        {type = 'item', name = 'cysteine', amount = 3},
        {type = 'item', name = 'alien-enzymes', amount = 3},
        {type = 'item', name = 'meat', amount = 60},
        {type = 'item', name = 'adrenal-cortex', amount = 25},
        {type = 'item', name = 'nonconductive-phazogen', amount = 10},
        {type = 'item', name = 'lab-instrument', amount = 50},
        {type = 'fluid', name = 'gta', amount = 150},
        {type = 'item', name = 'flask', amount = 50},
        {type = 'item', name = 'purine-analogues', amount = 3},
    },
    results = {
        {type = 'item', name = 'anabolic-rna', amount = 250},
    },
}:add_unlock("anabolic-rna")

RECIPE {
    type = 'recipe',
    name = 'propeptides',
    category = 'genlab',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'sea-sponge', amount = 4},
        {type = 'item', name = 'chromium', amount = 2},
        {type = 'item', name = 'dingrit-spike', amount = 1},
        {type = 'item', name = 'bonemeal', amount = 10},
        {type = 'item', name = 'plastic-bar', amount = 10},
        {type = 'item', name = 'bio-sample', amount = 2},
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
    category = 'research',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'cytostatics', amount = 1},
        {type = 'item', name = 'propeptides', amount = 1},
        {type = 'item', name = 'pacifastin', amount = 1},
        {type = 'item', name = 'purine-analogues', amount = 1},
        {type = 'fluid', name = 'nitrogen-mustard', amount = 100},
        {type = 'fluid', name = 'arqad-jelly', amount = 150},
    },
    results = {
        {type = 'item', name = 'immunosupressants', amount = 1}
    }
}:add_unlock('immunosupressants')

RECIPE {
    type = 'recipe',
    name = 'antitumor',
    category = 'research',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'cytostatics', amount = 2},
        {type = 'item', name = 'propeptides', amount = 5},
        {type = 'item', name = 'alien-enzymes', amount = 1},
        {type = 'item', name = 'dynemicin', amount = 3},
        {type = 'item', name = 'enediyne', amount = 3},
        {type = 'item', name = 'lab-instrument', amount = 100},
        {type = 'fluid', name = 'gta', amount = 150},
        {type = 'fluid', name = 'arthropod-blood', amount = 200},
        {type = 'item', name = 'flask', amount = 150},
        {type = 'item', name = 'chitin', amount = 50},
    },
    results = {
        {type = 'item', name = 'antitumor', amount = 250},
    },
}:add_unlock("antitumor"):change_category('nano'):replace_ingredient("cytostatics", "superconductor-servomechanims")

RECIPE {
    type = 'recipe',
    name = 'antitumor-2',
    category = 'research',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'cytostatics', amount = 2},
        {type = 'item', name = 'propeptides', amount = 5},
        {type = 'item', name = 'alien-enzymes', amount = 1},
        {type = 'item', name = 'nonconductive-phazogen', amount = 1},
        {type = 'item', name = 'dynemicin', amount = 3},
        {type = 'item', name = 'enediyne', amount = 3},
        {type = 'item', name = 'lab-instrument', amount = 100},
        {type = 'fluid', name = 'gta', amount = 150},
        {type = 'fluid', name = 'arthropod-blood', amount = 200},
        {type = 'item', name = 'flask', amount = 150},
        {type = 'item', name = 'chitin', amount = 50},
    },
    results = {
        {type = 'item', name = 'antitumor', amount = 290},
    },
}:add_unlock("antitumor"):change_category('nano'):replace_ingredient("cytostatics", "superconductor-servomechanims")

RECIPE {
    type = 'recipe',
    name = 'dynemicin',
    category = 'genlab',
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = 'fluid', name = 'bacteria-1', amount = 100},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'fluid', name = 'anthraquinone', amount = 100},
        {type = 'item', name = 'flask', amount = 5},
        {type = 'item', name = 'carapace', amount = 5},
        {type = 'item', name = 'cdna', amount = 4},
        {type = 'item', name = 'photophore', amount = 8},
    },
    results = {
        {type = 'item', name = 'dynemicin', amount = 1},
    },
}:add_unlock("antitumor"):replace_ingredient("bacteria-1", "bacteria-2")

RECIPE {
    type = 'recipe',
    name = 'enediyne',
    category = 'biofactory',
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = 'fluid', name = 'zogna-bacteria', amount = 100},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'plastic-bar', amount = 15},
        {type = 'item', name = 'flask', amount = 5},
        {type = 'item', name = 'cdna', amount = 4},
        {type = 'item', name = 'lab-instrument', amount = 2},
        {type = 'item', name = 'enzyme-pks', amount = 1},
    },
    results = {
        {type = 'item', name = 'enediyne', amount = 1},
    },
}:add_unlock("antitumor")

RECIPE {
    type = 'recipe',
    name = 'enzyme-pks',
    category = 'genlab',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'bhoddos', amount = 5},
        {type = 'item', name = 'fawogae', amount = 15},
        {type = 'item', name = 'yaedols', amount = 6},
        {type = 'item', name = 'magnetic-beads', amount = 5},
        {type = 'item', name = 'flask', amount = 5},
        {type = 'item', name = 'empty-petri-dish', amount = 5},
        {type = 'item', name = 'retrovirus', amount = 4},
        {type = 'item', name = 'resveratrol', amount = 3},
    },
    results = {
        {type = 'item', name = 'enzyme-pks', amount = 1},
    },
}:add_unlock("pharmagenomics")

RECIPE {
    type = 'recipe',
    name = 'recombinant-ery',
    category = 'genlab',
    enabled = false,
    energy_required = 120,
    ingredients = {
        {type = 'item', name = 'adam42-gen', amount = 1},
        {type = 'item', name = 'cysteine', amount = 1},
        {type = 'item', name = 'alien-enzymes', amount = 1},
        {type = 'item', name = 'guts', amount = 15},
        {type = 'item', name = 'mukmoux-fat', amount = 30},
        {type = 'item', name = 'lab-instrument', amount = 10},
        {type = 'fluid', name = 'gta', amount = 50},
        {type = 'item', name = 'flask', amount = 20},
        {type = 'item', name = 'mmp', amount = 1},
    },
    results = {
        {type = 'item', name = 'recombinant-ery', amount = 200},
    },
}:add_unlock("recombinant-ery")

RECIPE {
    type = 'recipe',
    name = 'recombinant-ery-3',
    category = 'genlab',
    enabled = false,
    energy_required = 120,
    ingredients = {
        {type = 'item', name = 'adam42-gen', amount = 1},
        {type = 'item', name = 'cysteine', amount = 1},
        {type = 'item', name = 'alien-enzymes', amount = 1},
        {type = 'item', name = 'denatured-seismite', amount = 2},
        {type = 'item', name = 'paragen', amount = 5},
        {type = 'item', name = 'guts', amount = 15},
        {type = 'item', name = 'mukmoux-fat', amount = 30},
        {type = 'item', name = 'lab-instrument', amount = 10},
        {type = 'fluid', name = 'gta', amount = 50},
        {type = 'item', name = 'flask', amount = 20},
        {type = 'item', name = 'mmp', amount = 1},
    },
    results = {
        {type = 'item', name = 'recombinant-ery', amount = 240},
    },
}:add_unlock("recombinant-ery")

RECIPE {
    type = 'recipe',
    name = 'orexigenic',
    category = 'research',
    enabled = false,
    energy_required = 120,
    ingredients = {
        {type = 'item', name = 'alien-enzymes', amount = 2},
        {type = 'item', name = 'guts', amount = 40},
        {type = 'fluid', name = 'fish-oil', amount = 200},
        {type = 'item', name = 'lab-instrument', amount = 25},
        {type = 'item', name = 'flask', amount = 25},
        {type = 'item', name = 'zinc-plate', amount = 52},
        {type = 'item', name = 'cridren', amount = 7},
        {type = 'item', name = 'carapace', amount = 10},
        {type = 'item', name = 'yotoi', amount = 20},
        {type = 'item', name = 'grod', amount = 30},
        {type = 'item', name = 'vonix-eggs', amount = 15},
    },
    results = {
        {type = 'item', name = 'orexigenic', amount = 200},
    },
}:add_unlock("orexigenic")

RECIPE {
    type = 'recipe',
    name = 'orexigenic-2',
    category = 'research',
    enabled = false,
    energy_required = 120,
    ingredients = {
        {type = 'item', name = 'alien-enzymes', amount = 2},
        {type = 'item', name = 'guts', amount = 40},
        {type = 'fluid', name = 'fish-oil', amount = 200},
        {type = 'item', name = 'lab-instrument', amount = 25},
        {type = 'item', name = 'nonconductive-phazogen', amount = 1},
        {type = 'item', name = 'ticocr-alloy', amount = 3},
        {type = 'item', name = 'flask', amount = 25},
        {type = 'item', name = 'zinc-plate', amount = 52},
        {type = 'item', name = 'cridren', amount = 7},
        {type = 'item', name = 'carapace', amount = 10},
        {type = 'item', name = 'yotoi', amount = 20},
        {type = 'item', name = 'grod', amount = 30},
        {type = 'item', name = 'vonix-eggs', amount = 15},
    },
    results = {
        {type = 'item', name = 'orexigenic', amount = 250},
    },
}:add_unlock("orexigenic")

RECIPE {
    type = 'recipe',
    name = 'cbp',
    category = 'genlab',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'meat', amount = 10},
        {type = 'item', name = 'bhoddos', amount = 10},
        {type = 'item', name = 'filtration-media', amount = 5},
        {type = 'item', name = 'magnetic-beads', amount = 5},
        {type = 'item', name = 'pineal-gland', amount = 2},
    },
    results = {
        {type = 'item', name = 'cbp', amount = 1},
    },
}:add_unlock("chitin")

RECIPE {
    type = 'recipe',
    name = 'chimeric-proteins',
    category = 'genlab',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'magnetic-beads', amount = 15},
        {type = 'item', name = 'retrovirus', amount = 4},
        {type = 'fluid', name = 'ethanol', amount = 500},
    },
    results = {
        {type = 'item', name = 'chimeric-proteins', amount = 5},
    },
}:add_unlock("chitin"):add_ingredient({type = "fluid", name = "ethylene-glycol", amount = 50})
