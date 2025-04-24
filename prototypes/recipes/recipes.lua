--Example result replacer
--RECIPE(recipe name*):replace_result(old item*, new item*, new_amount**)
--to use copy the local at top to the given file and then add the following line with the required variables
--RECIPE("biomass-1"):replace_result("biomass", "iron-plate", 3)

--*required
--**optional. whole numbers only

RECIPE {
    type = "recipe",
    name = "fungal-substrate",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "water",   amount = 50},
        {type = "item",  name = "log",     amount = 2},
        {type = "item",  name = "biomass", amount = 5},
    },
    results = {
        {type = "item", name = "fungal-substrate", amount = 10},
    },
    allow_productivity = true,
}:add_unlock("mycology-mk02")

RECIPE {
    type = "recipe",
    name = "fungal-substrate-02",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "water",               amount = 50},
        {type = "item",  name = "fungal-substrate",    amount = 1},
        {type = "item",  name = "wood",                amount = 4},
        {type = "item",  name = "biomass",             amount = 10},
        {type = "item",  name = "petri-dish-bacteria", amount = 1},
        {type = "item",  name = "bones",               amount = 2},
    },
    results = {
        {type = "item", name = "fungal-substrate-02", amount = 10},
    },
    allow_productivity = true,
}:add_unlock("mycology-mk02")

RECIPE {
    type = "recipe",
    name = "fungal-substrate-03",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "phytoplankton",       amount = 50},
        {type = "item",  name = "tuuphra",             amount = 3},
        {type = "item",  name = "fungal-substrate-02", amount = 1},
        {type = "item",  name = "biomass",             amount = 15},
        {type = "item",  name = "ash",                 amount = 10},
        {type = "item",  name = "petri-dish-bacteria", amount = 1},
        {type = "item",  name = "bones",               amount = 2},
    },
    results = {
        {type = "item", name = "fungal-substrate-03", amount = 10},
    },
    allow_productivity = true,
}:add_unlock("mycology-mk03"):add_ingredient {type = "item", name = "raw-fiber", amount = 5}

RECIPE {
    type = "recipe",
    name = "wood-seedling",
    category = "nursery",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item",  name = "wood-seeds", amount = 1},
        {type = "item",  name = "moss",       amount = 5},
        {type = "fluid", name = "water",      amount = 100},
    },
    results = {
        {type = "item", name = "wood-seedling", amount = 3},
    },
}:add_unlock("wood-processing")

RECIPE {
    type = "recipe",
    name = "wood-seeds",
    category = "crafting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "wood", amount = 5},
    },
    results = {
        {type = "item", name = "wood-seeds", amount = 4},
    },
}:add_unlock("wood-processing")

RECIPE {
    type = "recipe",
    name = "empty-petri-dish",
    category = "glassworks",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "molten-glass", amount = 50, fluidbox_index = 2},
    },
    results = {
        {type = "item", name = "empty-petri-dish", amount = 1},
    },
}:add_unlock("petri-dish")

RECIPE {
    type = "recipe",
    name = "coke-co2",
    category = "hpf",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "coke", amount = 2},
    },
    results = {
        {type = "fluid", name = "carbon-dioxide", amount = 80},
    },
}:add_unlock("coal-processing-1")

RECIPE {
    type = "recipe",
    name = "agar",
    category = "hpf",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item",  name = "seaweed", amount = 5},
        {type = "fluid", name = "steam",   amount = 100},
    },
    results = {
        {type = "item", name = "agar", amount = 1},
    },
}:add_unlock("petri-dish")

RECIPE {
    type = "recipe",
    name = "petri-dish",
    category = "crafting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "agar",             amount = 1},
        {type = "item", name = "empty-petri-dish", amount = 1},
    },
    results = {
        {type = "item", name = "petri-dish", amount = 1},
    },
}:add_unlock("petri-dish")

RECIPE {
    type = "recipe",
    name = "moss-gen",
    category = "genlab",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "petri-dish", amount = 2},
        {type = "item", name = "moss",       amount = 20},
    },
    results = {
        {type = "item", name = "moss-gen", amount = 1},
    },
}:add_unlock("genetics-mk01")

RECIPE {
    type = "recipe",
    name = "cage",
    category = "crafting",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "iron-stick",     amount = 15},
        {type = "item", name = "titanium-plate", amount = 5},
        {type = "item", name = "solder",         amount = 2},
    },
    results = {
        {type = "item", name = "cage", amount = 1},
    },
}:add_unlock("land-animals-mk01")

if mods.pyalternativeenergy then
    RECIPE {
        type = "recipe",
        name = "cage-recycle-into-titanium",
        category = "crafting",
        enabled = false,
        energy_required = 4,
        ingredients = {
            {type = "item", name = "cage",           amount = 1},
        },
        results = {
            {type = "item", name = "iron-stick",     amount = 15, probability = 0.25},
            {type = "item", name = "solder",     amount = 2,  probability = 0.25},
            (not mods.pystellarexpedition) and {type = "item", name = "titanium-plate", amount = 5, probability = 0.25} or nil,
        },
        icons = {
            {
                icon = "__pyalternativeenergygraphics__/graphics/icons/reprocessing.png"
            },
            {
                icon = data.raw.item.cage.icon,
                scale = 0.4
            },
        },
        localised_name = {"recipe-name.cage-recycle-into-titanium"},
        auto_recycle = false,
    }:add_unlock((not mods.pystellarexpedition) and "titanium-mk03" or "land-animals-mk02")
end

RECIPE {
    type = "recipe",
    name = "neuroprocessor",
    category = "data-array",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "nexelit-matrix",     amount = 5},
        {type = "item", name = "brain",              amount = 5},
        {type = "item", name = "agar",               amount = 3},
        {type = "item", name = "bio-sample",         amount = 3},
        {type = "item", name = "nickel-plate",       amount = 5},
        {type = "item", name = "electronic-circuit", amount = 1},
        {type = "item", name = "optical-fiber",      amount = 10},
    },
    results = {
        {type = "item", name = "neuroprocessor", amount = 2},
    },
}:add_unlock("neuro-electronics-mk01"):add_ingredient {type = "item", name = "cermet", amount = 5}

RECIPE {
    type = "recipe",
    name = "py-science-pack-1",
    category = "research",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "fawogae-substrate", amount = 18},
        {type = "item", name = "flask",             amount = 3}
    },
    results = {
        {type = "item", name = "py-science-pack-1", amount = 3},
    },
}:add_unlock("py-science-pack-mk01")

RECIPE {
    type = "recipe",
    name = "py-science-pack-2",
    category = "research",
    enabled = false,
    energy_required = 180,
    ingredients = {
        {type = "item",  name = "moss",                amount = 400},
        {type = "item",  name = "zipir-eggs",          amount = 15},
        {type = "item",  name = "paragen",             amount = 1},
        {type = "item",  name = "solidified-sarcorus", amount = 2},
        {type = "item",  name = "alien-sample-02",     amount = 1},
        {type = "item",  name = "casein",              amount = 30},
        {type = "fluid", name = "arqad-honey",         amount = 600},
        {type = "fluid", name = "flavonoids",          amount = 100},
        {type = "item",  name = "plastic-bar",         amount = 36},
        {type = "item",  name = "flask",               amount = 18},
        -- {type = 'item', name = 'stainless-steel', amount = 10},
    },
    results = {
        {type = "item", name = "py-science-pack-2", amount = 18},
    },
}:add_unlock("py-science-pack-mk02")

RECIPE {
    type = "recipe",
    name = "py-science-pack-3",
    category = "research",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item",  name = "moss",            amount = 20},
        {type = "item",  name = "alien-sample-03", amount = 1},
        {type = "item",  name = "nanofibrils",     amount = 1},
        {type = "item",  name = "arqad-propolis",  amount = 4},
        {type = "item",  name = "plastic-bar",     amount = 15},
        {type = "item",  name = "negasium",        amount = 1},
        {type = "item",  name = "paragen",         amount = 2},
        {type = "fluid", name = "flavonoids",      amount = 50},
        {type = "item",  name = "flask",           amount = 1},
        {type = "item",  name = "diamond",         amount = 1},
    },
    results = {
        {type = "item", name = "py-science-pack-3", amount = 3},
    },
}:add_unlock("py-science-pack-mk03")

RECIPE {
    type = "recipe",
    name = "py-science-pack-4",
    category = "research",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item",  name = "moss",                   amount = 20},
        {type = "item",  name = "perfect-samples",        amount = 1},
        {type = "item",  name = "nonconductive-phazogen", amount = 1},
        {type = "item",  name = "negasium",               amount = 2},
        {type = "item",  name = "zinc-finger-proteins",   amount = 1},
        {type = "item",  name = "vonix-eggs",             amount = 10},
        {type = "fluid", name = "flavonoids",             amount = 50},
        {type = "item",  name = "plastic-bar",            amount = 10},
        {type = "item",  name = "flask",                  amount = 1},
        {type = "item",  name = "super-alloy",            amount = 10},
    },
    results = {
        {type = "item", name = "py-science-pack-4", amount = 3},
    },
}:add_unlock("py-science-pack-mk04")

RECIPE {
    type = "recipe",
    name = "fertilizer-1",
    category = "biofactory",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "blood",   amount = 50},
        {type = "item",  name = "bones",   amount = 6},
        {type = "item",  name = "manure",  amount = 5},
        {type = "item",  name = "ash",     amount = 10},
        {type = "item",  name = "biomass", amount = 20}
    },
    results = {
        {type = "item", name = "fertilizer", amount = 10}
    }
}:add_unlock("fertilizer-mk02"):replace_ingredient("manure", "urea")

RECIPE {
    type = "recipe",
    name = "fertilizer-4",
    category = "biofactory",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item",  name = "manure",         amount = 10},
        {type = "item",  name = "biomass",        amount = 10},
        {type = "fluid", name = "zogna-bacteria", amount = 20},
    },
    results = {
        {type = "item", name = "fertilizer", amount = 5}
    }
}:add_unlock("fertilizer-mk01")

RECIPE {
    type = "recipe",
    name = "fertilizer-fish-1",
    category = "biofactory",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "fish-hydrolysate", amount = 150},
    },
    results = {
        {type = "item", name = "fertilizer", amount = 3}
    }
}:add_unlock("fertilizer-mk02")

RECIPE {
    type = "recipe",
    name = "fertilizer-fish-2",
    category = "biofactory",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "fish-emulsion", amount = 100},
    },
    results = {
        {type = "item", name = "fertilizer", amount = 3}
    }
}:add_unlock("fertilizer-mk03")

