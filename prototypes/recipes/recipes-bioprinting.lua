------------------------------------------------bio-scafold-------------------------------

RECIPE {
    type = "recipe",
    name = "bio-scafold",
    categories = {"nmf"},
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item",  name = "sodium-alginate", amount = 1},
        {type = "item",  name = "chitin",          amount = 20},
        {type = "item",  name = "bonemeal",        amount = 5},
        {type = "fluid", name = "boric-acid",      amount = 200},
    },
    results = {
        {type = "item", name = "bio-scafold", amount = 1},
    },
    --main_product = "cocoon",
    icons = py.composite_icon("bio-scafold", "bonemeal")
}:add_unlock("organ-printing")

RECIPE {
    type = "recipe",
    name = "bio-scafold-2",
    categories = {"nmf"},
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item",  name = "sodium-alginate", amount = 1},
        {type = "item",  name = "keratin",         amount = 1},
        {type = "item",  name = "guts",            amount = 7},
        {type = "fluid", name = "boric-acid",      amount = 200},

    },
    results = {
        {type = "item", name = "bio-scafold", amount = 5},
    },
    --main_product = "cocoon",
    icons = py.composite_icon("bio-scafold", "guts")
}:add_unlock("organ-printing-mk02"):replace_ingredient("guts", "collagen")

RECIPE {
    type = "recipe",
    name = "bio-scafold-3",
    categories = {"nmf"},
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item",  name = "sodium-alginate", amount = 1},
        {type = "item",  name = "keratin",         amount = 1},
        {type = "item",  name = "chitosan",        amount = 1},
        {type = "fluid", name = "boric-acid",      amount = 200},

    },
    results = {
        {type = "item", name = "bio-scafold", amount = 8},
    },
    --main_product = "cocoon",
    icons = py.composite_icon("bio-scafold", "chitosan")
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "bio-scafold-4",
    categories = {"nmf"},
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item",  name = "sodium-alginate", amount = 5},
        {type = "item",  name = "nanofibrils",     amount = 1},
        {type = "item",  name = "keratin",         amount = 1},
        {type = "fluid", name = "boric-acid",      amount = 1000},

    },
    results = {
        {type = "item", name = "bio-scafold", amount = 15},
    },
    --main_product = "cocoon",
    icons = py.composite_icon("bio-scafold", "nanofibrils")
}:add_unlock("organ-printing-mk03")

------------------------------------PARTS CONVERSION-----------------------------------------------

RECIPE {
    type = "recipe",
    name = "xenogenic-from-bones",
    categories = {"incubator"},
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "oxygen", amount = 50},
        {type = "item",  name = "bones",  amount = 5},
    },
    results = {
        {type = "fluid", name = "xenogenic-cells", amount = 45},
    },
    --main_product = "cocoon",
    icons = py.composite_icon("xenogenic-cells", "bones")
}:add_unlock("organ-printing")

RECIPE {
    type = "recipe",
    name = "xenogenic-from-bonemeal",
    categories = {"incubator"},
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "oxygen",   amount = 100},
        {type = "item",  name = "bonemeal", amount = 5},
    },
    results = {
        {type = "fluid", name = "xenogenic-cells", amount = 85},
    },
    --main_product = "cocoon",
    icons = py.composite_icon("xenogenic-cells", "bonemeal")
}:add_unlock("organ-printing")

RECIPE {
    type = "recipe",
    name = "xenogenic-from-skin",
    categories = {"incubator"},
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "oxygen", amount = 50},
        {type = "item",  name = "skin",   amount = 5},
    },
    results = {
        {type = "fluid", name = "xenogenic-cells", amount = 60},
    },
    --main_product = "cocoon",
    icons = py.composite_icon("xenogenic-cells", "skin")
}:add_unlock("organ-printing")

RECIPE {
    type = "recipe",
    name = "xenogenic-from-chitin",
    categories = {"incubator"},
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "oxygen", amount = 50},
        {type = "item",  name = "chitin", amount = 5},
    },
    results = {
        {type = "fluid", name = "xenogenic-cells", amount = 70},
    },
    --main_product = "cocoon",
    icons = py.composite_icon("xenogenic-cells", "chitin")
}:add_unlock("organ-printing")

RECIPE {
    type = "recipe",
    name = "xenogenic-from-guts",
    categories = {"incubator"},
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "oxygen", amount = 50},
        {type = "item",  name = "guts",   amount = 5},
    },
    results = {
        {type = "fluid", name = "xenogenic-cells", amount = 40},
    },
    --main_product = "cocoon",
    icons = py.composite_icon("xenogenic-cells", "guts")
}:add_unlock("organ-printing")

RECIPE {
    type = "recipe",
    name = "xenogenic-from-fat",
    categories = {"incubator"},
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "oxygen",      amount = 75},
        {type = "item",  name = "mukmoux-fat", amount = 5},
    },
    results = {
        {type = "fluid", name = "xenogenic-cells", amount = 20},
    },
    --main_product = "cocoon",
    icons = py.composite_icon("xenogenic-cells", "mukmoux-fat")
}:add_unlock("organ-printing")

RECIPE {
    type = "recipe",
    name = "xenogenic-from-meat",
    categories = {"incubator"},
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "oxygen", amount = 50},
        {type = "item",  name = "meat",   amount = 5},
    },
    results = {
        {type = "fluid", name = "xenogenic-cells", amount = 30},
    },
    --main_product = "cocoon",
    icons = py.composite_icon("xenogenic-cells", "meat")
}:add_unlock("organ-printing")

RECIPE {
    type = "recipe",
    name = "xenogenic-from-brains",
    categories = {"incubator"},
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "oxygen", amount = 50},
        {type = "item",  name = "brain",  amount = 5},
    },
    results = {
        {type = "fluid", name = "xenogenic-cells", amount = 20},
    },
    --main_product = "cocoon",
    icons = py.composite_icon("xenogenic-cells", "brain")
}:add_unlock("organ-printing")







------------------------------------PARTS CONVERSION with PLASMIDS-----------------------------------------------

RECIPE {
    type = "recipe",
    name = "plasmid-xenogenic-from-bones",
    categories = {"incubator"},
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "oxygen",   amount = 50},
        {type = "item",  name = "bones",    amount = 5},
        {type = "item",  name = "plasmids", amount = 2},
    },
    results = {
        {type = "fluid", name = "xenogenic-cells", amount = 90},
    },
    --main_product = "cocoon",
    icons = py.composite_icon("xenogenic-cells", "bones", nil, "plasmids")
}:add_unlock("organ-printing-mk02")

RECIPE {
    type = "recipe",
    name = "plasmid-xenogenic-from-bonemeal",
    categories = {"incubator"},
    enabled = false,
    energy_required = 25,
    ingredients = {
        {type = "fluid", name = "oxygen",   amount = 150},
        {type = "item",  name = "bonemeal", amount = 5},
        {type = "item",  name = "plasmids", amount = 2},
    },
    results = {
        {type = "fluid", name = "xenogenic-cells", amount = 160},
    },
    --main_product = "cocoon",
    icons = py.composite_icon("xenogenic-cells", "bonemeal", nil, "plasmids")
}:add_unlock("organ-printing-mk02")

