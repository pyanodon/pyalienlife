local fun = require("prototypes/functions/functions")

--TECHNOLOGY--
TECHNOLOGY('nano-tech'):add_prereq('microbiology-mk03')
TECHNOLOGY('bio-implants'):add_prereq('nano-tech')
TECHNOLOGY('antitumor'):add_prereq('earnshaw-theorem')
RECIPE('kicalk-plantation'):remove_unlock('coal-processing-1')
RECIPE('cadaveric-arum-mk01'):remove_unlock('basic-electronics')

TECHNOLOGY {
    type = "technology",
    name = "kicalk",
    icon = "__pyalienlife__/graphics/technology/kicalk.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"botany-mk01"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
        },
        time = 50
    }
}

TECHNOLOGY {
    type = "technology",
    name = "arum",
    icon = "__pyalienlife__/graphics/technology/arum.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"botany-mk02"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 2},
            {"logistic-science-pack", 2},
        },
        time = 50
    }
}


----BUILDINDS----
RECIPE('ralesia-plantation-mk03'):add_ingredient({type = "item", name = "biopolymer", amount = 15}):add_ingredient({type = "item", name = "carbon-aerogel", amount = 20})
RECIPE('ralesia-plantation-mk04'):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient({type = "item", name = "superconductor-servomechanims", amount = 5}):add_ingredient({type = "item", name = "nv-center", amount = 2})
RECIPE('auog-paddock'):set_fields {enabled = false}
RECIPE('zipir'):remove_unlock('basic-electronics')
RECIPE('kicalk-plantation-mk01'):add_unlock('kicalk')
RECIPE('cadaveric-arum-mk01'):add_unlock('arum'):subgroup_order("py-alienlife-buildings-mk01", "b")
RECIPE('cadaveric-arum-mk02'):add_unlock('botany-mk03'):subgroup_order("py-alienlife-buildings-mk02", "b")
RECIPE('cadaveric-arum-mk03'):add_unlock('botany-mk04'):subgroup_order("py-alienlife-buildings-mk03", "b")
RECIPE('cadaveric-arum-mk04'):add_unlock('botany-mk04'):subgroup_order("py-alienlife-buildings-mk04", "b")
RECIPE('moondrop-greenhouse-mk02'):add_unlock('botany-mk03'):subgroup_order("py-alienlife-buildings-mk02", "b")
RECIPE('moondrop-greenhouse-mk03'):add_unlock('botany-mk04'):subgroup_order("py-alienlife-buildings-mk03", "b")
RECIPE('moondrop-greenhouse-mk04'):add_unlock('botany-mk04'):subgroup_order("py-alienlife-buildings-mk04", "b")
RECIPE('harvester'):replace_ingredient("plastic-bar", "biopolymer"):add_ingredient({type = "item", name = "aerogel", amount = 20})