RECIPE {
    type = "recipe",
    name = "fertilizer-fish-3",
    category = "biofactory",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "fishmeal", amount = 10},
    },
    results = {
        {type = "item", name = "fertilizer", amount = 2}
    }
}:add_unlock("fertilizer-mk03")

RECIPE {
    type = "recipe",
    name = "flutec-pp6",
    category = "biofactory",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "decalin",         amount = 100},
        {type = "item",  name = "cobalt-fluoride", amount = 5},
    },
    results = {
        {type = "fluid", name = "flutec-pp6", amount = 100}
    }
}:add_unlock("biotech-mk02")

RECIPE {
    type = "recipe",
    name = "cobalt-fluoride",
    category = "chemistry",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "acidgas",        amount = 100},
        {type = "fluid", name = "steam",          amount = 200},
        {type = "item",  name = "cobalt-extract", amount = 3},
        {type = "item",  name = "chromium",       amount = 3},
    },
    results = {
        {type = "item", name = "cobalt-fluoride", amount = 3}
    }
}:add_unlock("cobalt-mk01")

RECIPE {
    type = "recipe",
    name = "decalin",
    category = "chemistry",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "aromatics",      amount = 100},
        {type = "fluid", name = "hydrogen",       amount = 200},
        {type = "item",  name = "nexelit-plate",  amount = 3},
        {type = "item",  name = "titanium-plate", amount = 2},
    },
    results = {
        {type = "fluid", name = "decalin", amount = 50}
    }
}:add_unlock("biotech-mk02")

RECIPE {
    type = "recipe",
    name = "flavonoids",
    category = "biofactory",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "seaweed", amount = 20},
        {type = "item", name = "yaedols", amount = 4},
    },
    results = {
        {type = "fluid", name = "flavonoids", amount = 30}
    }
}:add_unlock("yaedols")

RECIPE {
    type = "recipe",
    name = "cytostatics",
    category = "genlab",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item",  name = "sea-sponge",  amount = 1},
        {type = "item",  name = "plasmids",    amount = 6},
        {type = "item",  name = "flask",       amount = 3},
        {type = "fluid", name = "decalin",     amount = 30},
        {type = "item",  name = "plastic-bar", amount = 10},
    },
    results = {
        {type = "item", name = "cytostatics", amount = 1}
    }
}:add_unlock("genetics-mk03")

RECIPE {
    type = "recipe",
    name = "cytostatics-2",
    category = "genlab",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item",  name = "sea-sponge",     amount = 1},
        {type = "item",  name = "arqad-propolis", amount = 1},
        {type = "item",  name = "plasmids",       amount = 5},
        {type = "item",  name = "flask",          amount = 3},
        {type = "fluid", name = "decalin",        amount = 30},
        {type = "item",  name = "plastic-bar",    amount = 10},
    },
    results = {
        {type = "item", name = "cytostatics", amount = 3}
    }
}:add_unlock("genetics-mk05")

RECIPE {
    type = "recipe",
    name = "microcin-j25",
    category = "bio-reactor",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item",  name = "sea-sponge",     amount = 1},
        {type = "item",  name = "cytostatics",    amount = 2},
        {type = "item",  name = "flask",          amount = 3},
        {type = "item",  name = "lab-instrument", amount = 2},
        {type = "item",  name = "arthurian-egg",  amount = 5},
        {type = "item",  name = "navens",         amount = 5},
        {type = "fluid", name = "flavonoids",     amount = 30}
    },
    results = {
        {type = "item", name = "microcin-j25", amount = 1}
    }
}:add_unlock("genetics-mk04")

RECIPE {
    type = "recipe",
    name = "resveratrol",
    category = "biofactory",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "yotoi-fruit",     amount = 10},
        {type = "item",  name = "nexelit-plate",   amount = 5},
        {type = "item",  name = "chromium",        amount = 5},
        {type = "item",  name = "flask",           amount = 2},
        {type = "item",  name = "moss",            amount = 20},
        {type = "fluid", name = "organic-solvent", amount = 100},
        {type = "fluid", name = "flavonoids",      amount = 30},
        {type = "fluid", name = "arqad-honey",     amount = 100},
    },
    results = {
        {type = "item", name = "resveratrol", amount = 10}
    }
}:add_unlock("genetics-mk04")

RECIPE {
    type = "recipe",
    name = "gh",
    category = "research",
    enabled = false,
    energy_required = 70,
    ingredients = {
        {type = "item",  name = "plasmids",       amount = 5},
        {type = "item",  name = "bio-sample",     amount = 20},
        {type = "item",  name = "cdna",           amount = 2},
        {type = "item",  name = "petri-dish",     amount = 20},
        {type = "item",  name = "flask",          amount = 10},
        {type = "item",  name = "lab-instrument", amount = 4},
        {type = "fluid", name = "bacteria-1",     amount = 200},
        {type = "item",  name = "pineal-gland",   amount = 3}
    },
    results = {
        {type = "item", name = "gh", amount = 50}
    }
}:add_unlock("growth-hormone")

RECIPE {
    type = "recipe",
    name = "gh-2",
    category = "research",
    enabled = false,
    energy_required = 70,
    ingredients = {
        {type = "item",  name = "plasmids",               amount = 5},
        {type = "item",  name = "bio-sample",             amount = 20},
        {type = "item",  name = "cdna",                   amount = 2},
        {type = "item",  name = "petri-dish",             amount = 20},
        {type = "item",  name = "nonconductive-phazogen", amount = 1},
        {type = "item",  name = "solidified-sarcorus",    amount = 10},
        {type = "item",  name = "flask",                  amount = 10},
        {type = "item",  name = "lab-instrument",         amount = 4},
        {type = "fluid", name = "bacteria-1",             amount = 200},
        {type = "item",  name = "pineal-gland",           amount = 3}
    },
    results = {
        {type = "item", name = "gh", amount = 80}
    }
}:add_unlock("growth-hormone")

RECIPE {
    type = "recipe",
    name = "lard-from-brains",
    category = "bio-reactor",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "brain", amount = 10},
    },
    results = {
        {type = "item", name = "mukmoux-fat", amount = 10}
    }
}:add_unlock("biotech-mk02")

RECIPE {
    type = "recipe",
    name = "hcl-from-guts",
    category = "bio-reactor",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "guts", amount = 10},
    },
    results = {
        {type = "fluid", name = "hydrogen-chloride", amount = 50}
    }
}:add_unlock("biotech-mk02")

RECIPE {
    type = "recipe",
    name = "olechemicals-from-skin",
    category = "bio-reactor",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "skin",       amount = 10},
        {type = "fluid", name = "bacteria-1", amount = 10},
    },
    results = {
        {type = "fluid", name = "oleochemicals", amount = 35},
        {type = "fluid", name = "bacteria-1",    amount = 11, ignored_by_productivity = 10, ignored_by_stats = 10},
    },
    main_product = "bacteria-1",
    allow_productivity = true
}:add_unlock("biotech-mk03")

RECIPE {
    type = "recipe",
    name = "pelt-processing",
    category = "biofactory",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item",  name = "pelt",             amount = 1},
        {type = "fluid", name = "soda-ash",         amount = 100},
        {type = "item",  name = "sodium-aluminate", amount = 4},
        {type = "item",  name = "salt",             amount = 10},
    },
    results = {
        {type = "item", name = "skin", amount = 1},
        {type = "item", name = "fur",  amount = 10},
    },
    main_product = "fur",
}:add_unlock("pharmacogenomics")

RECIPE {
    type = "recipe",
    name = "reca",
    category = "research",
    enabled = false,
    energy_required = 70,
    ingredients = {
        {type = "item",  name = "alien-sample-03", amount = 1},
        {type = "item",  name = "alien-enzymes",   amount = 1},
        {type = "fluid", name = "fetal-serum",     amount = 100},
        {type = "item",  name = "adrenal-cortex",  amount = 30},
        {type = "item",  name = "bones",           amount = 40},
        {type = "item",  name = "navens",          amount = 30},
        {type = "item",  name = "cysteine",        amount = 3},
        {type = "item",  name = "lab-instrument",  amount = 50},
        {type = "fluid", name = "gta",             amount = 50},
        {type = "item",  name = "flask",           amount = 50},
    },
    results = {
        {type = "item", name = "reca", amount = 250}
    }
}:add_unlock("reca")

RECIPE {
    type = "recipe",
    name = "reca-2",
    category = "research",
    enabled = false,
    energy_required = 70,
    ingredients = {
        {type = "item",  name = "alien-sample-03",    amount = 1},
        {type = "item",  name = "alien-enzymes",      amount = 1},
        {type = "fluid", name = "fetal-serum",        amount = 100},
        {type = "item",  name = "adrenal-cortex",     amount = 30},
        {type = "item",  name = "bones",              amount = 40},
        {type = "item",  name = "navens",             amount = 30},
        {type = "item",  name = "cysteine",           amount = 3},
        {type = "item",  name = "lab-instrument",     amount = 50},
        {type = "fluid", name = "gta",                amount = 50},
        {type = "item",  name = "flask",              amount = 50},
        {type = "item",  name = "denatured-seismite", amount = 2},
    },
    results = {
        {type = "item", name = "reca", amount = 300}
    }
}:add_unlock("reca")

RECIPE {
    type = "recipe",
    name = "mixed-ores",
    category = "ball-mill",
    enabled = false,
    energy_required = 2.5,
    ingredients = {
        {type = "item", name = "copper-ore", amount = 8},
        {type = "item", name = "ore-nickel", amount = 8},
    },
    results = {
        {type = "item", name = "mixed-ores", amount = 5},
        {type = "item", name = "stone",      amount = 1, probability = 0.5},
    },
    main_product = "mixed-ores",
}:add_unlock("cobalt-mk01"):add_ingredient {type = "item", name = "rare-earth-ore", amount = 4}

RECIPE {
    type = "recipe",
    name = "cobalt-extract",
    category = "flotation",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "pressured-air", amount = 450},
        {type = "fluid", name = "sulfuric-acid", amount = 150},
        {type = "item",  name = "mixed-ores",    amount = 15},
    },
    results = {
        {type = "item",  name = "cobalt-extract",    amount = 3},
        {type = "fluid", name = "dirty-water-heavy", amount = 50},
    },
    main_product = "cobalt-extract",
}:add_unlock("cobalt-mk01")