RECIPE {
    type = "recipe",
    name = "plasmid-xenogenic-from-skin",
    categories = {"incubator"},
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "oxygen",   amount = 50},
        {type = "item",  name = "skin",     amount = 5},
        {type = "item",  name = "plasmids", amount = 1},
    },
    results = {
        {type = "fluid", name = "xenogenic-cells", amount = 75},
    },
    --main_product = "cocoon",
    icons = py.composite_icon("xenogenic-cells", "skin", nil, "plasmids")
}:add_unlock("organ-printing-mk02")

RECIPE {
    type = "recipe",
    name = "plasmid-xenogenic-from-guts",
    categories = {"incubator"},
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "fluid", name = "oxygen",   amount = 50},
        {type = "item",  name = "guts",     amount = 5},
        {type = "item",  name = "plasmids", amount = 1},
    },
    results = {
        {type = "fluid", name = "xenogenic-cells", amount = 60},
    },
    --main_product = "cocoon",
    icons = py.composite_icon("xenogenic-cells", "guts", nil, "plasmids")
}:add_unlock("organ-printing-mk02")

RECIPE {
    type = "recipe",
    name = "plasmid-xenogenic-from-fat",
    categories = {"incubator"},
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "oxygen",      amount = 50},
        {type = "item",  name = "mukmoux-fat", amount = 6},
        {type = "item",  name = "plasmids",    amount = 2},
    },
    results = {
        {type = "fluid", name = "xenogenic-cells", amount = 45},
    },
    --main_product = "cocoon",
    icons = py.composite_icon("xenogenic-cells", "mukmoux-fat", nil, "plasmids")
}:add_unlock("organ-printing-mk02")

RECIPE {
    type = "recipe",
    name = "plasmid-xenogenic-from-meat",
    categories = {"incubator"},
    enabled = false,
    energy_required = 13,
    ingredients = {
        {type = "fluid", name = "oxygen",   amount = 50},
        {type = "item",  name = "meat",     amount = 5},
        {type = "item",  name = "plasmids", amount = 1},
    },
    results = {
        {type = "fluid", name = "xenogenic-cells", amount = 60},
    },
    --main_product = "cocoon",
    icons = py.composite_icon("xenogenic-cells", "meat", nil, "plasmids")
}:add_unlock("organ-printing-mk02")

RECIPE {
    type = "recipe",
    name = "plasmid-xenogenic-from-brains",
    categories = {"incubator"},
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "oxygen",   amount = 50},
        {type = "item",  name = "brain",    amount = 6},
        {type = "item",  name = "plasmids", amount = 1},
    },
    results = {
        {type = "fluid", name = "xenogenic-cells", amount = 50},
    },
    --main_product = "cocoon",
    icons = py.composite_icon("xenogenic-cells", "brain", nil, "plasmids")
}:add_unlock("organ-printing-mk02")


------------------------------------PARTS CONVERSION WITH GH-----------------------------------------------

RECIPE {
    type = "recipe",
    name = "gh-xenogenic-from-bones",
    categories = {"incubator"},
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "oxygen",   amount = 50},
        {type = "item",  name = "plasmids", amount = 2},
        {type = "item",  name = "bones",    amount = 5},
        {type = "item",  name = "gh",       amount = 1},
    },
    results = {
        {type = "fluid", name = "xenogenic-cells", amount = 155},
    },
    --main_product = "cocoon",
    icons = py.composite_icon("xenogenic-cells", "bones", nil, "gh")
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "gh-xenogenic-from-bonemeal",
    categories = {"incubator"},
    enabled = false,
    energy_required = 25,
    ingredients = {
        {type = "fluid", name = "oxygen",   amount = 150},
        {type = "item",  name = "plasmids", amount = 3},
        {type = "item",  name = "bonemeal", amount = 5},
        {type = "item",  name = "gh",       amount = 1},
    },
    results = {
        {type = "fluid", name = "xenogenic-cells", amount = 260},
    },
    --main_product = "cocoon",
    icons = py.composite_icon("xenogenic-cells", "bonemeal", nil, "gh")
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "gh-xenogenic-from-skin",
    categories = {"incubator"},
    enabled = false,
    energy_required = 12,
    ingredients = {
        {type = "fluid", name = "oxygen",   amount = 50},
        {type = "item",  name = "skin",     amount = 5},
        {type = "item",  name = "plasmids", amount = 2},
        {type = "item",  name = "gh",       amount = 1},
    },
    results = {
        {type = "fluid", name = "xenogenic-cells", amount = 140},
    },
    --main_product = "cocoon",
    icons = py.composite_icon("xenogenic-cells", "skin", nil, "gh")
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "gh-xenogenic-from-guts",
    categories = {"incubator"},
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "oxygen",   amount = 50},
        {type = "item",  name = "guts",     amount = 5},
        {type = "item",  name = "plasmids", amount = 1},
        {type = "item",  name = "gh",       amount = 1},
    },
    results = {
        {type = "fluid", name = "xenogenic-cells", amount = 110},
    },
    --main_product = "cocoon",
    icons = py.composite_icon("xenogenic-cells", "guts", nil, "gh")
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "gh-xenogenic-from-fat",
    categories = {"incubator"},
    enabled = false,
    energy_required = 12,
    ingredients = {
        {type = "fluid", name = "oxygen",      amount = 100},
        {type = "item",  name = "plasmids",    amount = 2},
        {type = "item",  name = "mukmoux-fat", amount = 5},
        {type = "item",  name = "gh",          amount = 1},
    },
    results = {
        {type = "fluid", name = "xenogenic-cells", amount = 120},
    },
    --main_product = "cocoon",
    icons = py.composite_icon("xenogenic-cells", "mukmoux-fat", nil, "gh")
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "gh-xenogenic-from-meat",
    categories = {"incubator"},
    enabled = false,
    energy_required = 13,
    ingredients = {
        {type = "fluid", name = "oxygen",   amount = 50},
        {type = "item",  name = "plasmids", amount = 1},
        {type = "item",  name = "meat",     amount = 5},
        {type = "item",  name = "gh",       amount = 1},
    },
    results = {
        {type = "fluid", name = "xenogenic-cells", amount = 100},
    },
    --main_product = "cocoon",
    icons = py.composite_icon("xenogenic-cells", "meat", nil, "gh")
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "gh-xenogenic-from-brains",
    categories = {"incubator"},
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "fluid", name = "oxygen",   amount = 50},
        {type = "item",  name = "plasmids", amount = 1},
        {type = "item",  name = "brain",    amount = 5},
        {type = "item",  name = "gh",       amount = 1},
    },
    results = {
        {type = "fluid", name = "xenogenic-cells", amount = 125},
    },
    --main_product = "cocoon",
    icons = py.composite_icon("xenogenic-cells", "brain", nil, "gh")
}:add_unlock("organ-printing-mk03")