----RECIPES----
RECIPE('dms'):remove_unlock('basic-electronics')
RECIPE('fungal-substrate'):add_ingredient({type = "item", name = "urea", amount = 3})
RECIPE('log7-2'):change_category('fwf'):add_ingredient({type = "item", name = "wood-seedling", amount = 3}):subgroup_order("py-alienlife-plants", "a"):remove_unlock('basic-electronics'):add_unlock('botany-mk02')
--RECIPE('urea'):replace_ingredient("fawogae", "seaweed"):subgroup_order("py-alienlife-items", "a")
RECIPE('bonemeal2'):remove_unlock('advanced-electronics'):subgroup_order("py-alienlife-items", "a")
RECIPE('bonemeal3'):remove_unlock('advanced-electronics'):subgroup_order("py-alienlife-items", "a")
RECIPE('bonemeal4'):remove_unlock('advanced-electronics'):subgroup_order("py-alienlife-items", "a")
RECIPE('cobalt-extract'):replace_ingredient("sulfuric-acid", "cyanic-acid")
RECIPE('neuroprocessor'):replace_ingredient("electronic-circuit", "pcb2"):add_ingredient({type = "item", name = "resistor1", amount = 4}):add_ingredient({type = "item", name = "capacitor1", amount = 3}):add_ingredient({type = "item", name = "inductor1", amount = 5}):add_ingredient({type = "item", name = "transistor", amount = 5})
RECIPE('neuromorphic-chip'):add_ingredient({type = "item", name = "bakelite", amount = 5}):add_ingredient({type = "item", name = "micro-fiber", amount = 4}):add_ingredient({type = "item", name = "capacitor2", amount = 5}):add_ingredient({type = "item", name = "melamine", amount = 10}):add_ingredient({type = "fluid", name = "etching", amount = 40})
RECIPE('formamide'):replace_ingredient("nitrogen", "ammonia"):change_category('fbreactor')
RECIPE('bacteria-2'):subgroup_order("py-alienlife-genetics", "a"):remove_unlock('nano-tech'):add_unlock('microbiology-mk03'):add_ingredient({type = "item", name = "petri-dish", amount = 3}):add_ingredient({type = "item", name = "nexelit-plate", amount = 2}):add_ingredient({type = "item", name = "flask", amount = 5}):add_ingredient({type = "item", name = "chitin", amount = 5})
RECIPE('rendering'):remove_unlock('basic-electronics')
RECIPE('crco-alloy'):remove_ingredient("tailings-dust"):add_ingredient({type = "item", name = "cobalt-nx", amount = 2})
RECIPE('raw-fiber'):remove_unlock('basic-electronics')
RECIPE('raw-fiber3'):remove_unlock('basic-electronics')
RECIPE('raw-fiber2'):remove_unlock('basic-electronics'):set_fields {enabled = false}
RECIPE('raw-fiber4'):remove_unlock('basic-electronics'):set_fields {enabled = false}
RECIPE('dms'):subgroup_order("py-alienlife-recipes", "a"):remove_unlock('basic-electronics'):add_unlock('botany-mk03')--SUBSTITUIR POR TECH DELA
RECIPE('cobalt-fluoride'):replace_ingredient("chromium", "reo")
RECIPE('micro-fiber'):remove_unlock('nano-tech'):add_unlock('botany-mk02')
RECIPE('epoxy'):remove_unlock('advanced-electronics'):add_unlock('basic-electronics')
RECIPE('bisphenol-a'):remove_unlock('advanced-electronics'):add_unlock('basic-electronics')
RECIPE('ech'):remove_unlock('advanced-electronics'):add_unlock('basic-electronics')
RECIPE('alien-sample-02'):add_ingredient({type = "item", name = "micro-fiber", amount = 5})
RECIPE('resveratrol'):change_category('pulp')
RECIPE('dhilmos-pool-mk01'):replace_ingredient("glass", "phosphate-glass"):replace_ingredient("plastic-bar", "biopolymer"):add_ingredient({type = "item", name = "aerogel", amount = 5})
RECIPE('dhilmos-codex'):replace_ingredient("glass", "phosphate-glass")
RECIPE('fertilizer-1'):change_category('fbreator')
RECIPE('fertilizer-3'):change_category('fbreator')
RECIPE('fertilizer-4'):change_category('fbreator')
RECIPE('fish-food-02'):remove_ingredient("blood"):add_ingredient({type = "item", name = "blood-meal", amount = 5})
RECIPE('yaedols-codex'):replace_ingredient("glass", "phosphate-glass")
RECIPE('dingrits-codex'):replace_ingredient("glass", "phosphate-glass")
RECIPE('yeadols-codex'):replace_ingredient("glass", "phosphate-glass")
RECIPE('scrondrix-codex'):replace_ingredient("glass", "phosphate-glass")
RECIPE('nanochondria'):add_ingredient({type = "item", name = "paramagnetic-material", amount = 1}):add_ingredient({type = "item", name = "diamagnetic-material", amount = 1})

RECIPE('zipir-carcass'):remove_unlock('basic-electronics')
RECIPE('fawogae2'):remove_unlock('advanced-electronics')
RECIPE('fiber'):remove_unlock('basic-electronics')
--RECIPE('urea'):change_category('vrauks'):subgroup_order("py-alienlife-auog", "a")
ITEM('urea'):subgroup_order("py-alienlife-auog", "a")
RECIPE('waste-water-urea'):subgroup_order("py-alienlife-recipes", "a"):remove_unlock('basic-electronics'):add_unlock('dhilmos')
RECIPE('ammonia-urea'):subgroup_order("py-alienlife-recipes", "a"):remove_unlock('oil-processing'):add_unlock('auog')
RECIPE('urea2'):remove_unlock('coal-processing-1')
RECIPE('urea'):set_fields {enabled = false}
RECIPE('mukmoux-fat2'):remove_unlock('advanced-electronics')
RECIPE('mukmoux-fat3'):remove_unlock('advanced-electronics')
RECIPE('fertilizer'):remove_unlock('basic-electronics')


