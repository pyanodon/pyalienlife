local fun = require("prototypes/functions/functions")

--TECHNOLOGY--
TECHNOLOGY('nano-tech'):add_prereq('microbiology-mk03')
TECHNOLOGY('bio-implants'):add_prereq('nano-tech')

TECHNOLOGY {
    type = "technology",
    name = "zipir",
    icon = "__pyalienlife__/graphics/technology/zipir.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"water-animals-mk01","food-mk01"},
    effects = {},
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
        },
        time = 50
    }
}


----BUILDINDS----
RECIPE('ralesia-plantation-mk03'):add_ingredient({type = "item", name = "biopolymer", amount = 15}):add_ingredient({type = "item", name = "carbon-aerogel", amount = 20})
RECIPE('ralesia-plantation-mk04'):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient({type = "item", name = "superconductor-servomechanims", amount = 5}):add_ingredient({type = "item", name = "nv-center", amount = 2})
RECIPE('auog-paddock'):set_fields {enabled = false}
RECIPE('zipir'):subgroup_order("py-alienlife-buildings-others", "a"):remove_unlock('basic-electronics'):add_unlock('zipir')
RECIPE('kicalk-plantation'):subgroup_order("py-alienlife-buildings-others", "a"):remove_unlock('coal-processing-1'):add_unlock('botany-mk01') --SUBSTITUIR POR TECH DELA
RECIPE('cadaveric-arum'):subgroup_order("py-alienlife-buildings-others", "a"):remove_unlock('basic-electronics'):add_unlock('botany-mk03') --SUBSTITUIR POR TECH DELA

----RECIPES----
RECIPE('fungal-substrate'):add_ingredient({type = "item", name = "urea", amount = 3})
RECIPE('log7-2'):change_category('fwf'):add_ingredient({type = "item", name = "wood-seedling", amount = 3}):subgroup_order("py-alienlife-plants", "a"):remove_unlock('basic-electronics'):add_unlock('botany-mk02')
RECIPE('urea'):replace_ingredient("fawogae", "seaweed"):subgroup_order("py-alienlife-items", "a")
RECIPE('bonemeal2'):remove_unlock('advanced-electronics'):subgroup_order("py-alienlife-items", "a")
RECIPE('bonemeal3'):remove_unlock('advanced-electronics'):subgroup_order("py-alienlife-items", "a")
RECIPE('bonemeal4'):remove_unlock('advanced-electronics'):subgroup_order("py-alienlife-items", "a")
RECIPE('neuroprocessor'):replace_ingredient("electronic-circuit", "pcb2"):add_ingredient({type = "item", name = "resistor1", amount = 4}):add_ingredient({type = "item", name = "resistor2", amount = 2}):add_ingredient({type = "item", name = "capacitor1", amount = 3}):add_ingredient({type = "item", name = "inductor1", amount = 5}):add_ingredient({type = "item", name = "transistor", amount = 5})
RECIPE('formamide'):replace_ingredient("nitrogen", "ammonia"):change_category('fbreactor')
RECIPE('bacteria-2'):subgroup_order("py-alienlife-genetics", "a"):remove_unlock('nano-tech'):add_unlock('microbiology-mk03'):add_ingredient({type = "item", name = "petri-dish", amount = 3}):add_ingredient({type = "item", name = "nexelit-plate", amount = 2}):add_ingredient({type = "item", name = "flask", amount = 5}):add_ingredient({type = "item", name = "chitin", amount = 5})
RECIPE('rendering'):subgroup_order("py-alienlife-recipes", "a"):remove_unlock('basic-electronics'):add_unlock('zipir'):change_category('slaughterhouse')
RECIPE('raw-fiber'):subgroup_order("py-alienlife-plants", "a"):remove_unlock('basic-electronics'):add_unlock('botany-mk01') --SUBSTITUIR POR TECH DELA
RECIPE('raw-fiber3'):subgroup_order("py-alienlife-plants", "a"):remove_unlock('basic-electronics'):add_unlock('botany-mk02')--SUBSTITUIR POR TECH DELA
RECIPE('raw-fiber2'):subgroup_order("py-alienlife-plants", "a"):add_unlock('botany-mk01'):set_fields {enabled = false}--SUBSTITUIR POR TECH DELA
RECIPE('raw-fiber4'):subgroup_order("py-alienlife-plants", "a"):add_unlock('botany-mk01'):set_fields {enabled = false}--SUBSTITUIR POR TECH DELA
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

RECIPE('zipir-carcass'):remove_unlock('basic-electronics')
RECIPE('fawogae2'):remove_unlock('advanced-electronics')
RECIPE('fiber'):remove_unlock('basic-electronics')
RECIPE('urea'):change_category('vrauks'):subgroup_order("py-alienlife-auog", "a")
ITEM('urea'):subgroup_order("py-alienlife-auog", "a")
RECIPE('waste-water-urea'):subgroup_order("py-alienlife-recipes", "a"):remove_unlock('basic-electronics'):add_unlock('dhilmos')
RECIPE('ammonia-urea'):subgroup_order("py-alienlife-recipes", "a"):remove_unlock('oil-processing'):add_unlock('auog')
RECIPE('urea2'):remove_unlock('coal-processing-1'):add_unlock('auog')
RECIPE('mukmoux-fat2'):remove_unlock('advanced-electronics')
RECIPE('mukmoux-fat3'):remove_unlock('advanced-electronics')
RECIPE('fertilizer'):remove_unlock('basic-electronics')


fun.results_replacer("dhilmos-sex-01", "dirty-water", "waste-water")
fun.results_replacer("fish-sex-pup-01", "dirty-water", "waste-water")
fun.results_replacer("fish-sex-pup-02", "dirty-water", "waste-water")
fun.results_replacer("urea", "urea", "urea",5)

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
        {type = 'item', name = 'py-fertilizer', amount = 3},
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
        {type = 'item', name = 'py-fertilizer', amount = 3},
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
    name = 'scrondrix-manure-03',
    category = 'scrondrix',
    enabled = false,
    energy_required = 80,
    ingredients = {
        --{type = 'item', name = 'scrondrix-food-01', amount = 1},
        {type = 'item', name = 'fiber', amount = 5},
        {type = 'item', name = 'water-barrel', amount = 10},
    },
    results = {
        {type = 'item', name = 'manure', amount = 6},
        {type = 'item', name = 'empty-barrel', amount = 10},
    },
    main_product = "manure",
}:add_unlock("scrondrix")

RECIPE {
    type = 'recipe',
    name = 'scrondrix-manure-03-food',
    category = 'scrondrix',
    enabled = false,
    energy_required = 80,
    ingredients = {
        --{type = 'item', name = 'scrondrix-food-02', amount = 1},
        {type = 'item', name = 'fiber', amount = 5},
        {type = 'item', name = 'water-barrel', amount = 10},
    },
    results = {
        {type = 'item', name = 'manure', amount = 8},
        {type = 'item', name = 'empty-barrel', amount = 10},
    },
    main_product = "manure",
}:add_unlock("scrondrix")

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