-- done up to here


--------------------------------------------------------PSC------------------------------------

RECIPE {
    type = "recipe",
    name = "psc",
    categories = {"bio-reactor"},
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "oxygen",          amount = 150},
        {type = "fluid", name = "xenogenic-cells", amount = 150},
        {type = "item",  name = "sugar",           amount = 3},
        {type = "item",  name = "retrovirus",      amount = 1},
    },
    results = {
        {type = "fluid", name = "psc",            amount = 50},
        {type = "fluid", name = "carbon-dioxide", amount = 50},
    },
    main_product = "psc",
}:add_unlock("organ-printing")

RECIPE {
    type = "recipe",
    name = "psc-cbp",
    categories = {"bio-reactor"},
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "oxygen",          amount = 150},
        {type = "fluid", name = "xenogenic-cells", amount = 150},
        {type = "item",  name = "sugar",           amount = 4},
        {type = "item",  name = "retrovirus",      amount = 1},
        {type = "item",  name = "cbp",             amount = 1},
    },
    results = {
        {type = "fluid", name = "psc",            amount = 100},
        {type = "fluid", name = "carbon-dioxide", amount = 50},
    },
    main_product = "psc",
    icons = py.composite_icon("psc", "cbp")
}:add_unlock("organ-printing-mk02")

RECIPE {
    type = "recipe",
    name = "psc-mutant",
    categories = {"bio-reactor"},
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "mutant-enzymes",  amount = 50},
        {type = "fluid", name = "xenogenic-cells", amount = 50},
        {type = "item",  name = "sugar",           amount = 4},
        {type = "item",  name = "cbp",             amount = 1},
        {type = "item",  name = "retrovirus",      amount = 1},
    },
    results = {
        {type = "fluid", name = "psc",            amount = 200},
        {type = "fluid", name = "carbon-dioxide", amount = 50},
    },
    main_product = "psc",
    icons = py.composite_icon("psc", "mutant-enzymes")
}:add_unlock("organ-printing-mk02")

RECIPE {
    type = "recipe",
    name = "psc-gh",
    categories = {"bio-reactor"},
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "mutant-enzymes",  amount = 50},
        {type = "fluid", name = "xenogenic-cells", amount = 50},
        {type = "item",  name = "sugar",           amount = 4},
        {type = "item",  name = "retrovirus",      amount = 1},
        {type = "item",  name = "gh",              amount = 1},
    },
    results = {
        {type = "fluid", name = "psc",            amount = 275},
        {type = "fluid", name = "carbon-dioxide", amount = 50},
    },
    main_product = "psc",
    icons = py.composite_icon("psc", "gh")
}:add_unlock("organ-printing-mk03")


--done up to here , nu uita sa faci lista in jos sa nu fie bucla puternica


------------------------------------ORGAN PRINTING--------------------------

RECIPE {
    type = "recipe",
    name = "print-bones",
    categories = {"bio-printer"},
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "fluid", name = "psc",         amount = 40},
        {type = "item",  name = "bio-scafold", amount = 1},
    },
    results = {
        {type = "item", name = "bones", amount = 3},
    },
    icons = py.composite_icon("bones", "psc")
}:add_unlock("organ-printing")

RECIPE {
    type = "recipe",
    name = "print-bonemeal",
    categories = {"bio-printer"},
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "fluid", name = "psc",         amount = 40},
        {type = "item",  name = "bio-scafold", amount = 1},
    },
    results = {
        {type = "item", name = "bonemeal", amount = 4},
    },
    icons = py.composite_icon("bonemeal", "psc")
}:add_unlock("organ-printing")

RECIPE {
    type = "recipe",
    name = "print-meat",
    categories = {"bio-printer"},
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "fluid", name = "psc",         amount = 40},
        {type = "item",  name = "bio-scafold", amount = 1},
    },
    results = {
        {type = "item", name = "meat", amount = 4},
    },
    icons = py.composite_icon("meat", "psc")
}:add_unlock("organ-printing")

RECIPE {
    type = "recipe",
    name = "print-fat",
    categories = {"bio-printer"},
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "fluid", name = "psc",         amount = 40},
        {type = "item",  name = "bio-scafold", amount = 1},
    },
    results = {
        {type = "item", name = "mukmoux-fat", amount = 5},
    },
    icons = py.composite_icon("mukmoux-fat", "psc")
}:add_unlock("organ-printing")

RECIPE {
    type = "recipe",
    name = "print-brain",
    categories = {"bio-printer"},
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "fluid", name = "psc",         amount = 50},
        {type = "item",  name = "bio-scafold", amount = 1},
    },
    results = {
        {type = "item", name = "brain", amount = 2},
    },
    icons = py.composite_icon("brain", "psc")
}:add_unlock("organ-printing")

RECIPE {
    type = "recipe",
    name = "print-skin",
    categories = {"bio-printer"},
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "fluid", name = "psc",         amount = 40},
        {type = "item",  name = "bio-scafold", amount = 1},
    },
    results = {
        {type = "item", name = "skin", amount = 5},
    },
    icons = py.composite_icon("skin", "psc")
}:add_unlock("organ-printing")

RECIPE {
    type = "recipe",
    name = "print-guts",
    categories = {"bio-printer"},
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "fluid", name = "psc",         amount = 40},
        {type = "item",  name = "bio-scafold", amount = 1},
    },
    results = {
        {type = "item", name = "guts", amount = 6},
    },
    icons = py.composite_icon("guts", "psc")
}:add_unlock("organ-printing")








------------------------------------ORGAN PRINTING with FETAL SERUM--------------------------

RECIPE {
    type = "recipe",
    name = "print-bones-fs",
    categories = {"bio-printer"},
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    enabled = false,
    energy_required = 45,
    ingredients = {
        {type = "fluid", name = "psc",         amount = 40},
        {type = "fluid", name = "fetal-serum", amount = 20},
        {type = "item",  name = "bio-scafold", amount = 1},
    },
    results = {
        {type = "item", name = "bones", amount = 5},
    },
    icons = py.composite_icon("bones", "psc", nil, "fetal-serum")
}:add_unlock("organ-printing-mk02")

RECIPE {
    type = "recipe",
    name = "print-meat-fs",
    categories = {"bio-printer"},
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    enabled = false,
    energy_required = 45,
    ingredients = {
        {type = "fluid", name = "psc",         amount = 40},
        {type = "fluid", name = "fetal-serum", amount = 20},
        {type = "item",  name = "bio-scafold", amount = 1},
    },
    results = {
        {type = "item", name = "meat", amount = 7},
    },
    icons = py.composite_icon("meat", "psc", nil, "fetal-serum")
}:add_unlock("organ-printing-mk02")