fun.results_replacer("dhilmos-sex-01", "dirty-water", "waste-water")
fun.results_replacer("fish-sex-pup-01", "dirty-water", "waste-water")
fun.results_replacer("fish-sex-pup-02", "dirty-water", "waste-water")

fun.results_replacer("fertilizer", "py-fertilizer", "fertilizer")
--fun.results_replacer("urea", "urea", "urea",5)

----EXCLUSIVE RECIPES----

RECIPE {
    type = 'recipe',
    name = 'fiber-b',
    category = 'centrifuging',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'raw-fiber', amount = 5}
    },
    results = {
        {type = 'item', name = 'fiber', amount = 2},
        {type = 'item', name = 'biomass', amount = 3}
    },
    main_product = 'fiber'
}:add_unlock('basic-electronics')


RECIPE {
    type = 'recipe',
    name = 'seaweed-8',
    category = 'seaweed',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'fluid', name = 'water-saline', amount = 100},
        {type = 'fluid', name = 'slacked-lime', amount = 100},
        {type = 'item', name = 'iron-ore-dust', amount = 1},
        {type = 'item', name = 'fertilizer', amount = 3},
    },
    results = {
        {type = 'item', name = 'seaweed', amount = 30},
    },
}:add_unlock("botany-mk04")

RECIPE {
    type = "recipe",
    name = "phytoplankton-2",
    category = "plankton",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "flue-gas", amount = 100},
        {type = "fluid", name = "water", amount = 500},
        {type = 'item', name = 'fertilizer', amount = 3},
    },
    results = {
        {type = "fluid", name = "phytoplankton", amount = 20}
    },
    main_product = "phytoplankton",
    subgroup = 'py-alienlife-plants',
    order = 'b'
}:add_unlock("microbiology-mk03")

RECIPE {
    type = 'recipe',
    name = 'moss-4',
    category = 'moss',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'fluid', name = 'water', amount = 100},
        {type = 'fluid', name = 'carbon-dioxide', amount = 100},
        {type = 'item', name = 'limestone', amount = 3},
        {type = 'item', name = 'coarse', amount = 5},
        {type = 'item', name = 'fertilizer', amount = 3},
    },
    results = {
        {type = 'item', name = 'moss', amount = 25},
    },
    icon = '__pyalienlife__/graphics/icons/moss.png',
    icon_size = 32,
    subgroup = 'py-alienlife-plants',
    order = 'a'
}:add_unlock("botany-mk04")

RECIPE {
    type = 'recipe',
    name = 'mukmoux-manure-03',
    category = 'mukmoux',
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = 'item', name = 'mukmoux-food-01', amount = 1},
        {type = 'item', name = 'salt', amount = 10},
        {type = 'item', name = 'raw-fiber', amount = 5},
        {type = 'item', name = 'water-barrel', amount = 10},
    },
    results = {
        {type = 'item', name = 'manure', amount = 8},
        {type = 'item', name = 'empty-barrel', amount = 10},
    },
    main_product = "manure",
}:add_unlock("mukmoux")

RECIPE {
    type = 'recipe',
    name = 'mukmoux-manure-03-food',
    category = 'mukmoux',
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = 'item', name = 'mukmoux-food-02', amount = 1},
        {type = 'item', name = 'salt', amount = 10},
        {type = 'item', name = 'raw-fiber', amount = 5},
        {type = 'item', name = 'water-barrel', amount = 10},
    },
    results = {
        {type = 'item', name = 'manure', amount = 10},
        {type = 'item', name = 'empty-barrel', amount = 10},
    },
    main_product = "manure",
}:add_unlock("mukmoux")

--scrondrix

RECIPE {
    type = 'recipe',
    name = 'bones-to-phosphate',
    category = 'atomizer',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'bones', amount = 10},
    },
    results = {
        {type = 'item', name = 'phosphate-rock', amount = 5},
    },
    --main_product = "cocoon",
}:add_unlock("molecular-decohesion")

RECIPE {
    type = 'recipe',
    name = 'carapace-to-re',
    category = 'atomizer',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'carapace', amount = 10},
    },
    results = {
        {type = 'item', name = 'rare-earth-ore', amount = 5},
    },
    --main_product = "cocoon",
}:add_unlock("molecular-decohesion")

RECIPE {
    type = 'recipe',
    name = 'meat-to-cyanic',
    category = 'atomizer',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'meat', amount = 10},
    },
    results = {
        {type = 'fluid', name = 'cyanic-acid', amount = 30},
    },
    --main_product = "cocoon",
}:add_unlock("molecular-decohesion")