RECIPE {
    type = "recipe",
    name = "cobalt-sulfate",
    category = "leaching",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "syngas",         amount = 150},
        {type = "item",  name = "lime",           amount = 3},
        {type = "item",  name = "cobalt-extract", amount = 3},
    },
    results = {
        {type = "item", name = "cobalt-sulfate", amount = 3},
    },
}:add_unlock("cobalt-mk02")

RECIPE {
    type = "recipe",
    name = "cobalt-sulfate-02",
    category = "leaching",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "sulfuric-acid",  amount = 300},
        {type = "item",  name = "cobalt-sulfate", amount = 3},
    },
    results = {
        {type = "item", name = "cobalt-sulfate-02", amount = 3},
    },
}:add_unlock("cobalt-mk02")

RECIPE {
    type = "recipe",
    name = "cobalt-oxide",
    category = "leaching",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "water",             amount = 500},
        {type = "item",  name = "cobalt-sulfate-02", amount = 3},
    },
    results = {
        {type = "item",  name = "cobalt-oxide",      amount = 3},
        {type = "fluid", name = "dirty-water-heavy", amount = 100},
    },
    main_product = "cobalt-oxide",
}:add_unlock("cobalt-mk02")

RECIPE {
    type = "recipe",
    name = "cobalt-nx",
    category = "nmf",
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "item", name = "nexelit-plate", amount = 20},
        {type = "item", name = "cobalt-oxide",  amount = 3},
    },
    results = {
        {type = "item", name = "cobalt-nx", amount = 3},
    },
}:add_unlock("cobalt-mk02"):add_ingredient {type = "item", name = "ceramic", amount = 10}

RECIPE {
    type = "recipe",
    name = "dried-grods",
    category = "evaporator",
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "item", name = "grod", amount = 8},
    },
    results = {
        {type = "item", name = "dried-grods", amount = 5},
    },
}:add_unlock("grod")

RECIPE {
    type = "recipe",
    name = "bedding",
    category = "wpu",
    enabled = false,
    energy_required = 7,
    ingredients = {
        {type = "item", name = "wood",         amount = 5},
        {type = "item", name = "yotoi-leaves", amount = 5},
        {type = "item", name = "dried-grods",  amount = 1},
    },
    results = {
        {type = "item", name = "bedding", amount = 2},
    },
    allow_productivity = true,
}:add_unlock("grod"):add_ingredient {type = "item", name = "raw-fiber", amount = 5}

RECIPE {
    type = "recipe",
    name = "bedding-improve",
    category = "biofactory",
    enabled = false,
    energy_required = 7,
    ingredients = {
        {type = "item",  name = "wood",         amount = 5},
        {type = "item",  name = "yotoi-leaves", amount = 5},
        {type = "item",  name = "dried-grods",  amount = 1},
        {type = "fluid", name = "formic-acid",  amount = 100},
    },
    results = {
        {type = "item", name = "bedding", amount = 4},
    },
    allow_productivity = true,
}:add_unlock("grod-mk02"):add_ingredient {type = "item", name = "raw-fiber", amount = 5}

RECIPE {
    type = "recipe",
    name = "zymogens",
    category = "genlab",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item",  name = "bhoddos",        amount = 1},
        {type = "item",  name = "pacifastin",     amount = 1},
        {type = "item",  name = "flask",          amount = 3},
        {type = "item",  name = "microcin-j25",   amount = 1},
        {type = "item",  name = "lab-instrument", amount = 1},
        {type = "item",  name = "retrovirus",     amount = 2},
        {type = "item",  name = "guts",           amount = 5},
        {type = "item",  name = "plastic-bar",    amount = 10},
        {type = "fluid", name = "water",          amount = 300}
    },
    results = {
        {type = "item", name = "zymogens", amount = 1}
    }
}:add_unlock("pharmacogenomics")

RECIPE {
    type = "recipe",
    name = "mmp",
    category = "bio-reactor",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item",  name = "zymogens",         amount = 1},
        {type = "item",  name = "flask",            amount = 3},
        {type = "item",  name = "lab-instrument",   amount = 1},
        {type = "item",  name = "agar",             amount = 10},
        {type = "item",  name = "nexelit-matrix",   amount = 4},
        {type = "item",  name = "coated-container", amount = 1},
        {type = "fluid", name = "bacteria-1",       amount = 50},
        {type = "fluid", name = "fetal-serum",      amount = 50},
    },
    results = {
        {type = "item", name = "mmp", amount = 1}
    }
}:add_unlock("pharmacogenomics"):replace_ingredient("fetal-serum", "dms")

RECIPE {
    type = "recipe",
    name = "peptidase-m58",
    category = "biofactory",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "mmp",          amount = 1},
        {type = "item", name = "nickel-plate", amount = 3},
    },
    results = {
        {type = "item", name = "peptidase-m58", amount = 1}
    }
}:add_unlock("pharmacogenomics")

RECIPE {
    type = "recipe",
    name = "alien-enzymes",
    category = "incubator",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "peptidase-m58",  amount = 1},
        {type = "item", name = "zymogens",       amount = 1},
        {type = "item", name = "carapace",       amount = 5},
        {type = "item", name = "guts",           amount = 8},
        {type = "item", name = "cobalt-nx",      amount = 4},
        {type = "item", name = "retrovirus",     amount = 1},
        {type = "item", name = "nexelit-matrix", amount = 3},
        {type = "item", name = "venom-gland",    amount = 4},
        {type = "item", name = "microcin-j25",   amount = 1},
    },
    results = {
        {type = "item", name = "alien-enzymes", amount = 1}
    }
}:add_unlock("pharmacogenomics"):add_ingredient {type = "item", name = "paramagnetic-material", amount = 1} --:add_ingredient({type = "item", name = "diamagnetic-material", amount = 1})

RECIPE {
    type = "recipe",
    name = "antiviral",
    category = "research",
    enabled = false,
    energy_required = 500,
    ingredients = {
        {type = "item",  name = "alien-enzymes",  amount = 1},
        {type = "item",  name = "brain",          amount = 20},
        {type = "item",  name = "cysteine",       amount = 1},
        {type = "item",  name = "mmp",            amount = 1},
        {type = "item",  name = "yotoi-leaves",   amount = 20},
        {type = "item",  name = "chitin",         amount = 30},
        {type = "fluid", name = "zogna-bacteria", amount = 100},
        {type = "fluid", name = "bee-venom",      amount = 50},
    },
    results = {
        {type = "item", name = "antiviral", amount = 50}
    }
}:add_unlock("antiviral")

RECIPE {
    type = "recipe",
    name = "antiviral-02",
    category = "research",
    enabled = false,
    energy_required = 500,
    ingredients = {
        {type = "item",  name = "alien-enzymes",       amount = 1},
        {type = "item",  name = "brain",               amount = 20},
        {type = "item",  name = "solidified-sarcorus", amount = 20},
        {type = "item",  name = "paragen",             amount = 10},
        {type = "item",  name = "cysteine",            amount = 1},
        {type = "item",  name = "mmp",                 amount = 1},
        {type = "item",  name = "yotoi-leaves",        amount = 20},
        {type = "item",  name = "chitin",              amount = 30},
        {type = "fluid", name = "zogna-bacteria",      amount = 100},
        {type = "fluid", name = "bee-venom",           amount = 50},
    },
    results = {
        {type = "item", name = "antiviral", amount = 70}
    }
}:add_unlock("antiviral")

RECIPE {
    type = "recipe",
    name = "nitrogen-mustard",
    category = "wet-scrubber",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "hydrogen-chloride", amount = 50},
        {type = "fluid", name = "nitrogen",          amount = 200},
        {type = "fluid", name = "anthraquinone",     amount = 50},
    },
    results = {
        {type = "fluid", name = "nitrogen-mustard", amount = 100}
    }
}:add_unlock("immunosupressants")

RECIPE {
    type = "recipe",
    name = "pacifastin",
    category = "biofactory",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "arthropod-blood", amount = 50},
        {type = "item",  name = "iron-plate",      amount = 10},
        {type = "item",  name = "moss-gen",        amount = 5},
    },
    results = {
        {type = "item", name = "pacifastin", amount = 1}
    }
}:add_unlock("immunosupressants"):add_ingredient {type = "item", name = "bolts", amount = 15}

RECIPE {
    type = "recipe",
    name = "metallic-glass",
    category = "nmf",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item",  name = "aluminium-plate", amount = 5},
        {type = "item",  name = "nexelit-plate",   amount = 5},
        {type = "item",  name = "titanium-plate",  amount = 2},
        {type = "item",  name = "boron",           amount = 3},
        {type = "item",  name = "nickel-plate",    amount = 6},
        {type = "fluid", name = "vacuum",          amount = 50},
    },
    results = {
        {type = "item", name = "metallic-glass", amount = 1}
    }
}:add_unlock("bio-implants"):add_ingredient {type = "item", name = "paramagnetic-material", amount = 2}:replace_ingredient("nickel-plate", "powdered-phosphate-rock")
if mods.pyhightech then data.raw.recipe["metallic-glass"].category = "nano" end

RECIPE {
    type = "recipe",
    name = "ticocr-alloy",
    category = "py-rawores-smelter",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "titanium-plate", amount = 4},
        {type = "item",  name = "cobalt-nx",      amount = 1},
        {type = "item",  name = "chromium",       amount = 3},
        {type = "fluid", name = "vacuum",         amount = 50},
    },
    results = {
        {type = "item", name = "ticocr-alloy", amount = 1}
    }
}:add_unlock("bio-implants")

RECIPE {
    type = "recipe",
    name = "nanochondria",
    category = "research",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item",  name = "ticocr-alloy",   amount = 7},
        {type = "item",  name = "pelt",           amount = 10},
        {type = "item",  name = "metallic-glass", amount = 8},
        {type = "item",  name = "propeptides",    amount = 10},
        {type = "item",  name = "chitin",         amount = 20},
        {type = "item",  name = "alien-enzymes",  amount = 2},
        {type = "item",  name = "pineal-gland",   amount = 7},
        {type = "item",  name = "adrenal-cortex", amount = 30},
        {type = "fluid", name = "bacteria-1",     amount = 100},
        {type = "fluid", name = "arqad-jelly",    amount = 150},
    },
    results = {
        {type = "item", name = "nanochondria", amount = 200}
    }
}:add_unlock("nanochondria"):add_ingredient {type = "item", name = "resilin", amount = 1}:add_ingredient {type = "item", name = "collagen", amount = 5}:replace_ingredient("bacteria-1", "bacteria-2")
if mods.pyhightech then data.raw.recipe["nanochondria"].category = "nano" end

