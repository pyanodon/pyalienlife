RECIPE {
    type = 'recipe',
    name = 'cocoon-1',
    category = 'vrauks',
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'item', name = 'water-barrel', amount = 2},
        {type = 'item', name = 'fawogae', amount = 5},
    },
    results = {
        {type = 'item', name = 'cocoon', amount = 1},
        {type = 'item', name = 'empty-barrel', amount = 2},
    },
    main_product = "cocoon",
}:add_unlock("zoology")

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
