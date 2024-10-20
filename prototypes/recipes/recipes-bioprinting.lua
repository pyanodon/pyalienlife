------------------------------------------------bio-scafold-------------------------------

RECIPE {
    type = "recipe",
    name = "bio-scafold",
    category = "nmf",
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
}:add_unlock("organ-printing")

RECIPE {
    type = "recipe",
    name = "bio-scafold-2",
    category = "nmf",
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
}:add_unlock("organ-printing-mk02"):replace_ingredient("guts", "collagen")

RECIPE {
    type = "recipe",
    name = "bio-scafold-3",
    category = "nmf",
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
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "bio-scafold-4",
    category = "nmf",
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
}:add_unlock("organ-printing-mk03")

------------------------------------PARTS CONVERSION-----------------------------------------------

RECIPE {
    type = "recipe",
    name = "xenogenic-from-bones",
    category = "incubator",
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
}:add_unlock("organ-printing")

RECIPE {
    type = "recipe",
    name = "xenogenic-from-bonemeal",
    category = "incubator",
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
}:add_unlock("organ-printing")

RECIPE {
    type = "recipe",
    name = "xenogenic-from-skin",
    category = "incubator",
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
}:add_unlock("organ-printing")

RECIPE {
    type = "recipe",
    name = "xenogenic-from-chitin",
    category = "incubator",
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
}:add_unlock("organ-printing")

RECIPE {
    type = "recipe",
    name = "xenogenic-from-guts",
    category = "incubator",
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
}:add_unlock("organ-printing")

RECIPE {
    type = "recipe",
    name = "xenogenic-from-fat",
    category = "incubator",
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
}:add_unlock("organ-printing")

RECIPE {
    type = "recipe",
    name = "xenogenic-from-meat",
    category = "incubator",
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
}:add_unlock("organ-printing")

RECIPE {
    type = "recipe",
    name = "xenogenic-from-brains",
    category = "incubator",
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
}:add_unlock("organ-printing")







------------------------------------PARTS CONVERSION with PLASMIDS-----------------------------------------------

RECIPE {
    type = "recipe",
    name = "plasmid-xenogenic-from-bones",
    category = "incubator",
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
}:add_unlock("organ-printing-mk02")

RECIPE {
    type = "recipe",
    name = "plasmid-xenogenic-from-bonemeal",
    category = "incubator",
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
}:add_unlock("organ-printing-mk02")

RECIPE {
    type = "recipe",
    name = "plasmid-xenogenic-from-skin",
    category = "incubator",
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
}:add_unlock("organ-printing-mk02")

RECIPE {
    type = "recipe",
    name = "plasmid-xenogenic-from-guts",
    category = "incubator",
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
}:add_unlock("organ-printing-mk02")

RECIPE {
    type = "recipe",
    name = "plasmid-xenogenic-from-fat",
    category = "incubator",
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
}:add_unlock("organ-printing-mk02")

RECIPE {
    type = "recipe",
    name = "plasmid-xenogenic-from-meat",
    category = "incubator",
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
}:add_unlock("organ-printing-mk02")

RECIPE {
    type = "recipe",
    name = "plasmid-xenogenic-from-brains",
    category = "incubator",
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
}:add_unlock("organ-printing-mk02")


------------------------------------PARTS CONVERSION WITH GH-----------------------------------------------

RECIPE {
    type = "recipe",
    name = "gh-xenogenic-from-bones",
    category = "incubator",
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
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "gh-xenogenic-from-bonemeal",
    category = "incubator",
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
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "gh-xenogenic-from-skin",
    category = "incubator",
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
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "gh-xenogenic-from-guts",
    category = "incubator",
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
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "gh-xenogenic-from-fat",
    category = "incubator",
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
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "gh-xenogenic-from-meat",
    category = "incubator",
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
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "gh-xenogenic-from-brains",
    category = "incubator",
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
}:add_unlock("organ-printing-mk03")




-- done up to here


--------------------------------------------------------PSC------------------------------------

RECIPE {
    type = "recipe",
    name = "psc",
    category = "bio-reactor",
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
    category = "bio-reactor",
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
}:add_unlock("organ-printing-mk02")