RECIPE {
    type = "recipe",
    name = "print-fat-fs",
    categories = {"bio-printer"},
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    enabled = false,
    energy_required = 45,
    ingredients = {
        {type = "fluid", name = "psc",         amount = 30},
        {type = "fluid", name = "fetal-serum", amount = 20},
        {type = "item",  name = "bio-scafold", amount = 1},
    },
    results = {
        {type = "item", name = "mukmoux-fat", amount = 8},
    },
    icons = py.composite_icon("mukmoux-fat", "psc", nil, "fetal-serum")
}:add_unlock("organ-printing-mk02")

RECIPE {
    type = "recipe",
    name = "print-brain-fs",
    categories = {"bio-printer"},
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    enabled = false,
    energy_required = 45,
    ingredients = {
        {type = "fluid", name = "psc",         amount = 50},
        {type = "fluid", name = "fetal-serum", amount = 40},
        {type = "item",  name = "bio-scafold", amount = 1},
    },
    results = {
        {type = "item", name = "brain", amount = 4},
    },
    icons = py.composite_icon("brain", "psc", nil, "fetal-serum")
}:add_unlock("organ-printing-mk02")

RECIPE {
    type = "recipe",
    name = "print-skin-fs",
    categories = {"bio-printer"},
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    enabled = false,
    energy_required = 45,
    ingredients = {
        {type = "fluid", name = "psc",         amount = 40},
        {type = "fluid", name = "fetal-serum", amount = 40},
        {type = "item",  name = "bio-scafold", amount = 1},
    },
    results = {
        {type = "item", name = "skin", amount = 8},
    },
    icons = py.composite_icon("skin", "psc", nil, "fetal-serum")
}:add_unlock("organ-printing-mk02")

RECIPE {
    type = "recipe",
    name = "print-guts-fs",
    categories = {"bio-printer"},
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    enabled = false,
    energy_required = 45,
    ingredients = {
        {type = "fluid", name = "psc",         amount = 40},
        {type = "fluid", name = "fetal-serum", amount = 40},
        {type = "item",  name = "bio-scafold", amount = 1},
    },
    results = {
        {type = "item", name = "guts", amount = 10},
    },
    icons = py.composite_icon("guts", "psc", nil, "fetal-serum")
}:add_unlock("organ-printing-mk02")


--done up to here

------------------------------------ORGAN PRINTING with IMMUNOSUPPRESSANT--------------------------

RECIPE {
    type = "recipe",
    name = "print-bones-immunosupressants",
    categories = {"bio-printer"},
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    enabled = false,
    energy_required = 45,
    ingredients = {
        {type = "fluid", name = "psc",               amount = 40},
        {type = "fluid", name = "fetal-serum",       amount = 20},
        {type = "item",  name = "bio-scafold",       amount = 1},
        {type = "item",  name = "immunosupressants", amount = 1},
    },
    results = {
        {type = "item", name = "bones", amount = 15},
    },
    icons = py.composite_icon("bones", "psc", nil, "immunosupressants")
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "print-meat-immunosupressants",
    categories = {"bio-printer"},
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    enabled = false,
    energy_required = 45,
    ingredients = {
        {type = "fluid", name = "psc",               amount = 40},
        {type = "fluid", name = "fetal-serum",       amount = 20},
        {type = "item",  name = "bio-scafold",       amount = 1},
        {type = "item",  name = "immunosupressants", amount = 1},
    },
    results = {
        {type = "item", name = "meat", amount = 21},
    },
    icons = py.composite_icon("meat", "psc", nil, "immunosupressants")
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "print-fat-immunosupressants",
    categories = {"bio-printer"},
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    enabled = false,
    energy_required = 45,
    ingredients = {
        {type = "fluid", name = "psc",               amount = 30},
        {type = "fluid", name = "fetal-serum",       amount = 20},
        {type = "item",  name = "bio-scafold",       amount = 1},
        {type = "item",  name = "immunosupressants", amount = 1},
    },
    results = {
        {type = "item", name = "mukmoux-fat", amount = 25},
    },
    icons = py.composite_icon("mukmoux-fat", "psc", nil, "immunosupressants")
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "print-brain-immunosupressants",
    categories = {"bio-printer"},
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    enabled = false,
    energy_required = 45,
    ingredients = {
        {type = "fluid", name = "psc",               amount = 50},
        {type = "fluid", name = "fetal-serum",       amount = 40},
        {type = "item",  name = "bio-scafold",       amount = 1},
        {type = "item",  name = "immunosupressants", amount = 1},
    },
    results = {
        {type = "item", name = "brain", amount = 13},
    },
    icons = py.composite_icon("brain", "psc", nil, "immunosupressants")
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "print-skin-immunosupressants",
    categories = {"bio-printer"},
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    enabled = false,
    energy_required = 45,
    ingredients = {
        {type = "fluid", name = "psc",               amount = 40},
        {type = "fluid", name = "fetal-serum",       amount = 40},
        {type = "item",  name = "bio-scafold",       amount = 1},
        {type = "item",  name = "immunosupressants", amount = 1},
    },
    results = {
        {type = "item", name = "skin", amount = 25},
    },
    icons = py.composite_icon("skin", "psc", nil, "immunosupressants")
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "print-guts-immunosupressants",
    categories = {"bio-printer"},
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    enabled = false,
    energy_required = 45,
    ingredients = {
        {type = "fluid", name = "psc",               amount = 40},
        {type = "fluid", name = "fetal-serum",       amount = 40},
        {type = "item",  name = "bio-scafold",       amount = 1},
        {type = "item",  name = "immunosupressants", amount = 1},
    },
    results = {
        {type = "item", name = "guts", amount = 35},
    },
    icons = py.composite_icon("guts", "psc", nil, "immunosupressants")
}:add_unlock("organ-printing-mk03")




------------------------------------SPECIAL ORGAN PRINTING with FETAL SERUM--------------------------

RECIPE {
    type = "recipe",
    name = "print-chitin-fs",
    categories = {"bio-printer"},
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    enabled = false,
    energy_required = 120,
    ingredients = {
        {type = "fluid", name = "psc",         amount = 50},
        {type = "fluid", name = "fetal-serum", amount = 50},
        {type = "item",  name = "bio-scafold", amount = 1},
    },
    results = {
        {type = "item", name = "chitin", amount = 30},
    },
    icons = py.composite_icon("chitin", "psc", nil, "fetal-serum")
}:add_unlock("organ-printing-mk02")

RECIPE {
    type = "recipe",
    name = "print-carapace-fs",
    categories = {"bio-printer"},
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    enabled = false,
    energy_required = 120,
    ingredients = {
        {type = "fluid", name = "psc",         amount = 50},
        {type = "fluid", name = "fetal-serum", amount = 50},
        {type = "item",  name = "bio-scafold", amount = 1},
    },
    results = {
        {type = "item", name = "carapace", amount = 4},
    },
    icons = py.composite_icon("carapace", "psc", nil, "fetal-serum")
}:add_unlock("organ-printing-mk02")