RECIPE {
    type = 'recipe',
    name = 'ethylene-from-fruit',
    category = 'bio-reactor',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'yotoi-fruit', amount = 10},
    },
    results = {
        {type = 'fluid', name = 'ethylene', amount = 50}
    }
}:add_unlock('biotech-mk02')

RECIPE {
    type = 'recipe',
    name = 'fiber-01',
    category = 'wpu',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'wood', amount = 10},
    },
    results = {
        {type = 'item', name = 'raw-fiber', amount = 2}
    }
}:add_unlock('kicalk')

RECIPE {
    type = 'recipe',
    name = 'phenol-02',
    category = 'distilator',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'lignin', amount = 5},
    },
    results = {
        {type = 'item', name = 'phenol', amount = 5},
    },
}:add_unlock("biotech-mk02")

RECIPE {
    type = 'recipe',
    name = 'filtration-media-4',
    category = 'crafting',
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "pure-sand", amount = 30},
        {type = "item", name = "active-carbon", amount = 3},
        {type = "item", name = "gravel", amount = 25},
        {type = 'item', name = 'cellulose', amount = 5},
        {type = 'item', name = 'sub-denier-microfiber', amount = 1},
    },
    results = {
        {type = 'item', name = 'filtration-media', amount = 6},
    },
}:add_unlock("nano-tech")

RECIPE {
    type = 'recipe',
    name = 'urea-from-liquid-manure',
    category = 'bio-reactor',
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = 'fluid', name = 'liquid-manure', amount = 100},
        {type = 'fluid', name = 'zogna-bacteria', amount = 10},
    },
    results = {
        {type = 'item', name = 'urea', amount = 20},
    },
    --main_product = "cocoon",
}:add_unlock("biotech-mk01")

RECIPE {
    type = 'recipe',
    name = 'yotoi-fiber',
    category = 'pulp',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'yotoi-leaves', amount = 5},
     },
    results = {
        {type = 'item', name = 'raw-fiber', amount = 4},
    },
}:add_unlock("yotoi")

RECIPE {
    type = "recipe",
    name = "cellulose-01",
    category = "pulp",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'raw-fiber', amount = 8},
        {type = 'item', name = 'sodium-hydroxide', amount = 3},
    },
    results = {
        {type = 'item', name = 'cellulose', amount = 5}
    },
}:add_unlock("kicalk")

RECIPE {
    type = 'recipe',
    name = 'methane-from-liquid-manure',
    category = 'bio-reactor',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'fluid', name = 'liquid-manure', amount = 100},
        {type = 'fluid', name = 'bacteria-1', amount = 10},
    },
    results = {
        {type = 'fluid', name = 'methane', amount = 80},
    },
    --main_product = "cocoon",
}:add_unlock("kmauts")

RECIPE {
    type = 'recipe',
    name = 'tester',
    category = 'antelope',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'coke', amount = 10},
    },
    results = {
        {type = 'item', name = 'coke', amount = 80},
    },
    --main_product = "cocoon",
}:add_unlock("schrodinger-antelope")


--------------------------ralesia mega farm----------------

RECIPE {
    type = 'recipe',
    name = 'ralesia-super-8',
    category = 'ralesia-farm',
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = 'item', name = 'soil', amount = 1000},
        {type = 'item', name = 'urea', amount = 300},
        {type = 'item', name = 'fertilizer', amount = 100},
        {type = 'fluid', name = 'water', amount = 3000},
        {type = 'fluid', name = 'syngas', amount = 1500},
    },
    results = {
        {type = 'item', name = 'ralesias', amount = 1},
    },
}:add_unlock("mega-farm-ralesia")

RECIPE {
    type = 'recipe',
    name = 'ralesia-super-9',
    category = 'ralesia-farm',
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = 'item', name = 'soil', amount = 1000},
        {type = 'item', name = 'urea', amount = 300},
        {type = 'item', name = 'blood-meal', amount = 100},
        {type = 'item', name = 'fertilizer', amount = 100},
        {type = 'fluid', name = 'water', amount = 3000},
        {type = 'fluid', name = 'syngas', amount = 1500},
    },
    results = {
        {type = 'item', name = 'ralesias', amount = 1},
    },
}:add_unlock("mega-farm-ralesia")

--------------------------rennea mega farm----------------

