RECIPE {
    type = "recipe",
    name = "cottongut-science-red-seeds",
    category = "incubator",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item",  name = "fawogae-substrate",      amount = 10},
        {type = "item",  name = "native-flora",           amount = 5},
        {type = "item",  name = "plasmids",               amount = 1},
        {type = "fluid", name = "depolymerized-organics", amount = 50},
        {type = "item",  name = "cottongut",              amount = 20}
    },
    results = {
        {type = "item", name = "solidified-sarcorus", amount = 3},
    },
    main_product = "solidified-sarcorus",
    subgroup = "py-alienlife-items",
    order = "a1"
}:add_unlock("cottongut-science-mk01")

RECIPE {
    type = "recipe",
    name = "cottongut-science-green-seeds",
    enabled = false,
    category = "incubator",
    energy_required = 30,
    ingredients = {
        {type = "fluid", name = "subcritical-water", amount = 200},
        {type = "fluid", name = "artificial-blood",  amount = 50},
        {type = "item",  name = "bio-sample",        amount = 2},
        {type = "item",  name = "cytostatics",       amount = 1},
        {type = "item",  name = "cottongut",         amount = 40},
        {type = "item",  name = "flask",             amount = 3}
    },
    results = {
        {type = "item", name = "paragen",             amount = 3},
        {type = "item", name = "solidified-sarcorus", amount = 5},
    },
    main_product = "paragen",
    subgroup = "py-alienlife-items",
    order = "a1"
}:add_unlock("cottongut-science-mk02")

RECIPE {
    type = "recipe",
    name = "cottongut-science-blue-seeds",
    enabled = false,
    category = mods.pyhightech and "nano" or "incubator",
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "alien-sample-02", amount = 1},
        {type = "item",  name = "cottongut",       amount = 60},
        {type = "item",  name = "navens",          amount = 1},
        -- {type = 'item', name = 'neuromorphic-chip', amount = 1},
        {type = "fluid", name = "blood",           amount = 200},
        {type = "item",  name = "nano-cellulose",  amount = 1},
        {type = "item",  name = "adrenal-cortex",  amount = 1},
        {type = "item",  name = "lab-instrument",  amount = 2},
        {type = "item",  name = "stainless-steel", amount = 5}
    },
    results = {
        {type = "item", name = "negasium",            amount = 3},
        {type = "item", name = "paragen",             amount = 5},
        {type = "item", name = "solidified-sarcorus", amount = 7},
    },
    main_product = "negasium",
    subgroup = "py-alienlife-items",
    order = "a1"
}:add_unlock("cottongut-science-mk03"):add_ingredient {type = "item", name = "kicalk-seeds", amount = 1}

RECIPE {
    type = "recipe",
    name = "cottongut-science-py-seeds",
    enabled = false,
    category = mods.pyhightech and "nano" or "incubator",
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "simik-blood",   amount = 50},
        {type = "fluid", name = "oleochemicals", amount = 50},
        {type = "item",  name = "tuuphra",       amount = 5},
        {type = "item",  name = "bio-sample",    amount = 2},
        {type = "item",  name = "cottongut",     amount = 80},
        {type = "item",  name = "sea-sponge",    amount = 1},
        {type = "item",  name = "flask",         amount = 3},
        {type = "item",  name = "navens",        amount = 2},
        {type = "item",  name = "brain",         amount = 1},
        {type = "item",  name = "retrovirus",    amount = 1}
    },
    results = {
        {type = "item", name = "nonconductive-phazogen", amount = 3},
        {type = "item", name = "negasium",               amount = 5},
        {type = "item", name = "paragen",                amount = 7},
        {type = "item", name = "solidified-sarcorus",    amount = 9},
    },
    main_product = "nonconductive-phazogen",
    subgroup = "py-alienlife-items",
    order = "a1"
}:add_unlock("cottongut-science-mk04")

RECIPE {
    type = "recipe",
    name = "cottongut-science-prod-seeds",
    enabled = false,
    category = mods.pyhightech and "nano" or "incubator",
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "alien-sample-03",   amount = 3},
        {type = "item",  name = "bio-sample",        amount = 15},
        {type = "item",  name = "navens",            amount = 5},
        {type = "item",  name = "neuromorphic-chip", amount = 3},
        {type = "fluid", name = "arthropod-blood",   amount = 300},
        {type = "fluid", name = "chelator",          amount = 200},
        {type = "item",  name = "nano-cellulose",    amount = 4},
        {type = "item",  name = "adrenal-cortex",    amount = 4},
        {type = "item",  name = "enzyme-pks",        amount = 1},
        {type = "item",  name = "super-alloy",       amount = 15},
        {type = "item",  name = "cottongut",         amount = 100}
    },
    results = {
        {type = "item", name = "denatured-seismite",     amount = 3},
        {type = "item", name = "nonconductive-phazogen", amount = 5},
        {type = "item", name = "negasium",               amount = 7},
        {type = "item", name = "paragen",                amount = 9},
        {type = "item", name = "solidified-sarcorus",    amount = 11},
    },
    main_product = "denatured-seismite",
    subgroup = "py-alienlife-items",
    order = "a1"
}:add_unlock("cottongut-science-mk05"):add_ingredient {type = "item", name = "kicalk-seeds", amount = 20}