RECIPE {
    type = "recipe",
    name = "print-pelt-fs",
    categories = {"bio-printer"},
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    enabled = false,
    energy_required = 120,
    ingredients = {
        {type = "fluid", name = "psc",         amount = 50},
        {type = "fluid", name = "fetal-serum", amount = 50},
        {type = "item",  name = "bio-scafold", amount = 1},
    },
    results = {
        {type = "item", name = "pelt", amount = 10},
    },
    icons = py.composite_icon("pelt", "psc", nil, "fetal-serum")
}:add_unlock("organ-printing-mk02")

RECIPE {
    type = "recipe",
    name = "print-dingrit-spike-fs",
    categories = {"bio-printer"},
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "fluid", name = "psc",         amount = 50},
        {type = "fluid", name = "fetal-serum", amount = 50},
        {type = "item",  name = "bio-scafold", amount = 1},
    },
    results = {
        {type = "item", name = "dingrit-spike", amount = 5},
    },
    icons = py.composite_icon("dingrit-spike", "psc", nil, "fetal-serum")
}:add_unlock("organ-printing-mk02")

RECIPE {
    type = "recipe",
    name = "print-pineal-fs",
    categories = {"bio-printer"},
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "fluid", name = "psc",         amount = 50},
        {type = "fluid", name = "fetal-serum", amount = 50},
        {type = "item",  name = "bio-scafold", amount = 1},
    },
    results = {
        {type = "item", name = "pineal-gland", amount = 5},
    },
    icons = py.composite_icon("pineal-gland", "psc", nil, "fetal-serum")
}:add_unlock("organ-printing-mk02")

RECIPE {
    type = "recipe",
    name = "print-tendon-fs",
    categories = {"bio-printer"},
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "fluid", name = "psc",         amount = 50},
        {type = "fluid", name = "fetal-serum", amount = 50},
        {type = "item",  name = "bio-scafold", amount = 1},
    },
    results = {
        {type = "item", name = "tendon", amount = 2},
    },
    icons = py.composite_icon("tendon", "psc", nil, "fetal-serum")
}:add_unlock("organ-printing-mk02")

RECIPE {
    type = "recipe",
    name = "print-gas-bladder-fs",
    categories = {"bio-printer"},
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "fluid", name = "psc",         amount = 50},
        {type = "fluid", name = "fetal-serum", amount = 50},
        {type = "item",  name = "bio-scafold", amount = 1},
    },
    results = {
        {type = "item", name = "gas-bladder", amount = 10},
    },
    icons = py.composite_icon("gas-bladder", "psc", nil, "fetal-serum")
}:add_unlock("organ-printing-mk02")

-- RECIPE {
--     type = 'recipe',
--     name = 'print-venon-fs',
--     categories = {'bio-printer'},
--     enabled = false,
--     energy_required = 60,
--     ingredients = {
--         {type = 'fluid', name = 'psc', amount = 250},
--         {type = 'fluid', name = 'fetal-serum', amount = 250},
--         {type = 'item', name = 'bio-scafold', amount = 6},
--     },
--     results = {
--         {type = 'item', name = 'venom-gland', amount = 2},
--     },
--     --main_product = "psc",
-- }:add_unlock("organ-printing-mk02")

RECIPE {
    type = "recipe",
    name = "print-shell-fs",
    categories = {"bio-printer"},
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "fluid", name = "psc",         amount = 50},
        {type = "fluid", name = "fetal-serum", amount = 50},
        {type = "item",  name = "bio-scafold", amount = 1},
    },
    results = {
        {type = "item", name = "shell", amount = 35},
    },
    icons = py.composite_icon("shell", "psc", nil, "fetal-serum")
}:add_unlock("organ-printing-mk02")

-- RECIPE {
--     type = 'recipe',
--     name = 'print-adrenal-fs',
--     categories = {'bio-printer'},
--     enabled = false,
--     energy_required = 60,
--     ingredients = {
--         {type = 'fluid', name = 'psc', amount = 50},
--         {type = 'fluid', name = 'fetal-serum', amount = 50},
--         {type = 'item', name = 'bio-scafold', amount = 1},
--     },
--     results = {
--         {type = 'item', name = 'adrenal-cortex', amount = 2},
--     },
--     --main_product = "psc",
-- }:add_unlock("organ-printing-mk03")


------------------------------------SPECIAL ORGAN PRINTING with IMMUNOSUPPRESSANT--------------------------