RECIPE {
    type = "recipe",
    name = "psc-mutant",
    category = "bio-reactor",
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
}:add_unlock("organ-printing-mk02")

RECIPE {
    type = "recipe",
    name = "psc-gh",
    category = "bio-reactor",
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
}:add_unlock("organ-printing-mk03")


--done up to here , nu uita sa faci lista in jos sa nu fie bucla puternica


------------------------------------ORGAN PRINTING--------------------------

RECIPE {
    type = "recipe",
    name = "print-bones",
    category = "bio-printer",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "fluid", name = "psc",         amount = 40},
        {type = "item",  name = "bio-scafold", amount = 1},
    },
    results = {
        {type = "item", name = "bones", amount = 3},
    },
    --main_product = "psc",
}:add_unlock("organ-printing")

RECIPE {
    type = "recipe",
    name = "print-bonemeal",
    category = "bio-printer",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "fluid", name = "psc",         amount = 40},
        {type = "item",  name = "bio-scafold", amount = 1},
    },
    results = {
        {type = "item", name = "bonemeal", amount = 4},
    },
    --main_product = "psc",
}:add_unlock("organ-printing")

RECIPE {
    type = "recipe",
    name = "print-meat",
    category = "bio-printer",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "fluid", name = "psc",         amount = 40},
        {type = "item",  name = "bio-scafold", amount = 1},
    },
    results = {
        {type = "item", name = "meat", amount = 4},
    },
    --main_product = "psc",
}:add_unlock("organ-printing")

RECIPE {
    type = "recipe",
    name = "print-fat",
    category = "bio-printer",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "fluid", name = "psc",         amount = 40},
        {type = "item",  name = "bio-scafold", amount = 1},
    },
    results = {
        {type = "item", name = "mukmoux-fat", amount = 5},
    },
    --main_product = "psc",
}:add_unlock("organ-printing")

RECIPE {
    type = "recipe",
    name = "print-brain",
    category = "bio-printer",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "fluid", name = "psc",         amount = 50},
        {type = "item",  name = "bio-scafold", amount = 1},
    },
    results = {
        {type = "item", name = "brain", amount = 2},
    },
    --main_product = "psc",
}:add_unlock("organ-printing")

RECIPE {
    type = "recipe",
    name = "print-skin",
    category = "bio-printer",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "fluid", name = "psc",         amount = 40},
        {type = "item",  name = "bio-scafold", amount = 1},
    },
    results = {
        {type = "item", name = "skin", amount = 5},
    },
    --main_product = "psc",
}:add_unlock("organ-printing")

RECIPE {
    type = "recipe",
    name = "print-guts",
    category = "bio-printer",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "fluid", name = "psc",         amount = 40},
        {type = "item",  name = "bio-scafold", amount = 1},
    },
    results = {
        {type = "item", name = "guts", amount = 6},
    },
    --main_product = "psc",
}:add_unlock("organ-printing")








------------------------------------ORGAN PRINTING with FETAL SERUM--------------------------

RECIPE {
    type = "recipe",
    name = "print-bones-fs",
    category = "bio-printer",
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
    --main_product = "psc",
}:add_unlock("organ-printing-mk02")

RECIPE {
    type = "recipe",
    name = "print-meat-fs",
    category = "bio-printer",
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
    --main_product = "psc",
}:add_unlock("organ-printing-mk02")

RECIPE {
    type = "recipe",
    name = "print-fat-fs",
    category = "bio-printer",
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
    --main_product = "psc",
}:add_unlock("organ-printing-mk02")

RECIPE {
    type = "recipe",
    name = "print-brain-fs",
    category = "bio-printer",
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
    --main_product = "psc",
}:add_unlock("organ-printing-mk02")

RECIPE {
    type = "recipe",
    name = "print-skin-fs",
    category = "bio-printer",
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
    --main_product = "psc",
}:add_unlock("organ-printing-mk02")

RECIPE {
    type = "recipe",
    name = "print-guts-fs",
    category = "bio-printer",
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
    --main_product = "psc",
}:add_unlock("organ-printing-mk02")


--done up to here

------------------------------------ORGAN PRINTING with IMMUNOSUPPRESSANT--------------------------

