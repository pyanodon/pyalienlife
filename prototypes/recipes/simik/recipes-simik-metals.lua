----iron----

RECIPE {
    type = "recipe",
    name = "simik-iron",
    category = "simik",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "item",  name = "geothermal-water-barrel", amount = 4},
        {type = "item",  name = "iron-ore",                amount = 50},
        {type = "item",  name = "bio-sample",              amount = 1},
        {type = "fluid", name = "pressured-air",           amount = 30},
    },
    results = {
        {type = "item", name = "sponge-iron",    amount = 2},
        {type = "item", name = "unslimed-iron",  amount = 4},
        {type = "item", name = "hot-air-barrel", amount = 4},
    },
    main_product = "unslimed-iron",
    subgroup = "py-alienlife-simik",
    order = "c"
}

----copper----

RECIPE {
    type = "recipe",
    name = "simik-copper",
    category = "simik",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "item",  name = "geothermal-water-barrel", amount = 4},
        {type = "item",  name = "copper-ore",              amount = 50},
        {type = "item",  name = "bio-sample",              amount = 1},
        {type = "fluid", name = "pressured-air",           amount = 30},
    },
    results = {
        {type = "item", name = "copper-solution-barrel", amount = 2},
        {type = "item", name = "hot-air-barrel",         amount = 2},
        {type = "item", name = "high-grade-copper",      amount = 5},
    },
    main_product = "high-grade-copper",
    subgroup = "py-alienlife-simik",
    order = "c"
}

----quartz----

RECIPE {
    type = "recipe",
    name = "simik-quartz",
    category = "simik",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "item",  name = "geothermal-water-barrel", amount = 4},
        {type = "item",  name = "ore-quartz",              amount = 50},
        {type = "item",  name = "bio-sample",              amount = 1},
        {type = "fluid", name = "pressured-air",           amount = 30},
    },
    results = {
        {type = "item", name = "glass-core",            amount = 8},
        {type = "item", name = "quartz-pulp-02-barrel", amount = 2},
        {type = "item", name = "quartz-pulp-01-barrel", amount = 1},
        {type = "item", name = "hot-air-barrel",        amount = 1},
    },
    icon = "__pyraworesgraphics__/graphics/icons/quartz-pulp-02.png",
    icon_size = 32,
    main_product = "glass-core",
    subgroup = "py-alienlife-simik",
    order = "c"
}

----coal----

RECIPE {
    type = "recipe",
    name = "simik-coal",
    category = "simik",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "mother-liquor-barrel",    amount = 4},
        {type = "item",  name = "geothermal-water-barrel", amount = 6},
        {type = "item",  name = "raw-coal",                amount = 60},
        {type = "item",  name = "bio-sample",              amount = 1},
        {type = "fluid", name = "pressured-air",           amount = 30},
    },
    results = {
        {type = "item", name = "coal-pulp-03-barrel", amount = 8},
        {type = "item", name = "cf",                  amount = 12},
        {type = "item", name = "r1-barrel",           amount = 1},
        {type = "item", name = "r2-barrel",           amount = 1},
    },
    main_product = "coal-pulp-03-barrel",
    subgroup = "py-alienlife-simik",
    order = "c"
}

----tin----

RECIPE {
    type = "recipe",
    name = "simik-tin",
    category = "simik",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "mother-liquor-barrel", amount = 3},
        {type = "item",  name = "ore-tin",              amount = 60},
        {type = "item",  name = "bio-sample",           amount = 1},
        {type = "fluid", name = "pressured-air",        amount = 30},
    },
    results = {
        {type = "item", name = "tin-concentrate", amount = 4},
        {type = "item", name = "re-tin",          amount = 26},
        {type = "item", name = "r2-barrel",       amount = 2},
        {type = "item", name = "r3-barrel",       amount = 1},
    },
    main_product = "tin-concentrate",
    subgroup = "py-alienlife-simik",
    order = "c"
}