RECIPE {
    type = "recipe",
    name = "bmp",
    category = "research",
    enabled = false,
    energy_required = 200,
    ingredients = {
        {type = "item",  name = "hyaline",          amount = 10},
        {type = "item",  name = "sea-sponge",       amount = 25},
        {type = "item",  name = "ticocr-alloy",     amount = 3},
        {type = "item",  name = "chitin",           amount = 15},
        {type = "item",  name = "alien-enzymes",    amount = 2},
        {type = "item",  name = "pineal-gland",     amount = 4},
        {type = "item",  name = "flask",            amount = 30},
        {type = "item",  name = "lab-instrument",   amount = 25},
        {type = "fluid", name = "bacteria-1",       amount = 40},
        {type = "item",  name = "purine-analogues", amount = 2},
    },
    results = {
        {type = "item", name = "bmp", amount = 300}
    }
}:add_unlock("bmp"):replace_ingredient("bacteria-1", "bacteria-2"):replace_ingredient("sea-sponge", "collagen"):add_ingredient {type = "fluid", name = "dms", amount = 100}

RECIPE {
    type = "recipe",
    name = "bmp-2",
    category = "research",
    enabled = false,
    energy_required = 200,
    ingredients = {
        {type = "item",  name = "hyaline",          amount = 10},
        {type = "item",  name = "paragen",          amount = 10},
        {type = "item",  name = "negasium",         amount = 6},
        {type = "item",  name = "sea-sponge",       amount = 25},
        {type = "item",  name = "ticocr-alloy",     amount = 3},
        {type = "item",  name = "chitin",           amount = 15},
        {type = "item",  name = "alien-enzymes",    amount = 2},
        {type = "item",  name = "pineal-gland",     amount = 4},
        {type = "item",  name = "flask",            amount = 30},
        {type = "item",  name = "lab-instrument",   amount = 25},
        {type = "fluid", name = "bacteria-1",       amount = 40},
        {type = "item",  name = "purine-analogues", amount = 2},
    },
    results = {
        {type = "item", name = "bmp", amount = 350}
    }
}:add_unlock("bmp"):replace_ingredient("bacteria-1", "bacteria-2"):replace_ingredient("sea-sponge", "collagen"):add_ingredient {type = "fluid", name = "dms", amount = 100}

RECIPE {
    type = "recipe",
    name = "hyaline",
    category = "biofactory",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "bones",  amount = 1},
        {type = "item", name = "tendon", amount = 5},
        {type = "item", name = "chitin", amount = 2},
    },
    results = {
        {type = "item", name = "hyaline", amount = 1}
    }
}:add_unlock("biotech-mk04"):add_ingredient {type = "item", name = "collagen", amount = 3}

RECIPE {
    type = "recipe",
    name = "cellulose-00",
    category = "hpf",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "wood",      amount = 7},
        {type = "item", name = "limestone", amount = 4},
    },
    results = {
        {type = "item", name = "cellulose", amount = 1}
    }
}:add_unlock("cellulose-mk01")

RECIPE {
    type = "recipe",
    name = "cellulose-02",
    category = "biofactory",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "wood",             amount = 10},
        {type = "item", name = "sodium-hydroxide", amount = 3},
    },
    results = {
        {type = "item", name = "cellulose", amount = 2}
    }
}:add_unlock("cellulose-mk01")

RECIPE {
    type = "recipe",
    name = "lignin",
    category = "biofactory",
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "item",  name = "cellulose",        amount = 4},
        {type = "item",  name = "sodium-hydroxide", amount = 2},
        {type = "fluid", name = "steam",            amount = 100},
    },
    results = {
        {type = "item", name = "lignin", amount = 8},
    },
}:add_unlock("cellulose-mk02").category = "cracker"

RECIPE {
    type = "recipe",
    name = "lignin-to-aromatics",
    category = "distilator",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "lignin", amount = 5},
    },
    results = {
        {type = "fluid", name = "aromatics", amount = 150},
    },
}:add_unlock("cellulose-mk02")

RECIPE {
    type = "recipe",
    name = "pheromones",
    category = "bio-reactor",
    enabled = false,
    energy_required = 150,
    ingredients = {
        {type = "item",  name = "lignin",         amount = 200},
        {type = "item",  name = "ticocr-alloy",   amount = 3},
        {type = "item",  name = "metallic-glass", amount = 10},
        {type = "item",  name = "bio-sample",     amount = 25},
        {type = "item",  name = "cridren-seeds",  amount = 7},
        {type = "item",  name = "gas-bladder",    amount = 17},
        {type = "item",  name = "alien-enzymes",  amount = 3},
        {type = "fluid", name = "creosote",       amount = 1000},
        {type = "fluid", name = "bacteria-1",     amount = 300},
    },
    results = {
        {type = "item", name = "pheromones", amount = 100}
    }
}:add_unlock("pheromones"):add_ingredient {type = "item", name = "biopolymer", amount = 10}

RECIPE {
    type = "recipe",
    name = "empty-neuromorphic-chip",
    category = "bio-printer",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item",  name = "neuroprocessor", amount = 2},
        {type = "item",  name = "brain",          amount = 5},
        {type = "item",  name = "biofilm",        amount = 1},
        {type = "item",  name = "optical-fiber",  amount = 10},
        {type = "item",  name = "nano-cellulose", amount = 5},
        {type = "item",  name = "nexelit-matrix", amount = 3},
        {type = "fluid", name = "vacuum",         amount = 100},
    },
    results = {
        {type = "item", name = "empty-neuromorphic-chip", amount = 1},
    },
}:add_unlock("neuro-electronics-mk02")

RECIPE {
    type = "recipe",
    name = "format-neuromorphic-chip",
    category = "data-array",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "empty-neuromorphic-chip", amount = 1},
    },
    results = {
        {type = "item", name = "neuromorphic-chip", amount = 1},
    },
    allowed_module_categories = {"data-array", "speed", "efficiency", "quality"},
}:add_unlock("neuro-electronics-mk02")

RECIPE {
    type = "recipe",
    name = "nano-cellulose",
    category = "nmf",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "cellulose",        amount = 10},
        {type = "item",  name = "filtration-media", amount = 1},
        {type = "fluid", name = "boric-acid",       amount = 100},
        {type = "fluid", name = "steam",            amount = 100, minimum_temperature = 500},
    },
    results = {
        {type = "item", name = "nano-cellulose", amount = 1},
    },
}:add_unlock("cellulose-mk03")

RECIPE {
    type = "recipe",
    name = "gasoline-cellulose",
    category = "bio-reactor",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "cellulose",       amount = 5},
        {type = "fluid", name = "water",           amount = 1000},
        {type = "fluid", name = "manure-bacteria", amount = 50},
    },
    results = {
        {type = "fluid", name = "gasoline", amount = 100},
    },
}:add_unlock("fuel-production")

RECIPE {
    type = "recipe",
    name = "filtration-media-3",
    category = "crafting",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "pure-sand",     amount = 30},
        {type = "item", name = "active-carbon", amount = 3},
        {type = "item", name = "gravel",        amount = 25},
        {type = "item", name = "cellulose",     amount = 5},
    },
    results = {
        {type = "item", name = "filtration-media", amount = 3},
    },
}:add_unlock("cellulose-mk02")

RECIPE {
    type = "recipe",
    name = "cellulose-gasification",
    category = "gasifier",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "water",     amount = 300},
        {type = "item",  name = "cellulose", amount = 5},
        {type = "fluid", name = "oxygen",    amount = 30},
    },
    results = {
        {type = "fluid", name = "syngas", amount = 100},
    },
}:add_unlock("cellulose-mk02")

RECIPE {
    type = "recipe",
    name = "yotoi-cellulose",
    category = "biofactory",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "item", name = "yotoi-leaves",     amount = 10},
        {type = "item", name = "sodium-hydroxide", amount = 4},
    },
    results = {
        {type = "item", name = "cellulose", amount = 3},
    },
}:add_unlock("cellulose-mk02")

RECIPE {
    type = "recipe",
    name = "biofilm-3",
    category = "crafting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "fawogae-substrate", amount = 15},
        {type = "item", name = "lime",              amount = 5},
        {type = "item", name = "biomass",           amount = 10},
        {type = "item", name = "cellulose",         amount = 10},
    },
    results = {
        {type = "item", name = "biofilm", amount = 4},
    },
}:add_unlock("biofilm")

RECIPE {
    type = "recipe",
    name = "manure-to-crude",
    category = "biofactory",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "manure",          amount = 10},
        {type = "item",  name = "coke",            amount = 5},
        {type = "fluid", name = "pressured-water", amount = 100},
        {type = "fluid", name = "pressured-air",   amount = 100},
    },
    results = {
        {type = "fluid", name = "crude-oil", amount = 50},
        {type = "fluid", name = "syngas",    amount = 50},
    },
    main_product = "crude-oil",
    subgroup = "py-alienlife-recipes",
    order = "a"
}:add_unlock("biotech-mk03")

RECIPE {
    type = "recipe",
    name = "sodium-alginate",
    category = "hpf",
    enabled = true,
    energy_required = 5,
    ingredients = {
        {type = "item",  name = "seaweed",   amount = 5},
        {type = "item",  name = "stone",     amount = 5},
        {type = "fluid", name = "water",     amount = 100},
        {type = "item",  name = "limestone", amount = 4},
    },
    results = {
        {type = "item", name = "sodium-alginate", amount = 1}
    }
}:add_unlock("latex")

RECIPE {
    type = "recipe",
    name = "latex-slab",
    category = "distilator",
    enabled = true,
    energy_required = 5,
    ingredients = {
        {type = "item",  name = "sodium-alginate", amount = 1},
        {type = "fluid", name = "creamy-latex",    amount = 100},
        {type = "fluid", name = "formic-acid",     amount = 100},
    },
    results = {
        {type = "item", name = "latex-slab", amount = 1}
    }
}:add_unlock("latex")

RECIPE {
    type = "recipe",
    name = "latex",
    category = "hpf",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "latex-slab", amount = 1},
        {type = "fluid", name = "steam",      amount = 150},
    },
    results = {
        {type = "item", name = "latex", amount = 1}
    }
}:add_unlock("latex")

