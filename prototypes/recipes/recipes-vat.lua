RECIPE {
    type = 'recipe',
    name = 'logistic-science-01',
    category = 'vat',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'automation-science-pack', amount = 10},
        {type = 'item', name = 'brain', amount = 5},
        {type = 'fluid', name = 'water', amount = 1000},
        --{type = 'fluid', name = 'fetal-serum', amount = 100},
        {type = 'item', name = 'nexelit-plate', amount = 5},
    },
    results = {
        {type = 'item', name = 'logistic-science-pack', amount = 1},
    },
}:add_unlock("biotech-mk02"):add_ingredient({type = "item", name = "small-parts-01", amount = 10})

RECIPE {
    type = 'recipe',
    name = 'chemical-science-01',
    category = 'vat',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'logistic-science-pack', amount = 10},
        {type = 'item', name = 'automation-science-pack', amount = 5},
        {type = 'item', name = 'brain', amount = 5},
        {type = 'fluid', name = 'water', amount = 1000},
        {type = 'fluid', name = 'fetal-serum', amount = 100},
        {type = 'item', name = 'nexelit-plate', amount = 5},
    },
    results = {
        {type = 'item', name = 'chemical-science-pack', amount = 1},
    },
}:add_unlock("biotech-mk02"):add_ingredient({type = "item", name = "small-parts-01", amount = 10})

RECIPE {
    type = 'recipe',
    name = 'production-science-01',
    category = 'vat',
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = 'item', name = 'logistic-science-pack', amount = 10},
        {type = 'item', name = 'chemical-science-pack', amount = 7},
        {type = 'item', name = 'py-science-pack', amount = 5},
        {type = 'item', name = 'brain', amount = 8},
        {type = 'fluid', name = 'water', amount = 1000},
        {type = 'fluid', name = 'fetal-serum', amount = 150},
        {type = 'item', name = 'nexelit-plate', amount = 5},
    },
    results = {
        {type = 'item', name = 'production-science-pack', amount = 1},
    },
}:add_unlock("biotech-mk03"):add_ingredient({type = "item", name = "small-parts-02", amount = 10})

RECIPE {
    type = 'recipe',
    name = 'utility-science-01',
    category = 'vat',
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = 'item', name = 'production-science-01', amount = 5},
        {type = 'item', name = 'py-science-pack', amount = 8},
        {type = 'item', name = 'chemical-science-pack', amount = 10},
        {type = 'item', name = 'brain', amount = 30},
        {type = 'fluid', name = 'gta', amount = 250},
        {type = 'fluid', name = 'fetal-serum', amount = 500},
        {type = 'item', name = 'nexelit-plate', amount = 50},
    },
    results = {
        {type = 'item', name = 'utility-science-pack', amount = 1},
    },
}:add_unlock("biotech-mk03"):add_ingredient({type = "item", name = "small-parts-03", amount = 20})