----aluminium----

RECIPE {
    type = "recipe",
    name = "simik-aluminium",
    category = "simik",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item",  name = "anolyte-barrel",       amount = 1},
        {type = "item",  name = "mother-liquor-barrel", amount = 3},
        {type = "item",  name = "ore-aluminium",        amount = 60},
        {type = "item",  name = "bio-sample",           amount = 1},
        {type = "fluid", name = "pressured-air",        amount = 30},
    },
    results = {
        {type = "item", name = "crystalized-sodium-aluminate", amount = 3},
        {type = "item", name = "duralumin",                    amount = 22},
        {type = "item", name = "r1-barrel",                    amount = 1},
        {type = "item", name = "r2-barrel",                    amount = 2},
        {type = "item", name = "r4-barrel",                    amount = 1},
    },
    main_product = "crystalized-sodium-aluminate",
    subgroup = "py-alienlife-simik",
    order = "c"
}

----boron----

RECIPE {
    type = "recipe",
    name = "simik-boron",
    category = "simik",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "item",  name = "gd-stripped-solution-barrel", amount = 3},
        {type = "item",  name = "raw-borax",                   amount = 70},
        {type = "item",  name = "bio-sample",                  amount = 1},
        {type = "fluid", name = "pressured-air",               amount = 30},
    },
    results = {
        {type = "item", name = "boron-trioxide",    amount = 45},
        {type = "item", name = "boric-acid-barrel", amount = 1},
        {type = "item", name = "diborane-barrel",   amount = 1},
        {type = "item", name = "gd-crystal",        amount = 5},
        {type = "item", name = "hot-air-barrel",    amount = 1},
    },
    main_product = "boron-trioxide",
    subgroup = "py-alienlife-simik",
    order = "c"
}

----chromium----

RECIPE {
    type = "recipe",
    name = "simik-chromium",
    category = "simik",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "item",  name = "gd-stripped-solution-barrel", amount = 2},
        {type = "item",  name = "geothermal-water-barrel",     amount = 3},
        {type = "item",  name = "ore-chromium",                amount = 70},
        {type = "item",  name = "bio-sample",                  amount = 1},
        {type = "fluid", name = "pressured-air",               amount = 30},
    },
    results = {
        {type = "item", name = "high-chromite",           amount = 9},
        {type = "item", name = "chromite-pulp-06-barrel", amount = 2},
        {type = "item", name = "chromite-mix-barrel",     amount = 1},
        {type = "item", name = "gd-crystal",              amount = 3},
        {type = "item", name = "hot-air-barrel",          amount = 2},
    },
    main_product = "high-chromite",
    subgroup = "py-alienlife-simik",
    order = "c"
}

----molybdenum----

RECIPE {
    type = "recipe",
    name = "simik-molybdenum",
    category = "simik",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "item",  name = "gd-stripped-solution-barrel", amount = 5},
        {type = "item",  name = "molybdenum-ore",              amount = 70},
        {type = "item",  name = "bio-sample",                  amount = 1},
        {type = "fluid", name = "pressured-air",               amount = 30},
    },
    results = {
        {type = "item", name = "molybdenite-dust",       amount = 5},
        {type = "item", name = "molybdenum-pulp-barrel", amount = 4},
        {type = "item", name = "hot-air-barrel",         amount = 1},
        {type = "item", name = "gd-crystal",             amount = 9},
    },
    main_product = "molybdenum-pulp-barrel",
    subgroup = "py-alienlife-simik",
    order = "c"
}

----zinc----