RECIPE {
    type = "recipe",
    name = "stopper",
    category = "crafting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "latex", amount = 2},
        {type = "item", name = "coal",  amount = 5},
    },
    results = {
        {type = "item", name = "stopper", amount = 4}
    }
}:add_unlock("py-science-pack-mk01")

RECIPE {
    type = "recipe",
    name = "adrenal-cortex",
    category = "slaughterhouse",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "cridren", amount = 1}
    },
    results = {
        {type = "item", name = "adrenal-cortex", amount = 1}
    },
    main_product = "adrenal-cortex",
}:add_unlock("cridren")

RECIPE {
    type = "recipe",
    name = "bio-container",
    category = "crafting",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "lead-plate",     amount = 1},
        {type = "item", name = "steel-plate",    amount = 1},
        {type = "item", name = "glass",          amount = 1},
        {type = "item", name = "titanium-plate", amount = 2},
    },
    results = {
        {type = "item", name = "bio-container", amount = 1}
    },
    --main_product = "adrenal-cortex",
}:add_unlock("biotech-mk01")

RECIPE {
    type = "recipe",
    name = "naven-coal",
    category = "hpf",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "navens", amount = 1},
    },
    results = {
        {type = "item", name = "raw-coal", amount = 10}
    },
    --main_product = "adrenal-cortex",
}:add_unlock("navens")

--oleochemicals to CM1
RECIPE {
    type = "recipe",
    name = "oleochemical-combustion",
    category = "combustion",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "oleochemicals", amount = 100},
        {type = "fluid", name = "water",         amount = 500},
        {type = "item",  name = "coke",          amount = 3}
    },
    results = {
        {type = "fluid", name = "combustion-mixture1", amount = 150, temperature = 600},
        {type = "fluid", name = "steam",               amount = 500, temperature = 150, ignored_by_productivity = 500, ignored_by_stats = 500}
    },
    icon = "__pyalienlifegraphics__/graphics/icons/combustion-oleochemical.png",
    icon_size = 32,
    --main_product = "combustion-mixture1",
    subgroup = "py-combustion",
    order = "a"
}:add_unlock("energy-2")

--fish oil to CM1
RECIPE {
    type = "recipe",
    name = "fish-oil-combustion",
    category = "combustion",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "fish-oil", amount = 50},
        {type = "fluid", name = "water",    amount = 500},
        {type = "item",  name = "coke",     amount = 3}
    },
    results = {
        {type = "fluid", name = "combustion-mixture1", amount = 150, temperature = 650},
        {type = "fluid", name = "steam",               amount = 500, temperature = 150, ignored_by_productivity = 500, ignored_by_stats = 500}
    },
    icon = "__pyalienlifegraphics__/graphics/icons/combustion-fish-oil.png",
    icon_size = 32,
    --main_product = "combustion-mixture1",
    subgroup = "py-combustion",
    order = "a"
}:add_unlock("energy-2")

--mukmoux-fat to CM1
RECIPE {
    type = "recipe",
    name = "lard-combustion",
    category = "combustion",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item",  name = "mukmoux-fat", amount = 10},
        {type = "fluid", name = "water",       amount = 500},
        {type = "item",  name = "coke",        amount = 3}
    },
    results = {
        {type = "fluid", name = "combustion-mixture1", amount = 200, temperature = 600},
        {type = "fluid", name = "steam",               amount = 500, temperature = 150, ignored_by_productivity = 500, ignored_by_stats = 500}
    },
    icon = "__pyalienlifegraphics__/graphics/icons/combustion-lard.png",
    icon_size = 32,
    --main_product = "combustion-mixture1",
    subgroup = "py-combustion",
    order = "a"
}:add_unlock("energy-1")

-----ethanol to CM1---

RECIPE {
    type = "recipe",
    name = "ethanol-combustion",
    category = "combustion",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "ethanol", amount = 100},
        {type = "fluid", name = "water",   amount = 500},
        {type = "item",  name = "coke",    amount = 3}
    },
    results = {
        {type = "fluid", name = "combustion-mixture1", amount = 200, temperature = 680},
        {type = "fluid", name = "steam",               amount = 500, temperature = 150, ignored_by_productivity = 500, ignored_by_stats = 500}
    },
    icon = "__pyalienlifegraphics__/graphics/icons/combustion-ethanol.png",
    icon_size = 32,
    --main_product = "combustion-mixture1",
    subgroup = "py-combustion",
    order = "a"
}:add_unlock("energy-3")

--bio-oil to CM1
RECIPE {
    type = "recipe",
    name = "bio-oil-combustion",
    category = "combustion",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "bio-oil", amount = 100},
        {type = "fluid", name = "water",   amount = 500},
        {type = "item",  name = "coke",    amount = 3}
    },
    results = {
        {type = "fluid", name = "combustion-mixture1", amount = 150, temperature = 600},
        {type = "fluid", name = "steam",               amount = 500, temperature = 150, ignored_by_productivity = 500, ignored_by_stats = 500}
    },
    icon = "__pyalienlifegraphics__/graphics/icons/combustion-bio-oil.png",
    icon_size = 32,
    --main_product = "combustion-mixture1",
    subgroup = "py-combustion",
    order = "a"
}:add_unlock("energy-2")

----energy drink----

RECIPE {
    type = "recipe",
    name = "seeds-extract-01",
    category = "crafting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "rennea-seeds", amount = 10},
        {type = "item", name = "grod-seeds",   amount = 10},
        {type = "item", name = "wood-seeds",   amount = 10},
    },
    results = {
        {type = "item", name = "seeds-extract-01", amount = 5}
    },
    --main_product = "adrenal-cortex",
}:add_unlock("energy-drink").category = "pulp"

RECIPE {
    type = "recipe",
    name = "syrup-01",
    category = "scrubber",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "seeds-extract-01", amount = 1},
        {type = "item",  name = "sugar",            amount = 5},
        {type = "fluid", name = "water",            amount = 1000},
    },
    results = {
        {type = "fluid", name = "syrup-01", amount = 50}
    },
    --main_product = "adrenal-cortex",
}:add_unlock("energy-drink")

RECIPE {
    type = "recipe",
    name = "energy-drink",
    category = "chemistry",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item",  name = "aluminium-plate", amount = 7},
        {type = "fluid", name = "water",           amount = 500},
        {type = "fluid", name = "syrup-01",        amount = 25},
        {type = "fluid", name = "carbon-dioxide",  amount = 100},
    },
    results = {
        {type = "item", name = "energy-drink", amount = 7}
    },
    --main_product = "adrenal-cortex",
}:add_unlock("energy-drink")

RECIPE {
    type = "recipe",
    name = "a-molasse",
    category = "biofactory",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "tuuphra", amount = 10},
    },
    results = {
        {type = "fluid", name = "a-molasse", amount = 100},
        {type = "item",  name = "biomass",   amount = 8}
    },
    main_product = "a-molasse",
}:add_unlock("sugar").category = "pulp"

RECIPE {
    type = "recipe",
    name = "sweet-syrup",
    category = "mixer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "lime",      amount = 5},
        {type = "fluid", name = "a-molasse", amount = 100},
    },
    results = {
        {type = "fluid", name = "sweet-syrup", amount = 50},
    },
    --main_product = "a-molasse",
}:add_unlock("sugar")

RECIPE {
    type = "recipe",
    name = "sugar",
    category = "evaporator",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item",  name = "bones",       amount = 3},
        {type = "fluid", name = "sweet-syrup", amount = 100},
    },
    results = {
        {type = "item", name = "sugar", amount = 10},
    },
    --main_product = "a-molasse",
}:add_unlock("sugar")

RECIPE {
    type = "recipe",
    name = "b-molasse",
    category = "carbonfilter",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "a-molasse",        amount = 50},
        {type = "fluid", name = "vacuum",           amount = 150},
        {type = "item",  name = "filtration-media", amount = 1},
    },
    results = {
        {type = "fluid", name = "b-molasse", amount = 100},
    },
    --main_product = "b-molasse",
}:add_unlock("ethanol")

RECIPE {
    type = "recipe",
    name = "ethanol",
    category = "bio-reactor",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "b-molasse",      amount = 50},
        {type = "fluid", name = "zogna-bacteria", amount = 20},
        {type = "item",  name = "fawogae",        amount = 5},
    },
    results = {
        {type = "fluid", name = "ethanol", amount = 100},
    },
    --main_product = "b-molasse",
}:add_unlock("ethanol")

RECIPE {
    type = "recipe",
    name = "lime-from-shell",
    category = "ball-mill",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "shell", amount = 2},
    },
    results = {
        {type = "item", name = "lime", amount = 10},
    },
    --main_product = "b-molasse",
}:add_unlock("water-invertebrates-mk02")

RECIPE {
    type = "recipe",
    name = "replicator-bioreserve",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "titanium-plate", amount = 100},
        --{type = 'item', name = 'metallic-glass', amount = 2},
        {type = "item", name = "biofilm",        amount = 20},
        {type = "item", name = "plastic-bar",    amount = 100},
        --{type = 'item', name = 'blanket-chassi', amount = 1},
        {type = "item", name = "fertilizer",     amount = 40},
    },
    results = {
        {type = "item", name = "replicator-bioreserve", amount = 1},
    },
}:add_unlock("mega-farm-bioreserve") --:add_ingredient({type = "item", name = "nems", amount = 10}):add_ingredient({type = "item", name = "carbon-nanotube", amount = 10})


RECIPE {
    type = "recipe",
    name = "oleochemicals-3",
    category = "biofactory",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item",  name = "sporopollenin", amount = 5},
        {type = "fluid", name = "refsyngas",     amount = 100},
        {type = "item",  name = "lead-plate",    amount = 2},
    },
    results = {
        {type = "fluid", name = "oleochemicals", amount = 200},
    },
    --main_product = "b-molasse",
}:add_unlock("mycology-mk03")

RECIPE {
    type = "recipe",
    name = "sporopollenin",
    category = "bio-reactor",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "navens-spore",  amount = 5},
        {type = "item", name = "bhoddos-spore", amount = 3},
        {type = "item", name = "rennea",        amount = 8},
    },
    results = {
        {type = "item", name = "sporopollenin", amount = 5},
    },
    --main_product = "b-molasse",
}:add_unlock("rennea")

RECIPE {
    type = "recipe",
    name = "crude-from-manure",
    category = "lor",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "depolymerized-organics", amount = 100},
    },
    results = {
        {type = "fluid", name = "crude-oil",         amount = 70},
        {type = "fluid", name = "steam",             amount = 50, temperature = 150},
        {type = "fluid", name = "dirty-water-heavy", amount = 50},
        {type = "item",  name = "ash",               amount = 3},
    },
    main_product = "crude-oil",
}:add_unlock("light-oil-mk01")

