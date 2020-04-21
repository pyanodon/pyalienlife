RECIPE {
    type = 'recipe',
    name = 'fetal-serum-01',
    category = 'biofactory',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'guts', amount = 15},
        {type = 'item', name = 'flask', amount = 1},
        {type = 'item', name = 'silver-plate', amount = 2},
    },
    results = {
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    --main_product = "cocoon",
}:add_unlock("biotech-mk02")

RECIPE {
    type = 'recipe',
    name = 'earth-generic-sample',
    category = 'data-array',
    enabled = false,
    energy_required = 25,
    ingredients = {
        {type = 'item', name = 'steel-chest', amount = 1},
        {type = 'item', name = 'automation-science-pack', amount = 15},
        {type = 'item', name = 'bio-sample', amount = 10},
    },
    results = {
        {type = 'item', name = 'earth-generic-sample', amount = 1},
    },
}:add_unlock("xenobiology")