RECIPE {
    type = "recipe",
    name = "print-bones-immunosupressants",
    category = "bio-printer",
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
    --main_product = "psc",
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "print-meat-immunosupressants",
    category = "bio-printer",
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
    --main_product = "psc",
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "print-fat-immunosupressants",
    category = "bio-printer",
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
    --main_product = "psc",
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "print-brain-immunosupressants",
    category = "bio-printer",
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
    --main_product = "psc",
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "print-skin-immunosupressants",
    category = "bio-printer",
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
    --main_product = "psc",
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "print-guts-immunosupressants",
    category = "bio-printer",
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
    --main_product = "psc",
}:add_unlock("organ-printing-mk03")




------------------------------------SPECIAL ORGAN PRINTING with FETAL SERUM--------------------------

RECIPE {
    type = "recipe",
    name = "print-chitin-fs",
    category = "bio-printer",
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
    --main_product = "psc",
}:add_unlock("organ-printing-mk02")

RECIPE {
    type = "recipe",
    name = "print-carapace-fs",
    category = "bio-printer",
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
    --main_product = "psc",
}:add_unlock("organ-printing-mk02")

RECIPE {
    type = "recipe",
    name = "print-pelt-fs",
    category = "bio-printer",
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
    --main_product = "psc",
}:add_unlock("organ-printing-mk02")

RECIPE {
    type = "recipe",
    name = "print-dingrit-spike-fs",
    category = "bio-printer",
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
    --main_product = "psc",
}:add_unlock("organ-printing-mk02")

RECIPE {
    type = "recipe",
    name = "print-pineal-fs",
    category = "bio-printer",
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
    --main_product = "psc",
}:add_unlock("organ-printing-mk02")

RECIPE {
    type = "recipe",
    name = "print-tendon-fs",
    category = "bio-printer",
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
    --main_product = "psc",
}:add_unlock("organ-printing-mk02")

RECIPE {
    type = "recipe",
    name = "print-gas-bladder-fs",
    category = "bio-printer",
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
    --main_product = "psc",
}:add_unlock("organ-printing-mk02")

-- RECIPE {
--     type = 'recipe',
--     name = 'print-venon-fs',
--     category = 'bio-printer',
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
    category = "bio-printer",
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
    --main_product = "psc",
}:add_unlock("organ-printing-mk02")

-- RECIPE {
--     type = 'recipe',
--     name = 'print-adrenal-fs',
--     category = 'bio-printer',
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
    category = "bio-printer",
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
    --main_product = "psc",
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "print-carapace-immunosupressants",
    category = "bio-printer",
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
    --main_product = "psc",
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "print-pelt-immunosupressants",
    category = "bio-printer",
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
    --main_product = "psc",
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "print-dingrit-spike-immunosupressants",
    category = "bio-printer",
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
    --main_product = "psc",
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "print-pineal-immunosupressants",
    category = "bio-printer",
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
    --main_product = "psc",
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "print-tendon-immunosupressants",
    category = "bio-printer",
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
    --main_product = "psc",
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "print-gas-bladder-immunosupressants",
    category = "bio-printer",
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
    --main_product = "psc",
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "print-venon-immunosupressants",
    category = "bio-printer",
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
    --main_product = "psc",
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "print-shell-immunosupressants",
    category = "bio-printer",
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
    --main_product = "psc",
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "print-adrenal-immunosupressants",
    category = "bio-printer",
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
    --main_product = "psc",
}:add_unlock("organ-printing-mk03")







--below this i didnt change stuff

------------------------------------SUPER SPECIAL ORGAN PRINTING with IMMUNOSUPPRESSANT--------------------------

RECIPE {
    type = "recipe",
    name = "bioartificial-guts",
    category = "bio-printer",
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
    --main_product = "psc",
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "biomimetic-skin",
    category = "bio-printer",
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
    --main_product = "psc",
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "in-vitro-meat",
    category = "bio-printer",
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
    --main_product = "psc",
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "laboratory-grown-brain",
    category = "bio-printer",
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
    --main_product = "psc",
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "scafold-free-bones",
    category = "bio-printer",
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
    --main_product = "psc",
}:add_unlock("organ-printing-mk03")