RECIPE {
    type = "recipe",
    name = "print-chitin-immunosupressants",
    categories = {"bio-printer"},
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    enabled = false,
    energy_required = 45,
    ingredients = {
        {type = "fluid", name = "psc",               amount = 75},
        {type = "fluid", name = "fetal-serum",       amount = 75},
        {type = "item",  name = "bio-scafold",       amount = 1},
        {type = "item",  name = "immunosupressants", amount = 1},
    },
    results = {
        {type = "item", name = "chitin", amount = 40},
    },
    icons = py.composite_icon("chitin", "psc", nil, "immunosupressants")
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "print-carapace-immunosupressants",
    categories = {"bio-printer"},
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    enabled = false,
    energy_required = 45,
    ingredients = {
        {type = "fluid", name = "psc",               amount = 50},
        {type = "fluid", name = "fetal-serum",       amount = 50},
        {type = "item",  name = "bio-scafold",       amount = 1},
        {type = "item",  name = "immunosupressants", amount = 1},
    },
    results = {
        {type = "item", name = "carapace", amount = 7},
    },
    icons = py.composite_icon("carapace", "psc", nil, "immunosupressants")
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "print-pelt-immunosupressants",
    categories = {"bio-printer"},
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    enabled = false,
    energy_required = 45,
    ingredients = {
        {type = "fluid", name = "psc",               amount = 50},
        {type = "fluid", name = "fetal-serum",       amount = 50},
        {type = "item",  name = "bio-scafold",       amount = 1},
        {type = "item",  name = "immunosupressants", amount = 1},
    },
    results = {
        {type = "item", name = "pelt", amount = 12},
    },
    icons = py.composite_icon("pelt", "psc", nil, "immunosupressants")
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "print-dingrit-spike-immunosupressants",
    categories = {"bio-printer"},
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    enabled = false,
    energy_required = 45,
    ingredients = {
        {type = "fluid", name = "psc",               amount = 50},
        {type = "fluid", name = "fetal-serum",       amount = 50},
        {type = "item",  name = "bio-scafold",       amount = 1},
        {type = "item",  name = "immunosupressants", amount = 1},
    },
    results = {
        {type = "item", name = "dingrit-spike", amount = 8},
    },
    icons = py.composite_icon("dingrit-spike", "psc", nil, "immunosupressants")
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "print-pineal-immunosupressants",
    categories = {"bio-printer"},
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    enabled = false,
    energy_required = 45,
    ingredients = {
        {type = "fluid", name = "psc",               amount = 50},
        {type = "fluid", name = "fetal-serum",       amount = 50},
        {type = "item",  name = "bio-scafold",       amount = 1},
        {type = "item",  name = "immunosupressants", amount = 1},
    },
    results = {
        {type = "item", name = "pineal-gland", amount = 12},
    },
    icons = py.composite_icon("pineal-gland", "psc", nil, "immunosupressants")
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "print-tendon-immunosupressants",
    categories = {"bio-printer"},
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    enabled = false,
    energy_required = 45,
    ingredients = {
        {type = "fluid", name = "psc",               amount = 50},
        {type = "fluid", name = "fetal-serum",       amount = 50},
        {type = "item",  name = "bio-scafold",       amount = 1},
        {type = "item",  name = "immunosupressants", amount = 1},
    },
    results = {
        {type = "item", name = "tendon", amount = 5},
    },
    icons = py.composite_icon("tendon", "psc", nil, "immunosupressants")
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "print-gas-bladder-immunosupressants",
    categories = {"bio-printer"},
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    enabled = false,
    energy_required = 45,
    ingredients = {
        {type = "fluid", name = "psc",               amount = 50},
        {type = "fluid", name = "fetal-serum",       amount = 50},
        {type = "item",  name = "bio-scafold",       amount = 1},
        {type = "item",  name = "immunosupressants", amount = 1},
    },
    results = {
        {type = "item", name = "gas-bladder", amount = 16},
    },
    icons = py.composite_icon("gas-bladder", "psc", nil, "immunosupressants")
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "print-venon-immunosupressants",
    categories = {"bio-printer"},
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    enabled = false,
    energy_required = 45,
    ingredients = {
        {type = "fluid", name = "psc",               amount = 250},
        {type = "fluid", name = "fetal-serum",       amount = 250},
        {type = "item",  name = "bio-scafold",       amount = 1},
        {type = "item",  name = "immunosupressants", amount = 1},
    },
    results = {
        {type = "item", name = "venom-gland", amount = 4},
    },
    icons = py.composite_icon("venom-gland", "psc", nil, "immunosupressants")
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "print-shell-immunosupressants",
    categories = {"bio-printer"},
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    enabled = false,
    energy_required = 45,
    ingredients = {
        {type = "fluid", name = "psc",               amount = 50},
        {type = "fluid", name = "fetal-serum",       amount = 50},
        {type = "item",  name = "bio-scafold",       amount = 1},
        {type = "item",  name = "immunosupressants", amount = 1},
    },
    results = {
        {type = "item", name = "shell", amount = 55}, -- this is limestone it has to be HUGE
    },
    icons = py.composite_icon("shell", "psc", nil, "immunosupressants")
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "print-adrenal-immunosupressants",
    categories = {"bio-printer"},
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    enabled = false,
    energy_required = 45,
    ingredients = {
        {type = "fluid", name = "psc",               amount = 50},
        {type = "fluid", name = "fetal-serum",       amount = 50},
        {type = "item",  name = "bio-scafold",       amount = 1},
        {type = "item",  name = "immunosupressants", amount = 1},
    },
    results = {
        {type = "item", name = "adrenal-cortex", amount = 8},
    },
    icons = py.composite_icon("adrenal-cortex", "psc", nil, "immunosupressants")
}:add_unlock("organ-printing-mk03")







--below this i didnt change stuff

------------------------------------SUPER SPECIAL ORGAN PRINTING with IMMUNOSUPPRESSANT--------------------------

RECIPE {
    type = "recipe",
    name = "bioartificial-guts",
    categories = {"bio-printer"},
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "fluid", name = "psc",               amount = 200},
        {type = "fluid", name = "fetal-serum",       amount = 100},
        {type = "item",  name = "bio-scafold",       amount = 5},
        {type = "item",  name = "immunosupressants", amount = 1},
        {type = "item",  name = "gh",                amount = 1},
    },
    results = {
        {type = "item", name = "bioartificial-guts", amount = 1},
    },
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "biomimetic-skin",
    categories = {"bio-printer"},
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "fluid", name = "psc",               amount = 200},
        {type = "fluid", name = "artificial-blood",  amount = 100},
        {type = "item",  name = "bio-scafold",       amount = 2},
        {type = "item",  name = "immunosupressants", amount = 1},
        {type = "item",  name = "propeptides",       amount = 1},
    },
    results = {
        {type = "item", name = "biomimetic-skin", amount = 1},
    },
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "in-vitro-meat",
    categories = {"bio-printer"},
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "fluid", name = "psc",               amount = 200},
        {type = "fluid", name = "artificial-blood",  amount = 100},
        {type = "item",  name = "bio-scafold",       amount = 2},
        {type = "item",  name = "immunosupressants", amount = 1},
        {type = "item",  name = "hyaline",           amount = 1},
    },
    results = {
        {type = "item", name = "in-vitro-meat", amount = 1},
    },
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "laboratory-grown-brain",
    categories = {"bio-printer"},
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "fluid", name = "psc",               amount = 200},
        {type = "fluid", name = "fetal-serum",       amount = 100},
        {type = "item",  name = "bio-scafold",       amount = 2},
        {type = "item",  name = "immunosupressants", amount = 1},
        {type = "item",  name = "dynemicin",         amount = 1},
    },
    results = {
        {type = "item", name = "laboratory-grown-brain", amount = 1},
    },
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "scafold-free-bones",
    categories = {"bio-printer"},
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "fluid", name = "psc",               amount = 200},
        {type = "fluid", name = "artificial-blood",  amount = 100},
        {type = "item",  name = "bio-scafold",       amount = 2},
        {type = "item",  name = "immunosupressants", amount = 1},
        {type = "item",  name = "enzyme-pks",        amount = 1},
        {type = "item",  name = "hyaline",           amount = 1},
    },
    results = {
        {type = "item", name = "scafold-free-bones", amount = 1},
    },
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "tissue-engineered-fat",
    categories = {"bio-printer"},
    allowed_module_categories = {"bioprinting", "speed", "efficiency", "quality"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "fluid", name = "psc",               amount = 200},
        {type = "fluid", name = "fetal-serum",       amount = 100},
        {type = "item",  name = "bio-scafold",       amount = 2},
        {type = "item",  name = "immunosupressants", amount = 1},
        {type = "item",  name = "adam42-gen",        amount = 1},
    },
    results = {
        {type = "item", name = "tissue-engineered-fat", amount = 1},
    },
}:add_unlock("organ-printing-mk03")


------------------------------------CREATURE CREATION--------------------------