RECIPE {
    type = "recipe",
    name = "bone-to-bonemeal-2",
    category = "biofactory",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item",  name = "bones", amount = 10},
        {type = "fluid", name = "steam", amount = 200},
    },
    results = {
        {type = "item", name = "bonemeal", amount = 5},
    },
    --main_product = "crude-oil",
}:add_unlock("logistic-science-pack").category = "fbreactor"

RECIPE {
    type = "recipe",
    name = "magnetic-beads",
    category = "nmf",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "iron-plate",      amount = 5},
        {type = "item", name = "nickel-plate",    amount = 3},
        {type = "item", name = "agar",            amount = 6},
        {type = "item", name = "aluminium-plate", amount = 2},
    },
    results = {
        {type = "item", name = "magnetic-beads", amount = 5},
    },
}:add_unlock("chitin")
if mods.pyhightech then data.raw.recipe["magnetic-beads"].category = "nano" end

RECIPE {
    type = "recipe",
    name = "chitosan",
    category = "bio-reactor",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item",  name = "chitin",           amount = 5},
        {type = "item",  name = "sodium-hydroxide", amount = 5},
        {type = "fluid", name = "mutant-enzymes",   amount = 50},
        {type = "item",  name = "empty-petri-dish", amount = 2},
    },
    results = {
        {type = "item", name = "chitosan", amount = 5},
    },
}:add_unlock("chitin")

RECIPE {
    type = "recipe",
    name = "nanofibrils",
    category = "nmf",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "chitin",   amount = 5},
        {type = "item", name = "chitosan", amount = 5},
    },
    results = {
        {type = "item", name = "nanofibrils", amount = 1},
    },
}:add_unlock("chitin")

RECIPE {
    type = "recipe",
    name = "filtration-media-2",
    category = "crafting",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item", name = "gravel",        amount = 25},
        {type = "item", name = "active-carbon", amount = 10},
        {type = "item", name = "nanofibrils",   amount = 2},
        {type = "item", name = "cellulose",     amount = 25},
    },
    results = {
        {type = "item", name = "filtration-media", amount = 200},
    },
}:add_unlock("filtration-mk02"):add_ingredient {type = "item", name = "micro-fiber", amount = 15}

RECIPE {
    type = "recipe",
    name = "biobattery",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "nexelit-plate", amount = 6},
        {type = "item",  name = "plastic-bar",   amount = 15},
        {type = "item",  name = "nanofibrils",   amount = 2},
        {type = "item",  name = "cobalt-nx",     amount = 3},
        {type = "item",  name = "glass",         amount = 10},
        {type = "fluid", name = "bacteria-1",    amount = 100},
    },
    results = {
        {type = "item", name = "biobattery", amount = 5},
    },
}:add_unlock("biobattery"):add_ingredient {type = "item", name = "ceramic", amount = 5}

RECIPE {
    type = "recipe",
    name = "extract-lead",
    category = "carbonfilter",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "chitosan",          amount = 3},
        {type = "fluid", name = "dirty-water-heavy", amount = 150},
    },
    results = {
        {type = "item", name = "ore-lead", amount = 10},
    },
}:add_unlock("chitin")

RECIPE {
    type = "recipe",
    name = "extract-aluminium",
    category = "carbonfilter",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "chitosan",          amount = 3},
        {type = "fluid", name = "dirty-water-heavy", amount = 150},
    },
    results = {
        {type = "item", name = "ore-aluminium", amount = 10},
    },
}:add_unlock("chitin")

RECIPE {
    type = "recipe",
    name = "fish-oil-to-lube",
    category = "biofactory",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "fish-oil", amount = 100},
        {type = "item",  name = "ash",      amount = 5},
    },
    results = {
        {type = "fluid", name = "lubricant", amount = 100},
    },
}:add_unlock("fish-mk02")

RECIPE {
    type = "recipe",
    name = "albumin-1",
    category = "genlab",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "blood", amount = 500},
    },
    results = {
        {type = "item", name = "albumin", amount = 5},
    },
    --main_product = "cocoon",
}:add_unlock("biotech-mk02")

RECIPE {
    type = "recipe",
    name = "albumin-2",
    category = "genlab",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "arthurian-egg", amount = 5},
    },
    results = {
        {type = "item", name = "albumin", amount = 3},
    },
    --main_product = "cocoon",
}:add_unlock("biotech-mk03")

RECIPE {
    type = "recipe",
    name = "perfect-samples",
    category = "research",
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = "item",  name = "intestinal-ee",           amount = 1},
        {type = "item",  name = "cognition-osteochain",    amount = 1},
        {type = "item",  name = "adaptable-automucosa",    amount = 1},
        {type = "item",  name = "polynuclear-ganglion",    amount = 1},
        {type = "item",  name = "geostabilization-tissue", amount = 1},
        {type = "item",  name = "lcc",                     amount = 1},
        {type = "item",  name = "tendon",                  amount = 1},
        {type = "item",  name = "cryogland",               amount = 1},
        {type = "item",  name = "subdermal-chemosnare",    amount = 1},
        {type = "item",  name = "sternite-lung",           amount = 1},
        {type = "item",  name = "dingrit-spike",           amount = 1},
        {type = "item",  name = "magnetic-organ",          amount = 1},
        {type = "item",  name = "glandular-myocluster",    amount = 1},
        {type = "item",  name = "hormonal",                amount = 1},
        {type = "item",  name = "venom-gland",             amount = 1},
        {type = "fluid", name = "autoantigens",            amount = 50},
    },
    results = {
        {type = "item", name = "perfect-samples", amount = 10},
    },
}:add_unlock("py-science-pack-mk04")

RECIPE {
    type = "recipe",
    name = "casein-mixture-02",
    category = "mixer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "milk",              amount = 50},
        {type = "fluid", name = "hydrogen-chloride", amount = 50},
    },
    results = {
        {type = "fluid", name = "casein-mixture", amount = 60},
        {type = "fluid", name = "waste-water",    amount = 50},
    },
    main_product = "casein-mixture",
}:add_unlock("korlex")

RECIPE {
    type = "recipe",
    name = "casein-mixture-03",
    category = "mixer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "milk",          amount = 50},
        {type = "fluid", name = "sulfuric-acid", amount = 100},
    },
    results = {
        {type = "fluid", name = "casein-mixture", amount = 80},
        {type = "fluid", name = "waste-water",    amount = 50},
    },
    main_product = "casein-mixture",
}:add_unlock("korlex-mk02")

RECIPE {
    type = "recipe",
    name = "casein-pulp-01",
    category = "agitator",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "casein-mixture", amount = 50},
        {type = "fluid", name = "water",          amount = 500},
    },
    results = {
        {type = "fluid", name = "casein-pulp-01",    amount = 100},
        {type = "fluid", name = "dirty-water-light", amount = 50},
    },
    main_product = "casein-pulp-01",
}:add_unlock("korlex")

RECIPE {
    type = "recipe",
    name = "casein-pulp-02",
    category = "pan",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "casein-pulp-01", amount = 50},
        {type = "fluid", name = "water",          amount = 1000},
    },
    results = {
        {type = "fluid", name = "casein-pulp-02", amount = 50},
        -- {type = 'fluid', name = 'dirty-water-light', amount = 50},
    },
    --main_product = "casein-pulp-01",
}:add_unlock("korlex")

RECIPE {
    type = "recipe",
    name = "casein",
    category = "evaporator",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "casein-pulp-02", amount = 100},
    },
    results = {
        {type = "item", name = "casein", amount = 5},
    },
    --main_product = "casein-pulp-01",
}:add_unlock("korlex")

RECIPE {
    type = "recipe",
    name = "plastic-from-casein",
    category = "chemistry",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "casein", amount = 5},
    },
    results = {
        {type = "item", name = "plastic-bar", amount = 20},
    },
    --main_product = "casein-pulp-01",
}:add_unlock("korlex"):add_ingredient {type = "fluid", name = "hot-air", amount = 100}

RECIPE {
    type = "recipe",
    name = "barrel-milk",
    category = "crafting",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "steel-plate", amount = 1},
    },
    results = {
        {type = "item", name = "empty-barrel-milk", amount = 1},
    },
    --main_product = "casein-pulp-01",
}:add_unlock("korlex")

RECIPE {
    type = "recipe",
    name = "flask-2",
    category = "glassworks",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "molten-glass",   amount = 120, fluidbox_index = 2},
        {type = "item",  name = "boron-trioxide", amount = 5},
        {type = "item",  name = "stopper",        amount = 4},
    },
    results = {
        {type = "item", name = "flask", amount = 4}
    },
    icon = "__pycoalprocessinggraphics__/graphics/icons/mip/glassware-01.png",
    icon_size = 64,
    subgroup = "py-items",
    order = "f"
}:add_unlock("quartz-mk02")

RECIPE {
    type = "recipe",
    name = "flask-3",
    enabled = false,
    category = "glassworks",
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "molten-glass",    amount = 140, fluidbox_index = 2},
        {type = "fluid", name = "refsyngas",       amount = 300, fluidbox_index = 1},
        {type = "item",  name = "purified-quartz", amount = 1},
        {type = "item",  name = "stopper",         amount = 20},
        {type = "item",  name = "boron-trioxide",  amount = 10}
    },
    results = {
        {type = "item", name = "flask", amount = 32}
    },
    icon = "__pycoalprocessinggraphics__/graphics/icons/mip/glassware-01.png",
    icon_size = 64,
    subgroup = "py-items",
    order = "f"
}:add_unlock("quartz-mk03")

RECIPE {
    type = "recipe",
    name = "biomass-cooking",
    category = "hpf",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "biomass", amount = 50},
    },
    results = {
        {type = "item", name = "raw-coal", amount = 4},
    },
    --main_product = "casein-pulp-01",
}:add_unlock("compost")

RECIPE {
    type = "recipe",
    name = "flue-gas-1",
    category = "gasifier",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "biomass", amount = 10},
    },
    results = {
        {type = "fluid", name = "flue-gas", amount = 150},
    },
    --main_product = "casein-pulp-01",
}:add_unlock("compost").category = "gas-refinery"