RECIPE {
    type = "recipe",
    name = "simik-zinc",
    category = "simik",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "item",  name = "crude-oil-barrel", amount = 6},
        {type = "item",  name = "bio-ore",          amount = 1},
        {type = "item",  name = "ore-zinc",         amount = 80},
        {type = "item",  name = "bio-sample",       amount = 1},
        {type = "fluid", name = "pressured-air",    amount = 30},
    },
    results = {
        {type = "item", name = "agzn-alloy",        amount = 6},
        {type = "item", name = "concentrated-zinc", amount = 2},
        {type = "item", name = "zinc-waste-barrel", amount = 4},
        {type = "item", name = "bio-oil-barrel",    amount = 1},
        {type = "item", name = "bio-ore",           amount = 1, probability = 0.65, ignored_by_productivity = 1},
        {type = "item", name = "hot-air-barrel",    amount = 1},
    },
    main_product = "concentrated-zinc",
    subgroup = "py-alienlife-simik",
    order = "c"
}

----nickel----

RECIPE {
    type = "recipe",
    name = "simik-nickel",
    category = "simik",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "item",  name = "crude-oil-barrel", amount = 7},
        {type = "item",  name = "bio-ore",          amount = 1},
        {type = "item",  name = "ore-nickel",       amount = 80},
        {type = "item",  name = "bio-sample",       amount = 1},
        {type = "fluid", name = "pressured-air",    amount = 30},
    },
    results = {
        {type = "item", name = "nickel-carbonyl-barrel", amount = 2},
        {type = "item", name = "nickel-pulp-03-barrel",  amount = 3},
        {type = "item", name = "bio-oil-barrel",         amount = 1},
        {type = "item", name = "hot-air-barrel",         amount = 1},
        {type = "item", name = "bio-ore",                amount = 1, probability = 0.65, ignored_by_productivity = 1},
    },
    main_product = "nickel-pulp-03-barrel",
    subgroup = "py-alienlife-simik",
    order = "c"
}

----lead----

RECIPE {
    type = "recipe",
    name = "simik-lead",
    category = "simik",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "item",  name = "crude-oil-barrel", amount = 4},
        {type = "item",  name = "bio-ore",          amount = 1},
        {type = "item",  name = "ore-lead",         amount = 80},
        {type = "item",  name = "bio-sample",       amount = 1},
        {type = "fluid", name = "pressured-air",    amount = 30},
    },
    results = {
        {type = "item", name = "sl-01-barrel",   amount = 2},
        {type = "item", name = "pbsb-alloy",     amount = 2},
        {type = "item", name = "lead-acetate",   amount = 3},
        {type = "item", name = "bio-oil-barrel", amount = 1},
        {type = "item", name = "bio-ore",        amount = 1, probability = 0.65, ignored_by_productivity = 1},
        {type = "item", name = "hot-air-barrel", amount = 1},
    },
    main_product = "pbsb-alloy",
    subgroup = "py-alienlife-simik",
    order = "c"
}

----titanium----

RECIPE {
    type = "recipe",
    name = "simik-titanium",
    category = "simik",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "item",  name = "vanabins-barrel", amount = 2},
        {type = "item",  name = "ore-titanium",    amount = 90},
        {type = "item",  name = "coal-dust",       amount = 1},
        {type = "item",  name = "bio-sample",      amount = 1},
        {type = "fluid", name = "pressured-air",   amount = 30},
    },
    results = {
        {type = "item", name = "ticl4",                         amount = 12},
        {type = "item", name = "high-grade-ti",                 amount = 3},
        {type = "item", name = "depolymerized-organics-barrel", amount = 1},
        {type = "item", name = "hot-air-barrel",                amount = 1},
    },
    main_product = "ticl4",
    subgroup = "py-alienlife-simik",
    order = "c"
}

----niobium----

RECIPE {
    type = "recipe",
    name = "simik-niobium",
    category = "simik",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "item",  name = "lithium-chloride", amount = 1},
        {type = "item",  name = "vanabins-barrel",  amount = 4},
        {type = "item",  name = "niobium-ore",      amount = 90},
        {type = "item",  name = "bio-sample",       amount = 1},
        {type = "fluid", name = "pressured-air",    amount = 30},
    },
    results = {
        {type = "item", name = "niobium-concentrate",           amount = 6},
        {type = "item", name = "lithium-niobate",               amount = 3},
        {type = "item", name = "depolymerized-organics-barrel", amount = 2},
        {type = "item", name = "hot-air-barrel",                amount = 2},
    },
    main_product = "lithium-niobate",
    subgroup = "py-alienlife-simik",
    order = "c"
}