RECIPE {
    type = "recipe",
    name = "art-auog",
    categories = {"creature-chamber"},
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "fluid", name = "artificial-blood",       amount = 100},
        {type = "fluid", name = "fetal-serum",            amount = 50},
        {type = "item",  name = "tissue-engineered-fat",  amount = 1},
        {type = "item",  name = "scafold-free-bones",     amount = 1},
        {type = "item",  name = "laboratory-grown-brain", amount = 1},
        {type = "item",  name = "in-vitro-meat",          amount = 1},
        {type = "item",  name = "biomimetic-skin",        amount = 1},
        {type = "item",  name = "bioartificial-guts",     amount = 1},
    },
    results = {
        {type = "item", name = "auog", amount = 60},
    },
}:add_unlock("mass-production")

RECIPE {
    type = "recipe",
    name = "art-ulric",
    categories = {"creature-chamber"},
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "fluid", name = "artificial-blood",       amount = 100},
        {type = "fluid", name = "fetal-serum",            amount = 50},
        {type = "item",  name = "tissue-engineered-fat",  amount = 1},
        {type = "item",  name = "scafold-free-bones",     amount = 1},
        {type = "item",  name = "laboratory-grown-brain", amount = 1},
        {type = "item",  name = "in-vitro-meat",          amount = 1},
        {type = "item",  name = "biomimetic-skin",        amount = 1},
        {type = "item",  name = "bioartificial-guts",     amount = 1},
    },
    results = {
        {type = "item", name = "ulric", amount = 50},
    },
}:add_unlock("mass-production")

RECIPE {
    type = "recipe",
    name = "art-mukmoux",
    categories = {"creature-chamber"},
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "fluid", name = "artificial-blood",       amount = 100},
        {type = "fluid", name = "fetal-serum",            amount = 50},
        {type = "item",  name = "tissue-engineered-fat",  amount = 1},
        {type = "item",  name = "scafold-free-bones",     amount = 1},
        {type = "item",  name = "laboratory-grown-brain", amount = 1},
        {type = "item",  name = "in-vitro-meat",          amount = 1},
        {type = "item",  name = "biomimetic-skin",        amount = 1},
        {type = "item",  name = "bioartificial-guts",     amount = 1},
    },
    results = {
        {type = "item", name = "mukmoux", amount = 30},
    },
}:add_unlock("mass-production")

RECIPE {
    type = "recipe",
    name = "art-arqad",
    categories = {"creature-chamber"},
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "fluid", name = "artificial-blood",       amount = 100},
        {type = "fluid", name = "fetal-serum",            amount = 50},
        {type = "item",  name = "tissue-engineered-fat",  amount = 1},
        {type = "item",  name = "scafold-free-bones",     amount = 1},
        {type = "item",  name = "laboratory-grown-brain", amount = 1},
        {type = "item",  name = "in-vitro-meat",          amount = 1},
        {type = "item",  name = "biomimetic-skin",        amount = 1},
        {type = "item",  name = "bioartificial-guts",     amount = 1},
    },
    results = {
        {type = "item", name = "arqad", amount = 20},
    },
}:add_unlock("mass-production")

RECIPE {
    type = "recipe",
    name = "art-cottongut",
    categories = {"creature-chamber"},
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "fluid", name = "artificial-blood",       amount = 100},
        {type = "fluid", name = "fetal-serum",            amount = 50},
        {type = "item",  name = "tissue-engineered-fat",  amount = 1},
        {type = "item",  name = "scafold-free-bones",     amount = 1},
        {type = "item",  name = "laboratory-grown-brain", amount = 1},
        {type = "item",  name = "in-vitro-meat",          amount = 1},
        {type = "item",  name = "biomimetic-skin",        amount = 1},
        {type = "item",  name = "bioartificial-guts",     amount = 1},
    },
    results = {
        {type = "item", name = "cottongut", amount = 80},
    },
}:add_unlock("mass-production")

RECIPE {
    type = "recipe",
    name = "art-vrauks",
    categories = {"creature-chamber"},
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "fluid", name = "artificial-blood",       amount = 100},
        {type = "fluid", name = "fetal-serum",            amount = 50},
        {type = "item",  name = "tissue-engineered-fat",  amount = 1},
        {type = "item",  name = "scafold-free-bones",     amount = 1},
        {type = "item",  name = "laboratory-grown-brain", amount = 1},
        {type = "item",  name = "in-vitro-meat",          amount = 1},
        {type = "item",  name = "biomimetic-skin",        amount = 1},
        {type = "item",  name = "bioartificial-guts",     amount = 1},
    },
    results = {
        {type = "item", name = "vrauks", amount = 100},
    },
}:add_unlock("mass-production")

RECIPE {
    type = "recipe",
    name = "art-arthurian",
    categories = {"creature-chamber"},
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "fluid", name = "artificial-blood",       amount = 100},
        {type = "fluid", name = "fetal-serum",            amount = 50},
        {type = "item",  name = "tissue-engineered-fat",  amount = 1},
        {type = "item",  name = "scafold-free-bones",     amount = 1},
        {type = "item",  name = "laboratory-grown-brain", amount = 1},
        {type = "item",  name = "in-vitro-meat",          amount = 1},
        {type = "item",  name = "biomimetic-skin",        amount = 1},
        {type = "item",  name = "bioartificial-guts",     amount = 1},
    },
    results = {
        {type = "item", name = "arthurian", amount = 15},
    },
}:add_unlock("mass-production")

RECIPE {
    type = "recipe",
    name = "art-dhilmos",
    categories = {"creature-chamber"},
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "fluid", name = "artificial-blood",       amount = 100},
        {type = "fluid", name = "fetal-serum",            amount = 50},
        {type = "item",  name = "tissue-engineered-fat",  amount = 1},
        {type = "item",  name = "scafold-free-bones",     amount = 1},
        {type = "item",  name = "laboratory-grown-brain", amount = 1},
        {type = "item",  name = "in-vitro-meat",          amount = 1},
        {type = "item",  name = "biomimetic-skin",        amount = 1},
        {type = "item",  name = "bioartificial-guts",     amount = 1},
    },
    results = {
        {type = "item", name = "dhilmos", amount = 20},
    },
}:add_unlock("mass-production")

RECIPE {
    type = "recipe",
    name = "art-scrondrix",
    categories = {"creature-chamber"},
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "fluid", name = "artificial-blood",       amount = 100},
        {type = "fluid", name = "fetal-serum",            amount = 50},
        {type = "item",  name = "tissue-engineered-fat",  amount = 1},
        {type = "item",  name = "scafold-free-bones",     amount = 1},
        {type = "item",  name = "laboratory-grown-brain", amount = 1},
        {type = "item",  name = "in-vitro-meat",          amount = 1},
        {type = "item",  name = "biomimetic-skin",        amount = 1},
        {type = "item",  name = "bioartificial-guts",     amount = 1},
    },
    results = {
        {type = "item", name = "scrondrix", amount = 10},
    },
}:add_unlock("mass-production")