RECIPE {
    type = 'recipe',
    name = 'rennea-super-8',
    category = 'rennea-farm',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'soil', amount = 1000},
        {type = 'fluid', name = 'water', amount = 3000},
        {type = 'item', name = 'coarse', amount = 100},
        {type = 'item', name = 'urea', amount = 300},
        {type = 'item', name = 'fertilizer', amount = 100},
    },
    results = {
        {type = 'item', name = 'rennea', amount = 1},
    },
}:add_unlock("mega-farm-rennea")

RECIPE {
    type = 'recipe',
    name = 'rennea-super-9',
    category = 'rennea-farm',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'soil', amount = 1000},
        {type = 'fluid', name = 'water', amount = 3000},
        {type = 'item', name = 'coarse', amount = 100},
        {type = 'item', name = 'urea', amount = 300},
        {type = 'item', name = 'blood-meal', amount = 100},
        {type = 'item', name = 'fertilizer', amount = 100},
    },
    results = {
        {type = 'item', name = 'rennea', amount = 1},
    },
}:add_unlock("mega-farm-rennea")

--------------------------tuuphra mega farm----------------

RECIPE {
    type = 'recipe',
    name = 'tuuphra-super-8',
    category = 'tuuphra-farm',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'soil', amount = 1000},
        {type = 'fluid', name = 'water', amount = 3000},
        {type = 'fluid', name = 'nitrogen', amount = 1500},
        {type = 'item', name = 'coarse', amount = 100},
        {type = 'item', name = 'urea', amount = 300},
        {type = 'item', name = 'fertilizer', amount = 100},
    },
    results = {
        {type = 'item', name = 'tuuphra', amount = 1},
    },
}:add_unlock("mega-farm-tuuphra")

RECIPE {
    type = 'recipe',
    name = 'tuuphra-super-9',
    category = 'tuuphra-farm',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'soil', amount = 1000},
        {type = 'fluid', name = 'water', amount = 3000},
        {type = 'fluid', name = 'nitrogen', amount = 1500},
        {type = 'item', name = 'coarse', amount = 100},
        {type = 'item', name = 'urea', amount = 300},
        {type = 'item', name = 'blood-meal', amount = 100},
        {type = 'item', name = 'fertilizer', amount = 100},
    },
    results = {
        {type = 'item', name = 'tuuphra', amount = 1},
    },
}:add_unlock("mega-farm-tuuphra")

--------------------------grod mega farm----------------

RECIPE {
    type = 'recipe',
    name = 'grod-super-9',
    category = 'grod-farm',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'soil', amount = 1000},
        {type = 'fluid', name = 'water', amount = 10000},
        {type = 'fluid', name = 'slacked-lime', amount = 1000},
        {type = 'item', name = 'limestone', amount = 150},
        {type = 'item', name = 'urea', amount = 300},
        {type = 'item', name = 'blood-meal', amount = 100},
        {type = 'item', name = 'fertilizer', amount = 100},
    },
    results = {
        {type = 'item', name = 'grod', amount = 1},
    },
}:add_unlock("mega-farm-grod")

--------------------------yotoi mega farm----------------

RECIPE {
    type = 'recipe',
    name = 'yotoi-super-9',
    category = 'yotoi-farm',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'sand', amount = 1000},
        {type = 'fluid', name = 'water', amount = 10000},
        {type = 'fluid', name = 'carbon-dioxide', amount = 6000},
        {type = 'item', name = 'limestone', amount = 150},
        {type = 'item', name = 'lignin', amount = 200},
        {type = 'item', name = 'biomass', amount = 300},
        {type = 'item', name = 'urea', amount = 300},
        {type = 'item', name = 'blood-meal', amount = 100},
        {type = 'item', name = 'fertilizer', amount = 100},
    },
    results = {
        {type = 'item', name = 'yotoi', amount = 1},
    },
}:add_unlock("mega-farm-yotoi")

--------------------------yotoi fruit mega farm----------------

RECIPE {
    type = 'recipe',
    name = 'yotoi-fruit-super-9',
    category = 'yotoi-farm',
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'sand', amount = 1000},
        {type = 'fluid', name = 'water', amount = 10000},
        {type = 'fluid', name = 'carbon-dioxide', amount = 6000},
        {type = 'item', name = 'limestone', amount = 150},
        {type = 'item', name = 'lignin', amount = 200},
        {type = 'item', name = 'biomass', amount = 300},
        {type = 'item', name = 'urea', amount = 300},
        {type = 'item', name = 'blood-meal', amount = 100},
        {type = 'item', name = 'fertilizer', amount = 100},
    },
    results = {
        {type = 'item', name = 'yotoi-fruit', amount = 1},
    },
}:add_unlock("mega-farm-yotoi")