RECIPE {
    type = "recipe",
    name = "flue-gas-2",
    category = "gasifier",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item",  name = "ash",           amount = 10},
        {type = "fluid", name = "pressured-air", amount = 50},
    },
    results = {
        {type = "fluid", name = "flue-gas", amount = 150},
    },
    --main_product = "casein-pulp-01",
}:add_unlock("filtration").category = "gas-refinery"

--[[
RECIPE {
    type = 'recipe',
    name = 'biomass-cooking-2',
    category = 'hpf',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'biomass', amount = 20},
    },
    results = {
        {type = 'item', name = 'coke', amount = 5},
    },
    --main_product = "casein-pulp-01",
}:add_unlock("compost")

]] --

--if not mods['pyhightech'] then

RECIPE {
    type = "recipe",
    name = "dried-meat-01",
    category = "smelting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "meat", amount = 10}
    },
    results = {
        {type = "item", name = "dried-meat", amount = 5}
    },
    main_product = "dried-meat"
}:add_unlock("rendering")

--end

RECIPE {
    type = "recipe",
    name = "sample-cup",
    category = "crafting",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "plastic-bar", amount = 2}
    },
    results = {
        {type = "item", name = "sample-cup", amount = 4}
    }
}:add_unlock("ulric-mk02")

RECIPE {
    type = "recipe",
    name = "space-suit",
    category = "crafting",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "item", name = "plastic-bar",           amount = 10},
        {type = "item", name = "metallic-glass",        amount = 20},
        {type = "item", name = "rubber",                amount = 15},
        {type = "item", name = "kevlar",                amount = 30},
        {type = "item", name = "aramid",                amount = 30},
        {type = "item", name = "glass",                 amount = 30},
        {type = "item", name = "biofilm",               amount = 10},
        {type = "item", name = "science-coating",       amount = 5},
        {type = "item", name = "silver-foam",           amount = 5},
        {type = "item", name = "nexelit-cartridge",     amount = 3},
        {type = "item", name = "exoskeleton-equipment", amount = 1},
    },
    results = {
        {type = "item", name = "space-suit", amount = 1}
    }
}:add_unlock("laika")

RECIPE {
    type = "recipe",
    name = "space-dingrit",
    category = "crafting",
    enabled = false,
    energy_required = 120,
    ingredients = {
        {type = "item", name = "space-suit",          amount = 1},
        {type = "item", name = "nexelit-cartridge",   amount = 1},
        {type = "item", name = "skin-caged-dingrits", amount = 1},
        {type = "item", name = "immunosupressants",   amount = 2},
    },
    results = {
        {type = "item", name = "space-dingrit", amount = 1}
    }
}:add_unlock("laika")

RECIPE {
    type = "recipe",
    name = "mcb",
    category = "wet-scrubber",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "iron-plate", amount = 3},
        {type = "fluid", name = "btx",        amount = 100},
        {type = "fluid", name = "chlorine",   amount = 200},
    },
    results = {
        {type = "fluid", name = "mcb",               amount = 200},
        {type = "fluid", name = "hydrogen-chloride", amount = 100},
    },
    main_product = "mcb",
}:add_unlock("pesticides-mk01"):replace_ingredient("btx", "benzene")

RECIPE {
    type = "recipe",
    name = "chloral",
    category = "gas-refinery",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "ethanol",  amount = 100},
        {type = "fluid", name = "chlorine", amount = 200},
    },
    results = {
        {type = "fluid", name = "chloral",           amount = 200},
        {type = "fluid", name = "hydrogen-chloride", amount = 200},
    },
    main_product = "chloral",
}:add_unlock("pesticides-mk01")

RECIPE {
    type = "recipe",
    name = "pre-pesticide-01",
    category = "biofactory",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "chloral",          amount = 50},
        {type = "fluid", name = "sulfuric-acid",    amount = 50},
        {type = "item",  name = "sodium-hydroxide", amount = 4},
        {type = "fluid", name = "mcb",              amount = 100},
    },
    results = {
        {type = "fluid", name = "pre-pesticide-01", amount = 100},
    },
    --main_product = "chloral",
}:add_unlock("pesticides-mk01")

RECIPE {
    type = "recipe",
    name = "pesticide-mk01",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "fluid", name = "pre-pesticide-01", amount = 100},
        {type = "fluid", name = "bee-venom",        amount = 50},
        {type = "item",  name = "plastic-bar",      amount = 10},
    },
    results = {
        {type = "item", name = "pesticide-mk01", amount = 50},
    },
    --main_product = "chloral",
}:add_unlock("pesticides-mk01")

----pest 2-----

RECIPE {
    type = "recipe",
    name = "ethyl-mercaptan",
    category = "mixer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "aluminium-plate", amount = 2},
        {type = "fluid", name = "ethanol",         amount = 50},
        {type = "fluid", name = "acidgas",         amount = 100},
        {type = "fluid", name = "nitrogen",        amount = 100},
    },
    results = {
        {type = "fluid", name = "ethyl-mercaptan", amount = 200},
    },
    --main_product = "mcb",
}:add_unlock("pesticides-mk02")

RECIPE {
    type = "recipe",
    name = "dda",
    category = "agitator",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item",  name = "p2s5",    amount = 2},
        {type = "fluid", name = "ethanol", amount = 80},
    },
    results = {
        {type = "fluid", name = "dda", amount = 200},
    },
    --main_product = "mcb",
}:add_unlock("pesticides-mk02")

RECIPE {
    type = "recipe",
    name = "pre-pesticide-02",
    category = "biofactory",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "methanol",        amount = 100},
        {type = "fluid", name = "dda",             amount = 50},
        {type = "fluid", name = "ethyl-mercaptan", amount = 100},
    },
    results = {
        {type = "fluid", name = "pre-pesticide-02", amount = 50},
    },
    --main_product = "chloral",
}:add_unlock("pesticides-mk02"):replace_ingredient("methanol", "methanal")

RECIPE {
    type = "recipe",
    name = "pesticide-mk02",
    category = "biofactory",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "fluid", name = "pre-pesticide-02", amount = 100},
        {type = "fluid", name = "bee-venom",        amount = 50},
        {type = "item",  name = "plastic-bar",      amount = 10},
    },
    results = {
        {type = "item", name = "pesticide-mk02", amount = 50},
    },
    --main_product = "chloral",
}:add_unlock("pesticides-mk02")

RECIPE {
    type = "recipe",
    name = "quartz-tube",
    category = "glassworks",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "fluid", name = "molten-glass",   amount = 100, fluidbox_index = 2},
        {type = "item",  name = "boron-trioxide", amount = 5},
    },
    results = {
        {type = "item", name = "quartz-tube", amount = 3},
    },
    --main_product = "chloral",
}:add_unlock("quartz-mk02"):add_ingredient {type = "item", name = "reo", amount = 5}

RECIPE {
    type = "recipe",
    name = "powedered-biomass",
    category = "secondary-crusher",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "biomass", amount = 20},
    },
    results = {
        {type = "item", name = "powdered-biomass", amount = 20},
    },
    --main_product = "chloral",
}:add_unlock("bioprocessing").category = "pulp"

RECIPE {
    type = "recipe",
    name = "fine-powdered-biomass",
    category = "screener",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "powdered-biomass", amount = 30},
    },
    results = {
        {type = "item", name = "fine-powdered-biomass", amount = 18},
        {type = "item", name = "powdered-biomass",      amount = 6, probability = 0.2, ignored_by_productivity = 6},
        {type = "item", name = "biomass",               amount = 6, probability = 0.1},
    },
    main_product = "fine-powdered-biomass",
}:add_unlock("bioprocessing")

RECIPE {
    type = "recipe",
    name = "dried-biomass",
    category = "evaporator",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "fine-powdered-biomass", amount = 30},
    },
    results = {
        {type = "item", name = "dried-biomass", amount = 30},
    },
    --main_product = "chloral",
}:add_unlock("bioprocessing")

RECIPE {
    type = "recipe",
    name = "green-sic",
    category = "eaf",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "powdered-quartz", amount = 8},
        {type = "item", name = "coke",            amount = 14},
    },
    results = {
        {type = "item", name = "green-sic", amount = 4},
    },
    --main_product = "chloral",
}:add_unlock("silicon-carbide")

RECIPE {
    type = "recipe",
    name = "sic",
    category = "secondary-crusher",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "green-sic", amount = 3},
    },
    results = {
        {type = "item", name = "sic", amount = 4},
    },
    --main_product = "chloral",
    icon = "__pyalienlifegraphics__/graphics/icons/green-sic-recrush.png",
    icon_size = 64,
    subgroup = "py-alienlife-items",
    order = "h"
}:add_unlock("silicon-carbide")

RECIPE {
    type = "recipe",
    name = "bio-oil-1",
    category = "distilator",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "bio-oil", amount = 200},
    },
    results = {
        {type = "item",  name = "raw-coal",    amount = 20},
        {type = "item",  name = "ash",         amount = 2},
        {type = "fluid", name = "condensates", amount = 160},
    },
    main_product = "condensates",
}:add_unlock("bioprocessing")

RECIPE {
    type = "recipe",
    name = "bio-oil-2",
    category = "lor",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "bio-oil", amount = 300},
    },
    results = {
        {type = "fluid", name = "condensates",       amount = 150},
        {type = "fluid", name = "low-distillate",    amount = 50},
        {type = "fluid", name = "medium-distillate", amount = 50},
    },
    main_product = "condensates",
}:add_unlock("light-oil-mk02")

RECIPE {
    type = "recipe",
    name = "bio-oil-3",
    category = "reformer",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "fluid", name = "bio-oil", amount = 100},
    },
    results = {
        {type = "item", name = "raw-coal", amount = 15},
    },
    --main_product = "chloral",
}:add_unlock("bioprocessing")

RECIPE {
    type = "recipe",
    name = "bio-oil-4",
    category = "gas-refinery",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "fluid", name = "bio-oil", amount = 100},
    },
    results = {
        {type = "fluid", name = "natural-gas",   amount = 90},
        {type = "fluid", name = "petroleum-gas", amount = 10},
    },
    main_product = "natural-gas",
}:add_unlock("petroleum-gas-mk02")

RECIPE {
    type = "recipe",
    name = "bio-oil-5",
    category = "gas-refinery",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "bio-oil",       amount = 100},
        {type = "item",  name = "nexelit-plate", amount = 1},
    },
    results = {
        {type = "fluid", name = "natural-gas", amount = 120},
    },
    --main_product = "chloral",
}:add_unlock("petroleum-gas-mk02")