RECIPE {
    type = "recipe",
    name = "tissue-engineered-fat",
    category = "bio-printer",
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
    --main_product = "psc",
}:add_unlock("organ-printing-mk03")


------------------------------------CREATURE CREATION--------------------------

RECIPE {
    type = "recipe",
    name = "art-auog",
    category = "creature-chamber",
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
        {type = "item", name = "auog", amount = 10},
    },
    --main_product = "psc",
}:add_unlock("mass-production")

RECIPE {
    type = "recipe",
    name = "art-ulric",
    category = "creature-chamber",
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
        {type = "item", name = "ulric", amount = 10},
    },
    --main_product = "psc",
}:add_unlock("mass-production")

RECIPE {
    type = "recipe",
    name = "art-mukmoux",
    category = "creature-chamber",
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
        {type = "item", name = "mukmoux", amount = 10},
    },
    --main_product = "psc",
}:add_unlock("mass-production")

RECIPE {
    type = "recipe",
    name = "art-arqad",
    category = "creature-chamber",
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
    --main_product = "psc",
}:add_unlock("mass-production")

RECIPE {
    type = "recipe",
    name = "art-cottongut",
    category = "creature-chamber",
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
        {type = "item", name = "cottongut", amount = 20},
    },
    --main_product = "psc",
}:add_unlock("mass-production")

RECIPE {
    type = "recipe",
    name = "art-vrauks",
    category = "creature-chamber",
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
        {type = "item", name = "vrauks", amount = 10},
    },
    --main_product = "psc",
}:add_unlock("mass-production")

RECIPE {
    type = "recipe",
    name = "art-arthurian",
    category = "creature-chamber",
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
        {type = "item", name = "arthurian", amount = 10},
    },
    --main_product = "psc",
}:add_unlock("mass-production")

RECIPE {
    type = "recipe",
    name = "art-dhilmos",
    category = "creature-chamber",
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
        {type = "item", name = "dhilmos", amount = 12},
    },
    --main_product = "psc",
}:add_unlock("mass-production")

RECIPE {
    type = "recipe",
    name = "art-scrondrix",
    category = "creature-chamber",
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
        {type = "item", name = "scrondrix", amount = 5},
    },
    --main_product = "psc",
}:add_unlock("mass-production")

RECIPE {
    type = "recipe",
    name = "art-phadai",
    category = "creature-chamber",
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
    --main_product = "psc",
}:add_unlock("mass-production")

RECIPE {
    type = "recipe",
    name = "art-dingrits",
    category = "creature-chamber",
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
        {type = "item", name = "dingrits", amount = 10},
    },
    --main_product = "psc",
}:add_unlock("mass-production")

RECIPE {
    type = "recipe",
    name = "art-xenos",
    category = "creature-chamber",
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
    --main_product = "psc",
}:add_unlock("mass-production")

RECIPE {
    type = "recipe",
    name = "art-vonix",
    category = "creature-chamber",
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
    --main_product = "psc",
}:add_unlock("mass-production")

RECIPE {
    type = "recipe",
    name = "art-phagnot",
    category = "creature-chamber",
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
        {type = "item", name = "phagnot", amount = 10},
    },
    --main_product = "psc",
}:add_unlock("mass-production")

RECIPE {
    type = "recipe",
    name = "art-zipir",
    category = "creature-chamber",
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
        {type = "item", name = "zipir1", amount = 10},
    },
    --main_product = "psc",
}:add_unlock("mass-production")

RECIPE {
    type = "recipe",
    name = "art-trits",
    category = "creature-chamber",
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
        {type = "item", name = "trits", amount = 5},
    },
    --main_product = "psc",
}:add_unlock("mass-production")

RECIPE {
    type = "recipe",
    name = "art-xyhiphoe",
    category = "creature-chamber",
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
        {type = "item", name = "xyhiphoe", amount = 10},
    },
    --main_product = "psc",
}:add_unlock("mass-production")

RECIPE {
    type = "recipe",
    name = "art-simik",
    category = "creature-chamber",
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
    --main_product = "psc",
}:add_unlock("mass-production")