RECIPE {
    type = "recipe",
    name = "art-phadai",
    categories = {"creature-chamber"},
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "fluid", name = "artificial-blood",       amount = 100},
        {type = "fluid", name = "fetal-serum",            amount = 50},
        {type = "item",  name = "tissue-engineered-fat",  amount = 1},
        {type = "item",  name = "scafold-free-bones",     amount = 1},
        {type = "item",  name = "laboratory-grown-brain", amount = 1},
        {type = "item",  name = "in-vitro-meat",          amount = 1},
        {type = "item",  name = "biomimetic-skin",        amount = 1},
        {type = "item",  name = "bioartificial-guts",     amount = 1},
    },
    results = {
        {type = "item", name = "phadai", amount = 5},
    },
}:add_unlock("mass-production")

RECIPE {
    type = "recipe",
    name = "art-dingrits",
    categories = {"creature-chamber"},
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "fluid", name = "artificial-blood",       amount = 100},
        {type = "fluid", name = "fetal-serum",            amount = 50},
        {type = "item",  name = "tissue-engineered-fat",  amount = 1},
        {type = "item",  name = "scafold-free-bones",     amount = 1},
        {type = "item",  name = "laboratory-grown-brain", amount = 1},
        {type = "item",  name = "in-vitro-meat",          amount = 1},
        {type = "item",  name = "biomimetic-skin",        amount = 1},
        {type = "item",  name = "bioartificial-guts",     amount = 1},
    },
    results = {
        {type = "item", name = "dingrits", amount = 15},
    },
}:add_unlock("mass-production")

RECIPE {
    type = "recipe",
    name = "art-xenos",
    categories = {"creature-chamber"},
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "fluid", name = "artificial-blood",       amount = 100},
        {type = "fluid", name = "fetal-serum",            amount = 50},
        {type = "item",  name = "tissue-engineered-fat",  amount = 1},
        {type = "item",  name = "scafold-free-bones",     amount = 1},
        {type = "item",  name = "laboratory-grown-brain", amount = 1},
        {type = "item",  name = "in-vitro-meat",          amount = 1},
        {type = "item",  name = "biomimetic-skin",        amount = 1},
        {type = "item",  name = "bioartificial-guts",     amount = 1},
    },
    results = {
        {type = "item", name = "xeno", amount = 10},
    },
}:add_unlock("mass-production")

RECIPE {
    type = "recipe",
    name = "art-vonix",
    categories = {"creature-chamber"},
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "fluid", name = "artificial-blood",       amount = 100},
        {type = "fluid", name = "fetal-serum",            amount = 50},
        {type = "item",  name = "tissue-engineered-fat",  amount = 1},
        {type = "item",  name = "scafold-free-bones",     amount = 1},
        {type = "item",  name = "laboratory-grown-brain", amount = 1},
        {type = "item",  name = "in-vitro-meat",          amount = 1},
        {type = "item",  name = "biomimetic-skin",        amount = 1},
        {type = "item",  name = "bioartificial-guts",     amount = 1},
    },
    results = {
        {type = "item", name = "vonix", amount = 5},
    },
}:add_unlock("mass-production")

RECIPE {
    type = "recipe",
    name = "art-phagnot",
    categories = {"creature-chamber"},
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "fluid", name = "artificial-blood",       amount = 100},
        {type = "fluid", name = "fetal-serum",            amount = 50},
        {type = "item",  name = "tissue-engineered-fat",  amount = 1},
        {type = "item",  name = "scafold-free-bones",     amount = 1},
        {type = "item",  name = "laboratory-grown-brain", amount = 1},
        {type = "item",  name = "in-vitro-meat",          amount = 1},
        {type = "item",  name = "biomimetic-skin",        amount = 1},
        {type = "item",  name = "bioartificial-guts",     amount = 1},
    },
    results = {
        {type = "item", name = "phagnot", amount = 20},
    },
}:add_unlock("mass-production")

RECIPE {
    type = "recipe",
    name = "art-zipir",
    categories = {"creature-chamber"},
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "fluid", name = "artificial-blood",       amount = 100},
        {type = "fluid", name = "fetal-serum",            amount = 50},
        {type = "item",  name = "tissue-engineered-fat",  amount = 1},
        {type = "item",  name = "scafold-free-bones",     amount = 1},
        {type = "item",  name = "laboratory-grown-brain", amount = 1},
        {type = "item",  name = "in-vitro-meat",          amount = 1},
        {type = "item",  name = "biomimetic-skin",        amount = 1},
        {type = "item",  name = "bioartificial-guts",     amount = 1},
    },
    results = {
        {type = "item", name = "zipir1", amount = 30},
    },
}:add_unlock("mass-production")

RECIPE {
    type = "recipe",
    name = "art-trits",
    categories = {"creature-chamber"},
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "fluid", name = "artificial-blood",       amount = 100},
        {type = "fluid", name = "fetal-serum",            amount = 50},
        {type = "item",  name = "tissue-engineered-fat",  amount = 1},
        {type = "item",  name = "scafold-free-bones",     amount = 1},
        {type = "item",  name = "laboratory-grown-brain", amount = 1},
        {type = "item",  name = "in-vitro-meat",          amount = 1},
        {type = "item",  name = "biomimetic-skin",        amount = 1},
        {type = "item",  name = "bioartificial-guts",     amount = 1},
    },
    results = {
        {type = "item", name = "trits", amount = 8},
    },
}:add_unlock("mass-production")

RECIPE {
    type = "recipe",
    name = "art-xyhiphoe",
    categories = {"creature-chamber"},
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "fluid", name = "artificial-blood",       amount = 100},
        {type = "fluid", name = "fetal-serum",            amount = 50},
        {type = "item",  name = "tissue-engineered-fat",  amount = 1},
        {type = "item",  name = "scafold-free-bones",     amount = 1},
        {type = "item",  name = "laboratory-grown-brain", amount = 1},
        {type = "item",  name = "in-vitro-meat",          amount = 1},
        {type = "item",  name = "biomimetic-skin",        amount = 1},
        {type = "item",  name = "bioartificial-guts",     amount = 1},
    },
    results = {
        {type = "item", name = "xyhiphoe", amount = 25},
    },
}:add_unlock("mass-production")

RECIPE {
    type = "recipe",
    name = "art-simik",
    categories = {"creature-chamber"},
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "fluid", name = "artificial-blood",       amount = 100},
        {type = "fluid", name = "fetal-serum",            amount = 50},
        {type = "item",  name = "tissue-engineered-fat",  amount = 1},
        {type = "item",  name = "scafold-free-bones",     amount = 1},
        {type = "item",  name = "laboratory-grown-brain", amount = 1},
        {type = "item",  name = "in-vitro-meat",          amount = 1},
        {type = "item",  name = "biomimetic-skin",        amount = 1},
        {type = "item",  name = "bioartificial-guts",     amount = 1},
    },
    results = {
        {type = "item", name = "simik", amount = 10},
    },
}:add_unlock("mass-production")