----nexelit----

RECIPE {
    type = "recipe",
    name = "simik-nexelit",
    category = "simik",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "item",  name = "vanabins-barrel", amount = 5},
        {type = "item",  name = "b2o3-dust",       amount = 1},
        {type = "item",  name = "nexelit-ore",     amount = 90},
        {type = "item",  name = "bio-sample",      amount = 1},
        {type = "fluid", name = "pressured-air",   amount = 30},
    },
    results = {
        {type = "item", name = "nexelit-matrix",                amount = 12},
        {type = "item", name = "nexelit-pulp-02-barrel",        amount = 2},
        {type = "item", name = "depolymerized-organics-barrel", amount = 2},
        {type = "item", name = "hot-air-barrel",                amount = 1},
    },
    main_product = "nexelit-matrix",
    subgroup = "py-alienlife-simik",
    order = "c"
}

----silver----

RECIPE {
    type = "recipe",
    name = "simik-silver",
    category = "simik",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "item",  name = "zogna-bacteria-barrel", amount = 2},
        {type = "item",  name = "tendon",                amount = 2},
        {type = "item",  name = "ore-lead",              amount = 100},
        {type = "item",  name = "bio-sample",            amount = 1},
        {type = "fluid", name = "pressured-air",         amount = 30},
    },
    results = {
        {type = "item", name = "silver-foam",       amount = 3},
        {type = "item", name = "high-grade-silver", amount = 3},
        {type = "item", name = "bacteria-1-barrel", amount = 1},
        {type = "item", name = "hot-air-barrel",    amount = 1},
    },
    main_product = "silver-foam",
    subgroup = "py-alienlife-simik",
    order = "c"
}

----gold----

RECIPE {
    type = "recipe",
    name = "simik-gold",
    category = "simik",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "item",  name = "zogna-bacteria-barrel", amount = 4},
        {type = "item",  name = "tendon",                amount = 4},
        {type = "item",  name = "ore-chromium",          amount = 100},
        {type = "item",  name = "bio-sample",            amount = 1},
        {type = "fluid", name = "pressured-air",         amount = 30},
    },
    results = {
        {type = "item", name = "heavy-fermion",     amount = 1},
        {type = "item", name = "gold-concentrate",  amount = 4},
        {type = "item", name = "bacteria-1-barrel", amount = 1},
        {type = "item", name = "hot-air-barrel",    amount = 3},
    },
    main_product = "heavy-fermion",
    subgroup = "py-alienlife-simik",
    order = "c"
}

----uranium----

RECIPE {
    type = "recipe",
    name = "simik-uranium",
    category = "simik",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "item",  name = "zogna-bacteria-barrel",   amount = 3},
        {type = "item",  name = "geothermal-water-barrel", amount = 4},
        {type = "item",  name = "tendon",                  amount = 2},
        {type = "item",  name = "uranium-ore",             amount = 100},
        {type = "item",  name = "bio-sample",              amount = 1},
        {type = "fluid", name = "pressured-air",           amount = 30},
    },
    results = {
        {type = "item", name = "purex-u-concentrate-2-barrel", amount = 2},
        {type = "item", name = "yellow-cake",                  amount = 16},
        {type = "item", name = "hydrofluoric-acid-barrel",     amount = 3},
        {type = "item", name = "bacteria-1-barrel",            amount = 1},
        {type = "item", name = "hot-air-barrel",               amount = 1},
    },
    main_product = "yellow-cake",
    subgroup = "py-alienlife-simik",
    order = "c"
}