RECIPE {
    type = "recipe",
    name = "bio-oil-6",
    category = "gas-refinery",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "bio-oil",      amount = 100},
        {type = "item",  name = "nickel-plate", amount = 2},
    },
    results = {
        {type = "fluid", name = "refsyngas", amount = 120},
    },
    --main_product = "chloral",
}:add_unlock("petroleum-gas-mk02")

RECIPE {
    type = "recipe",
    name = "arthropod-blood-to-organic-solvent",
    category = "rectisol",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "arthropod-blood", amount = 50},
        {type = "item",  name = "nickel-plate",    amount = 1},
    },
    results = {
        {type = "fluid", name = "organic-solvent", amount = 130},
    }
}:add_unlock("biotech-mk03"):add_ingredient {type = "fluid", name = "cumene", amount = 20}

RECIPE {
    type = "recipe",
    name = "fetal-serum-01",
    category = "biofactory",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "guts",         amount = 15},
        {type = "item", name = "flask",        amount = 1},
        {type = "item", name = "silver-plate", amount = 2},
    },
    results = {
        {type = "fluid", name = "fetal-serum", amount = 50},
    },
    --main_product = "cocoon",
}:add_unlock("biotech-mk02")

RECIPE {
    type = "recipe",
    name = "earth-generic-sample",
    category = "data-array",
    enabled = false,
    energy_required = 25,
    ingredients = {
        {type = "item", name = "iron-chest",              amount = 1},
        {type = "item", name = "automation-science-pack", amount = 15},
        {type = "item", name = "bio-sample",              amount = 10},
    },
    results = {
        {type = "item", name = "earth-generic-sample", amount = 1},
    },
}:add_unlock("xenobiology")

RECIPE {
    type = "recipe",
    name = "bio-sample",
    category = "incubator",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "bio-container", amount = 1},
        {type = "item", name = "native-flora",  amount = 15},
    },
    results = {
        {type = "item", name = "bio-sample", amount = 1},
    },
}:add_unlock("biotech-mk01")

RECIPE {
    type = "recipe",
    name = "fertilizer-3",
    category = "bio-reactor",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "seaweed", amount = 10},
        {type = "item", name = "manure",  amount = 2},
        {type = "item", name = "ash",     amount = 20},
        {type = "item", name = "biomass", amount = 20}
    },
    results = {
        {type = "item", name = "fertilizer", amount = 10}
    }
}:add_unlock("fertilizer-mk02"):replace_ingredient("manure", "urea")

RECIPE {
    type = "recipe",
    name = "fiber-01",
    category = "wpu",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "wood", amount = 10},
    },
    results = {
        {type = "item", name = "raw-fiber", amount = 2}
    }
}:add_unlock("wood-processing")

RECIPE {
    type = "recipe",
    name = "yotoi-fiber",
    category = "wpu",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "yotoi-leaves", amount = 5},
    },
    results = {
        {type = "item", name = "raw-fiber", amount = 3},
    },
    allow_productivity = true,
}:add_unlock("yotoi").category = "pulp"

RECIPE {
    type = "recipe",
    name = "concrete-02",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "item",  name = "stone-brick", amount = 5},
        {type = "fluid", name = "water",       amount = 100},
        {type = "fluid", name = "boric-acid",  amount = 400},
        {type = "item",  name = "cellulose",   amount = 4},
    },
    results = {
        {type = "item", name = "concrete", amount = 20},
    },
    --main_product = "cocoon",
}:add_unlock("cellulose-mk02")

RECIPE {
    type = "recipe",
    name = "soil-separation-2",
    category = "solid-separator",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "soil", amount = 20}
    },
    results = {
        {type = "item", name = "sand",      amount = 13},
        {type = "item", name = "coarse",    amount = 3},
        {type = "item", name = "limestone", amount = 2},
        {type = "item", name = "biomass",   amount = 3}
    },
    main_product = "sand",
    icon = "__pycoalprocessinggraphics__/graphics/icons/soil-separation.png",
    icon_size = 32,
    subgroup = "py-items-class",
    order = "e"
}:add_unlock("separation")

RECIPE {
    type = "recipe",
    name = "empty-planter-box",
    enabled = true,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "stone-brick", amount = 4},
        {type = "item", name = "wood",        amount = 2},
        {type = "item", name = "iron-plate",  amount = 1},
    },
    results = {
        {type = "item", name = "empty-planter-box", amount = 1},
    },
}

RECIPE {
    type = "recipe",
    name = "planter-box",
    enabled = true,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "empty-planter-box", amount = 1},
        {type = "item", name = "soil",              amount = 5},
        {type = "item", name = "ash",               amount = 3},
    },
    results = {
        {type = "item", name = "planter-box", amount = 1},
    },
}

RECIPE {
    type = "recipe",
    name = "charcoal-briquette",
    category = "fts-reactor",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "dried-biomass",    amount = 40},
        {type = "item",  name = "active-carbon",    amount = 5},
        {type = "item",  name = "limestone",        amount = 5},
        {type = "item",  name = "starch",           amount = 10},
        {type = "item",  name = "borax",            amount = 5},
        {type = "item",  name = "sodium-carbonate", amount = 5},
        {type = "fluid", name = "nitrogen",         amount = 50},
        {type = "fluid", name = "wax",              amount = 25},
        {type = "fluid", name = "creosote",         amount = 25},
        {type = "item",  name = "raw-fiber",        amount = 10}
    },
    results = {
        {type = "item", name = "charcoal-briquette", amount = 10}
    },
    main_product = "charcoal-briquette",
    --icon = "__pycoalprocessinggraphics__/graphics/icons/missing-icon.png",
    --icon_size = 32
}:add_unlock("energy-3")

RECIPE {
    type = "recipe",
    name = "animal-sample-01",
    category = "genlab",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "bones",       amount = 5},
        {type = "item",  name = "meat",        amount = 7},
        {type = "item",  name = "skin",        amount = 3},
        {type = "item",  name = "mukmoux-fat", amount = 1},
        {type = "item",  name = "guts",        amount = 3},
        {type = "item",  name = "brain",       amount = 3},
        {type = "item",  name = "plasmids",    amount = 1},
        {type = "fluid", name = "blood",       amount = 50},
    },
    results = {
        {type = "item", name = "animal-sample-01", amount = 1},
    },
}:add_unlock("logistic-science-pack")

RECIPE {
    type = "recipe",
    name = "gastrocapacitor",
    category = "research",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "animal-sample-01",   amount = 3},
        {type = "item",  name = "stainless-steel",    amount = 2},
        {type = "item",  name = "electronic-circuit", amount = 2},
        {type = "item",  name = "zipir-eggs",         amount = 1},
        {type = "fluid", name = "phytoplankton",      amount = 100},
        {type = "fluid", name = "blood",              amount = 100},
        {type = "fluid", name = "fetal-serum",        amount = 50},
    },
    results = {
        {type = "item", name = "gastrocapacitor", amount = 1},
    },
}:add_unlock("domestication-mk03"):add_unlock("spidertron"):add_ingredient {type = "item", name = "nexelit-battery", amount = 1}

RECIPE {
    type = "recipe",
    name = "workers-food",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "tin-plate",    amount = 2},
        {type = "item",  name = "seaweed",      amount = 5},
        {type = "item",  name = "starch",       amount = 1},
        {type = "item",  name = "guts",         amount = 4},
        {type = "item",  name = "skin",         amount = 3},
        {type = "item",  name = "mukmoux-fat",  amount = 1},
        {type = "item",  name = "native-flora", amount = 5},
        {type = "fluid", name = "water",        amount = 100},
        {type = "fluid", name = "blood",        amount = 50},
    },
    results = {
        {type = "item", name = "workers-food", amount = 2},
    },
}:add_unlock("starch-mk01")

RECIPE {
    type = "recipe",
    name = "workers-food-02",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "workers-food",          amount = 4},
        {type = "item", name = "tin-plate",             amount = 2},
        {type = "item", name = "sugar",                 amount = 2},
        {type = "item", name = "fine-powdered-biomass", amount = 5},
        {type = "item", name = "wood-seeds",            amount = 5},
        {type = "item", name = "skin",                  amount = 10},
        {type = "item", name = "ash",                   amount = 10},
        {type = "item", name = "bonemeal",              amount = 2},
        {type = "item", name = "brain",                 amount = 1},
        {type = "item", name = "gh",                    amount = 1},
    },
    results = {
        {type = "item", name = "workers-food-02", amount = 8},
    },
}:add_unlock("nexelit-mk03")

RECIPE {
    type = "recipe",
    name = "workers-food-03",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 320,
    ingredients = {
        {type = "item",  name = "workers-food-02",                                                 amount = 4},
        {type = "item",  name = "plastic-bar",                                                     amount = 4},
        {type = "item",  name = "ammonium-nitrate",                                                amount = 10},
        {type = "item",  name = "guano",                                                           amount = 2},
        {type = "item",  name = "yotoi-fruit",                                                     amount = 10},
        {type = "item",  name = "fishmeal",                                                        amount = 5},
        {type = "item",  name = "wood-seeds",                                                      amount = 1},
        {type = "fluid", name = mods["pyalternativeenergy"] and "molten-salt" or "water",          amount = 25},
        {type = "fluid", name = mods["pyhightech"] and "cadaveric-arum-mk02-seed-juice" or "milk", amount = 25},
        {type = "item",  name = "caged-vrauks",                                                    amount = 1},
        {type = "item",  name = "digested-rennea-seeds-mk02",                                      amount = 3},
        {type = "item",  name = "arqad-maggot",                                                    amount = 1},
    },
    results = {
        {type = "item", name = "workers-food-03", amount = 8},
        {type = "item", name = "cage",            amount = 1},
    },
    main_product = "workers-food-03"
}:add_unlock("biofluid-mk03")

RECIPE {
    type = "recipe",
    name = "battery-mk01",
    category = "chemistry",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "glass",       amount = 1},
        {type = "item",  name = "plastic-bar", amount = 2}, -- melamine
        {type = "item",  name = "lead-plate",  amount = 1},
        {type = "item",  name = "bolts",       amount = 3},
        {type = "item",  name = "coke",        amount = 10}, -- 3 graphite
        {type = "item",  name = "zinc-plate",  amount = 3},
        {type = "fluid", name = "formic-acid", amount = 30}, -- cyanic-acid
    },
    results = {
        {type = "item", name = "battery", amount = 1},
    },
    --main_product = "eg-si",
}:add_unlock("electric-energy-accumulators")
